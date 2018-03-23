<?php

$tmpName = $_FILES['upload_file']['tmp_name'];		//post from form
$mylista = file_get_contents($tmpName);			//load file into string
$mylistb = array_map('fgetcsv', file($tmpName));	//load file into array attempt 1
$mylistc = array_map('str_getcsv', file($tmpName));	//load file into array attempt 2

$CurrentTime1 = date("ymd");       //FormatTime, CurrentTime1, , yyMMdd
$CurrentTime2 = date("Hi");        //FormatTime, CurrentTime2, , HHmm
$CurrentTime3 =  date("Ymd");        //FormatTime, CurrentTime3, , yyyyMMdd
$CurrentTime4 = date("His");       //FormatTime, CurrentTime4, , HHmmss

$BSN03 = $CurrentTime3;
$BSN04 = $CurrentTime2;
$DTM01 = $CurrentTime3;
$DTM02 = $CurrentTime2;
$GS04 = $CurrentTime3;
$GS05 = $CurrentTime4;
$ISA09 = $CurrentTime1;
$ISA10 = $CurrentTime2;

echo $BSN03;
echo "<br>";
echo $BSN04;
echo "<br>";
echo $DTM01;
echo "<br>";
echo $DTM02;
echo "<br>";
echo $GS04;
echo "<br>";
echo $GS05;
echo "<br>";
echo $ISA09;
echo "<br>";
echo $ISA10;
echo "<br>";
?>
