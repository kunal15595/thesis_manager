<?php
session_start();
include '../../config/config.php';
include '../../config/connect.php';

// only show errors
error_reporting(E_ERROR);

// you need to set these value to match your configuration
$g_Title = " Discussion Forum";	// The title of this discussion forum
$g_URL = constant("HOST11")."/";		// Where this script lives (combined with $g_ThisPage)
$g_ContactEmail = "me@mysite.com";		// Contact email address
$g_DisablePostCountInURLs = "0";		// set to "1" to stop topic URLs changing when new posts are added
$g_TopicsPerPage = 30;				// default number of topics to show per page
$g_ThisPage = "Discuss.php";			// the name of this page
$g_Password = constant("PASS");			// to run database script
$g_HostName = constant("HOSTNAME");			// for mySQL connection, normally localhost
$g_UserName = constant("USERNAME");			// for mySQL connection
$g_DatabaseName = constant("DBNAME");			// for mySQL connection
$g_MySQLPassword = constant("PASS");		// for mySQL connection
$g_MessageListTableName = "MessageList";	// the message list table name in the database
$g_ThreadListTableName = "ThreadList";		// the thread list table name in the database

// kill off the session cookie - don't need it
session_start();
$_SESSION = array();
session_destroy();

if( $_POST['cmd'] == "submitreply" || $_POST['cmd'] == "submitnew" || $_POST['cmd'] == "submitnewmail" )
{
	$expire = time() + 1296000;
	setcookie("cookie_fullname", $_POST['fullname'], $expire);
	setcookie("cookie_email", $_POST['email'], $expire);
}

function redirectTo( $url )
{
	// fire out the header
	header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");    // Date in the past
	header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT"); // always modified
	header("Cache-Control: no-store, no-cache, must-revalidate");  // HTTP/1.1
	header("Cache-Control: post-check=0, pre-check=0", false);
	header("Pragma: no-cache");                          // HTTP/1.0

	$head = "Location: $url";
	header($head);
	exit;
}

function PageHeader()
{
	global $g_ThisPage, $g_Title;
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Language" content="en-gb" />
<?php include '../config/config.php'; ?>
      
<link rel="stylesheet" href="<?php echo constant("HOST11") . '/web/css/faculty_stylesheet.css' ?>" type="text/css" />
<link rel="stylesheet" href="css/style.css"/>
<title><?php print "$g_Title" ?></title>
<style type="text/css" >
<!--
body {
	
	font-family: verdana, arial;
	font-size: 10pt;
	color: black;
	background-color: #DCDCDC;

}
td {
	font-family: verdana, arial;
	font-size: 10pt;
}

.articleTable {
	position: relative;
	/*width: 100%;*/
	border: red solid 2px;
	background-color: white;
	padding: 5px;
	max-height: 10px;
	overflow-y:scroll;
}
.bigText {
	font-family: verdana, arial;
	font-size: 18pt;
	font-weight: bold;
	color: black;
	padding-bottom: 10px;
	/*border: 2px solid yellow;*/
}
.pageHeadline {
	font-size: 12pt;
	font-weight: bold;
	/*border: 2px solid blue;*/
}
.requiredWarning {
	font-family: verdana, arial;
	font-size: 8pt;
	color: red;
}
.errorText {
	font-weight: bold;
	color: red;
}
.subtle {
	font-size: 8pt;
	color: #808080;
}
.formBox {
	color: #000000;
	border:1px solid yellow;
	
}
-->
</style>
</head>
<body>
	<div id="bodyPanel">
	    <div id="adminHeader">
	        <div id="adminHeaderTitle">
	            <?php include 'Macros/headerImage.php';?>
	        </div>
	        <div id="adminHeaderLocation">Department of CSE, IIT Guwahati</div>
	    </div>
	    
		<div id="middle">    
		    <div id="adminVMenu">
		        <?php include '../PhpIncludeFiles/faculty_vertical_menue.php'; ?>
		    </div>
		    <div id="facultyMiddle">
		        
		    </div>
		    
		    
			<div id="rightPanel">
				<div align="center">
				  
				  <table border="0" cellpadding="0" cellspacing="0">
				    <tr>
				      <td align="left" colspan="3"><p class="bigText"><?php print "$g_Title" ?></p></td>
				    </tr>
				    <tr style="max-height:100px">
				      <td valign="top" align="left" class="leftNavBar">
				<span><a href="<?php print "$g_ThisPage" ?>"></a></span>
				        </td>
				      <td valign="top" ></td>
				      <td valign="top" >
				        <div align="left">
				          <table border="0" cellpadding="0" cellspacing="0" align="center" position="relative"  class="articleTable">
				            <tr>
				              <td >
				<?php
				}

				function PageFooter()
				{
				?>
				              </td>
				            </tr>
				          </table>
				        </div>
				      </td>
				    </tr>
				    <tr>
				      <td valign="top"  colspan="3"><br />
				        <br />
				        
				      </td>
				    </tr>
				  </table>
				 
				</div>


			</div>
		</div>
		<div id="adminFooter">
		        <?php include 'Macros/AdminFooter.php'; ?>
		</div>
	</div>
	 
</body>
</html>
<?php
}

