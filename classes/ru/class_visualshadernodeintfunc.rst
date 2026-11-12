:github_url: hide

.. _class_VisualShaderNodeIntFunc:

VisualShaderNodeIntFunc
=======================

**Наследует:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Скалярная целочисленная функция, используемая в графе визуального шейдера.

.. rst-class:: classref-introduction-group

Описание
----------------

Принять целочисленный скаляр (\ ``x``) на входной порт и преобразовать его в соответствии с :ref:`function<class_VisualShaderNodeIntFunc_property_function>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +--------------------------------------------------------+------------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeIntFunc_Function>` | :ref:`function<class_VisualShaderNodeIntFunc_property_function>` | ``2`` |
   +--------------------------------------------------------+------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_VisualShaderNodeIntFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeIntFunc_Function>`

.. _class_VisualShaderNodeIntFunc_constant_FUNC_ABS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **FUNC_ABS** = ``0``

Возвращает абсолютное значение параметра. Переводится в ``abs(x)`` на языке шейдеров Godot.

.. _class_VisualShaderNodeIntFunc_constant_FUNC_NEGATE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **FUNC_NEGATE** = ``1``

Отменяет ``x`` с помощью ``-(x)``.

.. _class_VisualShaderNodeIntFunc_constant_FUNC_SIGN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **FUNC_SIGN** = ``2``

Извлекает знак параметра. Переводится в ``sign(x)`` на языке шейдеров Godot.

.. _class_VisualShaderNodeIntFunc_constant_FUNC_BITWISE_NOT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **FUNC_BITWISE_NOT** = ``3``

Возвращает результат побитовой операции ``NOT`` над целым числом. Переводится в ``~a`` на языке шейдеров Godot.

.. _class_VisualShaderNodeIntFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **FUNC_MAX** = ``4``

Представляет размер перечисления :ref:`Function<enum_VisualShaderNodeIntFunc_Function>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VisualShaderNodeIntFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **function** = ``2`` :ref:`🔗<class_VisualShaderNodeIntFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeIntFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **get_function**\ (\ )

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
