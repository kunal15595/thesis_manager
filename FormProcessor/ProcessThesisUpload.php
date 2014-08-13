<?php

/*
 * This file is generated by S. Das.
 * Do not copy it without permission.
 */
//Contact at: tapan84silchar[at]gmail.com
include '../config/config.php';
include '../Macros/CommonFunctions.php';
// echo "1";
session_start();
$pageResultString = "";
$finalResult = FALSE;
if (isset($_FILES["fileThesis"]) && isset($_FILES["fileThesisTxt"])) {
    $title = htmlspecialchars(addslashes($_POST['txtTitle']));
    //$advisor = $_POST['comboAdvisor'];
    //$permission = $_POST['chkPermission'];
    $abstract = htmlspecialchars(addslashes($_POST['txtAbstract']));
    $thesisFile = $_FILES["fileThesis"];
    $thesisFileTxt = $_FILES["fileThesisTxt"];
    $isOverWrite = $_POST['chkOverwrite'];
    $time_now = mktime(date('H') + 5, date('i') + 30, date('s'), date('m'), date('d'), date('Y'));
echo "2";
    $newFileName = $_SESSION['roll_number'] . '-' . $_SESSION['class'] . "PI.pdf";
    $newFileNameTxt = $_SESSION['roll_number'] . '-' . $_SESSION['class'] . "PI.txt";
    
    if ($title == "" && $abstract == "" && !isInFileFormat($thesisFile["name"], "pdf") && !isInFileFormat($thesisFileTxt["name"], "txt")) {
        $pageResultString = '<br/><b>Uploading Failed. May be file size is more than 6MB.</b>';
    } else if ($_FILES["fileThesis"]["error"] > 0) {
        $pageResultString = "<br/><br/>File uploading failed. Error: ".codeToMessage($_FILES["fileThesis"]["error"]).".  Please try again.";
    } else if ($_FILES["fileThesis"]["type"] != "application/pdf") {
        $pageResultString = "<br/><br/>File uploading failed. MIME check failed. Regenerate your pdf file and try again.";
    } else if (file_exists("../Upload/" . $_SESSION['class'] . "/" . $newFileName) && $isOverWrite != "ON") {
        $pageResultString = '<br/><b>You already uploaded a report.</b>
            <br/>If you want to overwrite your previous upload, then go to <a href="' . constant("HOST11") . '/upload_thesis.php">uploading page</a> and repeat the process with the <b>overwrite</b> option.';
    } else {
        $result = "NONE";
        require '../config/connect.php';
            $sql = "SELECT user_nm FROM projects WHERE user_nm='" . $_SESSION['user_nm'] . "'";
            $rs = mysql_query($sql);
            if (mysql_affected_rows() >= 1) {
                $sql_inner = "UPDATE projects SET thesis_title='" . $title . "',report_file_name='" . $_FILES["fileThesis"]["name"] . "'," .
                        "abstract='" . $abstract . "',submitted_at='" . date("Y-m-d H:i:s", $time_now) . "'," .
                        "submitted_by='" . $_SESSION['name'] . "[" . $_SESSION['user_nm'] . "]' WHERE user_nm='" . $_SESSION['user_nm'] . "'";
            } else {
                $sql_inner = "INSERT INTO projects (user_nm,thesis_title,report_file_name,abstract,submitted_at,submitted_by)" .
                        "VALUES('" . $_SESSION['user_nm'] . "','" . $title . "','" . $_FILES["fileThesis"]["name"] . "'," .
                        "'" . $abstract . "','" . date("Y-m-d H:i:s", $time_now) . "','" . $_SESSION['name'] . "[" . $_SESSION['user_nm'] . "]')";
            }
            $rs = mysql_query($sql_inner);
            //$row = mysql_fetch_assoc($rs);
            if (mysql_affected_rows() >= 1) {
                $result = "DONE";
            } else {
                $result = "UNDONE";
            }
        
        mysql_close($con);
echo "3";

        if ($result == "DONE") { //If database operation was successful.
            $file_exist = FALSE;
            $file_renamed = FALSE;
            $fullpath = "../Upload/" . $_SESSION['class'] . "/pdf/" . $newFileName;
            $fullpathTxt = "../Upload/" . $_SESSION['class'] . "/text/" . $newFileNameTxt;
            //If file already exists, then rename it to a temp file. The concept of renaming and not deleting is that
            // the new file may not upload successfully. In that case we will lose both the files.
            if (file_exists($fullpath)) {
                $file_exist = TRUE;
                //unlink("../Upload/" . $_SESSION['class'] . "/" . $newFileName);
                $tag = 'temp_';
                // $old = '../Upload/' . $_SESSION['class'] . '/pdf/' . $newFileName;
                // $new = '../Upload/' . $_SESSION['class'] . '/pdf/'. $tag . $newFileName;
                // $file_renamed = rename($old , $new);
                // $file_renamed = rename("../Upload/" . $_SESSION['class'] . "/pdf/" . $newFileName, "../Upload/" . $_SESSION['class'] . "/pdf/". "_temp" . $newFileName);
            
                 $info = pathinfo($fullpath);
                $newpath = $info['dirname'] . '/' . $tag. $info['filename'].'.'.'pdf';
                $newpathTxt = $info['dirname'] . '/' . $tag. $info['filename'].'.'.'txt';
                 $file_renamed = rename($fullpath , $newpath);
                 $file_renamedTxt = rename($fullpathTxt , $newpathTxt);
            }

            //If the file was exists but the renaming operation was unsuccessfull.
            if ($file_exist == TRUE && $file_renamed == FALSE) {
                $pageResultString = '<br/><br/><b>Uploading could not file_renamed!!!!';
            } else {
                //Copy the file to exact location.
                    $res1 = move_uploaded_file($_FILES["fileThesis"]["tmp_name"], "../Upload/" . $_SESSION['class'] . "/pdf/" . $newFileName);
                    $res2 = move_uploaded_file($_FILES["fileThesisTxt"]["tmp_name"], "../Upload/" . $_SESSION['class'] . "/text/" . $newFileNameTxt);

                if ($res1 == FALSE || $res2 == FALSE) {
                    $pageResultString = '<br/><br/><b>Uploading Failed!!!!!!</b><br/>Unable to store your file in ../Upload/'.$_SESSION['class'].'/<br>'.'Please try again.';
                } else {
                    unlink("../Upload/" . $_SESSION['class'] . "/pdf/temp_" . $newFileName);
                    $log_file_name = $_SESSION["roll_number"] . '-' . date("d-M-Y-G:i") . '.pdf';
                    copy("../Upload/" . $_SESSION['class'] . "/" . $newFileName, "../Upload/LOG/" . $_SESSION['class'] . "/pdf/" . $log_file_name);
                    $pageResultString = '<br/><b>Uploading Successfull.</b> 
                                     <br/><br/>Verify the followings by clicking <a href="status.php">here</a>:
                                     <ul>
                                     <li>Make sure that the informations you have entered are all correct.</li>
                                     <li>Download and verify your uploaded thesis file.</li>
                                     </ul>
                                     <b/><br/><span style="color: red;font-weight: bold">Do it now, you cannot complain later.<span/>';
                    $finalResult = TRUE;
                }
            }
        } else { // If data base operation was not successful.
            $pageResultString = '<br/><br/><b>Uploading failed due to some database/file errror.</b>
                                 <br/>Try again by:
                                 <ul>
                                 <li><span style="color: green;font-size: 16px;font-style: italic">Removing all special characters from thesis title and abstract.</span></li>
                                 <li><span style="color: green;font-size: 16px;font-style: italic">Rename your thesis file with a simple and short name. e.g., MyThesis.pdf</span></li>
                                 <li><span style="color: green;font-size: 16px;font-style: italic">Your file wont be upload if its size is grater than 6MB</span></li>
                                 </ul>';
        }
    }
echo "4";
    //******** REMOVE PERMISSION IF UPLOADING SUCCESSFULL***************************
    if ($finalResult == TRUE) {
        $result = "NONE";
        require '../config/connect.php';
            $sql_inner = 'UPDATE projectmanager.student set `permission`="NO" where user_nm="' . $_SESSION["user_nm"] . '"';
            mysql_query($sql_inner);
            if (mysql_affected_rows() >= 1) {
                $_SESSION["permission"] = "NO";
            }
        
        mysql_close($con);
    }
    $_SESSION['queryString'] = $pageResultString;
    header("Location: " . constant("HOST11") . "/user_result.php");
echo "5";
}
?>
