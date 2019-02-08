<?php

date_default_timezone_set('America/Buenos_Aires');

class appconfig {

function conexion() {
/*
		$hostname = "localhost";
		$database = "trivia593lapreli";
		$username = "root";
		$password = "";
*/

		$hostname = "localhost";
		$database = "u235498999_preli";
		$username = "u235498999_preli";
		$password = "rhcp7575preli";

		//u235498999_kike usuario


		$conexion = array("hostname" => $hostname,
						  "database" => $database,
						  "username" => $username,
						  "password" => $password);

		return $conexion;
}

}




?>
