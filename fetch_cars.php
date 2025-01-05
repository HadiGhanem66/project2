<?php
$host = "localhost";
$user = "root";
$password = "";
$db = "car_database";
header("Access-Control-Allow-Origin: *");

$conn = new mysqli($host, $user, $password, $db);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$minPrice = $_GET['minPrice'];
$maxPrice = $_GET['maxPrice'];

$sql = "SELECT * FROM cars WHERE price BETWEEN ? AND ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("dd", $minPrice, $maxPrice);
$stmt->execute();
$result = $stmt->get_result();

$cars = [];
while ($row = $result->fetch_assoc()) {
    $cars[] = $row;
}

echo json_encode($cars);

$stmt->close();
$conn->close();
?>
