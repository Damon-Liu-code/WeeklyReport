<?php

// Start session
session_start();

/**
 * Validate if user is logged in
 * 
 * @return bool true if user is logged in, false otherwise
 */
function identify_user_login(){
	if(isset($_SESSION['username'])) {
		return true;
	} else {
		return false;
	}
}

?>