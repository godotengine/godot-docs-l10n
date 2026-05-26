:github_url: hide

.. _class_OpenXRBindingModifierEditor:

OpenXRBindingModifierEditor
===========================

**Hérite de :** :ref:`PanelContainer<class_PanelContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Éditeur de modificateur de liaison.

.. rst-class:: classref-introduction-group

Description
-----------

Il s'agit de l'éditeur de modificateur par défaut utilisé dans l'action map OpenXR.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>` | :ref:`get_binding_modifier<class_OpenXRBindingModifierEditor_method_get_binding_modifier>`\ (\ ) |const|                                                                                                     |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`setup<class_OpenXRBindingModifierEditor_method_setup>`\ (\ action_map\: :ref:`OpenXRActionMap<class_OpenXRActionMap>`, binding_modifier\: :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>`\ ) |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_OpenXRBindingModifierEditor_signal_binding_modifier_removed:

.. rst-class:: classref-signal

**binding_modifier_removed**\ (\ binding_modifier_editor\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_OpenXRBindingModifierEditor_signal_binding_modifier_removed>`

Signal émis lorsque l'utilisateur appuie sur le bouton de suppression de modificateur de liaison pour ce modificateur.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_OpenXRBindingModifierEditor_method_get_binding_modifier:

.. rst-class:: classref-method

:ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>` **get_binding_modifier**\ (\ ) |const| :ref:`🔗<class_OpenXRBindingModifierEditor_method_get_binding_modifier>`

Renvoie le :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>` actuellement en cours d'édition.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRBindingModifierEditor_method_setup:

.. rst-class:: classref-method

|void| **setup**\ (\ action_map\: :ref:`OpenXRActionMap<class_OpenXRActionMap>`, binding_modifier\: :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>`\ ) :ref:`🔗<class_OpenXRBindingModifierEditor_method_setup>`

Configure cet éditeur pour l'``action_map`` et le modificateur ``binding_modifier`` spécifiés.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
