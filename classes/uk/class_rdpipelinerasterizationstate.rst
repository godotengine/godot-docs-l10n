:github_url: hide

.. _class_RDPipelineRasterizationState:

RDPipelineRasterizationState
============================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Стан растеризації конвеєра (використовується :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Опис
--------

Цей об'єкт використовується :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Описи властивостей
------------------------------------

.. _class_RDPipelineRasterizationState_property_cull_mode:

.. rst-class:: classref-property

:ref:`PolygonCullMode<enum_RenderingDevice_PolygonCullMode>` **cull_mode** = ``0`` :ref:`🔗<class_RDPipelineRasterizationState_property_cull_mode>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mode**\ (\ value\: :ref:`PolygonCullMode<enum_RenderingDevice_PolygonCullMode>`\ )
- :ref:`PolygonCullMode<enum_RenderingDevice_PolygonCullMode>` **get_cull_mode**\ (\ )

Режим ліктя для використання при витяжці полігонів, що визначає, чи приховані лицьові особи або задня сторона.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_depth_bias_clamp:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth_bias_clamp** = ``0.0`` :ref:`🔗<class_RDPipelineRasterizationState_property_depth_bias_clamp>`

.. rst-class:: classref-property-setget

- |void| **set_depth_bias_clamp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth_bias_clamp**\ (\ )

Обмеження для того, скільки кожний значення глибини може бути вимкнено. Якщо негативно, вона слугує мінімальним значенням, але якщо позитив, вона слугує максимальною вартістю.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_depth_bias_constant_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth_bias_constant_factor** = ``0.0`` :ref:`🔗<class_RDPipelineRasterizationState_property_depth_bias_constant_factor>`

.. rst-class:: classref-property-setget

- |void| **set_depth_bias_constant_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth_bias_constant_factor**\ (\ )

Постійне зміщення, що додається до кожного значення глибини. Застосовується після :ref:`depth_bias_slope_factor<class_RDPipelineRasterizationState_property_depth_bias_slope_factor>`.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_depth_bias_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **depth_bias_enabled** = ``false`` :ref:`🔗<class_RDPipelineRasterizationState_property_depth_bias_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_depth_bias_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_depth_bias_enabled**\ (\ )

Якщо ``true``, кожне згенероване значення глибини буде зміщено на певну величину. Конкретна величина генерується для кожного полігону на основі значень :ref:`depth_bias_slope_factor<class_RDPipelineRasterizationState_property_depth_bias_slope_factor>` та :ref:`depth_bias_constant_factor<class_RDPipelineRasterizationState_property_depth_bias_constant_factor>`.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_depth_bias_slope_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth_bias_slope_factor** = ``0.0`` :ref:`🔗<class_RDPipelineRasterizationState_property_depth_bias_slope_factor>`

.. rst-class:: classref-property-setget

- |void| **set_depth_bias_slope_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth_bias_slope_factor**\ (\ )

Постійний масштаб, що застосовується до нахилу глибини кожного полігону. Застосовується до :ref:`depth_bias_constant_factor<class_RDPipelineRasterizationState_property_depth_bias_constant_factor>`.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_discard_primitives:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **discard_primitives** = ``false`` :ref:`🔗<class_RDPipelineRasterizationState_property_discard_primitives>`

.. rst-class:: classref-property-setget

- |void| **set_discard_primitives**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_discard_primitives**\ (\ )

Якщо ``true``, примітиви знімаються безпосередньо перед етапом рестеризації.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_enable_depth_clamp:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_depth_clamp** = ``false`` :ref:`🔗<class_RDPipelineRasterizationState_property_enable_depth_clamp>`

.. rst-class:: classref-property-setget

- |void| **set_enable_depth_clamp**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_depth_clamp**\ (\ )

Якщо ``true``, значення глибини затискачів за мінімальною і максимальною глибиною пов'язаного виду транспорту.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_front_face:

.. rst-class:: classref-property

:ref:`PolygonFrontFace<enum_RenderingDevice_PolygonFrontFace>` **front_face** = ``0`` :ref:`🔗<class_RDPipelineRasterizationState_property_front_face>`

.. rst-class:: classref-property-setget

- |void| **set_front_face**\ (\ value\: :ref:`PolygonFrontFace<enum_RenderingDevice_PolygonFrontFace>`\ )
- :ref:`PolygonFrontFace<enum_RenderingDevice_PolygonFrontFace>` **get_front_face**\ (\ )

Для визначення якого обличчя трикутника вважається його передньою особою.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_line_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **line_width** = ``1.0`` :ref:`🔗<class_RDPipelineRasterizationState_property_line_width>`

.. rst-class:: classref-property-setget

- |void| **set_line_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_line_width**\ (\ )

Ширина лінії для використання при витяжних лініях (в пікселях). Підтримувані лінії можуть не підтримуватися на всіх апаратах.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_patch_control_points:

.. rst-class:: classref-property

:ref:`int<class_int>` **patch_control_points** = ``1`` :ref:`🔗<class_RDPipelineRasterizationState_property_patch_control_points>`

.. rst-class:: classref-property-setget

- |void| **set_patch_control_points**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_patch_control_points**\ (\ )

Кількість контрольних точок для використання при натягуванні патчів за допомогою ввімкненої установки. Вищі значення призводять до високої якості за вартістю виконання.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineRasterizationState_property_wireframe:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **wireframe** = ``false`` :ref:`🔗<class_RDPipelineRasterizationState_property_wireframe>`

.. rst-class:: classref-property-setget

- |void| **set_wireframe**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_wireframe**\ (\ )

Якщо ``true``, виконує рульовий рендеринг для трикутників замість плоского або фактурного рендерингу.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
