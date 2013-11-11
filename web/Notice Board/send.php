<?php
switch ($_SESSION['user_type']) {
	case 'adm':
			?>
				<option id="std" value="std" selected>All</option>
				<option id="fac" value="fac" >Faculty</option>
				<option id="adm" value="adm">Students</option>
			<?php
		break;
	case 'fac':
			?>
				<option id="std" value="std" selected>All</option>
				<option id="fac" value="fac" >Faculty</option>
				<option id="adm" value="adm">Student</option>
				<option id="adm" value="adm">Students under me</option>
			<?php
		break;
	case 'std':
			?>
				<option id="std" value="std" selected>Student</option>
				<option id="fac" value="fac" >Faculty</option>
				<option id="adm" value="adm">Admin</option>
			<?php
		break;
	
	default:
		# code...
		break;
}

?>