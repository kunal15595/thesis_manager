<?php
    session_start();
    if (!isset($_SESSION['user_nm'])) {
        header("Location: ".constant("HOST11")."/login.php");
    }
?>