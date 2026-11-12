:github_url: hide

.. _class_VisualShaderNodeIntFunc:

VisualShaderNodeIntFunc
=======================

**Hérite de :** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A scalar integer function to be used within the visual shader graph.

.. rst-class:: classref-introduction-group

Description
-----------

Accept an integer scalar (\ ``x``) to the input port and transform it according to :ref:`function<class_VisualShaderNodeIntFunc_property_function>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +--------------------------------------------------------+------------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeIntFunc_Function>` | :ref:`function<class_VisualShaderNodeIntFunc_property_function>` | ``2`` |
   +--------------------------------------------------------+------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_VisualShaderNodeIntFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeIntFunc_Function>`

.. _class_VisualShaderNodeIntFunc_constant_FUNC_ABS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **FUNC_ABS** = ``0``

Returns the absolute value of the parameter. Translates to ``abs(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeIntFunc_constant_FUNC_NEGATE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **FUNC_NEGATE** = ``1``

Inverse le signe de ``x`` en utilisant ``-(x)``.

.. _class_VisualShaderNodeIntFunc_constant_FUNC_SIGN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **FUNC_SIGN** = ``2``

Extracts the sign of the parameter. Translates to ``sign(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeIntFunc_constant_FUNC_BITWISE_NOT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **FUNC_BITWISE_NOT** = ``3``

Returns the result of bitwise ``NOT`` operation on the integer. Translates to ``~a`` in the Godot Shader Language.

.. _class_VisualShaderNodeIntFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **FUNC_MAX** = ``4``

Représente la taille de l'énumération :ref:`Function<enum_VisualShaderNodeIntFunc_Function>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualShaderNodeIntFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **function** = ``2`` :ref:`🔗<class_VisualShaderNodeIntFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeIntFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **get_function**\ (\ )

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
