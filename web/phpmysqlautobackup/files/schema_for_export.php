<?php
$dbc = dbc::instance();

//add new phpmysqlautobackup table if not there...
$result = $dbc->prepare("SHOW TABLES LIKE 'phpmysqlautobackup' ");
$rows = $dbc->executeGetRows($result);
if(count($rows)<1)
{
   $query = "
    CREATE TABLE phpmysqlautobackup (
    id int(11) NOT NULL,
    version varchar(6) default NULL,
    time_last_run int(11) NOT NULL,
    PRIMARY KEY (id)
    )";
   $result = $dbc->prepare($query);
   $result = $dbc->execute($result);
   $query="INSERT INTO phpmysqlautobackup (id, version, time_last_run)
             VALUES ('1', '$phpMySQLAutoBackup_version', '0');";
   $result = $dbc->prepare($query);
   $result = $dbc->execute($result);
}
//check time last run - to prevent malicious over-load attempts
$query="SELECT * from phpmysqlautobackup WHERE id=1 LIMIT 1 ;";
$result = $dbc->prepare($query);
$rows = $dbc->executeGetRows($result);
if (time() < ($rows[0]['time_last_run']+$time_interval)) exit();// exit if already run within last time_interval
//update version number if not already done so
if ($rows[0]['version']!=$phpMySQLAutoBackup_version)
{
 $result = $dbc->prepare("update phpmysqlautobackup set version='$phpMySQLAutoBackup_version'");
 $result = $dbc->execute($result);
}
////////////////////////////////////////////////////////////////////////////////////

$query="UPDATE phpmysqlautobackup SET time_last_run = '".time()."' WHERE id=1 LIMIT 1 ;";
$result = $dbc->prepare($query);
$result = $dbc->execute($result);

if (!isset($table_select))
{
  $result = $dbc->prepare("show tables");
  $i=0;
  $table="";
  $tables = $dbc->executeGetRows($result);
  foreach ($tables as $table_array)
  {
   list(,$table) = each($table_array);
   $exclude_this_table = isset($table_exclude)? in_array($table, $table_exclude) : false;
   if(!$exclude_this_table) $table_select[$i]=$table;
   $i++;
   //echo "$table<br>";
  }
}

$recordBackup = new record();

$thedomain = $_SERVER['HTTP_HOST'];
if (substr($thedomain,0,4)=="www.") $thedomain=substr($thedomain,4,strlen($thedomain));

$buffer = '# MySQL backup created by phpMySQLAutoBackup - Version: '.$phpMySQLAutoBackup_version . NEWLINE .
          '# ' . NEWLINE .
          '# http://www.dwalker.co.uk/phpmysqlautobackup/' . NEWLINE .
          '#' . NEWLINE .
          '# Database: '. $db . NEWLINE .
          '# Domain name: ' . $thedomain . NEWLINE .
          '# (c)' . date('Y') . ' ' . $thedomain . NEWLINE .
          '#' . NEWLINE .
          '# Backup START time: ' . strftime("%H:%M:%S",time()) . NEWLINE.
          '# Backup END time: #phpmysqlautobackup-endtime#' . NEWLINE.
          '# Backup Date: ' . strftime("%d %b %Y",time()) . NEWLINE;

$i=0;
$lines_exported=0;
$alter_tables="";
foreach ($table_select as $table)
        {
          $i++;
          $export = ' '.NEWLINE.'drop table if exists `' . $table . '`; ' . NEWLINE;

          //export the structure
          $query='SHOW CREATE TABLE `' . $table . '`';
          $result = $dbc->prepare($query);
          $tables = $dbc->executeGetRows($result);
          $this_table=$tables[0]['Create Table'];
          //$export.= print_r($tables) ."; \n";
          $alter_table="";          
          if (preg_match('@^[\s]*CONSTRAINT|FOREIGN[\s]+KEY@',$this_table))
          {
           // change line end char to NEWLINE
           if (strpos($this_table, "(\r\n ")) $this_table = str_replace("\r\n", NEWLINE, $this_table);
           elseif (strpos($this_table, "(\n ")) $this_table = str_replace("\n", NEWLINE, $this_table);
           elseif (strpos($this_table, "(\r ")) $this_table = str_replace("\r", NEWLINE, $this_table);

           $sql_lines = explode(NEWLINE, $this_table);
           $sql_count = count($sql_lines);
           // find constraints
           for ($j = 0; $j < $sql_count; $j++)
           {
            if (preg_match('@^[\s]*(CONSTRAINT|FOREIGN[\s]+KEY)@', $sql_lines[$j]) === 1)
               {
               //the following was gratefully received from: vit.bares@gmail.com
               // if more than one constraint in table, we would have ADD CONSTRAINT command ending with ","
               // which is SQL syntax error
               $sql_lines[$j] = str_replace(',', '', $sql_lines[$j]);              
               $alter_table.= 'ALTER TABLE `' . $table . '` ADD ' . $sql_lines[$j] . ';' . NEWLINE;
               
               // if more than one constraint in table, replace rule with comma does not work for at least one constraint
               $needles = array(
                   "," . NEWLINE . $sql_lines[$j],
                   NEWLINE . $sql_lines[$j]
               );
               //the above was gratefully received from: vit.bares@gmail.com
               $this_table = str_replace($needles, "", $this_table);                        
            }
           }
           $alter_tables.=NEWLINE.$alter_table;
          }
          $export.= $this_table.';'.NEWLINE;
          
          $table_list = array();
          $result = $dbc->prepare('show fields from  `' . $table . '`');
          $fields = $dbc->executeGetRows($result);
          foreach ($fields as $field_array) $table_list[] = $field_array['Field'];           

          $buffer.=$export;
          // dump the data
          $query='select * from `' . $table . '` LIMIT '. $limit_from .', '. $limit_to.' ';
          $result = $dbc->prepare($query);
          $rows = $dbc->executeGetRows($result);
          foreach ($rows as $row_array)
          {
            $export = 'insert into `' . $table . '` (`' . implode('`, `', $table_list) . '`) values (';
            $lines_exported++;
            reset($table_list);
            while (list(,$i) = each($table_list))
            {
              if (!isset($row_array[$i])) $export .= 'NULL, ';
              elseif (has_data($row_array[$i]))
              {
                $row = addslashes($row_array[$i]);
                $row = str_replace("\n#", "\n".'\#', $row);
                $export .= '\'' . $row . '\', ';
              }
              else $export .= '\'\', ';
            }
            $export = substr($export,0,-2) . ");".NEWLINE;
            $buffer.= $export;
          }
        }
//uncomment line below to show table dumps, inc insert and alter table statements:
//exit('<textarea rows="30" name="themessage" cols="100">'.$buffer.$alter_tables.'</textarea>');

$buffer.=$alter_tables;        
$recordBackup->save(time(), strlen($buffer), $lines_exported);
$buffer = str_replace('#phpmysqlautobackup-endtime#', strftime("%H:%M:%S",time()), $buffer);