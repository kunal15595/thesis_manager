<?php
    if (!($con = mysql_connect(constant("HOSTNAME"), constant("USERNAME"), constant("PASS")))) {
        $result = "SERVER_CONNECTION_ERROR";
        die($result);
    } else if (!($select = mysql_select_db(constant("DBNAME"), $con))) {
        $result = "DB_CONNECTION_ERROR";
         die($result);
    } 

?>