<?php
$tmpName = $_FILES['upload_file']['tmp_name'];		//post from form
$mylista = file_get_contents($tmpName);			//load file into string
$mylistb = array_map('fgetcsv', file($tmpName));	//load file into array attempt 1
$mylistc = array_map('str_getcsv', file($tmpName));	//load file into array attempt 2



FormatTime, CurrentTime1, , yyMMdd
  
FormatTime, CurrentTime2, , HHmm

FormatTime, CurrentTime3, , yyyyMMdd
    echo date("Ymd");

FormatTime, CurrentTime4, , HHmmss





$BSN03 = $CurrentTime3;
$BSN04 = $CurrentTime2;
$DTM01 = $CurrentTime3;
$DTM02 = $CurrentTime2;		
?>
