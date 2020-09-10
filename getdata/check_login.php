<?php
session_start();
ob_start();
include 'Conn.php';
$account=$_POST["account"];
$password=md5($_POST["password"]);
$res = query("select * from user where username='{$account}' and password='{$password}'");
if ($account&&$password){
    if($res->num_rows > 0){
        $row = $res->fetch_assoc();
         echo json_encode(array("msg"=>"登录成功","code"=>200));
        exit;
    }else{
        echo json_encode(array("msg"=>"账号或密码错误","code"=>-100));
        exit;
    }
}else{
    echo json_encode(array("msg"=>"账号或密码错误","code"=>-100));
    exit;
}