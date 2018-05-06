<?php
if($_FILES["CipherFile"]["name"])
{
	if(isset($_SESSION['userEmail'])){
	$uemail=$_SESSION['userEmail'];
	$target_dir = "CipherPlainUploads/";
	$time = date("Y-m-d-hisa");
	$target_file = $target_dir . "$uemail-".$time."-". basename($_FILES["CipherFile"]["name"]);
	if(move_uploaded_file($_FILES["CipherFile"]["tmp_name"],$target_file))
	{
		$readHandle = fopen($target_file,"r");
		$string= fgets($readHandle);
		fclose($readHandle);
		echo "<h3>Encrypted Text : &nbsp</h3>";
		echo "<blockquote><b>".caesar($string,$_POST["caesarKey"])."</b></blockquote>";
		$wtarget_dir = "CipherEncryptedUploads/";
		$wtarget_file = $wtarget_dir . "$uemail-".$time."-". basename($_FILES["CipherFile"]["name"]);
		$writeHandle = fopen($wtarget_file,"w");

?>