<?php
$servername = "127.0.0.1";
$username = "";
$password = "";

try {
    $pdo = new PDO("mysql:host=$servername;dbname=uha", $username, $password);
    // set the PDO error mode to exception
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch(PDOException $e)
{
    echo "Connection failed: " . $e->getMessage();
}

$locations = array();
$accidentData = array();

//$sql1 = "SELECT CONCAT(ASTREET, ' & ', BSTREET) AS title, GIS_LAT AS lat, GIS_LONG AS lng FROM uhaRecords WHERE (ASTREET LIKE 'Coal' OR BSTREET LIKE 'Coal') OR (ASTREET LIKE 'lead' OR BSTREET LIKE 'lead')";
//$sql2 = "SELECT year as title, count(*) as accidents FROM uhaRecords WHERE (ASTREET LIKE 'Coal' OR BSTREET LIKE 'Coal') OR (ASTREET LIKE 'lead' OR BSTREET LIKE 'lead') GROUP BY year";

$sql1 = "SELECT objectid, CONCAT(ASTREET, ' & ', BSTREET) AS title, year, GIS_LAT AS lat, GIS_LONG AS lng FROM uhaRecords WHERE CITY = 'Albuquerque'";
$sql2 = "SELECT year as title, count(*) as accidents FROM uhaRecords WHERE CITY = 'Albuquerque' GROUP BY year";

$stmt1 = $pdo->query($sql1);
$stmt2 = $pdo->query($sql2);

while($row1 = $stmt1->fetch(PDO::FETCH_ASSOC)) {
    $locations[] = $row1;
}

while($row2 = $stmt2->fetch(PDO::FETCH_ASSOC)) {
    $accidentData[] = $row2;
}

$fp1 = fopen('locations.json', 'w');
fwrite($fp1, json_encode($locations));
fclose($fp1);

$fp2 = fopen('accidents.json', 'w');
fwrite($fp2, json_encode($accidentData));
fclose($fp2);

