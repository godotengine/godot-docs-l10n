:github_url: hide

.. _class_Slider:

Slider
======

**Hérite de :** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`HSlider<class_HSlider>`, :ref:`VSlider<class_VSlider>`

Classe de base abstraite pour les sliders.

.. rst-class:: classref-introduction-group

Description
-----------

Abstract base class for sliders, used to adjust a value by moving a grabber along a horizontal or vertical axis. Sliders are :ref:`Range<class_Range>`-based controls.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`editable<class_Slider_property_editable>`                 | ``true``                                                            |
   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`      | focus_mode                                                      | ``2`` (overrides :ref:`Control<class_Control_property_focus_mode>`) |
   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`scrollable<class_Slider_property_scrollable>`             | ``true``                                                            |
   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`float<class_float>`                     | step                                                            | ``1.0`` (overrides :ref:`Range<class_Range_property_step>`)         |
   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`int<class_int>`                         | :ref:`tick_count<class_Slider_property_tick_count>`             | ``0``                                                               |
   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`ticks_on_borders<class_Slider_property_ticks_on_borders>` | ``false``                                                           |
   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`TickPosition<enum_Slider_TickPosition>` | :ref:`ticks_position<class_Slider_property_ticks_position>`     | ``0``                                                               |
   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Propriétés du thème
--------------------------------------

.. table::
   :widths: auto

   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                 | :ref:`center_grabber<class_Slider_theme_constant_center_grabber>`                        | ``0`` |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                 | :ref:`grabber_max_size<class_Slider_theme_constant_grabber_max_size>`                    | ``0`` |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                 | :ref:`grabber_offset<class_Slider_theme_constant_grabber_offset>`                        | ``0`` |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                 | :ref:`tick_max_size<class_Slider_theme_constant_tick_max_size>`                          | ``0`` |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                 | :ref:`tick_offset<class_Slider_theme_constant_tick_offset>`                              | ``0`` |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`grabber<class_Slider_theme_icon_grabber>`                                          |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`grabber_disabled<class_Slider_theme_icon_grabber_disabled>`                        |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`grabber_highlight<class_Slider_theme_icon_grabber_highlight>`                      |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`tick<class_Slider_theme_icon_tick>`                                                |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`drag_ended_sound<class_Slider_theme_sound_drag_ended_sound>`                       |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`drag_started_sound<class_Slider_theme_sound_drag_started_sound>`                   |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`focus_sound<class_Slider_theme_sound_focus_sound>`                                 |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`value_change_rejected_sound<class_Slider_theme_sound_value_change_rejected_sound>` |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`value_changed_sound<class_Slider_theme_sound_value_changed_sound>`                 |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`grabber_area<class_Slider_theme_style_grabber_area>`                               |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`grabber_area_highlight<class_Slider_theme_style_grabber_area_highlight>`           |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`slider<class_Slider_theme_style_slider>`                                           |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_Slider_signal_drag_ended:

.. rst-class:: classref-signal

**drag_ended**\ (\ value_changed\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Slider_signal_drag_ended>`

Emitted when the grabber stops being dragged. If ``value_changed`` is ``true``, :ref:`Range.value<class_Range_property_value>` is different from the value when the dragging was started.

.. rst-class:: classref-item-separator

----

.. _class_Slider_signal_drag_started:

.. rst-class:: classref-signal

**drag_started**\ (\ ) :ref:`🔗<class_Slider_signal_drag_started>`

Emitted when the grabber starts being dragged. This is emitted before the corresponding :ref:`Range.value_changed<class_Range_signal_value_changed>` signal.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_Slider_TickPosition:

.. rst-class:: classref-enumeration

enum **TickPosition**: :ref:`🔗<enum_Slider_TickPosition>`

.. _class_Slider_constant_TICK_POSITION_BOTTOM_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`TickPosition<enum_Slider_TickPosition>` **TICK_POSITION_BOTTOM_RIGHT** = ``0``

