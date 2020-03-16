<?php
$dbc = mysqli_connect('localhost','root','','furniture_store');
if (!$dbc){
    trigger_error('Unable to connect data due to : '.mysqli_connect_error());
}else{
    mysqli_set_charset($dbc,'utf8');
}
?>