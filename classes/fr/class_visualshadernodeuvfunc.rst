:github_url: hide

.. _class_VisualShaderNodeUVFunc:

VisualShaderNodeUVFunc
======================

**Hérite de :** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Contains functions to modify texture coordinates (\ ``uv``) to be used within the visual shader graph.

.. rst-class:: classref-introduction-group

Description
-----------

UV functions are similar to :ref:`Vector2<class_Vector2>` functions, but the input port of this node uses the shader's UV value by default.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------------------------+-----------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeUVFunc_Function>` | :ref:`function<class_VisualShaderNodeUVFunc_property_function>` | ``0`` |
   +-------------------------------------------------------+-----------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_VisualShaderNodeUVFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeUVFunc_Function>`

.. _class_VisualShaderNodeUVFunc_constant_FUNC_PANNING:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeUVFunc_Function>` **FUNC_PANNING** = ``0``

Translates ``uv`` by using ``scale`` and ``offset`` values using the following formula: ``uv = uv + offset * scale``. ``uv`` port is connected to ``UV`` built-in by default.

.. _class_VisualShaderNodeUVFunc_constant_FUNC_SCALING:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeUVFunc_Function>` **FUNC_SCALING** = ``1``

Scales ``uv`` by using ``scale`` and ``pivot`` values using the following formula: ``uv = (uv - pivot) * scale + pivot``. ``uv`` port is connected to ``UV`` built-in by default.

.. _class_VisualShaderNodeUVFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeUVFunc_Function>` **FUNC_MAX** = ``2``

Représente la taille de l'énumération :ref:`Function<enum_VisualShaderNodeUVFunc_Function>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualShaderNodeUVFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeUVFunc_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeUVFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeUVFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeUVFunc_Function>` **get_function**\ (\ )

A function to be applied to the texture coordinates.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
