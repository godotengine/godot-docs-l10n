:github_url: hide

.. _class_VisualShaderNodeExpression:

VisualShaderNodeExpression
==========================

**Наследует:** :ref:`VisualShaderNodeGroupBase<class_VisualShaderNodeGroupBase>` **<** :ref:`VisualShaderNodeResizableBase<class_VisualShaderNodeResizableBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`VisualShaderNodeGlobalExpression<class_VisualShaderNodeGlobalExpression>`

Пользовательское выражение графа визуального шейдера, написанное на языке шейдеров Godot.

.. rst-class:: classref-introduction-group

Описание
----------------

Пользовательское выражение Godot Shading Language с пользовательским числом входных и выходных портов.

Предоставленный код напрямую внедряется в соответствующую шейдерную функцию графа (\ ``vertex``, ``fragment`` или ``light``), поэтому его нельзя использовать для объявления функций, variationings, uniforms или глобальных констант. См. :ref:`VisualShaderNodeGlobalExpression<class_VisualShaderNodeGlobalExpression>` для таких глобальных определений.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------+-------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`expression<class_VisualShaderNodeExpression_property_expression>` | ``""`` |
   +-----------------------------+-------------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VisualShaderNodeExpression_property_expression:

.. rst-class:: classref-property

:ref:`String<class_String>` **expression** = ``""`` :ref:`🔗<class_VisualShaderNodeExpression_property_expression>`

.. rst-class:: classref-property-setget

- |void| **set_expression**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_expression**\ (\ )

Выражение на языке шейдеров Godot, которое будет введено в начало соответствующей шейдерной функции графа (\ ``vertex``, ``fragment`` или ``light``) и, таким образом, не может использоваться для объявления функций, переменных, униформ или глобальных констант.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
