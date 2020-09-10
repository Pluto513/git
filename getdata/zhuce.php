<?php
session_start();
ob_start();
include 'Conn.php';
$username=$_POST["username"];
$password=md5($_POST["password"]);
$sql ="insert into user(username,password) values('{$username}','{$password}')";
if ($username&&$password){
    $res = query($sql);
}
