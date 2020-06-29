//%attributes = {"invisible":true}


C_OBJECT:C1216($event;$0;$meta)
C_TEXT:C284($1;$option)

$option:=$1

$event:=FORM Event:C1606


Case of 
	: ($event.code=On Display Detail:K2:22)
		
		If ($event.isRowSelected)
			$meta:=Form:C1466.lightBlue
			If ($option="bold")
				$meta.cell:=Form:C1466.cellBold
			End if 
		End if 
End case 

$0:=$meta