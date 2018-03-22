^m::										;;SET CTRL + M to run the script
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; BLOCK OF CODE WHICH PUTS CORRECT PARTS IN FILE;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;ini=C:\Users\jhisson\Desktop\Convert_list.ini                                  				;;Load Conversion list
;;FileRead, OUTPUT, C:\Users\jhisson\Desktop\LOAD.CSV					;;LOAD FILE to be translated
;;Loop, read, C:\Users\jhisson\Desktop\MeriaPartList.txt           					;;Start a loop that cycles though Meira Parts
;;{										;;
;;MeiraPart=%A_LoopReadLine%                                        					;;Sets MeiraPart Var equal to the current line being cycled in the MeiraPartsList.txt file
;;IniRead, RocknelPart, %ini%, PartXref, %MeiraPart%                 				;;Sets RocknelPart equal to the cross refrence of the MeiraPart of the current cycle located in Convert_list file
;;StringReplace,  OUTPUT,  OUTPUT, %MeiraPart%, %RocknelPart%, 1  			;;Per iteration updates the output var by replacing MeiraPart with RocknelPart for all instances in the variable
;;}										;; 
;;FileAppend, %OUTPUT% , C:\Users\jhisson\Desktop\Converted.CSV				;;After Main Cycle runs out of things to check output variable is written to Converted.CSV
;;SLEEP 10000									;;SLEEP CREATED TO ALLOW TIME FOR FILE TO 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; BLOCK OF CODE WHICH PUTS CORRECT PARTS IN FILE;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; SET VARIABLES ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;FileRead, OUTPUT, C:\Users\jhisson\Desktop\Converted.CSV
FormatTime, CurrentTime1, , yyMMdd
FormatTime, CurrentTime2, , HHmm
FormatTime, CurrentTime3, , yyyyMMdd
FormatTime, CurrentTime4, , HHmmss
;;FormatTime, CurrentTime5, , HHMM
;;IEACounter:= "000000007"
;;GECounter:="7"
COUNTER=C:\Users\jhisson\Desktop\856COUNTER.ini 


;;IniRead, ISA13, %ini%, 856CounterXref, %MeiraPart%

InterChangeControlNumberWithPadding:="000000001"
InterChangeControlNumberNoPadding:="1"
ShipmentIdNo:="BR1801172"


;;;;;;;;;;;;;;;;;;;;;;;;;;;HEADER VARS;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ISA01:="00"
ISA02:="          "
ISA03:="00"
ISA04:="          "
ISA05:="ZZ"
ISA06:="MERIA"
ISA07:="ZZ"
ISA08:="ROCKNEL        "
ISA09=%CurrentTime1%
ISA10=%CurrentTime2%
ISA11:="U"
ISA12:="00401"
ISA13=%InterChangeControlNumberWithPadding%
ISA14:="0"
ISA15:="P"
ISA16:="<"
GS01:="SH"
GS02:="MEIRA"
GS03:="ROCKNEL"
GS04=%CurrentTime3%
GS05=%CurrentTime4%
GS06=%InterChangeControlNumberNoPadding%      
GS07:="X"
GS08:="004010"
ST01:="856"
ST02:="0001"
BSN01:="00"
BSN02=%ShipmentIdNo%
BSN03=%CurrentTime3%
BSN04=%CurrentTime2%
DTM01=%CurrentTime3%
DTM02=%CurrentTime2%
;;;;;;;;;;;;;;;;;;;;;;;;;;;HEADER VARS;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;HL1 VAR;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
HL01:="1"                                                                     ;;HL ID NUMBER
HL02=					  ;; Identifies the number of Hierachical Level segements
HL03:="S"
;;;;;;;;;;;;;;;;;;;;;;;;;;;HL1 VAR;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;BODY VARS;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                              



;;;;;;;;;;;;;;;;;;;;;;;;;;;BODY VARS;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;FOOTER VARS;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
CCT01=%HirachialLoopCount%
CCT02=%PartSumTotal%
SE01=%SegmentCount%                                             ;;Count of all segments including ST and SE formula is    SE01=(HL*5)+ 14
SE02:="1"
GE01:="1"
GE02:=%InterChangeControlNumberNoPadding%
IEA01:="1"
IEA02=%InterChangeControlNumberWithPadding%
;;;;;;;;;;;;;;;;;;;;;;;;;;;FOOTER VARS;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; SET VARIABLES ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; BLOCK OF CODE WHICH WRITES TO EDI FORMATED FILE;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;HEADER WRITE;;;;;;;;;;;;;;
MSGBOX ISA*%ISA01%*%ISA02%*%ISA03%*%ISA04%*%ISA05%*%ISA06%*%ISA07%*%ISA08%*%ISA09%*%ISA10%*%ISA11%*%ISA12%*%ISA13%*%ISA14%*%ISA15%*%ISA16%~
MSGBOX GS*%GS01%*%GS02%*%GS03%*%GS04%*%GS05%*%GS06%*%GS07%*%GS08%~
MSGBOX ST*%ST01%*%ST02%~
MSGBOX BSN*%BSN01%*%BSN02%*%BSN03%*%BSN04%~
MSGBOX DTM*011*%DTM01%*%DTM02%~
MSGBOX DTM*017*%DTM01%*%DTM02%~
;;;;;;;;;;;;;;;;;;;;;;;;;HEADER WRITE;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;HL1 WRITE;;;;;;;;;;;;;;;;;;;;;
MSGBOX HL*%HL01%*%HL02%*%HL03%~

  
;;;;;;;;;;;;;;;;;;;;;;;;;HL1 WRITE;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;Other HL Sections;;;;;;;;;;;;;






;;;;;;;;;;;;;;;;;;;;;;;;;Other HL Sections;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;FOOTER WRITE;;;;;;;;;;;;
MSGBOX CCT*%CCT01%*%CCT02%~
MSGBOX SE*%SE01%*%SE02%~
MSGBOX GE*%GE01%*%GE02%~
MSGBOX IEA*%IEA01%*%IEA02%~

;;;;;;;;;;;;;;;;;;;;;;;;;FOOTER WRITE;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; BLOCK OF CODE WHICH WRITES TO EDI FORMATED FILE;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;





esc::exitApp















;;FileAppend, ISA*00*          *00*          *ZZ*MEIRA          *ZZ*ROCKNEL        *%CurrentTime1%*%CurrentTime2%*U*00401*%IEACounter%*0*P*<~, C:\Users\jhisson\Desktop\OUTPUTEDI.TXT
;;FileAppend, GS*SH*MEIRA*ROCKNEL*20%CurrentTime1%*%CurrentTime2%*%GECounter%*X*004010~, C:\Users\jhisson\Desktop\OUTPUTEDI.TXT
;;FileAppend, BSN*00*%BRNUMBER%*%CurrentTime1%*%CurrentTime2%~, C:\Users\jhisson\Desktop\OUTPUTEDI.TXT













