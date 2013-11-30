<?php
require_once '../PhpIncludeFiles/Database/AdminRecordManager.php';
$roll = "MT";
        $pageCounter = 1;
        if (isset($_GET['class'])) {
            $roll = $_GET['class'];
            if ($roll != "MT" && $roll != "BT") {
                $roll = "NONE";
            }
        }
        if (isset($_GET['pageCount'])) {
            $pageCounter = $_GET['pageCount'];
        }
        if ($roll != "NONE") {
            $result = getAllRecords( $roll, $pageCounter );
        } else {
            $result = "NONE";
        }
echo 'hello';

?>