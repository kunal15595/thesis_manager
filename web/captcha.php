<?php
session_start();
header('Content type: image/jpeg');

$text=$_SESSION['secure'];
$font_size=37;

$image_width=140;
$image_height=55;

$image = imagecreate($image_width,$image_height);
imagecolorallocate($image, 255, 255, 255);
$text_color=imagecolorallocate($image, 0, 0, 0);

for ($i=0; $i < 15; $i++) { 
	# code...
	$x1=rand(1,$image_width);
	$x2=rand(1,$image_width);
	$y1=rand(1,$image_height);
	$y2=rand(1,$image_height);
	$angle=rand(-10,10);
	imageline($image, $x1, $y1, $x2, $y2, $text_color);

}
$font = "font/england.ttf";
imagefttext($image,$font_size,$angle,30,40,$text_color,$font,$text);
imagejpeg($image);

?>	
