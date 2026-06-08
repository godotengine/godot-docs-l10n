:github_url: hide

.. _class_VisualShaderNodeVectorFunc:

VisualShaderNodeVectorFunc
==========================

**Успадковує:** :ref:`VisualShaderNodeVectorBase<class_VisualShaderNodeVectorBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Векторна функція для використання в графі візуального відтінку.

.. rst-class:: classref-introduction-group

Опис
--------

Візуальна шейдерна вершина здатна виконувати різні функції за допомогою векторів.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------+---------------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` | :ref:`function<class_VisualShaderNodeVectorFunc_property_function>` | ``0`` |
   +-----------------------------------------------------------+---------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_VisualShaderNodeVectorFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeVectorFunc_Function>`

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_NORMALIZE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_NORMALIZE** = ``0``

Нормалізує вектор так, що має довжину ``1``, але точки в одному напрямку.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_SATURATE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_SATURATE** = ``1``

Затискає значення ``0.0`` і ``1.0``.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_NEGATE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_NEGATE** = ``2``

Повертає значення, яке є протилежним до значення параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_RECIPROCAL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_RECIPROCAL** = ``3``

``1/вектор``.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ABS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ABS** = ``4``

Повертає модуль параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ACOS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ACOS** = ``5``

Повертає арккосинус параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ACOSH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ACOSH** = ``6``

Повертає обернений гіперболічний косинус параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ASIN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ASIN** = ``7``

Повертає арксинус параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ASINH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ASINH** = ``8``

Повертає обернений гіперболічний синус параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ATAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ATAN** = ``9``

Повертає арктангенс параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ATANH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ATANH** = ``10``

Повертає обернений гіперболічний тангенс параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_CEIL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_CEIL** = ``11``

Знаходить найближче ціле число, яке є більшим або рівним за значення параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_COS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_COS** = ``12``

Повертає косинус параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_COSH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_COSH** = ``13``

Повертає гіперболічний косинус параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_DEGREES:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_DEGREES** = ``14``

Перетворює значення у радіанах на значення у градусах.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_EXP:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_EXP** = ``15``

Показникова функція із основою e (експонента).

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_EXP2:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_EXP2** = ``16``

Показникова функція із основою 2.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_FLOOR:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_FLOOR** = ``17``

Знаходить найближче ціле число, яке є меншим або рівним за значення параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_FRACT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_FRACT** = ``18``

Обчислює дробову частину аргументу.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_INVERSE_SQRT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_INVERSE_SQRT** = ``19``

Повертає одиницю поділену на квадратний корінь з параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_LOG:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_LOG** = ``20``

Натуральний логарифм.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_LOG2:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_LOG2** = ``21``

Двійковий логарифм.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_RADIANS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_RADIANS** = ``22``

Перетворює значення у градусах на значення у радіанах.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ROUND:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ROUND** = ``23``

Знаходить найближче ціле значення до параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ROUNDEVEN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ROUNDEVEN** = ``24``

Знаходить найближче парне ціле значення до параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_SIGN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_SIGN** = ``25``

Витягти знак параметра, тобто повертає ``-1``, якщо параметр негативний, ``1``, якщо це позитив і ``0``.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_SIN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_SIN** = ``26``

Повертає синус параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_SINH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_SINH** = ``27``

Повертає гіперболічний синус параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_SQRT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_SQRT** = ``28``

Повертає квадратний корінь з параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_TAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_TAN** = ``29``

Повертає тангенс параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_TANH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_TANH** = ``30``

Повертає гіперболічний тангенс параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_TRUNC:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_TRUNC** = ``31``

Повертає значення, що дорівнює найближчому цілому параметру, абсолютне значення якого не більше, ніж абсолютне значення параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ONEMINUS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ONEMINUS** = ``32``

``1.0 - вектор``.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_MAX** = ``33``

Представляємо розмір занурення Функціональність.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VisualShaderNodeVectorFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeVectorFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeVectorFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **get_function**\ (\ )

Функція, яку потрібно виконати.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