function PrintStandardFooter($above)
{
	global $g_ThisPage;

	print "<hr />\n";
	if( strlen($above) > 0 )
		print "$above\n";
	
	print "<p></p>\n";
	PageFooter();	
}

function DBError($error_message, $printHeader=true)
{
	global $g_ThisPage;
	if( $printHeader )
		PageHeader();
		
	print "<p><strong>Error!!!!</strong> [$error_message]</p>\n";
	
	PrintStandardFooter("");
	die("");
}

function OpenSQLConnection()
{
	global $g_HostName, $g_UserName, $g_DatabaseName, $g_MySQLPassword;
	
	// Connecting, selecting database
	$link = mysql_connect($g_HostName, $g_UserName, $g_MySQLPassword)
		or DBError("Could not connect to the database");

	mysql_select_db($g_DatabaseName)
		or DBError("Could not select specified database");
	    
	return $link;
}

function CloseSQLConnection($link)
{
	mysql_close($link);
}

function DoQuery($query)
{
	$result = mysql_query($query)
		or DBError("SQL Query Failed - Oh dear.");
}

function HTMLEncode($text) 
{ 
	$searcharray = array( 
		"'([-_\w\d.]+@[-_\w\d.]+)'", 
		"'((?:(?!://).{3}|^.{0,2}))(www\.[-\d\w\.\/?=]+)'", 
		"'(http[s]?:\/\/[-_~\w\d\.\/?=]+)'"); 

	$replacearray = array( 
		" <a href=\"mailto:\\1\">\\1</a> ", 
		"\\1http://\\2", 
		" <a href=\"\\1\"> \\1</a> "); 

	return nl2br(preg_replace($searcharray, $replacearray, stripslashes($text) )); 
}

function StripHTML($str)
{
	// replace all tags with the appropriate characters
	$str = str_replace("<", "&lt;", $str); 
	$str = str_replace(">", "&gt;", $str); 
	
	// replace all lines with paragraphs
	$str = str_replace("\n", "</p> <p>", $str); 
	$str = str_replace("\r", "", $str); 

	// Add in hyperlinks where we can
	$str = HTMLEncode($str);

	// Break up long words
	list ($words) = array (split (" ", $str)); 
	$str = ''; 
	foreach ($words as $c => $word) 
	{ 
		if (strlen ($word) > 45 and !ereg("^href=", $word) and !ereg ("[\[|\]|\/\/]", $word)) 
			$word = chunk_split ($word, 45, " "); 

		if ($c) 
			$str .= ' '; 

		$str .= $word; 
	}

	return addslashes($str);
}

function StripHTMLSimple($str)
{
	// add spaces to very long strings
	list ($words) = array (split (" ", $str)); 
	$str = ''; 
	foreach ($words as $c => $word) 
	{ 
		if (strlen ($word) > 45 and !ereg ("[\[|\]|\/\/]", $word)) 
			$word = chunk_split ($word, 45, " "); 

		if ($c) 
			$str .= ' '; 

		$str .= $word; 
	}

	// replace all tags with the appropriate characters
	$str = str_replace("<", "&lt;", $str); 
	$str = str_replace(">", "&gt;", $str); 
	
	// replace all lines with spaces
	$str = str_replace("\n", " ", $str); 
	$str = str_replace("\r", "", $str); 
	return $str;
}

