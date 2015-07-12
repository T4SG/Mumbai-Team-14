
<?php
//the example of inserting data with variable from HTML form
//input.php
mysql_connect('localhost','priyasha','piyu');//database connection

//header('Location: http://localhost/airindia/login.html');


mysql_select_db('cfg');

$a_year=$_POST['a_year'];

$a_percent=$_POST['a_percent'];

$a_result=$_POST['a_result'];

$is_computer=$_POST['is_computer'];


//inserting data order
 $acad = "INSERT INTO acad VALUES('$a_year','$a_percent','$a_result','$is_computer')";

//declare in the order variable
$result = mysql_query($acad);	//order executes
if($result){
	echo("<br><b>Form submitted successfully");
} else{
	echo("<br><b>Fields cannot be left empty");
}
?>


