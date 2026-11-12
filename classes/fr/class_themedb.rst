:github_url: hide

.. _class_ThemeDB:

ThemeDB
=======

**Hérite de :** :ref:`Object<class_Object>`

A singleton that provides access to static information about :ref:`Theme<class_Theme>` resources used by the engine and by your project.

.. rst-class:: classref-introduction-group

Description
-----------

This singleton provides access to static information about :ref:`Theme<class_Theme>` resources used by the engine and by your projects. You can fetch the default engine theme, as well as your project configured theme.

\ **ThemeDB** also contains fallback values for theme properties.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`             | :ref:`fallback_base_scale<class_ThemeDB_property_fallback_base_scale>` | ``1.0`` |
   +---------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`Font<class_Font>`               | :ref:`fallback_font<class_ThemeDB_property_fallback_font>`             |         |
   +---------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`                 | :ref:`fallback_font_size<class_ThemeDB_property_fallback_font_size>`   | ``16``  |
   +---------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`fallback_icon<class_ThemeDB_property_fallback_icon>`             |         |
   +---------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`fallback_sound<class_ThemeDB_property_fallback_sound>`           |         |
   +---------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`fallback_stylebox<class_ThemeDB_property_fallback_stylebox>`     |         |
   +---------------------------------------+------------------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------+
   | :ref:`Theme<class_Theme>` | :ref:`get_default_theme<class_ThemeDB_method_get_default_theme>`\ (\ ) |
   +---------------------------+------------------------------------------------------------------------+
   | :ref:`Theme<class_Theme>` | :ref:`get_project_theme<class_ThemeDB_method_get_project_theme>`\ (\ ) |
   +---------------------------+------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_ThemeDB_signal_fallback_changed:

.. rst-class:: classref-signal

**fallback_changed**\ (\ ) :ref:`🔗<class_ThemeDB_signal_fallback_changed>`

Emitted when one of the fallback values had been changed. Use it to refresh the look of controls that may rely on the fallback theme items.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ThemeDB_property_fallback_base_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **fallback_base_scale** = ``1.0`` :ref:`🔗<class_ThemeDB_property_fallback_base_scale>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_base_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fallback_base_scale**\ (\ )

The fallback base scale factor of every :ref:`Control<class_Control>` node and :ref:`Theme<class_Theme>` resource. Used when no other value is available to the control.

See also :ref:`Theme.default_base_scale<class_Theme_property_default_base_scale>`.

.. rst-class:: classref-item-separator

----

.. _class_ThemeDB_property_fallback_font:

.. rst-class:: classref-property

:ref:`Font<class_Font>` **fallback_font** :ref:`🔗<class_ThemeDB_property_fallback_font>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_font**\ (\ value\: :ref:`Font<class_Font>`\ )
- :ref:`Font<class_Font>` **get_fallback_font**\ (\ )

The fallback font of every :ref:`Control<class_Control>` node and :ref:`Theme<class_Theme>` resource. Used when no other value is available to the control.

See also :ref:`Theme.default_font<class_Theme_property_default_font>`.

.. rst-class:: classref-item-separator

----

.. _class_ThemeDB_property_fallback_font_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **fallback_font_size** = ``16`` :ref:`🔗<class_ThemeDB_property_fallback_font_size>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_font_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fallback_font_size**\ (\ )

The fallback font size of every :ref:`Control<class_Control>` node and :ref:`Theme<class_Theme>` resource. Used when no other value is available to the control.

See also :ref:`Theme.default_font_size<class_Theme_property_default_font_size>`.

.. rst-class:: classref-item-separator

----

.. _class_ThemeDB_property_fallback_icon:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **fallback_icon** :ref:`🔗<class_ThemeDB_property_fallback_icon>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_icon**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_fallback_icon**\ (\ )

The fallback icon of every :ref:`Control<class_Control>` node and :ref:`Theme<class_Theme>` resource. Used when no other value is available to the control.

.. rst-class:: classref-item-separator

----

.. _class_ThemeDB_property_fallback_sound:

.. rst-class:: classref-property

:ref:`AudioStream<class_AudioStream>` **fallback_sound** :ref:`🔗<class_ThemeDB_property_fallback_sound>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_sound**\ (\ value\: :ref:`AudioStream<class_AudioStream>`\ )
- :ref:`AudioStream<class_AudioStream>` **get_fallback_sound**\ (\ )

The fallback sound of every :ref:`Control<class_Control>` node and :ref:`Theme<class_Theme>` resource. Used when no other value is available to the control.

.. rst-class:: classref-item-separator

----

.. _class_ThemeDB_property_fallback_stylebox:

.. rst-class:: classref-property

:ref:`StyleBox<class_StyleBox>` **fallback_stylebox** :ref:`🔗<class_ThemeDB_property_fallback_stylebox>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_stylebox**\ (\ value\: :ref:`StyleBox<class_StyleBox>`\ )
- :ref:`StyleBox<class_StyleBox>` **get_fallback_stylebox**\ (\ )

The fallback stylebox of every :ref:`Control<class_Control>` node and :ref:`Theme<class_Theme>` resource. Used when no other value is available to the control.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ThemeDB_method_get_default_theme:

.. rst-class:: classref-method

:ref:`Theme<class_Theme>` **get_default_theme**\ (\ ) :ref:`🔗<class_ThemeDB_method_get_default_theme>`

Returns a reference to the default engine :ref:`Theme<class_Theme>`. This theme resource is responsible for the out-of-the-box look of :ref:`Control<class_Control>` nodes and cannot be overridden.

.. rst-class:: classref-item-separator

----

.. _class_ThemeDB_method_get_project_theme:

.. rst-class:: classref-method

:ref:`Theme<class_Theme>` **get_project_theme**\ (\ ) :ref:`🔗<class_ThemeDB_method_get_project_theme>`

Returns a reference to the custom project :ref:`Theme<class_Theme>`. This theme resources allows to override the default engine theme for every control node in the project.

To set the project theme, see :ref:`ProjectSettings.gui/theme/custom<class_ProjectSettings_property_gui/theme/custom>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
