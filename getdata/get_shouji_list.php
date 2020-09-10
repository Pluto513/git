<?php
session_start();
ob_start();
include 'Conn.php';
$bookpf=[];
$name=$_GET["name"];
if ($name){
    $res = query("select * from telephone where name like '%{$name}%'");
}else{
    $res = query("select * from telephone");
}

while($row = $res->fetch_assoc()){
    $bookpf[]=$row;
}
$list=[];
$list["data"]=$bookpf;
$list["code"]=0;
$list["count"]=count($bookpf);
echo json_encode($list);