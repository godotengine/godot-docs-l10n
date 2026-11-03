:github_url: hide

.. _class_VisualShaderNodeTransformOp:

VisualShaderNodeTransformOp
===========================

**Hérite de :** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A :ref:`Transform3D<class_Transform3D>` operator to be used within the visual shader graph.

.. rst-class:: classref-introduction-group

Description
-----------

Applique :ref:`operator<class_VisualShaderNodeTransformOp_property_operator>` aux deux entrées de transformation (matrices 4×4).

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------------------------+-------+
   | :ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` | :ref:`operator<class_VisualShaderNodeTransformOp_property_operator>` | ``0`` |
   +------------------------------------------------------------+----------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_VisualShaderNodeTransformOp_Operator:

.. rst-class:: classref-enumeration

enum **Operator**: :ref:`🔗<enum_VisualShaderNodeTransformOp_Operator>`

.. _class_VisualShaderNodeTransformOp_constant_OP_AxB:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_AxB** = ``0``

Multiplie la transformation ``a`` par la transformation ``b``.

.. _class_VisualShaderNodeTransformOp_constant_OP_BxA:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_BxA** = ``1``

Multiplie la transformation ``b`` par la transformation ``a``.

.. _class_VisualShaderNodeTransformOp_constant_OP_AxB_COMP:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_AxB_COMP** = ``2``

Multiplie chaque composant de la transformation ``a`` par la transformation ``b``.

.. _class_VisualShaderNodeTransformOp_constant_OP_BxA_COMP:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_BxA_COMP** = ``3``

Multiplie chaque composant de la transformation ``b`` par la transformation ``a``.

.. _class_VisualShaderNodeTransformOp_constant_OP_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_ADD** = ``4``

Ajoute deux transforms.

.. _class_VisualShaderNodeTransformOp_constant_OP_A_MINUS_B:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_A_MINUS_B** = ``5``

Soustrait la transformation ``a`` à la transformation ``b``.

.. _class_VisualShaderNodeTransformOp_constant_OP_B_MINUS_A:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_B_MINUS_A** = ``6``

Soustrait la transformation ``b`` à la transformation ``a``.

.. _class_VisualShaderNodeTransformOp_constant_OP_A_DIV_B:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_A_DIV_B** = ``7``

Divise la transformation ``a`` par la transformation ``b``.

.. _class_VisualShaderNodeTransformOp_constant_OP_B_DIV_A:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_B_DIV_A** = ``8``

Divise la transformation ``b`` par la transformation ``a``.

.. _class_VisualShaderNodeTransformOp_constant_OP_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_MAX** = ``9``

Représente la taille de l'énumération :ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualShaderNodeTransformOp_property_operator:

.. rst-class:: classref-property

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **operator** = ``0`` :ref:`🔗<class_VisualShaderNodeTransformOp_property_operator>`

.. rst-class:: classref-property-setget

- |void| **set_operator**\ (\ value\: :ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>`\ )
- :ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **get_operator**\ (\ )

Le type de l'opération à effectuer sur les transformations.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
