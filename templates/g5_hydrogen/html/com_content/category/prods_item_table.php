<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_content
 *
 * @copyright   Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

// Create a shortcut for params.
$params = $this->item->params;
JHtml::addIncludePath(JPATH_COMPONENT . '/helpers/html');

// Check if associations are implemented. If they are, define the parameter.
$assocParam = (JLanguageAssociations::isEnabled() && $params->get('show_prods_associations'));
?>

<?php // start поля ?>
<?php $myCustomFields = array();
	foreach($this->item->jcfields as $field) :
		$myCustomFields[$field->name] = $field->value;
	endforeach; ?>
			<thead>
				<tr>
					<?php $myCustomFields = array(); foreach($this->item->jcfields as $field) { $myCustomFields[$field->name] = $field->title; } ?>
					<?='<td>' . JText::_('NAME') . '</td>';?>
					<?php if (isset($myCustomFields['purpose']) and !empty($myCustomFields['purpose'])) : ?><?='<td>' . ($myCustomFields['purpose']) . '</td>';?><?php endif; ?>
					<?php if (isset($myCustomFields['size']) and !empty($myCustomFields['size'])) : ?><?='<td>' . ($myCustomFields['size']) . '</td>';?><?php endif; ?>
					<?php if (isset($myCustomFields['capacity']) and !empty($myCustomFields['capacity'])) : ?><?='<td>' . ($myCustomFields['capacity']) . '</td>';?><?php endif; ?>
					<?php if (isset($myCustomFields['current']) and !empty($myCustomFields['current'])) : ?><?='<td>' . ($myCustomFields['current']) . '</td>';?><?php endif; ?>
					<?php if (isset($myCustomFields['polarity']) and !empty($myCustomFields['polarity'])) : ?><?='<td>' . ($myCustomFields['polarity']) . '</td>';?><?php endif; ?>
					<?php if (isset($myCustomFields['quantity']) and !empty($myCustomFields['quantity'])) : ?><?='<td>' . ($myCustomFields['quantity']) . '</td>';?><?php endif; ?>
					<?php if (isset($myCustomFields['weight']) and !empty($myCustomFields['weight'])) : ?><?='<td>' . ($myCustomFields['weight']) . '</td>';?><?php endif; ?>
					<?php if (isset($myCustomFields['download']) and !empty($myCustomFields['download'])) : ?><?='<td>' . ($myCustomFields['download']) . '</td>';?><?php endif; ?>
				</tr>
			</thead>
<?php // finish поля ?>
