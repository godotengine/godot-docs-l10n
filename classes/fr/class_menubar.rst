:github_url: hide

.. _class_MenuBar:

MenuBar
=======

**Hérite de :** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Une barre de menu horizontale qui crée un menu pour chaque :ref:`PopupMenu<class_PopupMenu>` enfant.

.. rst-class:: classref-introduction-group

Description
-----------

Une barre de menu horizontale qui crée un menu pour chaque :ref:`PopupMenu<class_PopupMenu>` enfant. Les nouveaux éléments sont créés en ajoutant des :ref:`PopupMenu<class_PopupMenu>`\ s à ce nœud. Le titre de l'élément est déterminé par :ref:`Window.title<class_Window_property_title>`, ou le nom du nœud si :ref:`Window.title<class_Window_property_title>` est vide. Le titre de l'élément peut être redéfini par :ref:`set_menu_title()<class_MenuBar_method_set_menu_title>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`flat<class_MenuBar_property_flat>`                             | ``false``                                                           |
   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`         | focus_mode                                                           | ``3`` (overrides :ref:`Control<class_Control_property_focus_mode>`) |
   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`String<class_String>`                      | :ref:`language<class_MenuBar_property_language>`                     | ``""``                                                              |
   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`prefer_global_menu<class_MenuBar_property_prefer_global_menu>` | ``true``                                                            |
   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`int<class_int>`                            | :ref:`start_index<class_MenuBar_property_start_index>`               | ``-1``                                                              |
   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`switch_on_hover<class_MenuBar_property_switch_on_hover>`       | ``true``                                                            |
   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`TextDirection<enum_Control_TextDirection>` | :ref:`text_direction<class_MenuBar_property_text_direction>`         | ``0``                                                               |
   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`             | :ref:`get_menu_count<class_MenuBar_method_get_menu_count>`\ (\ ) |const|                                                                  |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PopupMenu<class_PopupMenu>` | :ref:`get_menu_popup<class_MenuBar_method_get_menu_popup>`\ (\ menu\: :ref:`int<class_int>`\ ) |const|                                    |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`get_menu_title<class_MenuBar_method_get_menu_title>`\ (\ menu\: :ref:`int<class_int>`\ ) |const|                                    |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`get_menu_tooltip<class_MenuBar_method_get_menu_tooltip>`\ (\ menu\: :ref:`int<class_int>`\ ) |const|                                |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`is_menu_disabled<class_MenuBar_method_is_menu_disabled>`\ (\ menu\: :ref:`int<class_int>`\ ) |const|                                |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`is_menu_hidden<class_MenuBar_method_is_menu_hidden>`\ (\ menu\: :ref:`int<class_int>`\ ) |const|                                    |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`is_native_menu<class_MenuBar_method_is_native_menu>`\ (\ ) |const|                                                                  |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_disable_shortcuts<class_MenuBar_method_set_disable_shortcuts>`\ (\ disabled\: :ref:`bool<class_bool>`\ )                        |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_menu_disabled<class_MenuBar_method_set_menu_disabled>`\ (\ menu\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ )  |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_menu_hidden<class_MenuBar_method_set_menu_hidden>`\ (\ menu\: :ref:`int<class_int>`, hidden\: :ref:`bool<class_bool>`\ )        |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_menu_title<class_MenuBar_method_set_menu_title>`\ (\ menu\: :ref:`int<class_int>`, title\: :ref:`String<class_String>`\ )       |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_menu_tooltip<class_MenuBar_method_set_menu_tooltip>`\ (\ menu\: :ref:`int<class_int>`, tooltip\: :ref:`String<class_String>`\ ) |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Propriétés du thème
--------------------------------------

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_color<class_MenuBar_theme_color_font_color>`                             | ``Color(0.875, 0.875, 0.875, 1)``   |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_disabled_color<class_MenuBar_theme_color_font_disabled_color>`           | ``Color(0.875, 0.875, 0.875, 0.5)`` |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_focus_color<class_MenuBar_theme_color_font_focus_color>`                 | ``Color(0.95, 0.95, 0.95, 1)``      |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_hover_color<class_MenuBar_theme_color_font_hover_color>`                 | ``Color(0.95, 0.95, 0.95, 1)``      |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_hover_pressed_color<class_MenuBar_theme_color_font_hover_pressed_color>` | ``Color(1, 1, 1, 1)``               |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_outline_color<class_MenuBar_theme_color_font_outline_color>`             | ``Color(0, 0, 0, 1)``               |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_pressed_color<class_MenuBar_theme_color_font_pressed_color>`             | ``Color(1, 1, 1, 1)``               |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`           | :ref:`h_separation<class_MenuBar_theme_constant_h_separation>`                      | ``4``                               |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`           | :ref:`outline_size<class_MenuBar_theme_constant_outline_size>`                      | ``0``                               |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Font<class_Font>`         | :ref:`font<class_MenuBar_theme_font_font>`                                          |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`           | :ref:`font_size<class_MenuBar_theme_font_size_font_size>`                           |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`disabled<class_MenuBar_theme_style_disabled>`                                 |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`disabled_mirrored<class_MenuBar_theme_style_disabled_mirrored>`               |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`hover<class_MenuBar_theme_style_hover>`                                       |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`hover_mirrored<class_MenuBar_theme_style_hover_mirrored>`                     |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`hover_pressed<class_MenuBar_theme_style_hover_pressed>`                       |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`hover_pressed_mirrored<class_MenuBar_theme_style_hover_pressed_mirrored>`     |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`normal<class_MenuBar_theme_style_normal>`                                     |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`normal_mirrored<class_MenuBar_theme_style_normal_mirrored>`                   |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`pressed<class_MenuBar_theme_style_pressed>`                                   |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`pressed_mirrored<class_MenuBar_theme_style_pressed_mirrored>`                 |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_MenuBar_property_flat:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flat** = ``false`` :ref:`🔗<class_MenuBar_property_flat>`

