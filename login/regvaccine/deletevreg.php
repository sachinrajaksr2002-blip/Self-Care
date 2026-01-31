<?php
include_once '../assets/conn/dbconnect.php';
// Get the variables.
$icPatient = $_POST['vic'];
// echo $appid;

$delete = mysqli_query($con,"DELETE FROM tblvaccine WHERE vid=$icPatient");
// if(isset($delete)) {
//    echo "YES";
// } else {
//    echo "NO";
// }



?>

