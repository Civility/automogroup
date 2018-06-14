<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_content
 *
 * @copyright   Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */
defined('_JEXEC') or die;
JHtml::_('bootstrap.tooltip');
$lang  = JFactory::getLanguage();
?>
<?php foreach ($this->items[$this->parent->id] as $id => $item) : ?>
	<div class="pane">
	<a href="<?php echo JRoute::_(ContentHelperRoute::getCategoryRoute($item->id, $item->language)); ?>">
		<h3 class="page-header item-title"><?php echo $this->escape($item->title); ?></h3></a>
	</div>
	<?php if ($this->params->get('show_description_image') && $item->getParams()->get('image')) : ?>
				<img src="<?php echo $item->getParams()->get('image'); ?>" alt="<?php echo htmlspecialchars($item->getParams()->get('image_alt'), ENT_COMPAT, 'UTF-8'); ?>" />
			<?php endif; ?>
			<?php // if ($this->params->get('show_subcat_desc_cat') == 1) : ?>
			<?php if ($this->params->get('show_subcat_desc_cat') == FALSE) : ?>
				<?php if ($item->description) : ?>
					<div class="category-desc">
						<?php echo JHtml::_('content.prepare', $item->description, '', 'com_content.categories'); ?>
					</div>
				<?php endif; ?>
			<?php endif; ?>
			<?php if ($item->getChildren()): ?>
				<div class="tab-content hide" style="font-style:italic" >
					<div class="tab-pane" id="tab_<?php echo $item->id; ?>">
						<?php
					$this->items[$item->id] = $item->getChildren();
						$this->parent = $item;
						echo $this->loadTemplate('child_items');
						?>
					</div>
				</div>
			<?php endif; ?>
<?php endforeach; ?>