function RunScripts()
{
	global $g_MessageListTableName, $g_ThreadListTableName;
	
	DoQuery("Create TABLE IF NOT EXISTS $g_ThreadListTableName
		(ThreadID double NOT NULL AUTO_INCREMENT PRIMARY KEY,
		Title text NULL,
		Author text NULL,
		Email text NULL,
		Posts double NULL,
		CreationDate datetime NOT NULL,
		LastPostedTo datetime NOT NULL )");
		
	DoQuery("Create TABLE IF NOT EXISTS $g_MessageListTableName
		(MessageID double NOT NULL AUTO_INCREMENT PRIMARY KEY,
		Message text NULL,
		Author text NULL,
		Email text NULL,
		CreationDate datetime NOT NULL,
		ThreadID double NOT NULL )");
}

function PrintTitle($title)
{
	print "<span class=\"pageHeadline\">$title</span><p></p>\n";
}

function PrintError($error)
{
	print "<p class=\"errorText\">$error</p>\n";
}

function ShowLoginPage($error_message,$method,$to_post,$title)
{
	global $g_ThisPage;
	
	PageHeader();
	print "<span class=pageHeadline>$title</span><p></p>";
	if( strlen( $error_message ) > 0 )
		print "<p><strong>Error: $error_message</strong></p>\n";
?>
<P>Please enter the password to proceed:</P>
<form method="<?php print $method ?>" action="<?php print "$g_ThisPage" ?>">
 <div align="left">
  <table border="0" cellpadding="0" cellspacing="0" width="440">
   <tr>
    <td width="100" valign="top" align="left">Password:</td>
    <td width="340" valign="top" align="left"><input class="formBox" style="width: 175px" type="password" name="password" size="51" value="" /></td>
   </tr>
   <tr>
    <td valign="top" align="left"></td>
    <td valign="top" align="left">&nbsp;</td>
   </tr>
   <tr>
    <td valign="top" align="left"></td>
    <td valign="top" align="left"><input type="submit" value="Confirm" /></td>
   </tr>
  </table>
 </div>
 <input type="hidden" name="cmd" value="<?php print $to_post ?>" />
</form>
<?php
	PrintStandardFooter("");
}

function DeleteThisThread( $thread )
{
	global $g_MessageListTableName, $g_ThreadListTableName;
	
	$query1 = "DELETE FROM $g_ThreadListTableName WHERE ThreadID = '$thread'";
	$query2 = "DELETE FROM $g_MessageListTableName WHERE ThreadID = '$thread'";
	DoQuery( $query1 );
	DoQuery( $query2 );
}

function DeleteThisPost( $thread, $message )
{
	global $g_MessageListTableName, $g_ThreadListTableName;
	
	$query = "SELECT Posts FROM $g_ThreadListTableName WHERE ThreadID = $thread";
	$result = mysql_query($query)
	    or DBError("Failed while trying to delete post");
	    
	if( mysql_num_rows($result) == 1 )
	{
		$line = mysql_fetch_row($result);
		if( $line[0] == "1" )
			$query1 = "DELETE FROM $g_ThreadListTableName WHERE ThreadID = '$thread'";
		else
			$query1 = "UPDATE $g_ThreadListTableName set Posts=Posts-1 WHERE ThreadID = '$thread'";

		$query2 = "DELETE FROM $g_MessageListTableName WHERE MessageID = '$message'";
		DoQuery( $query1 );
		DoQuery( $query2 );
	}
}

function ShowThisThread( $thread, $password )
{
	global $g_ThisPage, $g_MessageListTableName;
	
	$title = PrintThreadName($thread);
	PageHeader();
	PrintTitle( "Manage Thread" );
	print "<p>Manage thread '$title'</p>";

	// perform an SqL query
	$query = "SELECT * FROM $g_MessageListTableName WHERE ThreadID = $thread ORDER BY CreationDate";
	$result = mysql_query($query)
	    or DBError("Failed while trying to show thread", false);
	    
	if( mysql_num_rows($result) < 1 )
	{
		// topic not found
		print "<p>Topic $thread either doesn't exist or has been deleted.</p>\n";
		PrintStandardFooter("View <a href=\"$g_ThisPage?cmd=postmanage&amp;password=$password\">Management Page</a>");
		return;
	}

	// Printing results in HTML
	print "<div><table border=\"1\" cellpadding=\"4\" cellspacing=\"0\">\n";
	print "<tr><th>ID</th><th>Action</th><th>Message</th><th>Author</th></tr>\n";

	while ($line = mysql_fetch_row($result)) 
	{
		print "<tr><td>$line[0]</td><td><a href=\"$g_ThisPage?cmd=manage_deletePost&amp;password=$password&amp;&amp;thread=$line[5]&amp;message=$line[0]\"";
		print "onclick=\"return confirm('Delete this post?')\">";
		print "delete</a></td><td>$line[1]</td><td>$line[2]</td></tr>\n";
	}
	
	print "</table><p></p></div>\n";
	PrintStandardFooter("View <a href=\"$g_ThisPage?cmd=postmanage&amp;password=$password\">Management Page</a>");
}

function ShowTopicManagementList($password)
{
	global $g_ThisPage, $g_ThreadListTableName;
	PageHeader();
	PrintTitle("Manage Discussion Forum");
	print "<p>Manage the topics and posts below:</p>";
	
	// Performing SQL query
	$query = "SELECT * FROM $g_ThreadListTableName ORDER BY ThreadID DESC";
	$result = mysql_query($query)
	    or DBError("Failed while trying to show topic management list", false);

	if( mysql_num_rows($result) > 0 )
	{
		// Printing results in HTML
		print "<div><table border=\"1\" cellpadding=\"4\" cellspacing=\"0\">\n";
		print "<tr><th>Thread</th><th>Action</th><th>Title</th><th>Author</th><th>Posts</th></tr>\n";
		while ($line = mysql_fetch_row($result)) 
		{
			print "<tr><td>$line[0]</td><td><a href=\"$g_ThisPage?cmd=manage_deleteThread&amp;password=$password&amp;thread=$line[0]\" ";
			print "onclick=\"return confirm('Delete this thread?')\">delete</a></td>";
			print "<td><a href=\"$g_ThisPage?cmd=manage_showThread&amp;password=$password&amp;thread=$line[0]\">$line[1]</a></td><td>$line[2]</td><td>$line[4]</td></tr>\n";
		}
	
		// Closing connection
		print "</table><p></p></div>\n";
	}
	else
	{
		// if nothing there
		print "<p>There are no entries in the discussion forum.</p>\n";
	}

	PrintStandardFooter("View <a href=\"$g_ThisPage?cmd=postmanage&amp;password=$password\">Management Page</a>");
}

function PrintThreadList($page=0)
{
	global $g_ThisPage, $g_Title, $g_DisablePostsInURLs, $g_TopicsPerPage, $g_ThreadListTableName;
	
	PageHeader();
	PrintTitle("$g_Title");
	
	// Performing SQL query
	$query = "SELECT * FROM $g_ThreadListTableName ORDER BY ThreadID DESC";
	$result = mysql_query($query)
	    or DBError("Failed while trying to show thread list", false);

	$rows = mysql_num_rows($result);
	if( $rows > 0 &&
		$rows > $g_TopicsPerPage )
	{
		while( $rows < $page * $g_TopicsPerPage + 1 )
		{
			$page--;
		}
		
		if( $page > 0 )
		{
			// shift results pointer forward to correct place
			mysql_data_seek( $result, $page * $g_TopicsPerPage );
		}
	}

	if( mysql_num_rows($result) > 0 )
	{
		// Printing results in HTML
		print "<div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n";
		$count = 0;
		while ($count < $g_TopicsPerPage and $line = mysql_fetch_row($result)) 
		{
			$to_print = "\t<tr><td width=\"10\">&nbsp;</td><td><a href=\"$g_ThisPage?cmd=show&amp;thread=$line[0]";
			if( $g_DisablePostsInURLs != "1" )
				$to_print .= "&amp;posts=$line[4]";
			$to_print .= "\">$line[1]</a> ";
			print "$to_print";
			print "<small><i>$line[2] ";
			
			print "($line[4]";
			if( $count == 0 )
			{
				if( $line[4] == "1" )
					print " post";
				else
					print " posts";
			}
			print ")";
				
			print "</i></small></td></tr>\n";
			$count = $count + 1;
		}
	
		print "</table><p></p></div>\n";
		
		// show previous / next links if necessary
		if( $rows > $g_TopicsPerPage )
		{
			print "<br /><div class=\"subtle\">";
			if( $page > 0 )
			{
				$prev = $page - 1;
				print "<a href=\"$g_ThisPage?cmd=offset&amp;page=$prev\">&lt; Previous $g_TopicsPerPage topics</a> ";
			}
			if( $rows > ( $page + 1 ) * $g_TopicsPerPage )
			{
				$next = $page + 1;
				print " <a href=\"$g_ThisPage?cmd=offset&amp;page=$next\">Next $g_TopicsPerPage topics &gt;</a>";
			}
			
			print "</div>";
		}
	}
	else
	{
		// if nothing there
		print "<p>There are no entries in the discussion forum. Why not create a new one below?</p>\n";
	}

	// Add a link to post a new topic with
	PrintStandardFooter("Start a <a href=\"$g_ThisPage?cmd=new\">New Topic</a>");
}

function PrintThreadName($thread)
{
	global $g_ThreadListTableName;
	
	$query = "SELECT Title FROM $g_ThreadListTableName WHERE ThreadID = $thread";
	$result = mysql_query($query)
	    or DBError("Failed while trying to find the thread name");

	$line = mysql_fetch_row($result);
	if ($line)
		$title = $line[0];
		
	return $title;
}

function PrintSingleThread($thread,$error)
{
	global $g_ThisPage, $g_MessageListTableName;
	
	if( strlen($error) > 0 )
		PrintError($error);
	
	// perform an SqL query
	$query = "SELECT *,DATE_FORMAT(CreationDate, '%W, %M %e, %Y') AS mydatestring FROM $g_MessageListTableName WHERE ThreadID = $thread ORDER BY CreationDate";
	$result = mysql_query($query)
	    or DBError("Failed while trying to find the thread in the database");
	    
	if( mysql_num_rows($result) < 1 )
	{
		// topic not found
		PageHeader();
		PrintTitle( "Message doesn't exist" );
		print "<p>Topic $thread either doesn't exist or has been deleted.</p>\n";
		PrintStandardFooter("Post <a href=\"$g_ThisPage?cmd=new\">New Topic</a>");
		return;
	}
	
	// print out a heading
	$title = PrintThreadName($thread);
	PageHeader();
	PrintTitle($title);

	// Printing results in HTML
	while ($line = mysql_fetch_row($result)) 
	{
		print "<p>$line[1]</p>\n";
		print "<p align=\"right\"><small><i>";
		if ($line[2] == "")
			$line[2] = "anon.";
			
		if ($line[3] == "")
			print "$line[2]";
		else
			print "<a title=\"Click to send private email\" href=\"#\">$line[2]</a>";

		print "<br />$line[6]</i></small></p>\n";
	}

	// Add a link to post a reply with
	PrintStandardFooter("<a href=\"$g_ThisPage?cmd=reply&amp;thread=$thread\">Reply</a> to this topic");
}

function CreateNewThread($title, $fullname, $email)
{
	global $g_ThreadListTableName;
	
	// Performing SQL query
	$datetime = date("Y-m-d H:i:s");
	$title = StripHTMLSimple($title);
	$fullname = StripHTMLSimple($fullname);
	$email = StripHTMLSimple($email);
	$messagecount = 0;

	// tidy up user name
	$fullname = trim($fullname);
	
	// See if the thread has already been created
	$query = "SELECT * FROM $g_ThreadListTableName";
	$result = mysql_query($query)
	    or DBError("Failed to query the thread list");

	// Examine each row looking for a match
	while ($line = mysql_fetch_row($result)) 
	{
		// if the title and the author match, assume it is a duplicate
		if (($line[1] == $title) and ($line[2]==$fullname))
			return $line[0];
	}

	// We did not find the thread, so start a new one
	$query = "INSERT INTO $g_ThreadListTableName VALUES (NULL, '$title', '$fullname', '$email', '$messagecount', '$datetime', '$datetime')";
	$result = mysql_query($query)
	    or DBError("Failed to add a new thread");
	    
	return mysql_insert_id();
}

function CreateNewMessage($msg, $fullname, $email, $thread)
{
	global $g_MessageListTableName, $g_ThreadListTableName;

	// Performing SQL query
	$datetime = date("Y-m-d H:i:s");
	$msg = StripHTML($msg);
	$fullname = StripHTMLSimple($fullname);
	$email = StripHTMLSimple($email);

	// tidy up user name
	$fullname = trim($fullname);
	
	// See if the thread has already been created
	$query = "SELECT * FROM $g_MessageListTableName WHERE ThreadID = $thread";
	$result = mysql_query($query)
	    or DBError("Failed to search the database for threads");

	// Examine each row looking for a match
	while ($line = mysql_fetch_row($result)) 
	{
		// if the message and the author match, assume it is a duplicate
		if (($line[1] == $msg) and ($line[2]==$fullname))
			return;
	}

	// was not a duplicate, so add it
	$query = "INSERT INTO $g_MessageListTableName VALUES (NULL, '$msg', '$fullname', '$email', '$datetime', '$thread')";
	$result = mysql_query($query)
	    or DBError("Failed to add a new message");
	    
	// update the thread message count
	$query = "UPDATE $g_ThreadListTableName set Posts=Posts+1 WHERE ThreadID = $thread";
	$result = mysql_query($query)
	    or DBError("Failed to update the posts counter");
	    
	// update last posted date
	$query = "UPDATE $g_ThreadListTableName set LastPostedTo='$datetime' WHERE ThreadID = $thread";
	$result = mysql_query($query)
	    or DBError("Failed to update the last posted to date");
	    
	return GetPostsCount($thread);
}

function GetPostsCount($thread)
{
	// find out how many posts there now are
	global $g_ThreadListTableName;
	
	$query = "SELECT Posts FROM $g_ThreadListTableName WHERE ThreadID = $thread";
	$result = mysql_query($query)
		or DBError("Failed to find out how many posts there are");

	if( mysql_num_rows($result) == 1 )
	{
		$line = mysql_fetch_row($result);
		return $line[0];
	}
		
	return 0;
}

function ShowNewTopicForm($pageTitle, $title, $message, $error)
{
	global $g_ThisPage, $_COOKIE;
	$cookie_fullname = $_COOKIE['cookie_fullname'];
	$cookie_email = $_COOKIE['cookie_email'];
	$cookie_website = $_COOKIE['cookie_website'];
	
	PageHeader();
	PrintTitle($pageTitle);
	if( strlen($error) > 0 )
		PrintError($error);	
	?>
	<form method="post" action="<?php print "$g_ThisPage" ?>">
	  <div align="left">
	    <table border="0" cellpadding="0" cellspacing="0" width="440">
	      <tr>
	        <td width="100" valign="top" align="left">Title:</td>
	        <td width="340" valign="top" align="left"><input class="formBox" type="text" name="title" size="51" value="<?php print "$title" ?>" /></td>
	      </tr>
	      <tr>
	        <td valign="top" align="left">Message<span class="requiredWarning">*</span>:</td>
	        <td valign="top" align="left"><textarea class="formBox" rows="7" name="msg" cols="43"><?php print "$message" ?></textarea></td>
	      </tr>
	      <tr>
                <td valign="top" align="left"></td>
                <td valign="top" align="left"><span class="subtle">Do not use HTML tags. Surround URLs with spaces.</span></td>
              </tr>
	      <tr>
	        <td valign="top" align="left"></td>
	        <td valign="top" align="left">&nbsp;</td>
	      </tr>
	      <tr>
	        <td valign="top" align="left">Name:<span class="requiredWarning">*</span>:</td>
	        <td valign="top" align="left"><input class="formBox" type="text" name="fullname" value="<?php print "$cookie_fullname" ?>" size="64" /></td>
	      </tr>
	      <tr>
                <td valign="top" align="left"></td>
                <td valign="top" align="left">&nbsp;</td>
              </tr>
	      <tr>
	        <td valign="top" align="left"></td>
	        <td valign="top" align="left"><input type="submit" value="Post Message" /></td>
	      </tr>
	    </table>
	  </div>
	  <input type="hidden" name="cmd" value="submitnew" />
	</form>
	<?php
	
	PrintStandardFooter("");
}

function ShowReplyForm($msg, $thread, $error)
{
	global $g_ThisPage, $_COOKIE;
	$cookie_fullname = $_COOKIE['cookie_fullname'];
	$cookie_email = $_COOKIE['cookie_email'];
	$cookie_website = $_COOKIE['cookie_website'];

	if( strlen($error) > 0 )
		PrintError($error);
	?>
	<form method="post" action="<?php print "$g_ThisPage" ?>">
	  <div align="left">
	    <table border="0" cellpadding="0" cellspacing="0" width="440">
	      <tr>
	        <td valign="top" align="left">Message<span class="requiredWarning">*</span>:</td>
	        <td valign="top" align="left"><textarea class="formBox" rows="7" name="msg" cols="43"><?php print "$msg" ?></textarea></td>
	      </tr>
	      <tr>
                <td valign="top" align="left"></td>
                <td valign="top" align="left"><span class="subtle">Do not use HTML tags. Surround URLs with spaces.</span></td>
              </tr>
	      <tr>
	        <td valign="top" align="left"></td>
	        <td valign="top" align="left">&nbsp;</td>
	      </tr>
	      <tr>
	        <td valign="top" align="left">Full Name<span class="requiredWarning">*</span>:</td>
	        <td valign="top" align="left"><input class="formBox" type="text" name="fullname" value="<?php print "$cookie_fullname" ?>" size="64" /></td>
	      </tr>
	      <tr>
	        <td valign="top" align="left">E-mail:</td>
	        <td valign="top" align="left"><input class="formBox" type="text" name="email" value="<?php print "$cookie_email" ?>" size="64" /></td>
	      </tr>
	      <tr>
                <td valign="top" align="left"></td>
                <td valign="top" align="left"><span class="requiredWarning">* - Required for processing</span></td>
              </tr>
	      <tr>
                <td valign="top" align="left"></td>
                <td valign="top" align="left">&nbsp;</td>
              </tr>
	      <tr>
	        <td valign="top" align="left"></td>
	        <td valign="top" align="left"><input type="submit" value="Post Reply" /></td>
	      </tr>
	    </table>
	  </div>
	  <input type="hidden" name="thread" value="<?php print "$thread" ?>" />
	  <input type="hidden" name="cmd" value="submitreply" />
	</form>
	<?php
	
	PrintStandardFooter("");
}

?>
<?php

$cmd = $_POST['cmd'];
if( strlen($cmd) == 0 )
	$cmd = $_GET['cmd'];

if ($cmd == "new")
{
	ShowNewTopicForm("Start a New Topic", "", "", "");
}
else if ($cmd == "submitnew")
{
	$title = $_POST['title'];
	$msg = $_POST['msg'];
	$email = $_POST['email'];
	$thread = $_POST['thread'];
	$fullname = $_POST['fullname'];
	
	if( strlen($title) == 0 || strlen($msg) == 0 )
	{
		ShowNewTopicForm("Start a New Topic", $title, $msg, "Please complete all the required fields.");
	}
	else
	{
		$link = OpenSQLConnection()
			or DBError( "Unable to open a connection to the database" );
		if ($title != "" and $msg != "")
		{
			$thread = CreateNewThread($title, $fullname, $email);
			CreateNewMessage($msg, $fullname, $email, $thread);
		}
		CloseSQLConnection($link);
		redirectTo( $g_ThisPage );
	}
}
else if ($cmd == "reply")
{
	$thread = $_GET['thread'];
	
	$link = OpenSQLConnection()
		or DBError( "Unable to open a connection to the database" );
	$title = "Reply to \"";
	$title .= PrintThreadName($thread);
	$title .= "\"";
	PageHeader();
	PrintTitle($title);
	CloseSQLConnection($link);
	
	ShowReplyForm($msg, $thread, "");
}
else if ($cmd == "submitreply")
{
	$msg = $_POST['msg'];
	$email = $_POST['email'];
	$thread = $_POST['thread'];
	$fullname = $_POST['fullname'];
	
	if( strlen($msg) == 0 || strlen($fullname) == 0 )
	{
		$link = OpenSQLConnection()
			or DBError( "Unable to open a connection to the database" );
		$title = "Reply to \"";
		$title .= PrintThreadName($thread);
		$title .= "\"";
		PageHeader();
		PrintTitle($title);
		CloseSQLConnection($link);
		
		ShowReplyForm($msg, $thread, "Please complete all the required fields.");
	}
	else
	{	
		$link = OpenSQLConnection()
			or DBError( "Unable to open a connection to the database" );
		$posts = CreateNewMessage($msg, $fullname, $email, $thread);
		CloseSQLConnection($link);
		redirectTo( $g_ThisPage . "?cmd=show&thread=$thread&posts=$posts" );
	}
}
else if ($cmd == "show")
{
	$thread = $_GET['thread'];
	$link = OpenSQLConnection()
		or DBError( "Unable to open a connection to the database" );
	PrintSingleThread($thread, "");
	CloseSQLConnection($link);
}
else if ($cmd == "runscripts")
{
	ShowLoginPage("", "post", "postrunscripts", "Run Database Scripts");
}
else if ($cmd == "postrunscripts")
{
	$password = $_POST['password'];
	if( $password != $g_Password )
		ShowLoginPage( "Incorrect Password!", "post", "postrunscripts", "Run Database Scripts" );
	else
	{
		$link = OpenSQLConnection()
			or DBError( "Unable to open a connection to the database" );
		RunScripts();
		CloseSQLConnection($link);
		PageHeader();
		print "<p class=pageHeadline>Script run successfully.</p>\n";
		PrintStandardFooter("");
	}
}
else if ($cmd == "manage" )
{
	ShowLoginPage("", "get", "postmanage", "Manage Posts");
}
else if ($cmd == "postmanage" )
{
	$password = $_GET['password'];
	if( $password != $g_Password )
		ShowLoginPage( "Incorrect Password!", "get", "postmanage", "Manage Posts" );
	else
	{
		$link = OpenSQLConnection()
			or DBError( "Unable to open a connection to the database" );
		ShowTopicManagementList($password);
		CloseSQLConnection($link);
	}
}
else if ($cmd == "manage_deleteThread" )
{
	$password = $_GET['password'];
	$thread = $_GET['thread'];
	if( $password != $g_Password )
		ShowLoginPage( "Incorrect Password!", "get", "postmanage", "Manage Posts" );
	else
	{
		$link = OpenSQLConnection()
			or DBError( "Unable to open a connection to the database" );
		DeleteThisThread( $thread );		
		ShowTopicManagementList($password);
		CloseSQLConnection($link);
	}
}
else if ($cmd == "manage_showThread" )
{
	$password = $_GET['password'];
	$thread = $_GET['thread'];
	if( $password != $g_Password )
		ShowLoginPage( "Incorrect Password!", "get", "postmanage", "Manage Posts" );
	else
	{
		$link = OpenSQLConnection()
			or DBError( "Unable to open a connection to the database" );
		ShowThisThread( $thread, $password );
		CloseSQLConnection($link);
	}
}
else if ($cmd == "manage_deletePost" )
{
	$password = $_GET['password'];
	$thread = $_GET['thread'];
	$message = $_GET['message'];
	if( $password != $g_Password )
		ShowLoginPage( "Incorrect Password!", "get", "postmanage", "Manage Posts" );
	else
	{
		$link = OpenSQLConnection()
			or DBError( "Unable to open a connection to the database" );
		DeleteThisPost( $thread, $message );
		ShowThisThread( $thread, $password );
		CloseSQLConnection($link);
	}
}
else if ($cmd == "newmailform" )
{
	$message = $_GET['message'];
	$link = OpenSQLConnection()
		or DBError( "Unable to open a connection to the database" );
	ShowNewMailForm($message, "", "");
	CloseSQLConnection($link);
}
else if ($cmd == "submitnewmail" )
{
	$message = $_POST['message'];
	$msg = $_POST['msg'];
	$fullname = $_POST['fullname'];
	$email = $_POST['email'];
	
	$link = OpenSQLConnection()
		or DBError( "Unable to open a connection to the database" );
	
	if( strlen($msg) == 0 || strlen($fullname) == 0 || strlen($email) == 0 )
		ShowNewMailForm($message, $msg, "Please complete all required fields!");
	else
	{
		$thread = SendEmailToPoster( $message, $msg, $fullname, $email );
		if( $thread > 0 )
		{
			$posts = GetPostsCount($thread);
			redirectTo( $g_ThisPage . "?cmd=show&thread=$thread&posts=$posts" );
		}
		else
		{
			PageHeader();
			PrintError( "An error has occurred. Sorry about that." );
			PrintStandardFooter("");
		}
	}
	
	CloseSQLConnection($link);
}
else if( $cmd == "offset" )
{
	$page = $_GET['page'];
	$link = OpenSQLConnection()
		or DBError( "Unable to open a connection to the database" );
	PrintThreadList( $page );
	CloseSQLConnection($link);
}
else
{
	$link = OpenSQLConnection()
		or DBError( "Unable to open a connection to the database" );
	PrintThreadList();
	CloseSQLConnection($link);
}


