:github_url: hide

.. _class_ScrollContainer:

ScrollContainer
===============

**Hérite de :** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`EditorInspector<class_EditorInspector>`

Un conteneur utilisé pour fournir des barres de défilement à un contrôle enfant au besoin.

.. rst-class:: classref-introduction-group

Description
-----------

A container used to provide a child control with scrollbars when needed. Scrollbars will automatically be drawn at the right (for vertical) or bottom (for horizontal) and will enable dragging to move the viewable Control (and its children) within the ScrollContainer. Scrollbars will also automatically resize the grabber based on the :ref:`Control.custom_minimum_size<class_Control_property_custom_minimum_size>` of the Control relative to the ScrollContainer.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utilisation des conteneurs <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                    | clip_contents                                                                                      | ``true`` (overrides :ref:`Control<class_Control_property_clip_contents>`)           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`draw_focus_border<class_ScrollContainer_property_draw_focus_border>`                         | ``false``                                                                           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`follow_focus<class_ScrollContainer_property_follow_focus>`                                   | ``false``                                                                           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>`         | :ref:`horizontal_scroll_mode<class_ScrollContainer_property_horizontal_scroll_mode>`               | ``1``                                                                               |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                    | propagate_maximum_size                                                                             | ``false`` (overrides :ref:`Control<class_Control_property_propagate_maximum_size>`) |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                      | :ref:`scroll_deadzone<class_ScrollContainer_property_scroll_deadzone>`                             | ``0``                                                                               |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` | :ref:`scroll_hint_mode<class_ScrollContainer_property_scroll_hint_mode>`                           | ``0``                                                                               |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                      | :ref:`scroll_horizontal<class_ScrollContainer_property_scroll_horizontal>`                         | ``0``                                                                               |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`scroll_horizontal_by_default<class_ScrollContainer_property_scroll_horizontal_by_default>`   | ``false``                                                                           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                  | :ref:`scroll_horizontal_custom_step<class_ScrollContainer_property_scroll_horizontal_custom_step>` | ``-1.0``                                                                            |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                      | :ref:`scroll_vertical<class_ScrollContainer_property_scroll_vertical>`                             | ``0``                                                                               |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                  | :ref:`scroll_vertical_custom_step<class_ScrollContainer_property_scroll_vertical_custom_step>`     | ``-1.0``                                                                            |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`tile_scroll_hint<class_ScrollContainer_property_tile_scroll_hint>`                           | ``false``                                                                           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>`         | :ref:`vertical_scroll_mode<class_ScrollContainer_property_vertical_scroll_mode>`                   | ``1``                                                                               |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`ensure_control_visible<class_ScrollContainer_method_ensure_control_visible>`\ (\ control\: :ref:`Control<class_Control>`\ ) |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`HScrollBar<class_HScrollBar>` | :ref:`get_h_scroll_bar<class_ScrollContainer_method_get_h_scroll_bar>`\ (\ )                                                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`VScrollBar<class_VScrollBar>` | :ref:`get_v_scroll_bar<class_ScrollContainer_method_get_v_scroll_bar>`\ (\ )                                                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Propriétés du thème
--------------------------------------

.. table::
   :widths: auto

   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`scroll_hint_horizontal_color<class_ScrollContainer_theme_color_scroll_hint_horizontal_color>` | ``Color(0, 0, 0, 1)`` |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`scroll_hint_vertical_color<class_ScrollContainer_theme_color_scroll_hint_vertical_color>`     | ``Color(0, 0, 0, 1)`` |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`scrollbar_h_separation<class_ScrollContainer_theme_constant_scrollbar_h_separation>`          | ``0``                 |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`scrollbar_v_separation<class_ScrollContainer_theme_constant_scrollbar_v_separation>`          | ``0``                 |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`scroll_hint_horizontal<class_ScrollContainer_theme_icon_scroll_hint_horizontal>`              |                       |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`scroll_hint_vertical<class_ScrollContainer_theme_icon_scroll_hint_vertical>`                  |                       |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`focus<class_ScrollContainer_theme_style_focus>`                                               |                       |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`panel<class_ScrollContainer_theme_style_panel>`                                               |                       |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_ScrollContainer_signal_scroll_ended:

.. rst-class:: classref-signal

**scroll_ended**\ (\ ) :ref:`🔗<class_ScrollContainer_signal_scroll_ended>`

Émis lorsque le défilement s'arrête lors du glissement de la zone défilante *avec un événement tactile*. Ce signal n'est *pas* émis lors du défilement en faisant glisser la barre de défilement, en défilant avec la roue de la souris ou en défilant avec des événements de clavier/manette.

\ **Note :** Ce signal n'est émis que sur Android ou iOS, ou sur les plateformes de bureau/web lorsque :ref:`ProjectSettings.input_devices/pointing/emulate_touch_from_mouse<class_ProjectSettings_property_input_devices/pointing/emulate_touch_from_mouse>` est activé.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_signal_scroll_started:

.. rst-class:: classref-signal

**scroll_started**\ (\ ) :ref:`🔗<class_ScrollContainer_signal_scroll_started>`

Émis lorsque le défilement commence lors du glissement de la zone défilante *avec un événement tactile*. Ce signal n'est *pas* émis lors du défilement en faisant glisser la barre de défilement, en défilant avec la roue de la souris ou en défilant avec des événements de clavier/manette.

\ **Note :** Ce signal n'est émis que sur Android ou iOS, ou sur les plateformes de bureau/web lorsque :ref:`ProjectSettings.input_devices/pointing/emulate_touch_from_mouse<class_ProjectSettings_property_input_devices/pointing/emulate_touch_from_mouse>` est activé.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_ScrollContainer_ScrollMode:

.. rst-class:: classref-enumeration

enum **ScrollMode**: :ref:`🔗<enum_ScrollContainer_ScrollMode>`

.. _class_ScrollContainer_constant_SCROLL_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_DISABLED** = ``0``

Défilement désactivé, la barre de défilement sera invisible.

.. _class_ScrollContainer_constant_SCROLL_MODE_AUTO:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_AUTO** = ``1``

Défilement activé, la barre de défilement ne sera visible que si nécessaire, c'est-à-dire que le contenu du conteneur est plus grand que le conteneur.

.. _class_ScrollContainer_constant_SCROLL_MODE_SHOW_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_SHOW_ALWAYS** = ``2``

Défilement activé, la barre de défilement sera toujours visible.

.. _class_ScrollContainer_constant_SCROLL_MODE_SHOW_NEVER:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_SHOW_NEVER** = ``3``

Défilement activé, la barre de défilement sera cachée.

.. _class_ScrollContainer_constant_SCROLL_MODE_RESERVE:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_RESERVE** = ``4``

Combine :ref:`SCROLL_MODE_AUTO<class_ScrollContainer_constant_SCROLL_MODE_AUTO>` et :ref:`SCROLL_MODE_SHOW_ALWAYS<class_ScrollContainer_constant_SCROLL_MODE_SHOW_ALWAYS>`. La barre de défilement n'est visible que si nécessaire, mais la taille du contenu est ajustée comme si elle était toujours visible. Utile pour s'assurer que la taille du contenu reste la même peu importe si la barre de défilement est visible.

.. _class_ScrollContainer_constant_SCROLL_MODE_MAXIMIZE_FIRST:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_MAXIMIZE_FIRST** = ``5``

Behaves like :ref:`SCROLL_MODE_AUTO<class_ScrollContainer_constant_SCROLL_MODE_AUTO>`, but makes the **ScrollContainer** report a minimum size based on its content (limited by :ref:`Control.custom_maximum_size<class_Control_property_custom_maximum_size>` when set on the corresponding axis). This allows it to grow first and only start scrolling once constrained.

.. rst-class:: classref-item-separator

----

.. _enum_ScrollContainer_ScrollHintMode:

.. rst-class:: classref-enumeration

enum **ScrollHintMode**: :ref:`🔗<enum_ScrollContainer_ScrollHintMode>`

.. _class_ScrollContainer_constant_SCROLL_HINT_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **SCROLL_HINT_MODE_DISABLED** = ``0``

Scroll hints will never be shown.

.. _class_ScrollContainer_constant_SCROLL_HINT_MODE_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **SCROLL_HINT_MODE_ALL** = ``1``

Scroll hints will be shown at the top and bottom (if vertical), or left and right (if horizontal).

.. _class_ScrollContainer_constant_SCROLL_HINT_MODE_TOP_AND_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **SCROLL_HINT_MODE_TOP_AND_LEFT** = ``2``

Scroll hints will be shown at the top (if vertical), or the left (if horizontal).

.. _class_ScrollContainer_constant_SCROLL_HINT_MODE_BOTTOM_AND_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **SCROLL_HINT_MODE_BOTTOM_AND_RIGHT** = ``3``

Scroll hints will be shown at the bottom (if horizontal), or the right (if horizontal).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ScrollContainer_property_draw_focus_border:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draw_focus_border** = ``false`` :ref:`🔗<class_ScrollContainer_property_draw_focus_border>`

.. rst-class:: classref-property-setget

- |void| **set_draw_focus_border**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_focus_border**\ (\ )

Si ``true``, :ref:`focus<class_ScrollContainer_theme_style_focus>` est dessiné lorsque le ScrollContainer ou l'un de ses nœuds descendants a le focus.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_follow_focus:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **follow_focus** = ``false`` :ref:`🔗<class_ScrollContainer_property_follow_focus>`

.. rst-class:: classref-property-setget

- |void| **set_follow_focus**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_following_focus**\ (\ )

Si ``true``, le ScrollContainer défilera automatiquement vers les enfants ayant le focus (y compris les enfants indirects) pour s'assurer qu'ils soient pleinement visibles.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_horizontal_scroll_mode:

.. rst-class:: classref-property

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **horizontal_scroll_mode** = ``1`` :ref:`🔗<class_ScrollContainer_property_horizontal_scroll_mode>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_scroll_mode**\ (\ value\: :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>`\ )
- :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **get_horizontal_scroll_mode**\ (\ )

Contrôle si la barre de défilement horizontale peut être utilisée et quand elle devrait être visible.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_deadzone:

.. rst-class:: classref-property

:ref:`int<class_int>` **scroll_deadzone** = ``0`` :ref:`🔗<class_ScrollContainer_property_scroll_deadzone>`

.. rst-class:: classref-property-setget

- |void| **set_deadzone**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_deadzone**\ (\ )

Zone morte pour le défilement tactile. Une zone morte plus basse rend le défilement plus sensible.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_hint_mode:

.. rst-class:: classref-property

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **scroll_hint_mode** = ``0`` :ref:`🔗<class_ScrollContainer_property_scroll_hint_mode>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_hint_mode**\ (\ value\: :ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>`\ )
- :ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **get_scroll_hint_mode**\ (\ )

The way which scroll hints (indicators that show that the content can still be scrolled in a certain direction) will be shown.

\ **Note:** Hints won't be shown if the content can be scrolled both vertically and horizontally.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_horizontal:

.. rst-class:: classref-property

:ref:`int<class_int>` **scroll_horizontal** = ``0`` :ref:`🔗<class_ScrollContainer_property_scroll_horizontal>`

.. rst-class:: classref-property-setget

- |void| **set_h_scroll**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_h_scroll**\ (\ )

La valeur de défilement horizontal actuelle.

\ **Note :** Si vous définissez cette valeur dans la fonction :ref:`Node._ready()<class_Node_private_method__ready>` ou plus tôt, elle doit être définie avec :ref:`Object.set_deferred()<class_Object_method_set_deferred>`, puisque la :ref:`Range.max_value<class_Range_property_max_value>` de la barre de défilement n'est pas encore initialisée.

::

    func _ready():
        set_deferred("scroll_horizontal", 600)

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_horizontal_by_default:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **scroll_horizontal_by_default** = ``false`` :ref:`🔗<class_ScrollContainer_property_scroll_horizontal_by_default>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_horizontal_by_default**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_scroll_horizontal_by_default**\ (\ )

If ``true``, the mouse wheel scrolls the view horizontally, and holding :kbd:`Shift` scrolls vertically.

If ``false`` (default), the mouse wheel scrolls the view vertically, and holding :kbd:`Shift` scrolls horizontally.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_horizontal_custom_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **scroll_horizontal_custom_step** = ``-1.0`` :ref:`🔗<class_ScrollContainer_property_scroll_horizontal_custom_step>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_custom_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_horizontal_custom_step**\ (\ )

Redéfinit le :ref:`ScrollBar.custom_step<class_ScrollBar_property_custom_step>` utilisé lorsque vous cliquez sur les boutons d'incrément et de décrément horizontaux de la barre de défilement ou lorsque vous utilisez des touches directionnelles lorsque la :ref:`ScrollBar<class_ScrollBar>` a le focus.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_vertical:

.. rst-class:: classref-property

:ref:`int<class_int>` **scroll_vertical** = ``0`` :ref:`🔗<class_ScrollContainer_property_scroll_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_v_scroll**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_v_scroll**\ (\ )

La valeur de défilement vertical actuelle.

\ **Note :** La définir tôt doit être fait en différé, comme avec :ref:`scroll_horizontal<class_ScrollContainer_property_scroll_horizontal>`.

::

    func _ready():
        set_deferred("scroll_vertical", 600)

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_vertical_custom_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **scroll_vertical_custom_step** = ``-1.0`` :ref:`🔗<class_ScrollContainer_property_scroll_vertical_custom_step>`

.. rst-class:: classref-property-setget

- |void| **set_vertical_custom_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vertical_custom_step**\ (\ )

Redéfinit le :ref:`ScrollBar.custom_step<class_ScrollBar_property_custom_step>` utilisé lorsque vous cliquez sur les boutons d'incrément et de décrément verticaux de la barre de défilement ou lorsque vous utilisez des touches directionnelles lorsque la :ref:`ScrollBar<class_ScrollBar>` a le focus.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_tile_scroll_hint:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **tile_scroll_hint** = ``false`` :ref:`🔗<class_ScrollContainer_property_tile_scroll_hint>`

.. rst-class:: classref-property-setget

- |void| **set_tile_scroll_hint**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_scroll_hint_tiled**\ (\ )

If ``true``, the scroll hint texture will be tiled instead of stretched. See :ref:`scroll_hint_mode<class_ScrollContainer_property_scroll_hint_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_vertical_scroll_mode:

.. rst-class:: classref-property

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **vertical_scroll_mode** = ``1`` :ref:`🔗<class_ScrollContainer_property_vertical_scroll_mode>`

.. rst-class:: classref-property-setget

- |void| **set_vertical_scroll_mode**\ (\ value\: :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>`\ )
- :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **get_vertical_scroll_mode**\ (\ )

Contrôle si la barre de défilement verticale peut être utilisée et quand elle devrait être visible.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ScrollContainer_method_ensure_control_visible:

.. rst-class:: classref-method

|void| **ensure_control_visible**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_ScrollContainer_method_ensure_control_visible>`

Veille à ce que le ``control`` donné soit visible (doit être un enfant direct ou indirect du ScrollContainer). Utilisé par :ref:`follow_focus<class_ScrollContainer_property_follow_focus>`.

\ **Note :** Cela ne fonctionnera pas sur un nœud qui vient d'être ajouté pendant la même trame. Si vous voulez faire défiler vers un enfant nouvellement ajouté, vous devez attendre jusqu'à la prochaine trame en utilisant :ref:`SceneTree.process_frame<class_SceneTree_signal_process_frame>`\  :

::

    add_child(noeud_enfant)
    await get_tree().process_frame
    ensure_control_visible(noeud_enfant)

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_method_get_h_scroll_bar:

.. rst-class:: classref-method

:ref:`HScrollBar<class_HScrollBar>` **get_h_scroll_bar**\ (\ ) :ref:`🔗<class_ScrollContainer_method_get_h_scroll_bar>`

Renvoie la barre de défilement horizontale :ref:`HScrollBar<class_HScrollBar>` de ce **ScrollContainer**.

\ **Attention :** Il s'agit d'un nœud interne requis, l'enlever et le libérer peut causer un plantage. Si vous souhaitez désactiver ou cacher une barre de défilement, vous pouvez utiliser :ref:`horizontal_scroll_mode<class_ScrollContainer_property_horizontal_scroll_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_method_get_v_scroll_bar:

.. rst-class:: classref-method

:ref:`VScrollBar<class_VScrollBar>` **get_v_scroll_bar**\ (\ ) :ref:`🔗<class_ScrollContainer_method_get_v_scroll_bar>`

Renvoie la barre de défilement verticale :ref:`VScrollBar<class_VScrollBar>` de ce **ScrollContainer**.

\ **Attention :** Il s'agit d'un nœud interne requis, l'enlever et le libérer peut causer un plantage. Si vous souhaitez désactiver ou cacher une barre de défilement, vous pouvez utiliser :ref:`vertical_scroll_mode<class_ScrollContainer_property_vertical_scroll_mode>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés du thème
------------------------------------------------------------------------

.. _class_ScrollContainer_theme_color_scroll_hint_horizontal_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **scroll_hint_horizontal_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_ScrollContainer_theme_color_scroll_hint_horizontal_color>`

:ref:`Color<class_Color>` used to modulate the :ref:`scroll_hint_horizontal<class_ScrollContainer_theme_icon_scroll_hint_horizontal>` texture.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_color_scroll_hint_vertical_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **scroll_hint_vertical_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_ScrollContainer_theme_color_scroll_hint_vertical_color>`

:ref:`Color<class_Color>` used to modulate the :ref:`scroll_hint_vertical<class_ScrollContainer_theme_icon_scroll_hint_vertical>` texture.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_constant_scrollbar_h_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **scrollbar_h_separation** = ``0`` :ref:`🔗<class_ScrollContainer_theme_constant_scrollbar_h_separation>`

The space between the ScrollContainer's vertical scroll bar and its content, in pixels. No space will be added when the content's minimum size is larger than the ScrollContainer's size.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_constant_scrollbar_v_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **scrollbar_v_separation** = ``0`` :ref:`🔗<class_ScrollContainer_theme_constant_scrollbar_v_separation>`

The space between the ScrollContainer's horizontal scroll bar and its content, in pixels. No space will be added when the content's minimum size is larger than the ScrollContainer's size.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_icon_scroll_hint_horizontal:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **scroll_hint_horizontal** :ref:`🔗<class_ScrollContainer_theme_icon_scroll_hint_horizontal>`

The indicator that will be shown when the content can still be scrolled horizontally. See :ref:`scroll_hint_mode<class_ScrollContainer_property_scroll_hint_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_icon_scroll_hint_vertical:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **scroll_hint_vertical** :ref:`🔗<class_ScrollContainer_theme_icon_scroll_hint_vertical>`

The indicator that will be shown when the content can still be scrolled vertically. See :ref:`scroll_hint_mode<class_ScrollContainer_property_scroll_hint_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_style_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **focus** :ref:`🔗<class_ScrollContainer_theme_style_focus>`

La :ref:`StyleBox<class_StyleBox>` du bord avec focus du **ScrollContainer**. Seulement utilisé si :ref:`draw_focus_border<class_ScrollContainer_property_draw_focus_border>` vaut ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_style_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **panel** :ref:`🔗<class_ScrollContainer_theme_style_panel>`

Le :ref:`StyleBox<class_StyleBox>` de l'arrière-plan du **ScrollContainer**.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
