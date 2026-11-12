:github_url: hide

.. _class_VisualShaderNodeFloatFunc:

VisualShaderNodeFloatFunc
=========================

**Hérite de :** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A scalar floating-point function to be used within the visual shader graph.

.. rst-class:: classref-introduction-group

Description
-----------

Accept a floating-point scalar (\ ``x``) to the input port and transform it according to :ref:`function<class_VisualShaderNodeFloatFunc_property_function>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +----------------------------------------------------------+--------------------------------------------------------------------+--------+
   | :ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` | :ref:`function<class_VisualShaderNodeFloatFunc_property_function>` | ``13`` |
   +----------------------------------------------------------+--------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_VisualShaderNodeFloatFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeFloatFunc_Function>`

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_SIN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_SIN** = ``0``

Renvoie le sinus du paramètre. Traduit en ``sin(x)`` dans le langage de shader de Godot.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_COS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_COS** = ``1``

Renvoie le cosinus du paramètre. Traduit en ``cos(x)`` dans le langage de shader de Godot.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_TAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_TAN** = ``2``

Renvoie la tangente du paramètre. Traduit en ``tan(x)`` dans le langage de shader de Godot.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ASIN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ASIN** = ``3``

Returns the arc-sine of the parameter. Translates to ``asin(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ACOS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ACOS** = ``4``

Returns the arc-cosine of the parameter. Translates to ``acos(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ATAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ATAN** = ``5``

Returns the arc-tangent of the parameter. Translates to ``atan(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_SINH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_SINH** = ``6``

Returns the hyperbolic sine of the parameter. Translates to ``sinh(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_COSH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_COSH** = ``7``

Returns the hyperbolic cosine of the parameter. Translates to ``cosh(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_TANH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_TANH** = ``8``

Returns the hyperbolic tangent of the parameter. Translates to ``tanh(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_LOG:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_LOG** = ``9``

Returns the natural logarithm of the parameter. Translates to ``log(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_EXP:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_EXP** = ``10``

Returns the natural exponentiation of the parameter. Translates to ``exp(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_SQRT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_SQRT** = ``11``

Returns the square root of the parameter. Translates to ``sqrt(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ABS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ABS** = ``12``

Returns the absolute value of the parameter. Translates to ``abs(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_SIGN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_SIGN** = ``13``

Extracts the sign of the parameter. Translates to ``sign(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_FLOOR:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_FLOOR** = ``14``

Finds the nearest integer less than or equal to the parameter. Translates to ``floor(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ROUND:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ROUND** = ``15``

Finds the nearest integer to the parameter. Translates to ``round(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_CEIL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_CEIL** = ``16``

Finds the nearest integer that is greater than or equal to the parameter. Translates to ``ceil(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_FRACT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_FRACT** = ``17``

Computes the fractional part of the argument. Translates to ``fract(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_SATURATE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_SATURATE** = ``18``

Borne la valeur entre ``0.0`` et ``1.0`` en utilisant ``min(max(x, 0.0), 1.0)``.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_NEGATE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_NEGATE** = ``19``

Inverse le signe de ``x`` en utilisant ``-(x)``.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ACOSH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ACOSH** = ``20``

Returns the arc-hyperbolic-cosine of the parameter. Translates to ``acosh(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ASINH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ASINH** = ``21``

Returns the arc-hyperbolic-sine of the parameter. Translates to ``asinh(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ATANH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ATANH** = ``22``

Returns the arc-hyperbolic-tangent of the parameter. Translates to ``atanh(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_DEGREES:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_DEGREES** = ``23``

Convert a quantity in radians to degrees. Translates to ``degrees(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_EXP2:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_EXP2** = ``24``

Returns 2 raised by the power of the parameter. Translates to ``exp2(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_INVERSE_SQRT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_INVERSE_SQRT** = ``25``

Returns the inverse of the square root of the parameter. Translates to ``inversesqrt(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_LOG2:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_LOG2** = ``26``

Returns the base 2 logarithm of the parameter. Translates to ``log2(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_RADIANS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_RADIANS** = ``27``

Convert a quantity in degrees to radians. Translates to ``radians(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_RECIPROCAL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_RECIPROCAL** = ``28``

Finds reciprocal value of dividing 1 by ``x`` (i.e. ``1 / x``).

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ROUNDEVEN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ROUNDEVEN** = ``29``

Finds the nearest even integer to the parameter. Translates to ``roundEven(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_TRUNC:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_TRUNC** = ``30``

Returns a value equal to the nearest integer to ``x`` whose absolute value is not larger than the absolute value of ``x``. Translates to ``trunc(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ONEMINUS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ONEMINUS** = ``31``

Soustrait le scalaire ``x`` de 1 (c.à.d. ``1 - x``).

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_MAX** = ``32``

Représente la taille de l'énumération :ref:`Function<enum_VisualShaderNodeFloatFunc_Function>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualShaderNodeFloatFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **function** = ``13`` :ref:`🔗<class_VisualShaderNodeFloatFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeFloatFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **get_function**\ (\ )

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
