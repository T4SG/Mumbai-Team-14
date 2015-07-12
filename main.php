
<?php
//the example of inserting data with variable from HTML form
//input.php
mysql_connect('localhost','priyasha','piyu');//database connection

//header('Location: http://localhost/airindia/login.html');


mysql_select_db('cfg');

$m_post=$_POST['m_post'];

$m_area=$_POST['m_area'];

$m_priority_rate=$_POST['m_priority_rate'];


$m_status=$_POST['m_status'];
$m_est_cost=$_POST['m_est_cost'];
$m_description=$_POST['m_description'];




//inserting data order
 $registration = "INSERT INTO maintenance VALUES(NULL,'','$m_post','$m_area','$m_priority_rate','$m_status','$m_est_cost','$m_description')";

//declare in the order variable
$result = mysql_query($registration);	//order executes
if($result){
	echo("<br><b>Form submitted successfully");
} else{
	echo("<br><b>Fields cannot be left empty");
}
?>


