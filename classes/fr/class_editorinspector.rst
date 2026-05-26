:github_url: hide

.. _class_EditorInspector:

EditorInspector
===============

**Hérite de :** :ref:`ScrollContainer<class_ScrollContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un contrôle pour modifier les propriétés d'un objet.

.. rst-class:: classref-introduction-group

Description
-----------

Il s'agit du contrôle qui permet l'édition des propriétés dans les dialogues des Paramètres de l'éditeur, le dock Inspecteur, etc. Pour obtenir le **EditorInspector** utilisé dans le fichier d'inspecteur de l'éditeur, utilisez :ref:`EditorInterface.get_inspector()<class_EditorInterface_method_get_inspector>`\ 

\ **EditorInspector** affichera les propriétés dans le même ordre que le tableau retourné par :ref:`Object.get_property_list()<class_Object_method_get_property_list>`\ 

Si le nom d'un propriété établie est semblable à celui d'un chemin (c'est-à-dire s'il commence par des barres obliques), **EditorInspector** créera des sections imbriquées pour les « dossier » suivant le chemin. Par exemple, si une propriété est nommée ``highlighting/gdscript/node_path_color``, elle sera affichée comme "Node Path Color" dans la section "GDScript" imbriquée dans la section "Highlighting".

Si une propriété a l'usage :ref:`@GlobalScope.PROPERTY_USAGE_GROUP<class_@GlobalScope_constant_PROPERTY_USAGE_GROUP>`, elle regroupera les propriétés dont le nom commence par la chaîne d'indice de la propriété. Le groupe se termine quand une propriété ne commence pas avec cette chaîne d'indice ou quand un nouveau groupe commence. Un nom de groupe vide termine le groupe actuel. **EditorInspector** créera une section tout en haut pour chaque groupe. Par exemple, si une propriété avec l'utilisation de groupe est nommée ``Collide With`` et que sa chaîne d'indice est ``collide_with``, une propriété ``collide_with_area`` suivante sera affichée comme "Area" dans la section "Collide With". Il y a aussi un cas spécial : lorsque la chaîne hint contient le nom d'une propriété, cette propriété est regroupée aussi. C'est principalement pour aider à grouper des propriétés comme ``font``, ``font_color`` et ``font_size`` (en utilisant la chaîne hint ``font_``).

Si une propriété a :ref:`@GlobalScope.PROPERTY_USAGE_SUBGROUP<class_@GlobalScope_constant_PROPERTY_USAGE_SUBGROUP>` usage, un sous-groupe sera créé de la même manière qu'un groupe, et une section de deuxième niveau sera créée pour chaque sous-groupe.

\ **Note :** Contrairement aux sections créées à partir de noms de propriété selon des chemins, **EditorInspector** a obtenu le nom de sections créées à partir de groupes. Ainsi, les propriétés avec l'utilisation de groupe utilisent généralement des noms capitalisés au lieu des noms en "snake_case".

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +----------------------------------------------------+------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                            | draw_focus_border      | ``true`` (overrides :ref:`ScrollContainer<class_ScrollContainer_property_draw_focus_border>`)   |
   +----------------------------------------------------+------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`           | focus_mode             | ``2`` (overrides :ref:`Control<class_Control_property_focus_mode>`)                             |
   +----------------------------------------------------+------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                            | follow_focus           | ``true`` (overrides :ref:`ScrollContainer<class_ScrollContainer_property_follow_focus>`)        |
   +----------------------------------------------------+------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` | horizontal_scroll_mode | ``0`` (overrides :ref:`ScrollContainer<class_ScrollContainer_property_horizontal_scroll_mode>`) |
   +----------------------------------------------------+------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`collapse_all_folding<class_EditorInspector_method_collapse_all_folding>`\ (\ )                                                                                                                                                                                                                                                                                                                                          |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorInspector<class_EditorInspector>` | :ref:`create_default_inspector<class_EditorInspector_method_create_default_inspector>`\ (\ filter_line_edit\: :ref:`LineEdit<class_LineEdit>` = null\ ) |static|                                                                                                                                                                                                                                                              |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`edit<class_EditorInspector_method_edit>`\ (\ object\: :ref:`Object<class_Object>`\ )                                                                                                                                                                                                                                                                                                                                    |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`expand_all_folding<class_EditorInspector_method_expand_all_folding>`\ (\ )                                                                                                                                                                                                                                                                                                                                              |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`expand_revertable<class_EditorInspector_method_expand_revertable>`\ (\ )                                                                                                                                                                                                                                                                                                                                                |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`                   | :ref:`get_edited_object<class_EditorInspector_method_get_edited_object>`\ (\ )                                                                                                                                                                                                                                                                                                                                                |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`get_selected_path<class_EditorInspector_method_get_selected_path>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                        |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorProperty<class_EditorProperty>`   | :ref:`instantiate_property_editor<class_EditorInspector_method_instantiate_property_editor>`\ (\ object\: :ref:`Object<class_Object>`, type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, path\: :ref:`String<class_String>`, hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`, hint_text\: :ref:`String<class_String>`, usage\: :ref:`int<class_int>`, wide\: :ref:`bool<class_bool>` = false\ ) |static| |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_EditorInspector_signal_edited_object_changed:

