<?php

$connection = mysql_connect("localhost","root","pablo");
$db = mysql_select_db("initekumenapp", $connection);

$sentence = "SELECT * FROM infodevices";
$result = mysql_query($sentence,$connection);

$data = array();

while ($row = mysql_fetch_array($result)) {
	$iddevice = $row['iddevice'];
	$name = $row['name'];
	$latitude = $row['latitude'];
	$longitude = $row['longitude'];
	$limitup = $row['limitup'];
	$limitdown = $row['limitdown'];
	$description = $row['description'];
	$address = $row['address'];

	//here get the last data sense of device
	$sentence = "SELECT altitude FROM datadevices WHERE iddevice='$iddevice' ORDER BY id DESC LIMIT 1";
	$resultCurrent = mysql_query($sentence,$connection);
	if(mysql_num_rows($resultCurrent) == 0)
		$current = 0;
	else
		$dataCurrent = mysql_fetch_assoc($resultCurrent);
		$current =$dataCurrent['altitude'];


	//echo $current;
	//select the color resopect to data
	$colorDevice = "label-info";

	if ((floatval($current) < floatval($limitup)) && (floatval($current) > floatval($limitdown))) 
			$colorDevice = "label-success";
	else{
			if (floatval($current)>floatval($limitup)) 
				$colorDevice = "label-danger";
		}	

	$data[] = array('name' => $name, 'latitude' => $latitude, 'longitude' => $longitude, 'limitup' => $limitup, 'limitdown' => $limitdown, 'current' => $current, 'colorDevice' => $colorDevice, 'description' => $description, 'address' => $address);
	
}

mysql_close($connection);

$json_string = json_encode($data);
echo $json_string;


?>