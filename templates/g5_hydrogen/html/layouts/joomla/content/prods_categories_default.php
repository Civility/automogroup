<?php
/**
 * @package     Joomla.Site
 * @subpackage  Layout
 *
 * @copyright   Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('JPATH_BASE') or die;

?>
<?php if ($displayData->params->get('show_page_heading')) : ?>
<h2>
	<?php echo $displayData->escape($displayData->params->get('page_heading')); ?>
</h2>
<?php endif; ?>

<?php if ($displayData->params->get('show_base_description')) : ?>
	<?php // If there is a description in the menu parameters use that; ?>
	<?php if ($displayData->params->get('categories_description')) : ?>
		<li class="tab-pane active">
			<?php echo JHtml::_('content.prepare', $displayData->params->get('categories_description'), '',  $displayData->get('extension') . '.categories'); ?>
		</li>
	<?php else : ?>
		<?php // Otherwise get one from the database if it exists. ?>
		<?php if ($displayData->parent->description) : ?>
			<li class="tab-pane active">
				<?php echo JHtml::_('content.prepare', $displayData->parent->description, '', $displayData->parent->extension . '.categories'); ?>
			</li>
		<?php endif; ?>
	<?php endif; ?>
<?php endif; ?>
