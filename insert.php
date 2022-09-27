<?php
	//require the database connection
	require_once 'conn.php';
 
	if(ISSET($_POST['save'])){
 		//setting up the variables
		$firstname = $_POST['name'];
		$lastname = $_POST['login'];
		$address = $_POST['pass'];
 
 
		try{
			//setting attribute on the database handle
			$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			//Inserstion Query
			$sql = "INSERT INTO `users`(name, login, pass)  VALUES ('$firstname', '$lastname', '$pass')";
			//Execute Query
			$conn->exec($sql);
		}catch(PDOException $e){
			// Display error message
			echo $e->getMessage();
		}
 		//Closing the connection
		$conn = null;
 		//redirecting to the index page
		header("location: index.php");
 
	}
?>