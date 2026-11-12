:github_url: hide

.. _class_VisualShaderNodeRemap:

VisualShaderNodeRemap
=====================

**Наследует:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Узел визуального шейдера для функции переназначения.

.. rst-class:: classref-introduction-group

Описание
----------------

Remap преобразует входной диапазон в выходной диапазон, например, вы можете изменить значение ``0..1`` на ``-2..2`` и т. д. Более подробную информацию см. в :ref:`@GlobalScope.remap()<class_@GlobalScope_method_remap>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +--------------------------------------------------+--------------------------------------------------------------+-------+
   | :ref:`OpType<enum_VisualShaderNodeRemap_OpType>` | :ref:`op_type<class_VisualShaderNodeRemap_property_op_type>` | ``0`` |
   +--------------------------------------------------+--------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_VisualShaderNodeRemap_OpType:

.. rst-class:: classref-enumeration

enum **OpType**: :ref:`🔗<enum_VisualShaderNodeRemap_OpType>`

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_SCALAR** = ``0``

Скалярный тип с плавающей точкой.

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_VECTOR_2D** = ``1``

Тип 2D-вектора.

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_VECTOR_2D_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_VECTOR_2D_SCALAR** = ``2``

Порт ``value`` использует тип 2D-вектора, тогда как порты ``input min``, ``input max``, ``output min`` и ``output max`` используют скалярный тип с плавающей точкой.

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_VECTOR_3D** = ``3``

Тип 3D-вектора.

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_VECTOR_3D_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_VECTOR_3D_SCALAR** = ``4``

Порт ``value`` использует тип 3D-вектора, тогда как порты ``input min``, ``input max``, ``output min`` и ``output max`` используют скалярный тип с плавающей точкой.

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_VECTOR_4D** = ``5``

Тип 4D-вектора.

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_VECTOR_4D_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_VECTOR_4D_SCALAR** = ``6``

Порт ``value`` использует векторный тип 4D, тогда как порты ``input min``, ``input max``, ``output min`` и ``output max`` используют скалярный тип с плавающей точкой.

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_MAX** = ``7``

Представляет размер перечисления :ref:`OpType<enum_VisualShaderNodeRemap_OpType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VisualShaderNodeRemap_property_op_type:

.. rst-class:: classref-property

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **op_type** = ``0`` :ref:`🔗<class_VisualShaderNodeRemap_property_op_type>`

.. rst-class:: classref-property-setget

- |void| **set_op_type**\ (\ value\: :ref:`OpType<enum_VisualShaderNodeRemap_OpType>`\ )
- :ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **get_op_type**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
