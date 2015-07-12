
<?php
//the example of inserting data with variable from HTML form
//input.php
mysql_connect('localhost','priyasha','piyu');//database connection

//header('Location: http://localhost/airindia/login.html');


mysql_select_db('cfg');

$is_hhf=$_POST['is_hhf'];

$dir_name=$_POST['dir_name'];

$dir_cont=$_POST['dir_cont'];


$no_teacher=$_POST['no_teacher'];

$s_type=$_POST['s_type'];

$s_est_year=$_POST['s_est_year'];


//inserting data order
 $registration = "INSERT INTO school VALUES(NULL,'','$is_hhf','$dir_name','$dir_cont','$no_teacher','$s_type','$s_est_year')";

//declare in the order variable
$result = mysql_query($registration);	//order executes
if($result){
	echo("<br><b>Form submitted successfully");
} else{
	echo("<br><b>Fields cannot be left empty");
}
?>


