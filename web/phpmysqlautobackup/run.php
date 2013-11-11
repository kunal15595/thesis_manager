<?php
include '../config/config.php';
include '../config/connect.php';

// you must add your details below:
$db_server = constant("HOSTNAME"); // your MySQL server - localhost will normally suffice
$db = constant("DBNAME"); // your MySQL database name
$mysql_username = constant("USERNAME");  // your MySQL username
$mysql_password = constant("PASS");  // your MySQL password

$from_emailaddress = "k,khandelwal@iitg.ernet.in";// your email address to show who the email is from (should be different $to_emailaddress)
$report_emailaddress = "kunal15595@gmail.com";//address to send reports, not the backup just details on last backups (can be same as above)
$to_emailaddress = "kunal15595@gmail.com"; // your email address to send backup files to
                       //best to specify an email address on a different server than the MySQL db  ;-)

$send_email_backup=1;//set to 1 and will send the backup file attached to the email address above
$send_email_report=1;//set to 1 and will send an email report to the email address above

define('LOG_REPORTS_MAX', 6);//the total number of reports to retain - set this to any number you wish (better to keep below 50 as all reports are included in the email)

//interval between backups - stops malicious attempts at bringing down your server by making multiple requests to run the backup
$time_interval=3600;// 3600 = one hour - only allow the backup to run once each hour

//DEBUGGING
define('DEBUG', 1);//set to 0 when done testing

//FTP settings - uses CURL so your webhost where you run this must support PHP CURL
//when the 4 lines below are uncommented will attempt to push the compressed backup file to the remote site ($ftp_server)
//$ftp_username=""; // your ftp username
//$ftp_password=""; // your ftp password
//$ftp_server=""; // eg. ftp.yourdomainname.com
//$ftp_path="/public_html/"; // can be just "/" or "/public_html/securefoldername/"


$save_backup_zip_file_to_server = 1; // if set to 1 then the backup files will be saved in the folder: /phpMySQLAutoBackup/backups/
                                    //(you must also chmod this folder for write access to allow for file creation)
define('TOTAL_BACKUP_FILES_TO_RETAIN',10);//the total number of backups files to retain, e.g. 10. the 10 most recent files mtime (modified date) are kept, older versions are deleted

/****************************************************************************************
The settings below are for the more the more advanced user  - in the majority of cases no changes will be required below. */
define ('CHARSET',"utf8"); // sets the charset of your database for communication
define('NEWLINE',"\n"); //email attachment - if backup file is included within email body then change this to "\r\n"

// Below you can uncomment the variables to specify separate tables to backup,
// leave commented out and ALL tables will be included in the backup.
//$table_select[0]="myFirstTableName";
//$table_select[1]="mySecondTableName";
//$table_select[2]="myThirdTableName";
//note: when you uncomment $table_select only the named tables will be backed up.

// Below you can uncomment the variables to specify separate tables to EXCLUDE from the TOTAL backup,
// leave commented out and ALL tables will be included in the backup.
//$table_exclude[0]="FirstTableName-to-exclude";
//$table_exclude[1]="SecondTableName-to-exclude";
//$table_exclude[2]="ThirdTableName-to-exclude";
//note: when you uncomment $table_exclude these tables will be excluded from your backup.

$limit_to=10000000; //total rows to export - IF YOU ARE NOT SURE LEAVE AS IS
$limit_from=0; //record number to start from - IF YOU ARE NOT SURE LEAVE AS IS
//the above variables are used in this formnat:
//  SELECT * FROM tablename LIMIT $limit_from , $limit_to


define('DBDRIVER', 'mysql');
define('DBPORT', '3306');
// No more changes required below here
// ---------------------------------------------------------
define('DBHOST', $db_server);
define('DBUSER', $mysql_username);
define('DBPASS', $mysql_password);
define('DBNAME', $db);

// Turn off all error reporting unless debugging
if (DEBUG)
{
 error_reporting(E_ALL);
 $time_interval=1;// seconds - only allow backup to run once each x seconds
}
else error_reporting(0);

define('LOCATION', dirname(__FILE__) ."/files/");
include(LOCATION."phpmysqlautobackup.php");
?>