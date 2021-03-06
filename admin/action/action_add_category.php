<?php
session_start();
$account = $_SESSION['user_account'];
$permission = 'add_category';
include ('../../includes/mysqli_connect.php');
include ('../../includes/functions.php');
if (!has_permission($account,$permission)){
    header('Location: ../view_categories.php');
    exit;
}
$msg= '';
$suc= '';
    if ($_SERVER['REQUEST_METHOD'] == 'POST'){
        $errors = array();
        if (empty($_POST['Category'])){
            $errors[] = 'Please enter the name Category';
        }else {
            $cat_name = mysqli_real_escape_string($dbc,strip_tags($_POST['Category']));
        }
        if (isset($_POST['position']) && filter_var($_POST['position'],FILTER_VALIDATE_INT,array('min_array' => 1))){
            $position = $_POST['position'];
        }else {
            $errors[] = 'Please select a location for Category';
        }

        if (empty($errors)){
            $q = "INSERT INTO categories (cat_name,position) VALUE ('{$cat_name}',$position)";
            $r = mysqli_query($dbc,$q);
            confirm_query($r,$q);

            if (mysqli_affected_rows($dbc) == 1){
                $msg = "Add Category successfully";
                $suc = 1;
            }else{
                $msg = "Error! Adding Category failed";
                $suc = 0;
            }
        } else {
            foreach ($errors as $error){
                $msg .= $error . "<br/>";
            }
        }

        header('Location: ../add_category.php?msg=' . $msg.'&&'.'suc='.$suc);
    }
?>