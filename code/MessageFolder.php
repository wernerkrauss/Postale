<?php
/**
 * Created by JetBrains PhpStorm.
 * User: werner
 * Date: 01.08.13
 * Time: 07:12
 * To change this template use File | Settings | File Templates.
 */

class MessageFolder extends DataObject {

	private static $db = array (
		'Title' => 'Varchar'
	);

	private static $has_many = array (
		'Threads' => 'Thread'
	);


}
