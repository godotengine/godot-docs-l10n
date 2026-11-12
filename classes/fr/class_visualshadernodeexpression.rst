:github_url: hide

.. _class_VisualShaderNodeExpression:

VisualShaderNodeExpression
==========================

**Hérite de :** :ref:`VisualShaderNodeGroupBase<class_VisualShaderNodeGroupBase>` **<** :ref:`VisualShaderNodeResizableBase<class_VisualShaderNodeResizableBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`VisualShaderNodeGlobalExpression<class_VisualShaderNodeGlobalExpression>`

A custom visual shader graph expression written in Godot Shading Language.

.. rst-class:: classref-introduction-group

Description
-----------

Custom Godot Shading Language expression, with a custom number of input and output ports.

The provided code is directly injected into the graph's matching shader function (\ ``vertex``, ``fragment``, or ``light``), so it cannot be used to declare functions, varyings, uniforms, or global constants. See :ref:`VisualShaderNodeGlobalExpression<class_VisualShaderNodeGlobalExpression>` for such global definitions.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------+-------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`expression<class_VisualShaderNodeExpression_property_expression>` | ``""`` |
   +-----------------------------+-------------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualShaderNodeExpression_property_expression:

.. rst-class:: classref-property

:ref:`String<class_String>` **expression** = ``""`` :ref:`🔗<class_VisualShaderNodeExpression_property_expression>`

.. rst-class:: classref-property-setget

- |void| **set_expression**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_expression**\ (\ )

An expression in Godot Shading Language, which will be injected at the start of the graph's matching shader function (\ ``vertex``, ``fragment``, or ``light``), and thus cannot be used to declare functions, varyings, uniforms, or global constants.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
