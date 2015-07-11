
<?php
//the example of inserting data with variable from HTML form
//input.php
mysql_connect('localhost','priyasha','piyu');//database connection

//header('Location: http://localhost/airindia/login.html');


mysql_select_db('trialdB');

$Name=$_POST['Name'];

$Userid=$_POST['Userid'];

$Password=$_POST['Password'];

$Confirm_Password=$_POST['Confirm_Password'];


$Gender=$_POST['Gender'];

$Email=$_POST['Email'];



//inserting data order
 $registration = "INSERT INTO registration VALUES('$Name','$Userid','$Password','$Confirm_Password','$Gender','$Email')";

//declare in the order variable
$result = mysql_query($registration);	//order executes
if($result){
	echo("<br><b>Form submitted successfully");
} else{
	echo("<br><b>Fields cannot be left empty");
}
?>


