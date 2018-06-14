<?php
/**
 * @package     Joomla.Site
 * @subpackage  Layout
 *
 * @copyright   Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('JPATH_BASE') or die;

use Joomla\Registry\Registry;

JLoader::register('TagsHelperRoute', JPATH_BASE . '/components/com_tags/helpers/route.php');

$authorised = JFactory::getUser()->getAuthorisedViewLevels();

?>

<?php if (!empty($displayData)) : ?>
	<div class="filters item-tag" name="mix"><?php foreach ($displayData as $i => $tag) : ?>
			<?php if (in_array($tag->access, $authorised)) : ?>
				<?php $tagParams = new Registry($tag->params); ?>
				<button type="button" class="control <?=$this->escape($tag->path); ?> list=<?=$i; ?>"  data-filter=".tag-<?=$tag->tag_id; ?>" itemprop="keywords" class="<?=$link_class; ?>"></button>
						<?php //echo $this->escape($tag->title); ?>
						<?php //echo ($tag->description); ?>
				
			<?php endif; ?>
		<?php endforeach; ?>
	</div>
<?php endif; ?>

