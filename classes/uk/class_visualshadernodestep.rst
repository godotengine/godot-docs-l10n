:github_url: hide

.. _class_VisualShaderNodeStep:

VisualShaderNodeStep
====================

**Успадковує:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Розрахунок функції кроку в графі візуального відтінку.

.. rst-class:: classref-introduction-group

Опис
--------

Перетворюється на ``step(edge, x)`` мовою shar.

\ ``0.0``, якщо ``x`` менше ``edge`` і ``1.0`` інакше.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------+-------------------------------------------------------------+-------+
   | :ref:`OpType<enum_VisualShaderNodeStep_OpType>` | :ref:`op_type<class_VisualShaderNodeStep_property_op_type>` | ``0`` |
   +-------------------------------------------------+-------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_VisualShaderNodeStep_OpType:

.. rst-class:: classref-enumeration

enum **OpType**: :ref:`🔗<enum_VisualShaderNodeStep_OpType>`

.. _class_VisualShaderNodeStep_constant_OP_TYPE_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeStep_OpType>` **OP_TYPE_SCALAR** = ``0``

Тип столяра плаваючої точки.

.. _class_VisualShaderNodeStep_constant_OP_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeStep_OpType>` **OP_TYPE_VECTOR_2D** = ``1``

A 2D векторний тип.

.. _class_VisualShaderNodeStep_constant_OP_TYPE_VECTOR_2D_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeStep_OpType>` **OP_TYPE_VECTOR_2D_SCALAR** = ``2``

``x`` порт використовує 2D векторний тип, в той час як ``edge`` порт використовує плаваючий тип скаляра.

.. _class_VisualShaderNodeStep_constant_OP_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeStep_OpType>` **OP_TYPE_VECTOR_3D** = ``3``

3D векторний тип.

.. _class_VisualShaderNodeStep_constant_OP_TYPE_VECTOR_3D_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeStep_OpType>` **OP_TYPE_VECTOR_3D_SCALAR** = ``4``

``x`` порт використовує 3D векторний тип, в той час як ``edge`` порт використовує плаваючий тип скаляра.

.. _class_VisualShaderNodeStep_constant_OP_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeStep_OpType>` **OP_TYPE_VECTOR_4D** = ``5``

Тип вектора 4D.

.. _class_VisualShaderNodeStep_constant_OP_TYPE_VECTOR_4D_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeStep_OpType>` **OP_TYPE_VECTOR_4D_SCALAR** = ``6``

``a`` і ``b`` порти використовують 4D векторний тип. `` вага`` порт використовує тип скаляра.

.. _class_VisualShaderNodeStep_constant_OP_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeStep_OpType>` **OP_TYPE_MAX** = ``7``

Представляємо розмір :ref:`OpType<enum_VisualShaderNodeStep_OpType>` enum.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VisualShaderNodeStep_property_op_type:

.. rst-class:: classref-property

:ref:`OpType<enum_VisualShaderNodeStep_OpType>` **op_type** = ``0`` :ref:`🔗<class_VisualShaderNodeStep_property_op_type>`

.. rst-class:: classref-property-setget

- |void| **set_op_type**\ (\ value\: :ref:`OpType<enum_VisualShaderNodeStep_OpType>`\ )
- :ref:`OpType<enum_VisualShaderNodeStep_OpType>` **get_op_type**\ (\ )

Тип опери та повернутого значення.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
