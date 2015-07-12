
<?php
//the example of inserting data with variable from HTML form
//input.php
mysql_connect('localhost','priyasha','piyu');//database connection

//header('Location: http://localhost/airindia/login.html');


mysql_select_db('cfg');

$com_loc=$_POST['com_loc'];

$com_country=$_POST['com_country'];



//inserting data order
 $registration = "INSERT INTO community VALUES(NULL,'$com_loc','$com_country')";

//declare in the order variable
$result = mysql_query($registration);	//order executes
if($result){
	echo("<br><b>Form submitted successfully");
} else{
	echo("<br><b>Fields cannot be left empty");
}
?>


