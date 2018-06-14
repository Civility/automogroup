<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_content
 *
 * @copyright   Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

//JHtml::_('bootstrap.tooltip');

$class  = ' first';
$lang   = JFactory::getLanguage();
$user   = JFactory::getUser();
$groups = $user->getAuthorisedViewLevels();
?>

	<?php if ($this->maxLevel != 0 && count($this->children[$this->category->id]) > 0) : ?>
	<?php foreach ($this->children[$this->category->id] as $id => $child) : ?>
		<?php // Check whether category access level allows access to subcategories. ?>
		<?php if (in_array($child->access, $groups)) : ?>
			<?php if ($this->params->get('show_empty_categories') || $child->numitems || count($child->getChildren())) :
				if (!isset($this->children[$this->category->id][$id + 1])) :
					$class = ' last';
				endif; ?>
			<?php
			$db =JFactory::getDBO();
			$query = $db->getQuery(true);
			$query = "SELECT tag_id FROM `#__contentitem_tag_map` WHERE `content_item_id`='".$child->id."'AND `type_alias` = 'com_content.category'";
			$db->setQuery($query);
			$result = $db->loadObjectList(); ?>
				<div class="mix<?php echo $class; foreach($result as $row){?> tag-<?=$this->escape($row->tag_id).'" data-ref="mixcont-target"';}?>>
				<?php $class = ''; ?>
				<?php if ($lang->isRtl()) : ?>
				<h3 class="page-header item-title">
					<?php if ( $this->params->get('show_cat_num_articles', 1)) : ?>
						<span class="badge badge-info tip hasTooltip" title="<?php echo JHtml::_('tooltipText', 'COM_CONTENT_NUM_ITEMS_TIP'); ?>">
							<?php echo $child->getNumItems(true); ?>
						</span>
					<?php endif; ?>
					<a href="<?php echo JRoute::_(ContentHelperRoute::getCategoryRoute($child->id)); ?>">
					<?php echo $this->escape($child->title); ?></a>

					<?php if ($this->maxLevel > 1 && count($child->getChildren()) > 0) : ?>
						<a href="#category-<?php echo $child->id; ?>" data-toggle="collapse" data-toggle="button" class="btn btn-mini pull-right" aria-label="<?php echo JText::_('JGLOBAL_EXPAND_CATEGORIES'); ?>"><span class="icon-plus" aria-hidden="true"></span></a>
					<?php endif; ?>
				</h3>
				<?php else : ?>
				<div class="flex-head">
					<div class="flex-box">
						<a class="item-tag tag" href="<?php echo JRoute::_(ContentHelperRoute::getCategoryRoute($child->id));?>">
							<?php 
						$query = $db->getQuery(true);
						$query->select('a.path')
							->from($db->quoteName('#__tags', 'a'))
							->where($db->quoteName('a.published') . '  = 1' );
						$query->select($db->quoteName('b.tag_id'))
							->where($db->quoteName('b.content_item_id') . '= ' .$child->id )
							->where($db->quoteName('b.type_id') . '= 5' );
						$query->innerJoin(
						$db->quoteName('#__contentitem_tag_map', 'b')
							. ' ON ' 
							. $db->quoteName('b.tag_id') 
							. ' = ' . $db->quoteName('a.id')
						);
						$db->setQuery($query);$result = $db->loadObjectList(); 
						foreach($result as $row) {
							echo '<div class="' . ($row->path) . '"></div>';
							} ?>
						</a>
					</div>
					<div class="flex-box">
					<div class="page-header item-title">
					<a href="<?php echo JRoute::_(ContentHelperRoute::getCategoryRoute($child->id)); ?>"><?php 
										$query = $db->getQuery(true);
										$query->select('a.value')
											->from($db->quoteName('#__fields_values', 'a'))
											->where($db->quoteName('a.field_id') . '  = 10' );
										$query->select($db->quoteName('b.id'))
											->where($db->quoteName('b.id') . '= ' .$child->id )
											->where($db->quoteName('b.level') . '= 4' )
											->where($db->quoteName('b.published') . '= 1' );
										$query->innerJoin(
										$db->quoteName('#__categories', 'b')
											. ' ON ' 
											. $db->quoteName('b.id') 
											. ' = ' . $db->quoteName('a.item_id')
										);
										$db->setQuery($query);
										$result = $db->loadObjectList();
											foreach($result as $row) {
												echo $this->escape($row->value);
										} ?>
					</a>
					<?php if ( $this->params->get('show_cat_num_articles', 1)) : ?>
						<span class="badge badge-info tip hasTooltip" title="<?php echo JHtml::_('tooltipText', 'COM_CONTENT_NUM_ITEMS_TIP'); ?>">
							<?php echo JText::_('COM_CONTENT_NUM_ITEMS'); ?>
							<?php echo $child->getNumItems(true); ?>
						</span>
					<?php endif; ?>

					<?php if ($this->maxLevel > 1 && count($child->getChildren()) > 0) : ?>
						<a href="#category-<?php echo $child->id; ?>" data-toggle="collapse" data-toggle="button" class="btn btn-mini pull-right" aria-label="<?php echo JText::_('JGLOBAL_EXPAND_CATEGORIES'); ?>"><span class="icon-plus" aria-hidden="true"></span></a>
					<?php endif; ?>
					</div>
					</div>
				<?php endif; ?>
				</div>
			
<?php //картинка ?>
			<div class="flex-body">
			<div class="flex-box">
				<?php if ($child->getParams()->get('image')) : ?>
			<div class="item-img">
			<div class="img">
				<a href="<?php echo JRoute::_(ContentHelperRoute::getCategoryRoute($child->id));?>">
					<img src="<?=$child->getParams()->get('image');?>"/>
				</a>
			</div>
			</div>
			</div><?php // print_r($child->id);?>
			<?php endif; ?>
				<?php if ($this->params->get('show_subcat_desc') == 1) : ?>
					<?php if ($child->description) : ?>
						<div class="flex-box">
							<div class="item-text">
								<div class="toggle"><?=JText::_('SPECIFICATIONS');?><i class="icon-plus-2"></i></div>
								<div class="content default">
									<h2 class="full-title">
										<?php echo $this->escape($child->title); ?>
									</h2>
									<?php echo JHtml::_('content.prepare', $child->description, '', 'com_content.category'); ?>
								</div>
							</div>
						</div>
					<?php endif; ?>
				<?php endif; ?>
			</div>
				<?php if ($this->maxLevel > 1 && count($child->getChildren()) > 0) : ?>
					<div class="collapse fade" id="category-<?php echo $child->id; ?>">
						<?php
						$this->children[$child->id] = $child->getChildren();
						$this->category = $child;
						$this->maxLevel--;
						echo $this->loadTemplate('children');
						$this->category = $child->getParent();
						$this->maxLevel++;
						?>
					</div>
				<?php endif; ?>
			</div>
			<?php endif; ?>
		<?php endif; ?>
	<?php endforeach; ?>
<?php endif;