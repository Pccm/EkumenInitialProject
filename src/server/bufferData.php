
<?php

$connection = mysql_connect("localhost","root","pablo");
$db = mysql_select_db("initekumenapp", $connection);

//obtiene lo que envia el arduino
list($id,$altitude) = split(",",$_GET['data']);

$sentence = "INSERT INTO datadevices(iddevice,altitude) VALUES ('$id','$altitude')"; 
$result = mysql_query($sentence, $connection );

if(!$result) 
	echo "Error";
else
    echo "Success!!!,";

mysql_close($connection); // Closing Connection





?>