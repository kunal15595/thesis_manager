<?php

error_reporting(0);
include("config.php");

/// get current month and year and store them in $cMonth and $cYear variables
(intval($_REQUEST["month"])>0) ? $cMonth = intval($_REQUEST["month"]) : $cMonth = date("m");
(intval($_REQUEST["year"])>0) ? $cYear = intval($_REQUEST["year"]) : $cYear = date("Y");

// generate an array with all dates with events
$sql = "SELECT * FROM ".$SETTINGS["data_table"]." WHERE `event_date` LIKE '".$cYear."-".$cMonth."-%'";
$sql_result = mysql_query ($sql, $connection ) or die ('request "Could not execute SQL query" '.$sql);
while ($row = mysql_fetch_assoc($sql_result)) {
	// echo "ok";
	$events[$row["event_date"]]["title"] = $row["title"];
	$events[$row["event_date"]]["description"] = $row["description"];
}

// calculate next and prev month and year used for next / prev month navigation links and store them in respective variables
$prev_year = $cYear;
$next_year = $cYear;
$prev_month = intval($cMonth)-1;
$next_month = intval($cMonth)+1;

// if current month is December or January month navigation links have to be updated to point to next / prev years
if ($cMonth == 12 ) {
	$next_month = 1;
	$next_year = $cYear + 1;
} elseif ($cMonth == 1 ) {
	$prev_month = 12;
	$prev_year = $cYear - 1;
}

if ($prev_month<10) $prev_month = '0'.$prev_month;
if ($next_month<10) $next_month = '0'.$next_month;
?>
  <table width="100%">
  <tr>
      <td class="mNav"><a href="javascript:LoadMonth('<?php echo $prev_month; ?>', '<?php echo $prev_year; ?>')">&lt;&lt;</a></td>
      <td colspan="5" class="cMonth"><?php echo date("F, Y",strtotime($cYear."-".$cMonth."-01")); ?></td>
      <td class="mNav"><a href="javascript:LoadMonth('<?php echo $next_month; ?>', '<?php echo $next_year; ?>')">&gt;&gt;</a></td>
  </tr>
  <tr>
      <td class="wDays">M</td>
      <td class="wDays">T</td>
      <td class="wDays">W</td>
      <td class="wDays">T</td>
      <td class="wDays">F</td>
      <td class="wDays">S</td>
      <td class="wDays">S</td>
  </tr>
<?php 
$first_day_timestamp = mktime(0,0,0,$cMonth,1,$cYear); // time stamp for first day of the month used to calculate 
$maxday = date("t",$first_day_timestamp); // number of days in current month
$thismonth = getdate($first_day_timestamp); // find out which day of the week the first date of the month is
$startday = $thismonth['wday'] - 1; // 0 is for Sunday and as we want week to start on Mon we subtract 1

for ($i=0; $i<($maxday+$startday); $i++) {
	
	if (($i % 7) == 0 ) echo "<tr>";
	
	if ($i < $startday) { echo "<td>&nbsp;</td>"; continue; };
	
	$current_day = $i - $startday + 1;
	if ($current_day<10) $current_day = '0'.$current_day;

// set css class name based on number of events for that day
	if ($events[$cYear."-".$cMonth."-".$current_day]<>'') {
		$css='withevent';
		$click = "onclick=\"LoadEvents('".$cYear."-".$cMonth."-".$current_day."')\"";
	} else {
		$css='noevent'; 		
		$click = '';
	}
	
	echo "<td class='".$css."'".$click.">". $current_day . "</td>";
	
	if (($i % 7) == 6 ) echo "</tr>";
}
?> 
</table>