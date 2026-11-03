:github_url: hide

.. _class_VisualShaderNodeSmoothStep:

VisualShaderNodeSmoothStep
==========================

**Hérite de :** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Calcule une fonction SmoothStep dans le graphe de shader visuel.

.. rst-class:: classref-introduction-group

Description
-----------

Translates to ``smoothstep(edge0, edge1, x)`` in the shader language.

Returns ``0.0`` if ``x`` is smaller than ``edge0`` and ``1.0`` if ``x`` is larger than ``edge1``. Otherwise, the return value is interpolated between ``0.0`` and ``1.0`` using Hermite polynomials.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------------------------+-------------------------------------------------------------------+-------+
   | :ref:`OpType<enum_VisualShaderNodeSmoothStep_OpType>` | :ref:`op_type<class_VisualShaderNodeSmoothStep_property_op_type>` | ``0`` |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_VisualShaderNodeSmoothStep_OpType:

.. rst-class:: classref-enumeration

enum **OpType**: :ref:`🔗<enum_VisualShaderNodeSmoothStep_OpType>`

.. _class_VisualShaderNodeSmoothStep_constant_OP_TYPE_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSmoothStep_OpType>` **OP_TYPE_SCALAR** = ``0``

Un scalaire à virgule flottante.

.. _class_VisualShaderNodeSmoothStep_constant_OP_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSmoothStep_OpType>` **OP_TYPE_VECTOR_2D** = ``1``

Un type de vecteur 2D.

.. _class_VisualShaderNodeSmoothStep_constant_OP_TYPE_VECTOR_2D_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSmoothStep_OpType>` **OP_TYPE_VECTOR_2D_SCALAR** = ``2``

The ``x`` port uses a 2D vector type. The first two ports use a floating-point scalar type.

.. _class_VisualShaderNodeSmoothStep_constant_OP_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSmoothStep_OpType>` **OP_TYPE_VECTOR_3D** = ``3``

Un type de vecteur 3D.

.. _class_VisualShaderNodeSmoothStep_constant_OP_TYPE_VECTOR_3D_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSmoothStep_OpType>` **OP_TYPE_VECTOR_3D_SCALAR** = ``4``

Le port ``x`` utilise un type vecteur 3D. Les deux premiers ports utilisent un type scalaire à virgule flottante.

.. _class_VisualShaderNodeSmoothStep_constant_OP_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSmoothStep_OpType>` **OP_TYPE_VECTOR_4D** = ``5``

Un type de vecteur 4D.

.. _class_VisualShaderNodeSmoothStep_constant_OP_TYPE_VECTOR_4D_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSmoothStep_OpType>` **OP_TYPE_VECTOR_4D_SCALAR** = ``6``

Les ports ``a`` et ``b`` utilisent un type vecteur 4D. Le port ``weight`` utilise un type scalaire.

.. _class_VisualShaderNodeSmoothStep_constant_OP_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSmoothStep_OpType>` **OP_TYPE_MAX** = ``7``

Représente la taille de l'énumération :ref:`OpType<enum_VisualShaderNodeSmoothStep_OpType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualShaderNodeSmoothStep_property_op_type:

.. rst-class:: classref-property

:ref:`OpType<enum_VisualShaderNodeSmoothStep_OpType>` **op_type** = ``0`` :ref:`🔗<class_VisualShaderNodeSmoothStep_property_op_type>`

.. rst-class:: classref-property-setget

- |void| **set_op_type**\ (\ value\: :ref:`OpType<enum_VisualShaderNodeSmoothStep_OpType>`\ )
- :ref:`OpType<enum_VisualShaderNodeSmoothStep_OpType>` **get_op_type**\ (\ )

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
