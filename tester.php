<?php
/* Local dev */

define( "DB_HOST", "192.168.1.7" );
define( "DB_NAME", "cscd378_project" );
define( "DB_USER", "root" );
define( "DB_PASS", "" );

/* Production */

require('Database.class.php');

class QMDB {
	// public $mUser = 0;
	private $mDb; // Database object

	public function test_input($data){
	    $data = trim($data);
	    $data = stripslashes($data);
	    $data = htmlspecialchars($data);
	    return $data;
	}
	
	public function __construct() {
		session_start();
		// Open a database connection
		$this->mDb = new Database(DB_HOST, DB_USER, DB_PASS, DB_NAME);
		$this->mDb->Open();
	}
	
	public function __destruct() {
		// Close the database connection
		$this->mDb->Close();
	}

	public function LoggedIn() {
		return $_SESSION['uname'] != 0;
	}
	
	public function Login($uname, $pwd) {
		$results = $this->mDb->Query( "SELECT * FROM  " . DB_NAME . " . users WHERE uname='" .
			$uname . "' AND pwd='" . $pwd . "';");

		if($results) {
			if ( $row = mysqli_fetch_assoc($results)) {
				$_SESSION['uname'] = $row['uname'];
				// echo $_SESSION['uname'];
				return true;
			}
		}		
		return false;
	}
	public function Register($uname, $pwd) {
			$table = "users";
			$uid ="NULL";
			$cols = array("uid", "uname", "pwd");
			// var_dump($cols);
			$data = array( NULL, $uname, $pwd);
			// var_dump($data);
			$results = $this->mDb->Insert( $table, $cols, $data );	
			if($results) {
				return true;
		}		
		return false;
	}

	private function getUserName($uid) {
		$results = $this->mDb->Query( "SELECT * FROM " . DB_NAME . " . users WHERE uid='" . $uid . "';");
		if( $row = mysqli_fetch_assoc($results) ) {
			return $row['uname'];
		}		
	}

};

$qmdb = new QMDB();

?>
