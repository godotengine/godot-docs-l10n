:github_url: hide

.. _class_VisualShaderNodeDerivativeFunc:

VisualShaderNodeDerivativeFunc
==============================

**Успадковує:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Розрахунок похідної в графі візуального відтінку.

.. rst-class:: classref-introduction-group

Опис
--------

Ця вершина доступна тільки в ``Fragment`` і ``Light`` візуальні тіні.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>`   | :ref:`function<class_VisualShaderNodeDerivativeFunc_property_function>`   | ``0`` |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>`       | :ref:`op_type<class_VisualShaderNodeDerivativeFunc_property_op_type>`     | ``0`` |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` | :ref:`precision<class_VisualShaderNodeDerivativeFunc_property_precision>` | ``0`` |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_VisualShaderNodeDerivativeFunc_OpType:

.. rst-class:: classref-enumeration

enum **OpType**: :ref:`🔗<enum_VisualShaderNodeDerivativeFunc_OpType>`

.. _class_VisualShaderNodeDerivativeFunc_constant_OP_TYPE_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **OP_TYPE_SCALAR** = ``0``

Плаваюча точка скаляра.

.. _class_VisualShaderNodeDerivativeFunc_constant_OP_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **OP_TYPE_VECTOR_2D** = ``1``

A 2D векторний тип.

.. _class_VisualShaderNodeDerivativeFunc_constant_OP_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **OP_TYPE_VECTOR_3D** = ``2``

3D векторний тип.

.. _class_VisualShaderNodeDerivativeFunc_constant_OP_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **OP_TYPE_VECTOR_4D** = ``3``

Тип вектора 4D.

.. _class_VisualShaderNodeDerivativeFunc_constant_OP_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **OP_TYPE_MAX** = ``4``

Представляємо розмір :ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` enum.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeDerivativeFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeDerivativeFunc_Function>`

.. _class_VisualShaderNodeDerivativeFunc_constant_FUNC_SUM:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` **FUNC_SUM** = ``0``

Сума абсолютної похідної ``x`` і ``y``.

.. _class_VisualShaderNodeDerivativeFunc_constant_FUNC_X:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` **FUNC_X** = ``1``

Прибуття в ``x`` за допомогою локального розмежування.

.. _class_VisualShaderNodeDerivativeFunc_constant_FUNC_Y:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` **FUNC_Y** = ``2``

Прибуття в ``y`` за допомогою локального розмежування.

.. _class_VisualShaderNodeDerivativeFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` **FUNC_MAX** = ``3``

Представляємо розмір занурення Функціональність.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeDerivativeFunc_Precision:

.. rst-class:: classref-enumeration

enum **Precision**: :ref:`🔗<enum_VisualShaderNodeDerivativeFunc_Precision>`

.. _class_VisualShaderNodeDerivativeFunc_constant_PRECISION_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` **PRECISION_NONE** = ``0``

Не вказано прецизію, драйвер GPU допускається використання будь-якого рівня точності. Цей параметр за замовчуванням і еквівалентний використанню ``dFdx()`` або ``dFdy()`` в текстових шейдерах.

.. _class_VisualShaderNodeDerivativeFunc_constant_PRECISION_COARSE:

.. rst-class:: classref-enumeration-constant

:ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` **PRECISION_COARSE** = ``1``

Похідна буде обчислена за допомогою сучасних сусідів фрагмента (що не може включати поточний фрагмент). Це прагне бути швидше, ніж використання :ref:`PRECISION_FINE<class_VisualShaderNodeDerivativeFunc_constant_PRECISION_FINE>`, але не може бути придатним, коли потрібна додаткова точність. Це еквівалентно використання ``dFdxCoarse()`` або ``dFdyCoarse()`` в текстових шейдерах.

.. _class_VisualShaderNodeDerivativeFunc_constant_PRECISION_FINE:

.. rst-class:: classref-enumeration-constant

:ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` **PRECISION_FINE** = ``2``

Похідні будуть розраховані за допомогою поточного фрагмента і його безпосередніх сусідів. Це, як правило, є повільніше, ніж використання :ref:`PRECISION_COARSE<class_VisualShaderNodeDerivativeFunc_constant_PRECISION_COARSE>`, але може знадобитися, коли потрібна більш точність. Це еквівалентно використання ``dFdxFine()`` або ``dFdyFine()`` в текстових шейдерах.

.. _class_VisualShaderNodeDerivativeFunc_constant_PRECISION_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` **PRECISION_MAX** = ``3``

Представляємо розмір :ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` enum.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VisualShaderNodeDerivativeFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeDerivativeFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` **get_function**\ (\ )

Тип похідної функції.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeDerivativeFunc_property_op_type:

.. rst-class:: classref-property

:ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **op_type** = ``0`` :ref:`🔗<class_VisualShaderNodeDerivativeFunc_property_op_type>`

.. rst-class:: classref-property-setget

- |void| **set_op_type**\ (\ value\: :ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>`\ )
- :ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **get_op_type**\ (\ )

Тип опери та повернутого значення.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeDerivativeFunc_property_precision:

.. rst-class:: classref-property

:ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` **precision** = ``0`` :ref:`🔗<class_VisualShaderNodeDerivativeFunc_property_precision>`

.. rst-class:: classref-property-setget

- |void| **set_precision**\ (\ value\: :ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>`\ )
- :ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` **get_precision**\ (\ )

Встановлює рівень точності, який використовуватиметься для функції похідної. Під час використання засобу рендерингу сумісності цей параметр не має жодного ефекту.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
