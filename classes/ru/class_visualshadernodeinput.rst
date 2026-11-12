:github_url: hide

.. _class_VisualShaderNodeInput:

VisualShaderNodeInput
=====================

**Наследует:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Представляет входной параметр шейдера в графе визуального шейдера.

.. rst-class:: classref-introduction-group

Описание
----------------

Предоставляет доступ к входным переменным (встроенным), доступным для шейдера. См. справочник по шейдингу для списка доступных встроенных функций для каждого типа шейдера (проверьте раздел ``Учебники`` для ссылки).

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Индекс опорного затенения <../tutorials/shaders/shader_reference/index>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------+--------------+
   | :ref:`String<class_String>` | :ref:`input_name<class_VisualShaderNodeInput_property_input_name>` | ``"[None]"`` |
   +-----------------------------+--------------------------------------------------------------------+--------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_input_real_name<class_VisualShaderNodeInput_method_get_input_real_name>`\ (\ ) |const| |
   +-----------------------------+--------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_VisualShaderNodeInput_signal_input_type_changed:

.. rst-class:: classref-signal

**input_type_changed**\ (\ ) :ref:`🔗<class_VisualShaderNodeInput_signal_input_type_changed>`

Вызывается при изменении ввода через :ref:`input_name<class_VisualShaderNodeInput_property_input_name>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VisualShaderNodeInput_property_input_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **input_name** = ``"[None]"`` :ref:`🔗<class_VisualShaderNodeInput_property_input_name>`

.. rst-class:: classref-property-setget

- |void| **set_input_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_input_name**\ (\ )

Одна из нескольких входных констант в нижнем регистре, например: «vertex» (\ ``VERTEX``) или «point_size» (\ ``POINT_SIZE``).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_VisualShaderNodeInput_method_get_input_real_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_input_real_name**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeInput_method_get_input_real_name>`

Возвращает переведенное имя текущей константы в Godot Shader Language. Например, ``"ALBEDO"``, если :ref:`input_name<class_VisualShaderNodeInput_property_input_name>` равен ``"albedo"``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
