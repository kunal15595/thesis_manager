
<HTML>
<BODY>
<?php
include '../config/config.php';
include '../config/connect.php';

//To set the Php.Ini in the server
ini_set("SMTP","SMTP.blabla.com");//SMTP Server
ini_set("sendmail_from","Sender@blabla.com");//Sender
set_time_limit(19200);//Greater time limit.This is to make sure the page can operate in 5 hours.Input in second
 
if(empty($SEND))
    {
        $SEND="";
    }
 
switch($SEND)
    {
        case "Send":
            if(!empty($MESSAGE))
            {
                $HEADERS  = "MIME-Version: 1.0\r\n";
                $HEADERS .= "Content-type: text/html; charset=iso-8859-1\r\n";
                $HEADERS .= "From: admin@thesisManager\r\n";//Sender's address
     
                $linkID = mysql_connect(constant("HOSTNAME"),constant("USERNAME"),constant("PASS"));//MySQL connection
                mysql_select_db(constant("DBNAME"), $linkID);//Database name
     
                $obRS = mysql_query("SELECT user_nm as email_id FROM list", $linkID);//Where the mail attribute
             
                while($row = mysql_fetch_row($obRS))
                {
                    foreach ($row as $field)
                    {
                        mail($field, $SUBJECT, $MESSAGE, $HEADERS);
                        print "Message sent to: <b>$field</b><br>";
                        echo date('h:i:s');                 
                    }
                    sleep(60);//Delay before proceeding to another mail.Input in Second.
                }
 
                mysql_close($linkID);
?>
                <br>
                <table width="500" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td colspan="2"><hr>
                      <div align="center"><b>Message Detail</b>
                      </div>
                    <hr></td>
                  </tr>
                  <tr>
                    <td width="57"><b>Subject:</b></td>
                    <td width="443"><?php echo $SUBJECT ?>
                    <div align="left"></div></td>
                  </tr>
                  <tr>
                    <td><b>Message:</b></td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td colspan="2"> <?php echo $MESSAGE ?></td>
                  </tr>
                </table>              
<?php
            }
        break;
        default:
?>
<FORM ACTION="Automail.php" METHOD="POST" NAME="FORM1">
<table width="501" border="0" cellpadding="0" cellspacing="0" bordercolor="#ECE9D8">
<tr>
  <td colspan="2"><div align="center"><span class="style2"></span></div>    <span class="style2"><hr align="center">
    <div align="center">Auto Mail</div>
    <hr align="center"></span></td>
  </tr>
<tr>
  <td colspan="2">&nbsp;</td>
  </tr>
<tr>
<td width="51">Subjek:</td>
<td width="450"><input name=SUBJECT type=TEXT size="75" ></td>
</tr>
<tr>
<td colspan="2">Insert your message or HTML code below </td>
</tr>
<tr>
<td colspan="2"><textarea name=MESSAGE cols="65" rows="15"></textarea></td>
</tr>
<tr>
<td>&nbsp;</td>
<td><div align="right">
<input type="reset" name="Reset" value="Reset">
<input type="submit" value="Send" name="SEND" >
</div></td>
</tr>
</table>
</FORM>
<?php
    }
?>
</BODY>
</HTML>