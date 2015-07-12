
<?php
//the example of inserting data with variable from HTML form
//input.php
mysql_connect('localhost','priyasha','piyu');//database connection

//header('Location: http://localhost/airindia/login.html');


mysql_select_db('cfg');

$st_gender=$_POST['st_gender'];

$do_joining=$_POST['do_joining'];

$do_leaving=$_POST['do_leaving'];

$left_school=$_POST['left_school'];




//inserting data order
 $registration = "INSERT INTO student VALUES(NULL,'','$st_gender','$do_joining','$do_leaving','$left_school')";

//declare in the order variable
$result = mysql_query($registration);	//order executes
if($result){
	echo("<br><b>Form submitted successfully");
} else{
	echo("<br><b>Fields cannot be left empty");
}
?>


