<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_custom
 *
 * @copyright   Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
?>

<?php
$class = $moduleclass_sfx ? 'class="'.$moduleclass_sfx.'"' : '';
$style = $params->get('backgroundimage')? ' style="background-image:url('.$params->get('backgroundimage').')"' :'';
if($class)
echo $style . $module->content;
else echo $module->content;
?>