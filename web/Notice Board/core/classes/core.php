<?php
//echo "core";
// include_once '../../../config/config.php';
define("HOST11", "http://localhost/ProjectUploader");
define("HOSTNAME", "localhost");
define("USERNAME", "root");
define("PASS", "kunal");
define("DBNAME", "project");
?>

<?php
class core {
	public $count;
	protected $db, $result;
	private $rows;

	public function __construct() {
		$this->db = new mysqli("HOSTNAME","USERNAME","PASS","DBNAME");
		$count = 10;
	}
	

	public function query($sql)
	{
		?>
			<div class="message">
				
				<p><?php echo $sql; ?></p>
				
			</div>
		<?php
		$this->result = $this->db->query(" SELECT * FROM `chat` ");
		?>
			<div class="message">
				
				<p><?php echo (int)$this->db->affected_rows; ?></p>
				
			</div>
		<?php
	}
	public function rows()
	{
		?>
			<div class="message">
				
				<p><?php echo (int)$this->db->affected_rows; ?></p>
				
			</div>
		<?php
		for ($x=1; $x <= (int)$this->db->affected_rows; $x++) { 
			# code...
			$count = $count + 1;
			?>
			<div class="message">
				
				<p><?php echo "rsdgV"; ?></p>
				
			</div>
		<?php
			$this->rows[] = $this->result->fetch_assoc();
		}
		return $this->rows;
	}
	// public function tell()
	// {
	// 	return $count;
	// }
}
?>