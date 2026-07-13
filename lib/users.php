<?php
session_start();

include "connection.php";

if(!isset($_SESSION['user_id']))
    {
        header("location: login.php");
        exit();
    }

    $sql ="SELECT * FROM users order by id";

    $result = mysqli_query($conn,$sql);

    ?>
