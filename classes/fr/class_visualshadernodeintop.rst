:github_url: hide

.. _class_VisualShaderNodeIntOp:

VisualShaderNodeIntOp
=====================

**Hérite de :** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

An integer scalar operator to be used within the visual shader graph.

.. rst-class:: classref-introduction-group

Description
-----------

Applies :ref:`operator<class_VisualShaderNodeIntOp_property_operator>` to two integer inputs: ``a`` and ``b``.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +------------------------------------------------------+----------------------------------------------------------------+-------+
   | :ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` | :ref:`operator<class_VisualShaderNodeIntOp_property_operator>` | ``0`` |
   +------------------------------------------------------+----------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_VisualShaderNodeIntOp_Operator:

.. rst-class:: classref-enumeration

enum **Operator**: :ref:`🔗<enum_VisualShaderNodeIntOp_Operator>`

.. _class_VisualShaderNodeIntOp_constant_OP_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_ADD** = ``0``

Additionne deux nombres en utilisant ``a + b``.

.. _class_VisualShaderNodeIntOp_constant_OP_SUB:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_SUB** = ``1``

Soustrait deux nombres en utilisant ``a - b``.

.. _class_VisualShaderNodeIntOp_constant_OP_MUL:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_MUL** = ``2``

Multiplie deux nombres en utilisant ``a * b``.

.. _class_VisualShaderNodeIntOp_constant_OP_DIV:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_DIV** = ``3``

Divise deux nombres en utilisant ``a / b``.

.. _class_VisualShaderNodeIntOp_constant_OP_MOD:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_MOD** = ``4``

Calculates the remainder of two numbers using ``a % b``.

.. _class_VisualShaderNodeIntOp_constant_OP_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_MAX** = ``5``

Renvoie le plus grand nombre entre deux nombres. Sera traduit en ``max(a,b)`` dans le langage Shader de Godot.

.. _class_VisualShaderNodeIntOp_constant_OP_MIN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_MIN** = ``6``

Returns the lesser of two numbers. Translates to ``max(a, b)`` in the Godot Shader Language.

.. _class_VisualShaderNodeIntOp_constant_OP_BITWISE_AND:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_BITWISE_AND** = ``7``

Returns the result of bitwise ``AND`` operation on the integer. Translates to ``a & b`` in the Godot Shader Language.

.. _class_VisualShaderNodeIntOp_constant_OP_BITWISE_OR:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_BITWISE_OR** = ``8``

Returns the result of bitwise ``OR`` operation for two integers. Translates to ``a | b`` in the Godot Shader Language.

.. _class_VisualShaderNodeIntOp_constant_OP_BITWISE_XOR:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_BITWISE_XOR** = ``9``

Returns the result of bitwise ``XOR`` operation for two integers. Translates to ``a ^ b`` in the Godot Shader Language.

.. _class_VisualShaderNodeIntOp_constant_OP_BITWISE_LEFT_SHIFT:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_BITWISE_LEFT_SHIFT** = ``10``

Returns the result of bitwise left shift operation on the integer. Translates to ``a << b`` in the Godot Shader Language.

.. _class_VisualShaderNodeIntOp_constant_OP_BITWISE_RIGHT_SHIFT:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_BITWISE_RIGHT_SHIFT** = ``11``

Returns the result of bitwise right shift operation on the integer. Translates to ``a >> b`` in the Godot Shader Language.

.. _class_VisualShaderNodeIntOp_constant_OP_ENUM_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_ENUM_SIZE** = ``12``

Représente la taille de l'énumération :ref:`Operator<enum_VisualShaderNodeIntOp_Operator>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualShaderNodeIntOp_property_operator:

.. rst-class:: classref-property

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **operator** = ``0`` :ref:`🔗<class_VisualShaderNodeIntOp_property_operator>`

.. rst-class:: classref-property-setget

- |void| **set_operator**\ (\ value\: :ref:`Operator<enum_VisualShaderNodeIntOp_Operator>`\ )
- :ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **get_operator**\ (\ )

Un opérateur à appliquer aux entrées.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
