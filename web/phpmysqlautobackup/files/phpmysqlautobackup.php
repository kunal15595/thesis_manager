<?php
// ---------------------------------------------------------
if(($db=="")OR($mysql_username=="")OR($mysql_password==""))
{
 echo "Configure your installation BEFORE running, add your details to the file /phpmysqlautobackup/run.php";
 exit;
}

$backup_type="\n\n BACKUP Type: Full database backup (all tables included)\n\n";
if (isset($table_select))
{
 $backup_type="\n\n BACKUP Type: partial, includes tables:\n";
 foreach ($table_select as $key => $value) $backup_type.= "  $value;\n";
}
if (isset($table_exclude))
{
 $backup_type="\n\n BACKUP Type: partial, EXCLUDES tables:\n";
 foreach ($table_exclude as $key => $value) $backup_type.= "  $value;\n";
}
$errors="";
include(LOCATION."phpmysqlautobackup_extras.php");
include(LOCATION."schema_for_export.php");
$versionCheck = new version();
$version_info=$versionCheck->check($phpMySQLAutoBackup_version);
$backup_info="\n".$version_info."\n\n";

$backup_info.=$backup_type;

$backup_info.= $recordBackup->get();

// zip the backup and email it
$backup_file_name = 'mysql_'.$db.strftime("_%d_%b_%Y_time_%H_%M_%S.sql",time()).'.gz';
echo $backup_file_name;
$dump_buffer = gzencode($buffer);

if ($save_backup_zip_file_to_server) write_backup($dump_buffer, $backup_file_name);

//FTP backup file to remote server
if (isset($ftp_username))
{
 //write the backup file to local server ready for transfer if not already done so
 if (!$save_backup_zip_file_to_server) write_backup($dump_buffer, $backup_file_name);
 $transfer_backup = new transfer_backup();
 $errors.= $transfer_backup->transfer_data($ftp_username,$ftp_password,$ftp_server,$ftp_path,$backup_file_name);
 if (!$save_backup_zip_file_to_server) unlink(LOCATION."../backups/".$backup_file_name);
}

if(!session_id()) session_start();
if(isset($_SESSION['pmab_mysql_errors'])) $errors.=$_SESSION['pmab_mysql_errors'];

if ($send_email_backup) xmail($to_emailaddress,$from_emailaddress, "phpMySQLAutoBackup: $backup_file_name", $dump_buffer, $backup_file_name, $backup_type, $phpMySQLAutoBackup_version);
if ($send_email_report)
{
 $msg_email_backup="";
 $msg_ftp_backup="";
 $msg_local_backup="";
 if ($send_email_backup) $msg_email_backup="\nthe email with the backup attached has been sent to: $to_emailaddress \n";
 if (isset($ftp_username)) $msg_ftp_backup="\nthe backup zip file has been transferred via ftp to: $ftp_server (user: $ftp_username) - folder: $ftp_path \n";
 if ($save_backup_zip_file_to_server) $msg_local_backup="\nthe backup zip file has been saved to the same server: ".dirname(__FILE__)."/backups/ \n";
 if ($errors=="") $errors="None captured."; 
 mail($report_emailaddress,
                                  "REPORT on recent backup using phpMySQLAutoBackup ($backup_file_name)",
                                  "ERRORS: $errors \nSAVE or DELETE THIS MESSAGE - no backup is attached $msg_email_backup $msg_ftp_backup $msg_local_backup \n$backup_info \n phpMySQLAutoBackup (version $phpMySQLAutoBackup_version) is developed by http://www.dwalker.co.uk/ \nPlease consider making a donation at:\n http://www.dwalker.co.uk/make_a_donation.php \n(every penny or cent helps)",
                                  "From: $from_emailaddress\nReply-To:$from_emailaddress");
}

if (DEBUG) echo '<H1>WARNING: DEBUG is on! To turn off edit run.php and set DEBUG to 0 (zero)</H1>Report below:<br><textarea cols=150 rows=50>'."\n\nERRORS: ".$errors.$backup_info.'</textarea>';
?>