Places the ticks at the bottom of the :ref:`HSlider<class_HSlider>`, or right of the :ref:`VSlider<class_VSlider>`.

.. _class_Slider_constant_TICK_POSITION_TOP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`TickPosition<enum_Slider_TickPosition>` **TICK_POSITION_TOP_LEFT** = ``1``

Places the ticks at the top of the :ref:`HSlider<class_HSlider>`, or left of the :ref:`VSlider<class_VSlider>`.

.. _class_Slider_constant_TICK_POSITION_BOTH:

.. rst-class:: classref-enumeration-constant

:ref:`TickPosition<enum_Slider_TickPosition>` **TICK_POSITION_BOTH** = ``2``

Places the ticks at the both sides of the slider.

.. _class_Slider_constant_TICK_POSITION_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`TickPosition<enum_Slider_TickPosition>` **TICK_POSITION_CENTER** = ``3``

Place les tics au centre du slider.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Slider_property_editable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editable** = ``true`` :ref:`🔗<class_Slider_property_editable>`

.. rst-class:: classref-property-setget

- |void| **set_editable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editable**\ (\ )

Si ``true``, l'utilisateur peut intéragir avec le curseur. Si ``false``, la valeur ne peut être modifiée que par code.

.. rst-class:: classref-item-separator

----

.. _class_Slider_property_scrollable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **scrollable** = ``true`` :ref:`🔗<class_Slider_property_scrollable>`

.. rst-class:: classref-property-setget

- |void| **set_scrollable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_scrollable**\ (\ )

Si ``true``, la valeur peut être changée avec la molette de la souris.

.. rst-class:: classref-item-separator

----

.. _class_Slider_property_tick_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **tick_count** = ``0`` :ref:`🔗<class_Slider_property_tick_count>`

.. rst-class:: classref-property-setget

- |void| **set_ticks**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_ticks**\ (\ )

Le nombre de marqueurs affichées sur le curseur, y compris les marqueurs sur les bords. Les marqueurs représentent des valeurs distribués uniformément.

.. rst-class:: classref-item-separator

----

.. _class_Slider_property_ticks_on_borders:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ticks_on_borders** = ``false`` :ref:`🔗<class_Slider_property_ticks_on_borders>`

.. rst-class:: classref-property-setget

- |void| **set_ticks_on_borders**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_ticks_on_borders**\ (\ )

Si ``true``, le curseur affichera des marqueurs pour les valeurs minimales et maximales.

.. rst-class:: classref-item-separator

----

.. _class_Slider_property_ticks_position:

.. rst-class:: classref-property

:ref:`TickPosition<enum_Slider_TickPosition>` **ticks_position** = ``0`` :ref:`🔗<class_Slider_property_ticks_position>`

.. rst-class:: classref-property-setget

- |void| **set_ticks_position**\ (\ value\: :ref:`TickPosition<enum_Slider_TickPosition>`\ )
- :ref:`TickPosition<enum_Slider_TickPosition>` **get_ticks_position**\ (\ )

Sets the position of the ticks. See :ref:`TickPosition<enum_Slider_TickPosition>` for details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés du thème
------------------------------------------------------------------------

.. _class_Slider_theme_constant_center_grabber:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **center_grabber** = ``0`` :ref:`🔗<class_Slider_theme_constant_center_grabber>`

Boolean constant. If ``1``, the grabber texture size will be ignored and it will fit within slider's bounds based only on its center position.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_constant_grabber_max_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **grabber_max_size** = ``0`` :ref:`🔗<class_Slider_theme_constant_grabber_max_size>`

The maximum allowed size of the **Slider**'s grabber icon. The grabber texture is scaled down so its widest axis is :ref:`grabber_max_size<class_Slider_theme_constant_grabber_max_size>` and the other axis is scaled keeping the original ratio.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_constant_grabber_offset:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **grabber_offset** = ``0`` :ref:`🔗<class_Slider_theme_constant_grabber_offset>`

