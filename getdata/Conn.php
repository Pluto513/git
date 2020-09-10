<?php
header('Content-Type: text/html;charset=utf-8');
header('Access-Control-Allow-Origin:*'); // *代表允许任何网址请求
header('Access-Control-Allow-Methods:POST,GET,OPTIONS,DELETE'); // 允许请求的类型
header('Access-Control-Allow-Credentials: true'); // 设置是否允许发送 cookies
header('Access-Control-Allow-Headers: Content-Type,Content-Length,Accept-Encoding,X-Requested-with, Origin'); // 设置允许自定义请求头的字段
//定义数据库连接方法
function query($sql){
    $mysqli = new mysqli('127.0.0.1','root','123456','new_huawei');
    //判断连接条件
    if($mysqli->connect_errno){
        die($mysqli->connect_error);
    }
    //设置编码格式
    $mysqli->query('set names utf8');
    //执行
    $res = $mysqli->query($sql);
    //关闭数据库
    $mysqli->close();
    //返回数据
    return $res;
}
?>
