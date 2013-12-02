<?php
include '../config/config.php';
//include '../config/connect.php';
/* Define MySQL connection details and database table name */ 
$SETTINGS["hostname"]=constant("HOSTNAME");
$SETTINGS["mysql_user"]=constant("USERNAME");
$SETTINGS["mysql_pass"]=constant("PASS");
$SETTINGS["mysql_database"]=constant("DBNAME");
$SETTINGS["data_table"]='event_calendar';

/* Connect to MySQL */

if (!isset($install) or $install != '1') {
	$connection = mysql_connect($SETTINGS["hostname"], $SETTINGS["mysql_user"], $SETTINGS["mysql_pass"]) or die ('Unable to connect to MySQL server.<br ><br >Please make sure your MySQL login details are correct.');
	$db = mysql_select_db($SETTINGS["mysql_database"], $connection) or die ('request "Unable to select database."');
};
?>