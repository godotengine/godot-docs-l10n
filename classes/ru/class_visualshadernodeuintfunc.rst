:github_url: hide

.. _class_VisualShaderNodeUIntFunc:

VisualShaderNodeUIntFunc
========================

**Наследует:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Беззнаковая скалярная целочисленная функция, используемая в графе визуального шейдера.

.. rst-class:: classref-introduction-group

Описание
----------------

Принять беззнаковый целочисленный скаляр (\ ``x``) на входной порт и преобразовать его в соответствии с :ref:`function<class_VisualShaderNodeUIntFunc_property_function>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------------------------------+-------------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeUIntFunc_Function>` | :ref:`function<class_VisualShaderNodeUIntFunc_property_function>` | ``0`` |
   +---------------------------------------------------------+-------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_VisualShaderNodeUIntFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeUIntFunc_Function>`

.. _class_VisualShaderNodeUIntFunc_constant_FUNC_NEGATE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeUIntFunc_Function>` **FUNC_NEGATE** = ``0``

Отменяет ``x`` с помощью ``-(x)``.

.. _class_VisualShaderNodeUIntFunc_constant_FUNC_BITWISE_NOT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeUIntFunc_Function>` **FUNC_BITWISE_NOT** = ``1``

Возвращает результат побитовой операции ``NOT`` над целым числом. Переводится в ``~a`` на языке шейдеров Godot.

.. _class_VisualShaderNodeUIntFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeUIntFunc_Function>` **FUNC_MAX** = ``2``

Представляет размер перечисления :ref:`Function<enum_VisualShaderNodeUIntFunc_Function>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VisualShaderNodeUIntFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeUIntFunc_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeUIntFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeUIntFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeUIntFunc_Function>` **get_function**\ (\ )

Функция, применяемая к скаляру.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
