:github_url: hide

.. _class_EditorResourcePicker:

EditorResourcePicker
====================

**Hérite de :** :ref:`HBoxContainer<class_HBoxContainer>` **<** :ref:`BoxContainer<class_BoxContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`EditorScriptPicker<class_EditorScriptPicker>`

Le contrôle de l'éditeur de Godot pour la sélection des propriétés de type :ref:`Resource<class_Resource>`.

.. rst-class:: classref-introduction-group

Description
-----------

Ce nœud :ref:`Control<class_Control>` est utilisé dans la barre d'outils de l'inspecteur de l'éditeur pour permettre l'édition des propriétés de type :ref:`Resource<class_Resource>`. Il offre des options pour créer, charger, enregistrer et convertir des ressources. Peut être utilisé avec :ref:`EditorInspectorPlugin<class_EditorInspectorPlugin>` pour recréer le même comportement.

\ **Note :** Ce :ref:`Control<class_Control>` n'inclut aucun éditeur de la ressource, car l'édition est contrôlée par l'inspecteur lui-même ou les sous-inspecteurs.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`     | :ref:`base_type<class_EditorResourcePicker_property_base_type>`             | ``""``    |
   +---------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`         | :ref:`editable<class_EditorResourcePicker_property_editable>`               | ``true``  |
   +---------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`Resource<class_Resource>` | :ref:`edited_resource<class_EditorResourcePicker_property_edited_resource>` |           |
   +---------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`         | :ref:`toggle_mode<class_EditorResourcePicker_property_toggle_mode>`         | ``false`` |
   +---------------------------------+-----------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_handle_menu_selected<class_EditorResourcePicker_private_method__handle_menu_selected>`\ (\ id\: :ref:`int<class_int>`\ ) |virtual|          |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`_set_create_options<class_EditorResourcePicker_private_method__set_create_options>`\ (\ menu_node\: :ref:`Object<class_Object>`\ ) |virtual| |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_allowed_types<class_EditorResourcePicker_method_get_allowed_types>`\ (\ ) |const|                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_toggle_pressed<class_EditorResourcePicker_method_set_toggle_pressed>`\ (\ pressed\: :ref:`bool<class_bool>`\ )                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_EditorResourcePicker_signal_resource_changed:

.. rst-class:: classref-signal

**resource_changed**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_EditorResourcePicker_signal_resource_changed>`

Émis quand le valeur d'une ressource modifiée a été changée.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_signal_resource_selected:

.. rst-class:: classref-signal

**resource_selected**\ (\ resource\: :ref:`Resource<class_Resource>`, inspect\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorResourcePicker_signal_resource_selected>`

Émis lorsque la valeur de ressource a été définie et que l'utilisateur a cliqué pour la modifier. Lorsque ``inspect`` vaut ``true``, le signal a été causé par le menu contextuel "Édition" ou par l'option "Inspecter".

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_EditorResourcePicker_property_base_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **base_type** = ``""`` :ref:`🔗<class_EditorResourcePicker_property_base_type>`

.. rst-class:: classref-property-setget

- |void| **set_base_type**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_base_type**\ (\ )

Le type de base des types de ressources autorisées. Ça peut être une liste de plusieurs options séparées par des virgules.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_property_editable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editable** = ``true`` :ref:`🔗<class_EditorResourcePicker_property_editable>`

.. rst-class:: classref-property-setget

- |void| **set_editable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editable**\ (\ )

Si ``true``, la valeur peut être sélectionnée et modifiée.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_property_edited_resource:

.. rst-class:: classref-property

:ref:`Resource<class_Resource>` **edited_resource** :ref:`🔗<class_EditorResourcePicker_property_edited_resource>`

.. rst-class:: classref-property-setget

- |void| **set_edited_resource**\ (\ value\: :ref:`Resource<class_Resource>`\ )
- :ref:`Resource<class_Resource>` **get_edited_resource**\ (\ )

La valeur modifiée de la ressource.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_property_toggle_mode:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **toggle_mode** = ``false`` :ref:`🔗<class_EditorResourcePicker_property_toggle_mode>`

.. rst-class:: classref-property-setget

- |void| **set_toggle_mode**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_toggle_mode**\ (\ )

Si ``true``, le bouton principal avec la prévisualisation des ressources fonctionne avec le mode de basculement. Utilisez :ref:`set_toggle_pressed()<class_EditorResourcePicker_method_set_toggle_pressed>` pour définir manuellement cet état.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_EditorResourcePicker_private_method__handle_menu_selected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_handle_menu_selected**\ (\ id\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_EditorResourcePicker_private_method__handle_menu_selected>`

This virtual method can be implemented to handle context menu items not handled by default. See :ref:`_set_create_options()<class_EditorResourcePicker_private_method__set_create_options>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_private_method__set_create_options:

.. rst-class:: classref-method

|void| **_set_create_options**\ (\ menu_node\: :ref:`Object<class_Object>`\ ) |virtual| :ref:`🔗<class_EditorResourcePicker_private_method__set_create_options>`

This virtual method is called when updating the context menu of an :ref:`editable<class_EditorResourcePicker_property_editable>` **EditorResourcePicker**. Implement this method to override the "New" items section with your own options. ``menu_node`` is a reference to the :ref:`PopupMenu<class_PopupMenu>` node.

\ **Note:** Implement :ref:`_handle_menu_selected()<class_EditorResourcePicker_private_method__handle_menu_selected>` to handle these custom items.

\ **Note:** Relevant built-in options ("Load", "Copy", "Paste", etc.) are automatically added to the ``menu_node`` afterwards, using their hard-coded IDs starting from ``0``. Custom options need to use non-colliding IDs to be handled properly. Using ``id = 100 + custom_option_index`` is safe (this is what the default items in the "New" section use).

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_method_get_allowed_types:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_allowed_types**\ (\ ) |const| :ref:`🔗<class_EditorResourcePicker_method_get_allowed_types>`

Renvoie une liste de tous les types et sous-types autorisés correspondant au :ref:`base_type<class_EditorResourcePicker_property_base_type>`. Si le :ref:`base_type<class_EditorResourcePicker_property_base_type>` est vide, une liste vide est renvoyée.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_method_set_toggle_pressed:

.. rst-class:: classref-method

|void| **set_toggle_pressed**\ (\ pressed\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorResourcePicker_method_set_toggle_pressed>`

Définit l'état du mode de basculement pour le bouton principal. Fonctionne uniquement si :ref:`toggle_mode<class_EditorResourcePicker_property_toggle_mode>` est défini à ``true``.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
