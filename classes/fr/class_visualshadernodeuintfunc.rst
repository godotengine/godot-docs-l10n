:github_url: hide

.. _class_VisualShaderNodeUIntFunc:

VisualShaderNodeUIntFunc
========================

**Hérite de :** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

An unsigned scalar integer function to be used within the visual shader graph.

.. rst-class:: classref-introduction-group

Description
-----------

Accept an unsigned integer scalar (\ ``x``) to the input port and transform it according to :ref:`function<class_VisualShaderNodeUIntFunc_property_function>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------------------------+-------------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeUIntFunc_Function>` | :ref:`function<class_VisualShaderNodeUIntFunc_property_function>` | ``0`` |
   +---------------------------------------------------------+-------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_VisualShaderNodeUIntFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeUIntFunc_Function>`

.. _class_VisualShaderNodeUIntFunc_constant_FUNC_NEGATE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeUIntFunc_Function>` **FUNC_NEGATE** = ``0``

Inverse le signe de ``x`` en utilisant ``-(x)``.

.. _class_VisualShaderNodeUIntFunc_constant_FUNC_BITWISE_NOT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeUIntFunc_Function>` **FUNC_BITWISE_NOT** = ``1``

Returns the result of bitwise ``NOT`` operation on the integer. Translates to ``~a`` in the Godot Shader Language.

.. _class_VisualShaderNodeUIntFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeUIntFunc_Function>` **FUNC_MAX** = ``2``

Représente la taille de l'énumération :ref:`Function<enum_VisualShaderNodeUIntFunc_Function>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualShaderNodeUIntFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeUIntFunc_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeUIntFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeUIntFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeUIntFunc_Function>` **get_function**\ (\ )

Une fonction à appliquer au scalaire.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
