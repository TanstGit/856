<?php

$tmpName = $_FILES['upload_file']['tmp_name'];             //post from form
 
$mylista = file_get_contents($tmpName);		//load file into string

$mylistb = array_map('fgetcsv', file($tmpName));	//load file into array attempt 1

$mylistc = array_map('str_getcsv', file($tmpName));	//load file into array attempt 2
//$aSliceofThePie = array_slice($mylistc

///// PRINT VAR CONTENTS TO SCREEN IN FORMATS FOR TESTING/////
	echo "STRINGVARS MYLIST A";
	echo "<BR>";
	echo "<BR>";
	echo "Echo:";
	echo "<BR>";
	echo "<BR>";
echo $mylista;				//echo string mylista
	echo "<BR>";
	echo "<BR>";
	echo "VarDump mylista:";
	echo "<BR>";
	echo "<BR>";
var_dump($mylista);				//var_dump mylista
	echo "<BR>";
	echo "<BR>";
	echo "<BR>";


	echo "ARRAYVARS MYLIST B";
	echo "<BR>";
	echo "VarDump mylistb:";
	echo "<BR>";
var_dump($mylistb);				//var_dump mylistb
	echo "<BR>";
	echo "<BR>";
	echo "<BR>";
	echo "<BR>";
	echo "print_r mylistb: ";
	echo "<BR>";
print_r($mylistb);				//print_r array values mylistb
	echo "<BR>";
	echo "<BR>";
	echo "<BR>";
	echo "<BR>";
	echo "<BR>";
	echo "ARRAYVARS MYLIST C";
	echo "<BR>";
	echo "<BR>";
	echo "VarDump mylistc:";
	echo "<BR>";
var_dump($mylistc);				//var_dump mylistc
	echo "<BR>";
	echo "<BR>";
	echo "<BR>";
	echo "<BR>";
	echo "print_r mylistc:";
	echo "<BR>";
print_r($mylistc);				//print_r array values mylistc
	echo "<BR>";
	echo "<BR>";
	echo "<BR>";
	echo "<BR>";
	//echo "echo mylistc:";
	//echo "<BR>";
	//$mylistc = explode(",",$mylistc);                        //convert array into string
	//echo($mylistc);			//echo array values mylistc as string value mylistc
	echo "remove first line from mylistc:";
	echo "<BR>";
	echo "<BR>";

	$mylistd = array_shift($mylistc);
	var_dump($mylistd);
	echo "<BR>";
	echo "<BR>";
	echo "<BR>";
	echo "<BR>";
	$myliste = array_slice($mylistc, 1, 1);
	var_dump($myliste);
	echo "<BR>";
	echo "<BR>";
	echo "<BR>";
	echo "<BR>";
	$mylistf = array_slice($myliste ,0,2) ;
	var_dump($mylistf);


?>
