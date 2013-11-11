<?php

/*
 * This file is generated by S. Das.
 * Do not copy it without permission.
 */
//Contact at: tapan84silchar[at]gmail.com
function isInFileFormat($fileName,$format){
    $revFileName=strrev($fileName);
    $revFileExt=substr($revFileName,0,strlen($format));
    if(strtoupper(strrev($format))==strtoupper($revFileExt)){
        return TRUE;
    }
    return FALSE;
}
function generatePassword($length=9, $strength=0) {
    $vowels = 'aeuy';
    $consonants = 'bdghjmnpqrstvzBDGHJLMNPQRSTVWXZ';
    if ($strength & 1) {
        $consonants .= 'BDGHJLMNPQRSTVWXZ';
    }
    if ($strength & 2) {
        $vowels .= "AEUY";
    }
    if ($strength & 4) {
        $consonants .= '23456789';
    }
    if ($strength & 8) {
        $consonants .= '@#$%';
    }

    $password = '';
    $alt = time() % 2;
    for ($i = 0; $i < $length; $i++) {
        if ($alt == 1) {
            $password .= $consonants[(rand() % strlen($consonants))];
            $alt = 0;
        } else {
            $password .= $vowels[(rand() % strlen($vowels))];
            $alt = 1;
        }
    }
    return $password;
}

function getLastDate($class) {
    $result;
    require '../../config/connect.php';

        $sql = "SELECT last_date from schedule where class='" . $class . "'";
        $result = mysql_query($sql);
        $flag = FALSE;
        while ($row = mysql_fetch_assoc($result)) {
            $flag = TRUE;
            session_start();
            $_SESSION['admin_last_date'] = convertMySQLDateIntoPHPTime($row['last_date']." 16:00:00");
        }
        if ($flag == TRUE) {
            $result = "DONE";
        } else {
            $result = "NOT_FOUND";
        }
    
    mysql_close($con);
    return $result;
}

function convertMySQLDateIntoPHP($mysqlDate) {
    $phpDate = "";
    $datePart = preg_split("/[-:\s]/", $mysqlDate);
    $phpDate = $datePart[2] . "-" . $datePart[1] . "-" . $datePart[0];
    return $phpDate;
}

function convertMySQLDateIntoPHPTime($mysqlDate) {
    $datePart = preg_split("/[-:\s]/", $mysqlDate);
    if (count($datePart) < 4) {
        $phpDate = mktime(0,0,0,$datePart[1], $datePart[2], $datePart[0]);
    } else {
        $phpDate = mktime($datePart[3], $datePart[4], $datePart[5], $datePart[1], $datePart[2], $datePart[0]);
    }
    return $phpDate;
}
?>
