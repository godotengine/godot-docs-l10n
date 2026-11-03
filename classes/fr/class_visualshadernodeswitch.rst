:github_url: hide

.. _class_VisualShaderNodeSwitch:

VisualShaderNodeSwitch
======================

**Hérite de :** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une fonction de sélection à utiliser dans le graphe de visual shader.

.. rst-class:: classref-introduction-group

Description
-----------

Returns an associated value of the :ref:`op_type<class_VisualShaderNodeSwitch_property_op_type>` type if the provided boolean value is ``true`` or ``false``.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------------------+-------+
   | :ref:`OpType<enum_VisualShaderNodeSwitch_OpType>` | :ref:`op_type<class_VisualShaderNodeSwitch_property_op_type>` | ``0`` |
   +---------------------------------------------------+---------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_VisualShaderNodeSwitch_OpType:

.. rst-class:: classref-enumeration

enum **OpType**: :ref:`🔗<enum_VisualShaderNodeSwitch_OpType>`

.. _class_VisualShaderNodeSwitch_constant_OP_TYPE_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSwitch_OpType>` **OP_TYPE_FLOAT** = ``0``

Un scalaire à virgule flottante.

.. _class_VisualShaderNodeSwitch_constant_OP_TYPE_INT:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSwitch_OpType>` **OP_TYPE_INT** = ``1``

Un scalaire entier.

.. _class_VisualShaderNodeSwitch_constant_OP_TYPE_UINT:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSwitch_OpType>` **OP_TYPE_UINT** = ``2``

Un scalaire entier non signé.

.. _class_VisualShaderNodeSwitch_constant_OP_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSwitch_OpType>` **OP_TYPE_VECTOR_2D** = ``3``

Un type de vecteur 2D.

.. _class_VisualShaderNodeSwitch_constant_OP_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSwitch_OpType>` **OP_TYPE_VECTOR_3D** = ``4``

Un type de vecteur 3D.

.. _class_VisualShaderNodeSwitch_constant_OP_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSwitch_OpType>` **OP_TYPE_VECTOR_4D** = ``5``

Un type de vecteur 4D.

.. _class_VisualShaderNodeSwitch_constant_OP_TYPE_BOOLEAN:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSwitch_OpType>` **OP_TYPE_BOOLEAN** = ``6``

Un type booléen.

.. _class_VisualShaderNodeSwitch_constant_OP_TYPE_TRANSFORM:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSwitch_OpType>` **OP_TYPE_TRANSFORM** = ``7``

Un type de transform.

.. _class_VisualShaderNodeSwitch_constant_OP_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSwitch_OpType>` **OP_TYPE_MAX** = ``8``

Représente la taille de l'énumération :ref:`OpType<enum_VisualShaderNodeSwitch_OpType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualShaderNodeSwitch_property_op_type:

.. rst-class:: classref-property

:ref:`OpType<enum_VisualShaderNodeSwitch_OpType>` **op_type** = ``0`` :ref:`🔗<class_VisualShaderNodeSwitch_property_op_type>`

.. rst-class:: classref-property-setget

- |void| **set_op_type**\ (\ value\: :ref:`OpType<enum_VisualShaderNodeSwitch_OpType>`\ )
- :ref:`OpType<enum_VisualShaderNodeSwitch_OpType>` **get_op_type**\ (\ )

A type of operands and returned value.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
