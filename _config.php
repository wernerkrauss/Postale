<?php

$dir = basename(rtrim(dirname(__FILE__),'/'));
// Check directory
if($dir != "postale") {
	user_error(sprintf(
		_t('Messages.WRONGDIRECTORY','The Postale module must be in a directory named "postale" (currently "%s")'),
		$dir
	), E_USER_ERROR);
}


Object::add_extension('Member','MessagesMember'); //@todo move to yml

MessagesPage::set_url('messages');