.. rst-class:: classref-property-setget

- |void| **set_flat**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flat**\ (\ )

Les **MenuBar**\ s "flat" (plats) n'affichent pas la décoration des éléments.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_property_language:

.. rst-class:: classref-property

:ref:`String<class_String>` **language** = ``""`` :ref:`🔗<class_MenuBar_property_language>`

.. rst-class:: classref-property-setget

- |void| **set_language**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_language**\ (\ )

Code de langue utilisé pour les algorithmes de retour à la ligne et de "text shaping". Si laissé vide, la langue actuelle est utilisée à la place.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_property_prefer_global_menu:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **prefer_global_menu** = ``true`` :ref:`🔗<class_MenuBar_property_prefer_global_menu>`

.. rst-class:: classref-property-setget

- |void| **set_prefer_global_menu**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_prefer_global_menu**\ (\ )

Si ``true``, le **MenuBar** utilisera le menu global du système lorsqu'il est supporté.

\ **Note :** Si ``true`` et que le menu global est suppporté, ce nœud n'est pas affiché, a une taille zéro, et tous ses nœuds enfants sauf les :ref:`PopupMenu<class_PopupMenu>`\ s sont inaccessibles.

\ **Note :** Cette propriété redéfinit la valeur de la propriété :ref:`PopupMenu.prefer_native_menu<class_PopupMenu_property_prefer_native_menu>` des nœuds enfants.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_property_start_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **start_index** = ``-1`` :ref:`🔗<class_MenuBar_property_start_index>`

.. rst-class:: classref-property-setget

- |void| **set_start_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_start_index**\ (\ )

L'ordre de position dans le menu global dans lequel insérer des éléments **MenuBar**. Tous les éléments de menu dans le **MenuBar** sont toujours insérés en une plage continue. Les menus avec :ref:`start_index<class_MenuBar_property_start_index>` bas sont insérés en premier. Les menus avec des :ref:`start_index<class_MenuBar_property_start_index>` égaux à ``-1`` sont insérés en dernier.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_property_switch_on_hover:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **switch_on_hover** = ``true`` :ref:`🔗<class_MenuBar_property_switch_on_hover>`

.. rst-class:: classref-property-setget

- |void| **set_switch_on_hover**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_switch_on_hover**\ (\ )

