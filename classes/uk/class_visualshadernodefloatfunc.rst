:github_url: hide

.. _class_VisualShaderNodeFloatFunc:

VisualShaderNodeFloatFunc
=========================

**Успадковує:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

У графі візуального відтінку використовується скалярна плаваюча точка.

.. rst-class:: classref-introduction-group

Опис
--------

Прийміть плаваючу скаляр (\ ``x``) в вхідний порт і перетворюйте його відповідно до :ref:`function<class_VisualShaderNodeFloatFunc_property_function>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +----------------------------------------------------------+--------------------------------------------------------------------+--------+
   | :ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` | :ref:`function<class_VisualShaderNodeFloatFunc_property_function>` | ``13`` |
   +----------------------------------------------------------+--------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_VisualShaderNodeFloatFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeFloatFunc_Function>`

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_SIN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_SIN** = ``0``

Повертає синус параметра. Переклади в ``sin(x)`` в мові Godot Shader.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_COS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_COS** = ``1``

Повертає козину параметра. Translates to ``cos(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_TAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_TAN** = ``2``

Повертає тангенс параметра. Переклади в ``тан (x)`` в мові Godot Shader.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ASIN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ASIN** = ``3``

Повертає дугу-син параметра. Translates to ``asin(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ACOS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ACOS** = ``4``

Повертає дугу-косину параметра. Переклади в ``acos (x)`` в мові Godot Shader.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ATAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ATAN** = ``5``

Повертає дугу-тангент параметра. Переклади в ``atan (x)`` в мові Godot Shader.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_SINH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_SINH** = ``6``

Повертає гіперболічний син параметра. Переклади на ``sinh(x)`` в мові Godot Shader.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_COSH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_COSH** = ``7``

Повертає гіперболічну козину параметра. Переклади в ``cosh(x)`` в мові Godot Shader.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_TANH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_TANH** = ``8``

Повертає гіперболічний тангенс параметра. Переклади на ``tanh(x)`` в мові Godot Shader.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_LOG:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_LOG** = ``9``

Повертає природну логарифм параметра. Переклади на ``log(x)`` в мові Godot Shader.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_EXP:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_EXP** = ``10``

Повертає природну перевірку параметра. Переклади на ``exp(x)`` в мові Godot Shader.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_SQRT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_SQRT** = ``11``

Повертає параметр квадрата. Translates to ``sqrt(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ABS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ABS** = ``12``

Повертає абсолютне значення параметра. Переклади до ``abs(x)`` у мові Godot Shader.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_SIGN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_SIGN** = ``13``

Витягує знак параметра. Переклади на ``sign(x)`` в мові Godot Shader.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_FLOOR:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_FLOOR** = ``14``

Знайдіть найближче ціле менше або дорівнює параметру. Переклади на ``floor(x)`` в мові Godot Shader.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ROUND:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ROUND** = ``15``

Знайдіть найближче ціле параметра. Переклади на ``round(x)`` в мові Godot Shader.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_CEIL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_CEIL** = ``16``

Знайдіть найближче ціле, яке більше або дорівнює параметру. Translates to ``ceil(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_FRACT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_FRACT** = ``17``

Ускладнює дробову частину аргументу. Переклади в ``фрахт (x)`` в мові Godot Shader.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_SATURATE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_SATURATE** = ``18``

Затискає значення між ``0.0`` і ``1.0`` за допомогою ``min(max(x, 0.0), 1.0)``.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_NEGATE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_NEGATE** = ``19``

Заперечує ``x`` за допомогою ``-(x)``.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ACOSH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ACOSH** = ``20``

Повертає дугу-гіперболічний-косину параметра. Переклади на ``acosh(x)`` в мові Godot Shader.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ASINH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ASINH** = ``21``

Повертає дугу-гіперболічний син параметра. Переклади на ``asinh(x)`` в мові Godot Shader.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ATANH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ATANH** = ``22``

Повертає дуго-гіперболічний-тангент параметра. Переклади на ``atanh(x)`` в мові Godot Shader.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_DEGREES:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_DEGREES** = ``23``

Перетворення кількості в радианах до ступенів. Переклади на ``degrees(x)`` в мові Godot Shader.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_EXP2:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_EXP2** = ``24``

Повертає 2, що піднімається на потужність параметра. Translates to ``exp2(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_INVERSE_SQRT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_INVERSE_SQRT** = ``25``

Повертає появу квадратного кореня параметра. Translates to ``inversesqrt(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_LOG2:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_LOG2** = ``26``

Повернення бази 2 логарифм параметра. Переклади на ``log2(x)`` в мові Godot Shader.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_RADIANS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_RADIANS** = ``27``

Перетворення кількості в градусах до радян. Переклади на ``radians(x)`` в мові Godot Shader.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_RECIPROCAL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_RECIPROCAL** = ``28``

Знаходиться взаємне значення ділення 1 ``x`` (i.e. ``1 / x``).

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ROUNDEVEN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ROUNDEVEN** = ``29``

Знайдіть найближче ціле число до параметра. Translates to ``roundEven(x)`` in the Godot Shader Language.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_TRUNC:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_TRUNC** = ``30``

Повертає значення, що дорівнює найближчому цілому ``x``, абсолютне значення якого не більше, ніж абсолютне значення ``x``. Переклади в ``trunc(x)`` в мові Godot Shader.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ONEMINUS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ONEMINUS** = ``31``

``x`` з 1 (тобто ``1 - x``).

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_MAX** = ``32``

Представляємо розмір занурення Функціональність.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VisualShaderNodeFloatFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **function** = ``13`` :ref:`🔗<class_VisualShaderNodeFloatFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeFloatFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **get_function**\ (\ )

Функція, яка застосовується до скаляра.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
