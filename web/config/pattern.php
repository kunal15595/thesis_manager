<?php
	
	function getUserNamePattern() {
	    return "/^[a-zA-Z0-9_\.]+$/";
	}

	function getPasswordPattern() {
	    return "/^[a-zA-Z0-9]{6,12}$/";
	}

	function getRollPattern(){
	    return "/^[0-9]{7,8}$/";
	}

	function getNamePattern(){
	    return "/^[a-zA-Z\s\.]+$/";
	}

	function getThesisFileNamePattern() {
	    return "/^[0-9]{7,8}-[MB]TP[I]{1,2}\.pdf$/";
	}

?>