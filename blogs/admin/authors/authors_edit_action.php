<?php
session_start();
// echo "<pre>";
// print_r($_SESSION);
// echo "</pre>";

//echo    $_SESSION['isLogin']; 
if(!isset($_SESSION['isLogin']) && $_SESSION['isLogin'] != true){
    header("Location: login.php");
}
   
require_once('../../connection.php');
$id = $_POST['id'];
$name = $_POST['name'];
$email = $_POST['email'];
$query = "UPDATE authors SET name = '".$name."' ,email ='".$email."' WHERE id =".$id;

$status = $conn->query($query);
var_dump($status);
if($status == true)
{
    setcookie('msg', 'Cập nhật thành công', time() + 5);
    header('Location: authors_list.php');
}
else
{
    setcookie('msg', 'Cập nhật không thành công', time() + 5);
    header('Location: authors_edit.php?id='.$id);
}
?>