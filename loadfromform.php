<?php
$tmpName = $_FILES['upload_file']['tmp_name'];		//post from form
$mylista = file_get_contents($tmpName);			//load file into string
$mylistb = array_map('fgetcsv', file($tmpName));	//load file into array attempt 1
$mylistc = array_map('str_getcsv', file($tmpName));	//load file into array attempt 2
?>
