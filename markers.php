<?php

$db = new PDO('mysql:host=;dbname=', '', '');
		

$doc = new DOMDocument("1.0");
$node = $doc->createElement("markers");
$parnode = $doc->appendChild($node);

$stmt = $db->prepare("SELECT * FROM filtered");
$stmt->execute();
$fetched = $stmt->fetchAll(PDO::FETCH_ASSOC);


header("Content-type: text/xml");

$i=0;
for($i; $i<sizeof($fetched);$i++){
$row = $fetched[$i];
	$node = $doc->createElement("marker");
	$newNode = $parnode->appendChild($node);

	
	$newNode->setAttribute("id", $row['id']);	
	$newNode->setAttribute("latitude", $row['latitude']);
	$newNode->setAttribute("longitude", $row['longitude']);
	$newNode->setAttribute("destination", $row['destination']);
	$newNode->setAttribute("route_number", $row['route_number']);
	$newNode->setAttribute("road_used", $row['road_used']);
	$newNode->setAttribute("price_range", $row['price_range']);
	$newNode->setAttribute("sacco_name", $row['sacco_name']);
	
}
echo $doc->saveXML();

?>
