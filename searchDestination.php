<?php

$db = new PDO('mysql:host=;dbname=', '', '');

//COLLECT USER'S QUERY
isset($_POST['user_query'])? $dest = $_POST['user_query']: $dest = "";

//EMPTY FILTRATION TABLE
$stmt = $db->prepare("DELETE FROM `filtered` WHERE 1");
$stmt->execute();

//SEARCH FROM ORIGI AND INSERT INTO FILTERED (WITHOUT NORMALISATION)
/*$sql = $db->prepare("
	INSERT INTO filtered(id, latitude, longitude, destination, route_number, road_used, price_range, sacco_name)
	SELECT * FROM terminus WHERE destination like '%$dest%'");
$sql->execute();

*/
//SEARCH FROM ORIGI AND INSERT INTO FILTERED (WITH NORMALISATION)
$sql = $db->prepare("
	INSERT INTO filtered VALUES(latitude, longitude, destination, route_number, road_used, price_range, sacco_name)
	SELECT p.latitude, p.longitude, p.destination, r.route_number, q.road_used, r.price_range, q.sacco_name
	FROM terminus_location p
	INNER JOIN terminus_road q ON q.id = p.id
	INNER JOIN terminus_route r ON r.id = p.id
	WHERE p.destination like '%$dest%'");
$sql->execute();


$count=$db->prepare("SELECT * FROM filtered");
$count->execute();
$rows=$count->rowCount();

if($rows==0){
	echo "0";
}else{
	echo "1";
}
		




?>
