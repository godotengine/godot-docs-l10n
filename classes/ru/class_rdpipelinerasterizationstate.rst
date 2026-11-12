:github_url: hide

.. _class_RDPipelineRasterizationState:

RDPipelineRasterizationState
============================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Состояние растеризации конвейера (используется :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Описание
----------------

Этот объект используется :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`PolygonCullMode<enum_RenderingDevice_PolygonCullMode>`   | :ref:`cull_mode<class_RDPipelineRasterizationState_property_cull_mode>`                                   | ``0``     |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                      | :ref:`depth_bias_clamp<class_RDPipelineRasterizationState_property_depth_bias_clamp>`                     | ``0.0``   |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                      | :ref:`depth_bias_constant_factor<class_RDPipelineRasterizationState_property_depth_bias_constant_factor>` | ``0.0``   |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                        | :ref:`depth_bias_enabled<class_RDPipelineRasterizationState_property_depth_bias_enabled>`                 | ``false`` |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                      | :ref:`depth_bias_slope_factor<class_RDPipelineRasterizationState_property_depth_bias_slope_factor>`       | ``0.0``   |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                        | :ref:`discard_primitives<class_RDPipelineRasterizationState_property_discard_primitives>`                 | ``false`` |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                        | :ref:`enable_depth_clamp<class_RDPipelineRasterizationState_property_enable_depth_clamp>`                 | ``false`` |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`PolygonFrontFace<enum_RenderingDevice_PolygonFrontFace>` | :ref:`front_face<class_RDPipelineRasterizationState_property_front_face>`                                 | ``0``     |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                      | :ref:`line_width<class_RDPipelineRasterizationState_property_line_width>`                                 | ``1.0``   |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                          | :ref:`patch_control_points<class_RDPipelineRasterizationState_property_patch_control_points>`             | ``1``     |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                        | :ref:`wireframe<class_RDPipelineRasterizationState_property_wireframe>`                                   | ``false`` |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_RDPipelineRasterizationState_property_cull_mode:

.. rst-class:: classref-property

:ref:`PolygonCullMode<enum_RenderingDevice_PolygonCullMode>` **cull_mode** = ``0`` :ref:`🔗<class_RDPipelineRasterizationState_property_cull_mode>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mode**\ (\ value\: :ref:`PolygonCullMode<enum_RenderingDevice_PolygonCullMode>`\ )
- :ref:`PolygonCullMode<enum_RenderingDevice_PolygonCullMode>` **get_cull_mode**\ (\ )

Режим отбраковки, используемый при рисовании полигонов, который определяет, будут ли скрыты передние или задние грани.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_depth_bias_clamp:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth_bias_clamp** = ``0.0`` :ref:`🔗<class_RDPipelineRasterizationState_property_depth_bias_clamp>`

.. rst-class:: classref-property-setget

- |void| **set_depth_bias_clamp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth_bias_clamp**\ (\ )

Предел того, насколько может быть смещено каждое значение глубины. Если отрицательно, то служит минимальным значением, а если положительно, то служит максимальным значением.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_depth_bias_constant_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth_bias_constant_factor** = ``0.0`` :ref:`🔗<class_RDPipelineRasterizationState_property_depth_bias_constant_factor>`

.. rst-class:: classref-property-setget

- |void| **set_depth_bias_constant_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth_bias_constant_factor**\ (\ )

Постоянное смещение, добавляемое к каждому значению глубины. Применяется после :ref:`depth_bias_slope_factor<class_RDPipelineRasterizationState_property_depth_bias_slope_factor>`.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_depth_bias_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **depth_bias_enabled** = ``false`` :ref:`🔗<class_RDPipelineRasterizationState_property_depth_bias_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_depth_bias_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_depth_bias_enabled**\ (\ )

Если ``true``, каждое сгенерированное значение глубины будет смещено на некоторую величину. Конкретная величина генерируется для каждого полигона на основе значений :ref:`depth_bias_slope_factor<class_RDPipelineRasterizationState_property_depth_bias_slope_factor>` и :ref:`depth_bias_constant_factor<class_RDPipelineRasterizationState_property_depth_bias_constant_factor>`.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_depth_bias_slope_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth_bias_slope_factor** = ``0.0`` :ref:`🔗<class_RDPipelineRasterizationState_property_depth_bias_slope_factor>`

.. rst-class:: classref-property-setget

- |void| **set_depth_bias_slope_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth_bias_slope_factor**\ (\ )

A constant scale applied to the slope of each polygon's depth. Applied before :ref:`depth_bias_constant_factor<class_RDPipelineRasterizationState_property_depth_bias_constant_factor>`.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_discard_primitives:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **discard_primitives** = ``false`` :ref:`🔗<class_RDPipelineRasterizationState_property_discard_primitives>`

.. rst-class:: classref-property-setget

- |void| **set_discard_primitives**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_discard_primitives**\ (\ )

Если ``true``, примитивы отбрасываются непосредственно перед этапом растеризации.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_enable_depth_clamp:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_depth_clamp** = ``false`` :ref:`🔗<class_RDPipelineRasterizationState_property_enable_depth_clamp>`

.. rst-class:: classref-property-setget

- |void| **set_enable_depth_clamp**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_depth_clamp**\ (\ )

Если ``true``, значения глубины ограничиваются минимальной и максимальной глубиной соответствующего окна просмотра.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_front_face:

.. rst-class:: classref-property

:ref:`PolygonFrontFace<enum_RenderingDevice_PolygonFrontFace>` **front_face** = ``0`` :ref:`🔗<class_RDPipelineRasterizationState_property_front_face>`

.. rst-class:: classref-property-setget

- |void| **set_front_face**\ (\ value\: :ref:`PolygonFrontFace<enum_RenderingDevice_PolygonFrontFace>`\ )
- :ref:`PolygonFrontFace<enum_RenderingDevice_PolygonFrontFace>` **get_front_face**\ (\ )

Порядок намотки, используемый для определения того, какая грань треугольника считается его передней гранью.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_line_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **line_width** = ``1.0`` :ref:`🔗<class_RDPipelineRasterizationState_property_line_width>`

.. rst-class:: classref-property-setget

- |void| **set_line_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_line_width**\ (\ )

Ширина линии, используемая при рисовании линий (в пикселях). Толстые линии могут не поддерживаться на всех аппаратных средствах.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_patch_control_points:

.. rst-class:: classref-property

:ref:`int<class_int>` **patch_control_points** = ``1`` :ref:`🔗<class_RDPipelineRasterizationState_property_patch_control_points>`

.. rst-class:: classref-property-setget

- |void| **set_patch_control_points**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_patch_control_points**\ (\ )

Количество контрольных точек, используемых при рисовании патча с включенной тесселяцией. Более высокие значения приводят к более высокому качеству за счет производительности.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_wireframe:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **wireframe** = ``false`` :ref:`🔗<class_RDPipelineRasterizationState_property_wireframe>`

.. rst-class:: classref-property-setget

- |void| **set_wireframe**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_wireframe**\ (\ )

Если ``true``, выполняется каркасная визуализация треугольников вместо плоской или текстурированной визуализации.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
