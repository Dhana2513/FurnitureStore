<?php
include ('../../includes/mysqli_connect.php');
include ('../../includes/functions.php');
$cid = validate_id($_GET['cid']);
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $errors = array();
    if (empty($_POST['Category'])) {
        $errors[] = 'Please enter the name Category';
    } else {
        $cat_name = mysqli_real_escape_string($dbc, strip_tags($_POST['Category']));
    }
    if (isset($_POST['position']) && filter_var($_POST['position'], FILTER_VALIDATE_INT, array('min_array' => 1))) {
        $position = $_POST['position'];
    } else {
        $errors[] = 'Please select a location for Category ';
    }
    //check Category_url(url co the co hoac ko)
    $url = mysqli_real_escape_string($dbc,$_POST['url']);

    if (empty($errors)){
        $q = "UPDATE categories SET cat_name = '{$cat_name}' , position = '{$position}',url = '{$url}' WHERE cat_id = '{$cid}' ";
        $r = mysqli_query($dbc,$q);
        confirm_query($r,$q);
        if (mysqli_affected_rows($dbc) == 1){
            $msg = "Corrected Category successfully";
            $suc = 1;
        }else{
            $msg = "Error! Category has not changed";
            $suc = 0;
        }
    } else {
        foreach ($errors as $error){
            $msg .= $error . "<br/>";
        }
    }
    header('Location: ../edit_category.php?cid='.$cid.'&&'.'msg=' . $msg.'&&'.'suc='.$suc);
}
?>