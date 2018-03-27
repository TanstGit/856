<?php
	$ICCC = "InterChangeControlNumber.txt"; 
	$InterChangeControlNumber = file_get_contents($ICCC);  
	$InterChangeControlNumber = $InterChangeControlNumber + 1;
	file_put_contents($ICCC, $InterChangeControlNumber, LOCK_EX);
	$zerofill = 9;
	$ICCPAD = str_pad ($InterChangeControlNumber, $zerofill, '0', STR_PAD_LEFT);
?>
