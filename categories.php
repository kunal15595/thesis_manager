	<?php
	// session_start();
	require_once 'config/config.php';
	require_once 'config/connect.php';
	$class = "BT";
	$sql = "SELECT DISTINCT field from categories ";
	$result = mysql_query($sql);
	// echo mysql_num_rows($result);
	$flag = FALSE;
	$counter = 0;
	// $query = "SELECT `name` FROM `users` WHERE `name` LIKE '%".mysql_real_escape_string($search_term)."%'";	
		$query_run=mysql_query($sql);
		$num_result=mysql_num_rows($query_run);

		// while ($query_row=mysql_fetch_assoc($query_run)) {
		// 	# code...
		// 	$field=strtolower($query_row['field']);
		// 	//echo $field.'<br>';
		// 	echo '<li>',$field,'<li>';
		// 	//echo '<a href="anotherpage.php?search_term='.$field.'">'.'<br>';
		// }
	?>
	<table>
		<tr>
		    <div id="autosuggest">
		    	<td>
					<input id="cat1" type="text" class="autosuggest" placeholder="Select..."/>
				</td>
				<td>	
					<input id="cat2" type="text" class="autosuggest" placeholder="Select..."/>
				</td>
				<td>
					<input id="cat3" type="text" class="autosuggest" placeholder="Select..."/>
		    	</td>
		    </div>
    	</tr>
    <tr>

	
	<td>
		<div class="dropdownl">
			<ul class="result1">
				<?php
				$sql = "SELECT DISTINCT field from categories ";
				$query_run=mysql_query($sql);
				// echo mysql_num_rows($query_run);
					while ($query_row=mysql_fetch_assoc($query_run)) {
						# code...
						$field=strtolower($query_row['field']);
						//echo $field.'<br>';
						echo '<li>',$field,'<li>';
						//echo '<a href="anotherpage.php?search_term='.$field.'">'.'<br>';
					}
				?>
			</ul>
		</div>
	</td>
	<td>
		<div class="dropdownm">
			<ul class="result2">
				<?php
				$query_run=mysql_query($sql);
					while ($query_row=mysql_fetch_assoc($query_run)) {
						# code...
						$field=strtolower($query_row['field']);
						//echo $field.'<br>';
						echo '<li>',$field,'<li>';
						//echo '<a href="anotherpage.php?search_term='.$field.'">'.'<br>';
					}
				?>
			</ul>
		</div>
	</td>
	<td>
		<div class="dropdownr">
			<ul class="result3">
				<?php
				$query_run=mysql_query($sql);
					while ($query_row=mysql_fetch_assoc($query_run)) {
						# code...
						$field=strtolower($query_row['field']);
						// echo $field.'<br>';
						echo '<li>',$field,'<li>';
						//echo '<a href="anotherpage.php?search_term='.$field.'">'.'<br>';
					}
				?>
			</ul>
		</div>
	</td>
</tr>
	</table>	
	<?php
	while ($row = mysql_fetch_assoc($result)) {
	    $flag = TRUE;
	    $counter++;
	    // if ($class == "BT") {
	    //     $fullClass = "B.Tech";
	    // } else {
	    //     $fullClass = "M.Tech";
	    // }
	    ?>
        
	    <?php
	    // echo $row["field"];
	   
	    
	}
	
	if ($flag == TRUE) {
	    $result = "DONE";
	    session_start();
	    $_SESSION['innerHTMLSimple'] = $inerhtml;
	} else {
	    $result = "NOT_FOUND";
	}

	mysql_close($con);
    // <input type='checkbox' name='checkboxvar[]' value='Option One'>1<br>
    ?>
