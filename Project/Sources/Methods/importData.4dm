//%attributes = {"invisible":true}

C_TEXT:C284($text)
C_COLLECTION:C1488($coll)


TRUNCATE TABLE:C1051([Students:2])
SET DATABASE PARAMETER:C642([Students:2];Table sequence number:K37:31;0)

$text:=Document to text:C1236(Get 4D folder:C485(Current resources folder:K5:16)+"students.txt")
$coll:=JSON Parse:C1218($text)
ds:C1482.Students.fromCollection($coll)



