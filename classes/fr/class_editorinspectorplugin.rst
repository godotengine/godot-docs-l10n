:github_url: hide

.. _class_EditorInspectorPlugin:

EditorInspectorPlugin
=====================

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Plugin for adding custom property editors on the inspector.

.. rst-class:: classref-introduction-group

Description
-----------

**EditorInspectorPlugin** allows adding custom property editors to :ref:`EditorInspector<class_EditorInspector>`.

When an object is edited, the :ref:`_can_handle()<class_EditorInspectorPlugin_private_method__can_handle>` function is called and must return ``true`` if the object type is supported.

If supported, the function :ref:`_parse_begin()<class_EditorInspectorPlugin_private_method__parse_begin>` will be called, allowing to place custom controls at the beginning of the class.

Subsequently, the :ref:`_parse_category()<class_EditorInspectorPlugin_private_method__parse_category>` and :ref:`_parse_property()<class_EditorInspectorPlugin_private_method__parse_property>` are called for every category and property. They offer the ability to add custom controls to the inspector too.

Finally, :ref:`_parse_end()<class_EditorInspectorPlugin_private_method__parse_end>` will be called.

On each of these calls, the "add" functions can be called.

To use **EditorInspectorPlugin**, register it using the :ref:`EditorPlugin.add_inspector_plugin()<class_EditorPlugin_method_add_inspector_plugin>` method first.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Les greffons de l'inspecteur <../tutorials/plugins/editor/inspector_plugins>`

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_can_handle<class_EditorInspectorPlugin_private_method__can_handle>`\ (\ object\: :ref:`Object<class_Object>`\ ) |virtual| |const|                                                                                                                                                                                                                                                                                                                                          |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`_parse_begin<class_EditorInspectorPlugin_private_method__parse_begin>`\ (\ object\: :ref:`Object<class_Object>`\ ) |virtual|                                                                                                                                                                                                                                                                                                                                                |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`_parse_category<class_EditorInspectorPlugin_private_method__parse_category>`\ (\ object\: :ref:`Object<class_Object>`, category\: :ref:`String<class_String>`\ ) |virtual|                                                                                                                                                                                                                                                                                                  |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`_parse_end<class_EditorInspectorPlugin_private_method__parse_end>`\ (\ object\: :ref:`Object<class_Object>`\ ) |virtual|                                                                                                                                                                                                                                                                                                                                                    |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`_parse_group<class_EditorInspectorPlugin_private_method__parse_group>`\ (\ object\: :ref:`Object<class_Object>`, group\: :ref:`String<class_String>`\ ) |virtual|                                                                                                                                                                                                                                                                                                           |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_parse_property<class_EditorInspectorPlugin_private_method__parse_property>`\ (\ object\: :ref:`Object<class_Object>`, type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, name\: :ref:`String<class_String>`, hint_type\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`, hint_string\: :ref:`String<class_String>`, usage_flags\: |bitfield|\[:ref:`PropertyUsageFlags<enum_@GlobalScope_PropertyUsageFlags>`\], wide\: :ref:`bool<class_bool>`\ ) |virtual| |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`add_custom_control<class_EditorInspectorPlugin_method_add_custom_control>`\ (\ control\: :ref:`Control<class_Control>`\ )                                                                                                                                                                                                                                                                                                                                                   |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`add_property_editor<class_EditorInspectorPlugin_method_add_property_editor>`\ (\ property\: :ref:`String<class_String>`, editor\: :ref:`Control<class_Control>`, add_to_end\: :ref:`bool<class_bool>` = false, label\: :ref:`String<class_String>` = ""\ )                                                                                                                                                                                                                  |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`add_property_editor_for_multiple_properties<class_EditorInspectorPlugin_method_add_property_editor_for_multiple_properties>`\ (\ label\: :ref:`String<class_String>`, properties\: :ref:`PackedStringArray<class_PackedStringArray>`, editor\: :ref:`Control<class_Control>`\ )                                                                                                                                                                                             |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_EditorInspectorPlugin_private_method__can_handle:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_handle**\ (\ object\: :ref:`Object<class_Object>`\ ) |virtual| |const| :ref:`🔗<class_EditorInspectorPlugin_private_method__can_handle>`

Renvoie ``true`` si cet objet peut être géré par ce plugin.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_private_method__parse_begin:

.. rst-class:: classref-method

|void| **_parse_begin**\ (\ object\: :ref:`Object<class_Object>`\ ) |virtual| :ref:`🔗<class_EditorInspectorPlugin_private_method__parse_begin>`

Called to allow adding controls at the beginning of the property list for ``object``.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_private_method__parse_category:

.. rst-class:: classref-method

|void| **_parse_category**\ (\ object\: :ref:`Object<class_Object>`, category\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_EditorInspectorPlugin_private_method__parse_category>`

Called to allow adding controls at the beginning of a category in the property list for ``object``.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_private_method__parse_end:

.. rst-class:: classref-method

|void| **_parse_end**\ (\ object\: :ref:`Object<class_Object>`\ ) |virtual| :ref:`🔗<class_EditorInspectorPlugin_private_method__parse_end>`

Called to allow adding controls at the end of the property list for ``object``.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_private_method__parse_group:

.. rst-class:: classref-method

|void| **_parse_group**\ (\ object\: :ref:`Object<class_Object>`, group\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_EditorInspectorPlugin_private_method__parse_group>`

Called to allow adding controls at the beginning of a group or a sub-group in the property list for ``object``.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_private_method__parse_property:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_parse_property**\ (\ object\: :ref:`Object<class_Object>`, type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, name\: :ref:`String<class_String>`, hint_type\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`, hint_string\: :ref:`String<class_String>`, usage_flags\: |bitfield|\[:ref:`PropertyUsageFlags<enum_@GlobalScope_PropertyUsageFlags>`\], wide\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorInspectorPlugin_private_method__parse_property>`

Called to allow adding property-specific editors to the property list for ``object``. The added editor control must extend :ref:`EditorProperty<class_EditorProperty>`. Returning ``true`` removes the built-in editor for this property, otherwise allows to insert a custom editor before the built-in one.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_method_add_custom_control:

.. rst-class:: classref-method

|void| **add_custom_control**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_EditorInspectorPlugin_method_add_custom_control>`

Ajoute un contrôle personnalisé, qui n'est pas nécessairement un éditeur de propriété.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_method_add_property_editor:

.. rst-class:: classref-method

|void| **add_property_editor**\ (\ property\: :ref:`String<class_String>`, editor\: :ref:`Control<class_Control>`, add_to_end\: :ref:`bool<class_bool>` = false, label\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_EditorInspectorPlugin_method_add_property_editor>`

Adds a property editor for an individual property. The ``editor`` control must extend :ref:`EditorProperty<class_EditorProperty>`.

There can be multiple property editors for a property. If ``add_to_end`` is ``true``, this newly added editor will be displayed after all the other editors of the property whose ``add_to_end`` is ``false``. For example, the editor uses this parameter to add an "Edit Region" button for :ref:`Sprite2D.region_rect<class_Sprite2D_property_region_rect>` below the regular :ref:`Rect2<class_Rect2>` editor.

\ ``label`` can be used to choose a custom label for the property editor in the inspector. If left empty, the label is computed from the name of the property instead.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspectorPlugin_method_add_property_editor_for_multiple_properties:

.. rst-class:: classref-method

|void| **add_property_editor_for_multiple_properties**\ (\ label\: :ref:`String<class_String>`, properties\: :ref:`PackedStringArray<class_PackedStringArray>`, editor\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_EditorInspectorPlugin_method_add_property_editor_for_multiple_properties>`

Ajoute un éditeur qui permet de modifier plusieurs propriétés. Le contrôle ``editor`` doit étendre :ref:`EditorProperty<class_EditorProperty>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
