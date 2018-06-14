<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_content
 *
 * @copyright   Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

JHtml::addIncludePath(JPATH_COMPONENT . '/helpers');

JHtml::_('behavior.caption');

$dispatcher = JEventDispatcher::getInstance();

//$this->category->text = $this->category->description;
$this->category->text = $this->category->description;
$dispatcher->trigger('onContentPrepare', array($this->category->extension . '.categories', &$this->category, &$this->params, 0));
$this->category->description = $this->category->text;

$results = $dispatcher->trigger('onContentAfterTitle', array($this->category->extension . '.categories', &$this->category, &$this->params, 0));
$afterDisplayTitle = trim(implode("\n", $results));

$results = $dispatcher->trigger('onContentBeforeDisplay', array($this->category->extension . '.categories', &$this->category, &$this->params, 0));
$beforeDisplayContent = trim(implode("\n", $results));

$results = $dispatcher->trigger('onContentAfterDisplay', array($this->category->extension . '.categories', &$this->category, &$this->params, 0));
$afterDisplayContent = trim(implode("\n", $results));

?>

	<?php //свой шаблон категории 
	if ($this->category->level == 2) :
			echo $this->loadTemplate('double');
				//echo JLayoutHelper::render('joomla.content.categories_default', $this);
				//echo $this->loadTemplate('items');
			else : ?>
	
	<?php //заголовок пункта меню ?>
<div class="products <?=$this->pageclass_sfx; ?>" itemscope itemtype="https://schema.org/Blog">
	<?php if ($this->params->get('show_page_heading')) : ?>
		<div class="page-header">
			<h1><?=$this->escape($this->params->get('page_heading')); ?></h1>
		</div>
	<?php endif; ?>
	<?php //проверка вложенности категории ?>
	<?php if($this->category->level == 4) :?>
		<div class="levels">
<?php //заголовок категории ?>
	<?php if ($this->params->get('show_category_title', 1) or $this->params->get('page_subheading')) : ?>
		<?php echo $this->escape($this->params->get('page_subheading')); ?>
			<?php if ($this->params->get('show_category_title')) : ?>
			<h2 class="full-title"><?php echo $this->category->title; ?></h2>
			<?php endif; ?>
	<?php endif; ?>
	<?php endif; ?>

				
					<?php /*foreach($this->category->tags->itemTags as $title) :?>	
 					<?php print_r($title-title); ?>	
					<?php endforeach; */?>
			
		<?php //описание категории + изображение категории?>
	<?php if ($beforeDisplayContent || $afterDisplayContent || $this->params->get('show_description', 1) || $this->params->def('show_description_image', 1)) : ?>
		
			<?php if ($this->params->get('show_description_image') && $this->category->getParams()->get('image')) : ?>
			<div class="category-desc used clearfix">
				<div class="item-img">
					<a href="<?=$this->category->getParams()->get('image'); ?>" alt="<?php echo htmlspecialchars($this->category->getParams()->get('image_alt'), ENT_COMPAT, 'UTF-8'); ?>">
					<img src="<?=$this->category->getParams()->get('image'); ?>" alt="<?php echo htmlspecialchars($this->category->getParams()->get('image_alt'), ENT_COMPAT, 'UTF-8'); ?>"/>
				</a>
				</div>
				<?php endif; ?>
			<?=$beforeDisplayContent; ?>
			<?php if ($this->params->get('show_description') && $this->category->description) : ?>
			<div class="content">
				<?php /*$myCustomFields = array();
					foreach($this->category->jcfields as $field) :
					$myCustomFields[$field->name] = $field->value;
					endforeach; ?>
				<?php if (isset($myCustomFields['full-title']) and !empty($myCustomFields['full-title'])) : ?>
				<?='<h3 class="page-header item-title">' . $myCustomFields['full-title'] . '</h3>'; endif; */?>
					<?php echo JHtml::_('content.prepare', $this->category->description, '', 'com_content.category'); ?>
				</div>
			</div>		
				<?php endif; ?>
			
			<?=$afterDisplayContent; ?>
		
	<?php endif; ?>