Vertical or horizontal offset of the grabber.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_constant_tick_max_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **tick_max_size** = ``0`` :ref:`🔗<class_Slider_theme_constant_tick_max_size>`

The maximum allowed size of the **Slider**'s tick icons. The tick texture is scaled down so its widest axis is :ref:`tick_max_size<class_Slider_theme_constant_tick_max_size>` and the other axis is scaled keeping the original ratio.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_constant_tick_offset:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **tick_offset** = ``0`` :ref:`🔗<class_Slider_theme_constant_tick_offset>`

Décalage vertical ou horizontal des tics. Le décalage est inversé pour les tiques haut ou gauche.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_icon_grabber:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **grabber** :ref:`🔗<class_Slider_theme_icon_grabber>`

La texture du glisseur (l'élément déplaçable).

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_icon_grabber_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **grabber_disabled** :ref:`🔗<class_Slider_theme_icon_grabber_disabled>`

La texture du glisseur quand il est désactivé.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_icon_grabber_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **grabber_highlight** :ref:`🔗<class_Slider_theme_icon_grabber_highlight>`

La texture du glisseur quand il a le focus.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_icon_tick:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **tick** :ref:`🔗<class_Slider_theme_icon_tick>`

La texture des tics, visible lorsque :ref:`tick_count<class_Slider_property_tick_count>` est supérieur à 0.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_sound_drag_ended_sound:

.. rst-class:: classref-themeproperty

:ref:`AudioStream<class_AudioStream>` **drag_ended_sound** :ref:`🔗<class_Slider_theme_sound_drag_ended_sound>`

Played when mouse or touch drag ends. This is also used by :ref:`SpinBox<class_SpinBox>` when dragging over its arrows, or :ref:`ColorPicker<class_ColorPicker>` when dragging over its color wheel/rectangle.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_sound_drag_started_sound:

.. rst-class:: classref-themeproperty

:ref:`AudioStream<class_AudioStream>` **drag_started_sound** :ref:`🔗<class_Slider_theme_sound_drag_started_sound>`

Played when mouse or touch drag begins. This is also used by :ref:`SpinBox<class_SpinBox>` when dragging over its arrows, or :ref:`ColorPicker<class_ColorPicker>` when dragging over its color wheel/rectangle.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_sound_focus_sound:

.. rst-class:: classref-themeproperty

:ref:`AudioStream<class_AudioStream>` **focus_sound** :ref:`🔗<class_Slider_theme_sound_focus_sound>`

Played when this **Slider** receives keyboard or gamepad-induced focus. Mouse or touch-induced focus does not play a focus sound.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_sound_value_change_rejected_sound:

.. rst-class:: classref-themeproperty

:ref:`AudioStream<class_AudioStream>` **value_change_rejected_sound** :ref:`🔗<class_Slider_theme_sound_value_change_rejected_sound>`

Played when the value is attempted to be changed through keyboard or gamepad input, but the value is already at the minimum (or maximum).

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_sound_value_changed_sound:

.. rst-class:: classref-themeproperty

:ref:`AudioStream<class_AudioStream>` **value_changed_sound** :ref:`🔗<class_Slider_theme_sound_value_changed_sound>`

Played when the value is changed through keyboard or gamepad input. If the value is already at the minimum (or maximum), :ref:`value_change_rejected_sound<class_Slider_theme_sound_value_change_rejected_sound>` is played instead.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_style_grabber_area:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **grabber_area** :ref:`🔗<class_Slider_theme_style_grabber_area>`

The background of the area to the left or bottom of the grabber.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_style_grabber_area_highlight:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **grabber_area_highlight** :ref:`🔗<class_Slider_theme_style_grabber_area_highlight>`

The background of the area to the left or bottom of the grabber that displays when it's being hovered or focused.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_style_slider:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **slider** :ref:`🔗<class_Slider_theme_style_slider>`

L'arrière-plan pour tout le slider. Affecte la hauteur ou la largeur du :ref:`grabber_area<class_Slider_theme_style_grabber_area>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
