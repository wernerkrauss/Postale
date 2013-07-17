<?php

class PostaleUtil {
    
    public static function readable_list($array)
	{
            if(!is_array($array))
                return '';
            $and = _t('DataObjectManager.AND','and');
            switch(count($array))
            {
            case 0:
                return '';
            case 1:
                // This may not be a normal numerically-indexed array.
                return reset($array);
            case 2:
                return reset($array)." $and ".end($array);
            default:
                $last = array_pop($array);
                return implode(', ', $array).", $and $last";
            }
	}
}