.. rst-class:: classref-signal

**edited_object_changed**\ (\ ) :ref:`🔗<class_EditorInspector_signal_edited_object_changed>`

Emitted when the object being edited by the inspector has changed.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_object_id_selected:

.. rst-class:: classref-signal

**object_id_selected**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorInspector_signal_object_id_selected>`

Emitted when the Edit button of an :ref:`Object<class_Object>` has been pressed in the inspector. This is mainly used in the remote scene tree Inspector.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_property_deleted:

.. rst-class:: classref-signal

**property_deleted**\ (\ property\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorInspector_signal_property_deleted>`

Emitted when a property is removed from the inspector.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_property_edited:

.. rst-class:: classref-signal

**property_edited**\ (\ property\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorInspector_signal_property_edited>`

Émis lorsqu'une propriété est modifiée dans l'inspecteur.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_property_keyed:

.. rst-class:: classref-signal

**property_keyed**\ (\ property\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`, advance\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorInspector_signal_property_keyed>`

Émis lorsqu'une propriété est utilisée comme clé dans l'inspecteur. Les propriétés peuvent être utilisées comme clé en cliquant sur l'icône "clé" à côté d'une propriété lorsque le panneau "Animation" est ouvert.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_property_selected:

.. rst-class:: classref-signal

**property_selected**\ (\ property\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorInspector_signal_property_selected>`

Émis lorsqu'une propriété est sélectionnée dans l'inspecteur.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_property_toggled:

.. rst-class:: classref-signal

**property_toggled**\ (\ property\: :ref:`String<class_String>`, checked\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorInspector_signal_property_toggled>`

Émis lorsqu'une propriété booléenne est basculée dans l'inspecteur.

\ **Note :** Ce signal n'est jamais émis si la propriété interne ``autoclear`` est activée. Comme cette propriété est toujours activée dans l'inspecteur de l'éditeur, ce signal n'est jamais émis par l'éditeur lui-même.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_resource_selected:

.. rst-class:: classref-signal

**resource_selected**\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorInspector_signal_resource_selected>`

Émis quand une ressource est sélectionnée dans l'inspecteur.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_restart_requested:

.. rst-class:: classref-signal

**restart_requested**\ (\ ) :ref:`🔗<class_EditorInspector_signal_restart_requested>`

Emitted when a property that requires a restart to be applied is edited in the inspector. This is only used in the Project Settings and Editor Settings.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_EditorInspector_method_collapse_all_folding:

.. rst-class:: classref-method

|void| **collapse_all_folding**\ (\ ) :ref:`🔗<class_EditorInspector_method_collapse_all_folding>`

Collapses all foldable sections.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_create_default_inspector:

.. rst-class:: classref-method

:ref:`EditorInspector<class_EditorInspector>` **create_default_inspector**\ (\ filter_line_edit\: :ref:`LineEdit<class_LineEdit>` = null\ ) |static| :ref:`🔗<class_EditorInspector_method_create_default_inspector>`

Creates an inspector with the same configuration as the one used in the editor's Inspector dock. When passing a :ref:`LineEdit<class_LineEdit>` into ``filter_line_edit``, the inspector will filter its properties based on :ref:`LineEdit.text<class_LineEdit_property_text>` whenever :ref:`LineEdit.text_changed<class_LineEdit_signal_text_changed>` is emitted.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_edit:

.. rst-class:: classref-method

|void| **edit**\ (\ object\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_EditorInspector_method_edit>`

Shows the properties of the given ``object`` in this inspector for editing. To clear the inspector, call this method with ``null``.

\ **Note:** If you want to edit an object in the editor's main inspector, use the ``edit_*`` methods in :ref:`EditorInterface<class_EditorInterface>` instead.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_expand_all_folding:

.. rst-class:: classref-method

|void| **expand_all_folding**\ (\ ) :ref:`🔗<class_EditorInspector_method_expand_all_folding>`

Expands all foldable sections.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_expand_revertable:

.. rst-class:: classref-method

|void| **expand_revertable**\ (\ ) :ref:`🔗<class_EditorInspector_method_expand_revertable>`

Expands only the foldable sections that contain a revertable (i.e. non-default) property.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_get_edited_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_edited_object**\ (\ ) :ref:`🔗<class_EditorInspector_method_get_edited_object>`

Renvoie l'objet actuellement sélectionné dans cet inspecteur.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_get_selected_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_selected_path**\ (\ ) |const| :ref:`🔗<class_EditorInspector_method_get_selected_path>`

Obtient le chemin de la propriété actuellement sélectionnée.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_instantiate_property_editor:

.. rst-class:: classref-method

:ref:`EditorProperty<class_EditorProperty>` **instantiate_property_editor**\ (\ object\: :ref:`Object<class_Object>`, type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, path\: :ref:`String<class_String>`, hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`, hint_text\: :ref:`String<class_String>`, usage\: :ref:`int<class_int>`, wide\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_EditorInspector_method_instantiate_property_editor>`

Creates a property editor that can be used by plugin UI to edit the specified property of an ``object``.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
