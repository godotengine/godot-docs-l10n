:github_url: hide

.. _class_VisualShaderNodeUVFunc:

VisualShaderNodeUVFunc
======================

**Наследует:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Содержит функции для изменения координат текстуры (\ ``uv``), которые будут использоваться в графе визуального шейдера.

.. rst-class:: classref-introduction-group

Описание
----------------

UV-функции аналогичны функциям :ref:`Vector2<class_Vector2>`, но входной порт этого узла по умолчанию использует UV-значение шейдера.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------------------------------+-----------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeUVFunc_Function>` | :ref:`function<class_VisualShaderNodeUVFunc_property_function>` | ``0`` |
   +-------------------------------------------------------+-----------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_VisualShaderNodeUVFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeUVFunc_Function>`

.. _class_VisualShaderNodeUVFunc_constant_FUNC_PANNING:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeUVFunc_Function>` **FUNC_PANNING** = ``0``

Переводит ``uv`` с использованием значений ``scale`` и ``offset`` по следующей формуле: ``uv = uv + offset * scale``. Порт ``uv`` по умолчанию подключен к встроенному ``UV``.

.. _class_VisualShaderNodeUVFunc_constant_FUNC_SCALING:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeUVFunc_Function>` **FUNC_SCALING** = ``1``

Масштабирует ``uv`` с помощью значений ``scale`` и ``pivot`` по следующей формуле: ``uv = (uv - pivot) * scale + pivot``. Порт ``uv`` по умолчанию подключен к встроенному ``UV``.

.. _class_VisualShaderNodeUVFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeUVFunc_Function>` **FUNC_MAX** = ``2``

Представляет размер перечисления :ref:`Function<enum_VisualShaderNodeUVFunc_Function>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VisualShaderNodeUVFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeUVFunc_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeUVFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeUVFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeUVFunc_Function>` **get_function**\ (\ )

Функция, применяемая к координатам текстуры.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