<?php //проверка на наличие в данной категории материалов, вывод текста нету?>
	<?php if (empty($this->lead_items) && empty($this->link_items) && empty($this->intro_items)) : ?>
		<?php if ($this->params->get('show_no_articles', 1)) : ?>
			<p><?php echo JText::_('COM_CONTENT_NO_ARTICLES'); ?></p>
		<?php endif; ?>
	<?php endif; ?>

	<?php //вывод материалов категории ?>
	
	<?php /*$myCustomFields = array();
	foreach($this->category->jcfields as $field) :
		$myCustomFields[$field->name] = $field->value;
	endforeach; ?>

	<?php /*if (isset($myCustomFields['full-title']) and !empty($myCustomFields['full-title'])) : ?>
	<?php /*$myCustomFields['full-title']; ?>
	<?php endif; */?>


	<?php if (!empty($this->lead_items)) : ?>
		<div class="tables items-leading clearfix">
			<table class="goods_table">
				<?php //шапка таблицы ?>
				<?php foreach ($this->lead_items as &$item) : $this->item = &$item; endforeach; ?>
				<?=$this->loadTemplate('item_table');?>
			<?php foreach ($this->lead_items as &$item) : ?>
			<?php // тело таблицы - массив
			/* <div class="leading-<?php echo $leadingcount; ?><?php echo $item->state == 0 ? ' system-unpublished' : null; ?>"
					itemprop="blogPost" itemscope itemtype="https://schema.org/BlogPosting"> */?>
					<?php $this->item = &$item;
					echo $this->loadTemplate('item');
					?>
						<?php /*</div> */?>
				<?php /* $leadingcount++; */?>
			<?php endforeach; ?>
			</table>
		</div>
		<!-- end items-leading -->
	<?php endif; ?>

	<?php $introcount = count($this->intro_items); $counter = 0; ?>

	<?php if (!empty($this->intro_items)) : ?>
		<?php foreach ($this->intro_items as $key => &$item) : ?>
			<?php $rowcount = ((int) $key % (int) $this->columns) + 1; ?>
			<?php if ($rowcount === 1) : ?>
				<?php $row = $counter / $this->columns; ?>
				<div class="items-row cols-<?php echo (int) $this->columns; ?> <?php echo 'row-' . $row; ?> row-fluid clearfix">
			<?php endif; ?>
			<div class="span<?php echo round(12 / $this->columns); ?>">
				<div class="item column-<?=$rowcount; ?><?=$item->state == 0 ? ' system-unpublished' : null; ?>"
					itemprop="blogPost" itemscope itemtype="https://schema.org/BlogPosting">
					<?php
					$this->item = &$item;
					echo $this->loadTemplate('columns_item');
					?>
				</div>
				<!-- end item -->
				<?php $counter++; ?>
			</div><!-- end span -->
			<?php if (($rowcount == $this->columns) or ($counter == $introcount)) : ?>
				</div><!-- end row -->
			<?php endif; ?>
		<?php endforeach; ?>
	<?php endif; ?>

	<?php if (!empty($this->link_items)) : ?>
		<div class="items-more">
			<?=$this->loadTemplate('links'); ?>
		</div>
	<?php endif; ?>

<?php //start содержание подкатегории 
	
?>
	<?php if ($this->maxLevel != 0 && !empty($this->children[$this->category->id])) : ?>
			<?php //метки категории ?>
	<?php if ($this->params->get('show_cat_tags', 1) && !empty($this->category->tags->itemTags)) : ?>
		<?php $this->category->tagLayout = new JLayoutFile('joomla.content.prods_tags'); ?>
		<?=$this->category->tagLayout->render($this->category->tags->itemTags); ?>
	<?php endif; ?>
		<div class="mixcont" data-ref="mixcont-container">

			<?php if ($this->params->get('show_category_heading_title_text', 1) == 1) : ?>
				<h3> <?php echo JText::_('JGLOBAL_SUBCATEGORIES'); ?> </h3>
			<?php endif; ?>
			<?=$this->loadTemplate('children'); ?>
		</div>
	<?php endif; ?>
	<?php //пагинация  ?>
	<?php if (($this->params->def('show_pagination', 1) == 1 || ($this->params->get('show_pagination') == 2)) && ($this->pagination->get('pages.total') > 1)) : ?>
		<div class="pagination">
			<?php if ($this->params->def('show_pagination_results', 1)) : ?>
				<p class="counter pull-right"> <?=$this->pagination->getPagesCounter(); ?> </p>
			<?php endif; ?>
			<?=$this->pagination->getPagesLinks(); ?> </div>
	<?php endif; ?>
<?php //end содержание подкатегории 
?>
	<?php if($this->category->level = 4) :?>
	</div>
	<?php endif; ?>
</div>
 <?php endif; ?>