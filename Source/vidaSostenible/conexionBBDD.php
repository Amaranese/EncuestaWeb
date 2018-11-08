<?php
$servername = "localhost";
$user = "root";
$password = "";
$dbname = "vidaSostenible";
$conn = new mysqli($servername, $user,$password,
$dbname);
// Check connection
if ($conn->connect_error) {
    die("Error: " . $conn->connect_error);
}
mysqli_set_charset($conn,"utf8");
?>