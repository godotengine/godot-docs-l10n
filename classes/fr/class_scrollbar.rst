:github_url: hide

.. _class_ScrollBar:

ScrollBar
=========

**Hérite de :** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`HScrollBar<class_HScrollBar>`, :ref:`VScrollBar<class_VScrollBar>`

Classe de base abstraite pour les barres de défilement.

.. rst-class:: classref-introduction-group

Description
-----------

Classe de base abstraite pour les barres de défilement, généralement utilisée pour naviguer à travers du contenu qui s'étend au-delà de la zone visible d'un contrôle. Les barres de défilement sont des contrôles basés sur :ref:`Range<class_Range>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +------------------------------------------+----------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`float<class_float>`                | :ref:`custom_step<class_ScrollBar_property_custom_step>` | ``-1.0``                                                            |
   +------------------------------------------+----------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>` | focus_mode                                               | ``3`` (overrides :ref:`Control<class_Control_property_focus_mode>`) |
   +------------------------------------------+----------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`float<class_float>`                | step                                                     | ``0.0`` (overrides :ref:`Range<class_Range_property_step>`)         |
   +------------------------------------------+----------------------------------------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Propriétés du thème
--------------------------------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                 | :ref:`icon_max_size<class_ScrollBar_theme_constant_icon_max_size>`                          | ``0`` |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`decrement<class_ScrollBar_theme_icon_decrement>`                                      |       |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`decrement_highlight<class_ScrollBar_theme_icon_decrement_highlight>`                  |       |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`decrement_pressed<class_ScrollBar_theme_icon_decrement_pressed>`                      |       |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`increment<class_ScrollBar_theme_icon_increment>`                                      |       |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`increment_highlight<class_ScrollBar_theme_icon_increment_highlight>`                  |       |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`increment_pressed<class_ScrollBar_theme_icon_increment_pressed>`                      |       |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`drag_ended_sound<class_ScrollBar_theme_sound_drag_ended_sound>`                       |       |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`drag_started_sound<class_ScrollBar_theme_sound_drag_started_sound>`                   |       |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`value_change_rejected_sound<class_ScrollBar_theme_sound_value_change_rejected_sound>` |       |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`value_changed_sound<class_ScrollBar_theme_sound_value_changed_sound>`                 |       |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`grabber<class_ScrollBar_theme_style_grabber>`                                         |       |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`grabber_highlight<class_ScrollBar_theme_style_grabber_highlight>`                     |       |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`grabber_pressed<class_ScrollBar_theme_style_grabber_pressed>`                         |       |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`scroll<class_ScrollBar_theme_style_scroll>`                                           |       |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`scroll_focus<class_ScrollBar_theme_style_scroll_focus>`                               |       |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_ScrollBar_signal_scrolling:

.. rst-class:: classref-signal

**scrolling**\ (\ ) :ref:`🔗<class_ScrollBar_signal_scrolling>`

Émis quand la barre de défilement est défilée.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ScrollBar_property_custom_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **custom_step** = ``-1.0`` :ref:`🔗<class_ScrollBar_property_custom_step>`

.. rst-class:: classref-property-setget

- |void| **set_custom_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_custom_step**\ (\ )

Redéfinit le pas utilisé lorsque vous cliquez sur les boutons d'incrément et de décrément de la barre de défilement ou lorsque vous utilisez des touches directionnelles lorsque la **ScrollBar** a le focus.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés du thème
------------------------------------------------------------------------

.. _class_ScrollBar_theme_constant_icon_max_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **icon_max_size** = ``0`` :ref:`🔗<class_ScrollBar_theme_constant_icon_max_size>`

The maximum allowed size of the **ScrollBar**'s increment and decrement icons. The texture is scaled down so its widest axis is :ref:`icon_max_size<class_ScrollBar_theme_constant_icon_max_size>` and the other axis is scaled keeping the original ratio.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_decrement:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement** :ref:`🔗<class_ScrollBar_theme_icon_decrement>`

Icône utilisée comme un bouton pour défiler la **ScrollBar** vers la gauche/le haut. Supporte un pas de déplacement personnalisé en utilisant la propriété :ref:`custom_step<class_ScrollBar_property_custom_step>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_decrement_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement_highlight** :ref:`🔗<class_ScrollBar_theme_icon_decrement_highlight>`

Affiché quand la souris survole le bouton de réduction.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_decrement_pressed:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement_pressed** :ref:`🔗<class_ScrollBar_theme_icon_decrement_pressed>`

Affiché quand le bouton de reduction est appuyé.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_increment:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment** :ref:`🔗<class_ScrollBar_theme_icon_increment>`

Icône utilisé comme bouton pour faire défiler le **ScrollBar** vers la droite/bas. Supporte un pas personnalisé en utilisant la propriété :ref:`custom_step<class_ScrollBar_property_custom_step>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_increment_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment_highlight** :ref:`🔗<class_ScrollBar_theme_icon_increment_highlight>`

Affiché quand la souris survole le bouton d'augmentation.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_increment_pressed:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment_pressed** :ref:`🔗<class_ScrollBar_theme_icon_increment_pressed>`

Affiché quand le bouton d'augmentation est appuyé.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_sound_drag_ended_sound:

.. rst-class:: classref-themeproperty

:ref:`AudioStream<class_AudioStream>` **drag_ended_sound** :ref:`🔗<class_ScrollBar_theme_sound_drag_ended_sound>`

Played when mouse or touch drag ends.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_sound_drag_started_sound:

.. rst-class:: classref-themeproperty

:ref:`AudioStream<class_AudioStream>` **drag_started_sound** :ref:`🔗<class_ScrollBar_theme_sound_drag_started_sound>`

Played when mouse or touch drag begins.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_sound_value_change_rejected_sound:

.. rst-class:: classref-themeproperty

:ref:`AudioStream<class_AudioStream>` **value_change_rejected_sound** :ref:`🔗<class_ScrollBar_theme_sound_value_change_rejected_sound>`

Played when the value is attempted to be changed through keyboard or gamepad input, but the value is already at the minimum (or maximum).

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_sound_value_changed_sound:

.. rst-class:: classref-themeproperty

:ref:`AudioStream<class_AudioStream>` **value_changed_sound** :ref:`🔗<class_ScrollBar_theme_sound_value_changed_sound>`

Played when the value is changed through keyboard or gamepad input. If the value is already at the minimum (or maximum), :ref:`value_change_rejected_sound<class_ScrollBar_theme_sound_value_change_rejected_sound>` is played instead.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_style_grabber:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **grabber** :ref:`🔗<class_ScrollBar_theme_style_grabber>`

Utilisé comme texture pour la poignée ("grabber"), l'élément mobile représentant le défilement courant.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_style_grabber_highlight:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **grabber_highlight** :ref:`🔗<class_ScrollBar_theme_style_grabber_highlight>`

Utilisé lorsque la souris survole le glisseur.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_style_grabber_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **grabber_pressed** :ref:`🔗<class_ScrollBar_theme_style_grabber_pressed>`

Utilisé quand le glisseur est en train d'être glissé.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_style_scroll:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **scroll** :ref:`🔗<class_ScrollBar_theme_style_scroll>`

Utilisé comme arrière-plan de cette **ScrollBar**.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_style_scroll_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **scroll_focus** :ref:`🔗<class_ScrollBar_theme_style_scroll_focus>`

Utilisé comme arrière-plan lorsque le **ScrollBar** a le focus GUI.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
