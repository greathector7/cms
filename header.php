<!DOCTYPE html>
	<html lang="eS">
	<head>
				 
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title><?php echo $page_title; ?></title>

<!-- some custom CSS -->
<style>
	.left-margin{
		margin:0 .5em 0 0;
	}
 
	.right-button-margin{
		margin: 0 0 1em 0;
		overflow: hidden;
	}
</style>

<!-- Bootstrap -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css">

<!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<!-- Latest compiled and minified JavaScript -->
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap-datetimepicker.min.js"></script>
 
</head>
<body>
<!-- container -->
<div class="container">

	<?php
	// show page header
	echo "<div class='page-header'>";
		echo "<h1>{$page_title}</h1>";
		 date_default_timezone_set('America/Caracas');
	echo "</div>";
	?>
