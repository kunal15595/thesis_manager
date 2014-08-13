<html>
<body>


<?php
// $file=fopen("abc.txt","r") or exit("Unable to open file!");
// while (!feof($file))
//   {
//   echo fgetc($file);
//   }
// fclose($file);
// $result=exec("plagrism_check/main.py", "plagrism_check/shu.txt", "plagrism_check/abc.txt");
echo exec("python c:\wamp\www\ProjectUploader\plagrism_check\main.py c:\wamp\www\ProjectUploader\plagrism_check\shu.txt c:\wamp\www\ProjectUploader\plagrism_check\abc.txt",$output);
// echo shell_exec("/usr/bin/python /var/www/ProjectUploader/plagrism_check/test.py");
// echo exec ("ls / -al >/var/www/ProjectUploader/plagrism_check/abc.txt");
// exec("exit(0)"); 
//$out=json_decode($output);
// echo $output;
// echo $out;
// echo $output;
// echo exec("/usr/bin/python /var/www/ProjectUploader/plagrism_check/main.py");

?>

</body>
</html>
