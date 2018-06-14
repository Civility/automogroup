<?php
/**
* @package     Joomla.Site
* @subpackage  mod_custom
 */
defined('_JEXEC') or die;
?>

<div class="show_<?php echo JRequest::getInt('Itemid');?>">
	<h1>
	<?php //заголовок меню
		$app = JFactory::getApplication(); 
		$menu = $app->getMenu(); 
		$active = $menu->getActive();
		if($active->title) :
			echo $active->title;
		else :
			echo $module->title;
		endif;
	?>
	</h1>
	<?php echo $module->content; ?>
</div>