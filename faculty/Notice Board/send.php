<?php
switch ($_SESSION['user_type']) {
	case 'adm':
			?>
			<div class="select">
				<option id="std" value="all" selected>All</option>
				<option id="fac" value="fac" >Faculty</option>
				<option id="adm" value="std">Students</option>
			</div>
			<?php
		break;
	case 'fac':
			?>
			<div class="select">
				<option id="std" value="all" selected>All</option>
				<option id="adm" value="stdme">Students under me</option>
			</div>
			<?php
		break;
	case 'std':
			?>
			<div class="select">
				
			</div>
			<?php
		break;
	
	default:
		# code...
		break;
}

?>