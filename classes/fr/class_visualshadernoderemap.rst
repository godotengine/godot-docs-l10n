:github_url: hide

.. _class_VisualShaderNodeRemap:

VisualShaderNodeRemap
=====================

**Hérite de :** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A visual shader node for remap function.

.. rst-class:: classref-introduction-group

Description
-----------

Remap will transform the input range into output range, e.g. you can change a ``0..1`` value to ``-2..2`` etc. See :ref:`@GlobalScope.remap()<class_@GlobalScope_method_remap>` for more details.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +--------------------------------------------------+--------------------------------------------------------------+-------+
   | :ref:`OpType<enum_VisualShaderNodeRemap_OpType>` | :ref:`op_type<class_VisualShaderNodeRemap_property_op_type>` | ``0`` |
   +--------------------------------------------------+--------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_VisualShaderNodeRemap_OpType:

.. rst-class:: classref-enumeration

enum **OpType**: :ref:`🔗<enum_VisualShaderNodeRemap_OpType>`

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_SCALAR** = ``0``

Un scalaire à virgule flottante.

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_VECTOR_2D** = ``1``

Un type de vecteur 2D.

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_VECTOR_2D_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_VECTOR_2D_SCALAR** = ``2``

The ``value`` port uses a 2D vector type, while the ``input min``, ``input max``, ``output min``, and ``output max`` ports use a floating-point scalar type.

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_VECTOR_3D** = ``3``

Un type de vecteur 3D.

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_VECTOR_3D_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_VECTOR_3D_SCALAR** = ``4``

The ``value`` port uses a 3D vector type, while the ``input min``, ``input max``, ``output min``, and ``output max`` ports use a floating-point scalar type.

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_VECTOR_4D** = ``5``

Un type de vecteur 4D.

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_VECTOR_4D_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_VECTOR_4D_SCALAR** = ``6``

The ``value`` port uses a 4D vector type, while the ``input min``, ``input max``, ``output min``, and ``output max`` ports use a floating-point scalar type.

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_MAX** = ``7``

Représente la taille de l'énumération :ref:`OpType<enum_VisualShaderNodeRemap_OpType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualShaderNodeRemap_property_op_type:

.. rst-class:: classref-property

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **op_type** = ``0`` :ref:`🔗<class_VisualShaderNodeRemap_property_op_type>`

.. rst-class:: classref-property-setget

- |void| **set_op_type**\ (\ value\: :ref:`OpType<enum_VisualShaderNodeRemap_OpType>`\ )
- :ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **get_op_type**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
