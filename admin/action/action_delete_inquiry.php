<?php
include ('../../includes/mysqli_connect.php');
include ('../../includes/functions.php');
$msg= '';
$suc= '';

$inquiry_id = validate_id($_GET['inquiry_id']);

if ($_SERVER['REQUEST_METHOD'] = 'POST') {
    if (isset($_POST['delete']) && ($_POST['delete'] == 'Delete')) {
        $q = "DELETE FROM inquiry_master WHERE inquiry_id = $inquiry_id ";
        $r = mysqli_query($dbc, $q);
        confirm_query($r, $q);

        if (mysqli_affected_rows($dbc) == 1) {
            $msg = "Delete Inquiry was successful";
            $suc = 1;
        } else {
            $msg = "This Inquiry does not exist!";
            $suc = 0;
        }
    } elseif (isset($_POST['delete']) && ($_POST['delete'] == 'Cancel')){
        $msg = "You have canceled the Inquiry deletion.";
        $suc = 0;
    }
    header('Location: ../view_inquiry_details.php?msg=' . $msg.'&&'.'suc='.$suc);
}

?>