Si ``true``, lorsque le curseur survole un élément du menu, il fermera le :ref:`PopupMenu<class_PopupMenu>` actuel et ouvrira l'autre menu.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_property_text_direction:

.. rst-class:: classref-property

:ref:`TextDirection<enum_Control_TextDirection>` **text_direction** = ``0`` :ref:`🔗<class_MenuBar_property_text_direction>`

.. rst-class:: classref-property-setget

- |void| **set_text_direction**\ (\ value\: :ref:`TextDirection<enum_Control_TextDirection>`\ )
- :ref:`TextDirection<enum_Control_TextDirection>` **get_text_direction**\ (\ )

Direction d'écriture du texte de base.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_MenuBar_method_get_menu_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_menu_count**\ (\ ) |const| :ref:`🔗<class_MenuBar_method_get_menu_count>`

Renvoie le nombre d'éléments de menu.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_get_menu_popup:

.. rst-class:: classref-method

:ref:`PopupMenu<class_PopupMenu>` **get_menu_popup**\ (\ menu\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MenuBar_method_get_menu_popup>`

Renvoie le :ref:`PopupMenu<class_PopupMenu>` associé avec l'élément de menu.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_get_menu_title:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_menu_title**\ (\ menu\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MenuBar_method_get_menu_title>`

Renvoie le titre de l'élément du menu.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_get_menu_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_menu_tooltip**\ (\ menu\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MenuBar_method_get_menu_tooltip>`

Renvoie l'info-bulle de l'élément du menu.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_is_menu_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_menu_disabled**\ (\ menu\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MenuBar_method_is_menu_disabled>`

Returns ``true`` if the menu item is disabled.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_is_menu_hidden:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_menu_hidden**\ (\ menu\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MenuBar_method_is_menu_hidden>`

Returns ``true`` if the menu item is hidden.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_is_native_menu:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_native_menu**\ (\ ) |const| :ref:`🔗<class_MenuBar_method_is_native_menu>`

Returns ``true`` if the current system's global menu is supported and used by this **MenuBar**.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_set_disable_shortcuts:

.. rst-class:: classref-method

|void| **set_disable_shortcuts**\ (\ disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_MenuBar_method_set_disable_shortcuts>`

Si ``true``, les raccourcis sont désactivés et ne peuvent pas être utilisés pour déclencher le bouton.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_set_menu_disabled:

.. rst-class:: classref-method

|void| **set_menu_disabled**\ (\ menu\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_MenuBar_method_set_menu_disabled>`

Si ``true``, l'élément de menu est désactivé.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_set_menu_hidden:

.. rst-class:: classref-method

|void| **set_menu_hidden**\ (\ menu\: :ref:`int<class_int>`, hidden\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_MenuBar_method_set_menu_hidden>`

Si ``true``, l'élément de menu est caché.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_set_menu_title:

.. rst-class:: classref-method

|void| **set_menu_title**\ (\ menu\: :ref:`int<class_int>`, title\: :ref:`String<class_String>`\ ) :ref:`🔗<class_MenuBar_method_set_menu_title>`

Définit le titre de l'élément de menu.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_set_menu_tooltip:

.. rst-class:: classref-method

|void| **set_menu_tooltip**\ (\ menu\: :ref:`int<class_int>`, tooltip\: :ref:`String<class_String>`\ ) :ref:`🔗<class_MenuBar_method_set_menu_tooltip>`

Définit l’info-bulle de l'élément du menu.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés du thème
------------------------------------------------------------------------

.. _class_MenuBar_theme_color_font_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_color** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_MenuBar_theme_color_font_color>`

:ref:`Color<class_Color>` du texte par défaut de l'élément de menu.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_color_font_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_disabled_color** = ``Color(0.875, 0.875, 0.875, 0.5)`` :ref:`🔗<class_MenuBar_theme_color_font_disabled_color>`

La :ref:`Color<class_Color>` du texte utilisée quand l'élément de menu est désactivé.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_color_font_focus_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_focus_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_MenuBar_theme_color_font_focus_color>`

La :ref:`Color<class_Color>` du texte utilisée quand l'élément de menu a le focus. Remplace seulement la couleur du texte normale de l'élément de menu. Les états désactivés, survolés et appuyés sont prioritaires sur cette couleur.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_color_font_hover_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hover_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_MenuBar_theme_color_font_hover_color>`

La :ref:`Color<class_Color>` du texte utilisée quand l'élément de menu est survolé.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_color_font_hover_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hover_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_MenuBar_theme_color_font_hover_pressed_color>`

La :ref:`Color<class_Color>` du texte utilisée quand l'élément de menu est survolé et appuyé.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_MenuBar_theme_color_font_outline_color>`

La teinte du contour du texte de l'élément de menu.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_color_font_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_MenuBar_theme_color_font_pressed_color>`

La :ref:`Color<class_Color>` du texte utilisée quand l'élément de menu est appuyé.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_constant_h_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **h_separation** = ``4`` :ref:`🔗<class_MenuBar_theme_constant_h_separation>`

L'espacement horizontal entre les éléments de menu.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_MenuBar_theme_constant_outline_size>`

La taille du contour du texte.

\ **Note :** Si vous utilisez une police avec :ref:`FontFile.multichannel_signed_distance_field<class_FontFile_property_multichannel_signed_distance_field>` activé, sa propriété :ref:`FontFile.msdf_pixel_range<class_FontFile_property_msdf_pixel_range>` doit être définie à au moins *deux fois* la valeur de :ref:`outline_size<class_MenuBar_theme_constant_outline_size>` pour que le rendu des contours soit correct. Sinon, le contour peut sembler coupé plus tôt que prévu.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_MenuBar_theme_font_font>`

:ref:`Font<class_Font>` du texte de l’élément de menu.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_MenuBar_theme_font_size_font_size>`

Taille de police du texte de l'élément de menu.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_disabled:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **disabled** :ref:`🔗<class_MenuBar_theme_style_disabled>`

La :ref:`StyleBox<class_StyleBox>` utilisée quand l'élément de menu est désactivé.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_disabled_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **disabled_mirrored** :ref:`🔗<class_MenuBar_theme_style_disabled_mirrored>`

La :ref:`StyleBox<class_StyleBox>` utilisée quand l'élément de menu est désactivé (pour les dispositions de droite à gauche).

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_hover:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover** :ref:`🔗<class_MenuBar_theme_style_hover>`

La :ref:`StyleBox<class_StyleBox>` utilisée quand l'élément de menu est survolé.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_hover_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover_mirrored** :ref:`🔗<class_MenuBar_theme_style_hover_mirrored>`

La :ref:`StyleBox<class_StyleBox>` utilisée quand l'élément de menu est survolé (pour les dispositions de droite à gauche).

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_hover_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover_pressed** :ref:`🔗<class_MenuBar_theme_style_hover_pressed>`

La :ref:`StyleBox<class_StyleBox>` utilisée quand l'élément de menu est appuyé et survolé en même temps.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_hover_pressed_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover_pressed_mirrored** :ref:`🔗<class_MenuBar_theme_style_hover_pressed_mirrored>`

La :ref:`StyleBox<class_StyleBox>` utilisée quand l'élément de menu est appuyé et survolé en même temps (pour les dispositions de droite à gauche).

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_normal:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **normal** :ref:`🔗<class_MenuBar_theme_style_normal>`

La :ref:`StyleBox<class_StyleBox>` par défaut pour l'élément de menu.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_normal_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **normal_mirrored** :ref:`🔗<class_MenuBar_theme_style_normal_mirrored>`

La :ref:`StyleBox<class_StyleBox>` par défaut pour l'élément de menu (pour les dispositions de droite à gauche).

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **pressed** :ref:`🔗<class_MenuBar_theme_style_pressed>`

La :ref:`StyleBox<class_StyleBox>` utilisée quand l'élément de menu est appuyé.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_pressed_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **pressed_mirrored** :ref:`🔗<class_MenuBar_theme_style_pressed_mirrored>`

La :ref:`StyleBox<class_StyleBox>` utilisée quand l'élément de menu est appuyé (pour les dispositions de droite à gauche).

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
