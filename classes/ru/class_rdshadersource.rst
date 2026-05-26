:github_url: hide

.. _class_RDShaderSource:

RDShaderSource
==============

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Исходный код шейдера (используется :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Описание
----------------

Исходный код шейдера в текстовой форме.

См. также :ref:`RDShaderFile<class_RDShaderFile>`. **RDShaderSource** предназначен только для использования с API :ref:`RenderingDevice<class_RenderingDevice>`. Его не следует путать с собственным ресурсом Godot :ref:`Shader<class_Shader>`, который различные узлы Godot используют для высокоуровневого программирования шейдеров.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`ShaderLanguage<enum_RenderingDevice_ShaderLanguage>` | :ref:`language<class_RDShaderSource_property_language>`                                           | ``0``  |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_any_hit<class_RDShaderSource_property_source_any_hit>`                               | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_closest_hit<class_RDShaderSource_property_source_closest_hit>`                       | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_compute<class_RDShaderSource_property_source_compute>`                               | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_fragment<class_RDShaderSource_property_source_fragment>`                             | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_intersection<class_RDShaderSource_property_source_intersection>`                     | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_miss<class_RDShaderSource_property_source_miss>`                                     | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_raygen<class_RDShaderSource_property_source_raygen>`                                 | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_tesselation_control<class_RDShaderSource_property_source_tesselation_control>`       | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_tesselation_evaluation<class_RDShaderSource_property_source_tesselation_evaluation>` | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_vertex<class_RDShaderSource_property_source_vertex>`                                 | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_stage_source<class_RDShaderSource_method_get_stage_source>`\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|                               |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_stage_source<class_RDShaderSource_method_set_stage_source>`\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ ) |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_RDShaderSource_property_language:

.. rst-class:: classref-property

:ref:`ShaderLanguage<enum_RenderingDevice_ShaderLanguage>` **language** = ``0`` :ref:`🔗<class_RDShaderSource_property_language>`

.. rst-class:: classref-property-setget

- |void| **set_language**\ (\ value\: :ref:`ShaderLanguage<enum_RenderingDevice_ShaderLanguage>`\ )
- :ref:`ShaderLanguage<enum_RenderingDevice_ShaderLanguage>` **get_language**\ (\ )

Язык, на котором написан шейдер.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_any_hit:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_any_hit** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_any_hit>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Source code for the shader's any hit stage.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_closest_hit:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_closest_hit** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_closest_hit>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Source code for the shader's closest hit stage.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_compute:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_compute** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_compute>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Исходный код для этапа вычислений (compute) шейдера.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_fragment:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_fragment** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_fragment>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Исходный код для фрагментной стадии шейдера.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_intersection:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_intersection** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_intersection>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Source code for the shader's intersection stage.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_miss:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_miss** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_miss>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Source code for the shader's miss stage.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_raygen:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_raygen** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_raygen>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Source code for the shader's ray generation stage.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_tesselation_control:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_tesselation_control** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_tesselation_control>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Исходный код для этапа управления тесселяцией шейдера.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_tesselation_evaluation:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_tesselation_evaluation** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_tesselation_evaluation>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Исходный код для этапа оценки тесселяции шейдера.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_vertex:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_vertex** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_vertex>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Исходный код для вершинного этапа шейдера.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_RDShaderSource_method_get_stage_source:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const| :ref:`🔗<class_RDShaderSource_method_get_stage_source>`

Возвращает исходный код для указанного шейдера ``stage``. Эквивалентно получению одного из :ref:`source_compute<class_RDShaderSource_property_source_compute>`, :ref:`source_fragment<class_RDShaderSource_property_source_fragment>`, :ref:`source_tesselation_control<class_RDShaderSource_property_source_tesselation_control>`, :ref:`source_tesselation_evaluation<class_RDShaderSource_property_source_tesselation_evaluation>` или :ref:`source_vertex<class_RDShaderSource_property_source_vertex>`.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_method_set_stage_source:

.. rst-class:: classref-method

|void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ ) :ref:`🔗<class_RDShaderSource_method_set_stage_source>`

Устанавливает код ``source`` для указанного шейдера ``stage``. Эквивалентно установке одного из :ref:`source_compute<class_RDShaderSource_property_source_compute>`, :ref:`source_fragment<class_RDShaderSource_property_source_fragment>`, :ref:`source_tesselation_control<class_RDShaderSource_property_source_tesselation_control>`, :ref:`source_tesselation_evaluation<class_RDShaderSource_property_source_tesselation_evaluation>` или :ref:`source_vertex<class_RDShaderSource_property_source_vertex>`.

\ **Примечание:** Если вы устанавливаете исходный код вычислительного шейдера, используя этот метод напрямую, не забудьте удалить специфичную для Godot подсказку ``#[compute]``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
