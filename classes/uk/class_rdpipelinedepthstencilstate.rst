:github_url: hide

.. _class_RDPipelineDepthStencilState:

RDPipelineDepthStencilState
===========================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Глибина трубопроводу/стан трафарету (використовується :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Опис
--------

**RDPipelineDepthStencilState** контролює глибину шляху та порівняння трафаретів при відбору цих значень за допомогою :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>`   | :ref:`back_op_compare<class_RDPipelineDepthStencilState_property_back_op_compare>`               | ``7``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                          | :ref:`back_op_compare_mask<class_RDPipelineDepthStencilState_property_back_op_compare_mask>`     | ``0``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` | :ref:`back_op_depth_fail<class_RDPipelineDepthStencilState_property_back_op_depth_fail>`         | ``1``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` | :ref:`back_op_fail<class_RDPipelineDepthStencilState_property_back_op_fail>`                     | ``1``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` | :ref:`back_op_pass<class_RDPipelineDepthStencilState_property_back_op_pass>`                     | ``1``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                          | :ref:`back_op_reference<class_RDPipelineDepthStencilState_property_back_op_reference>`           | ``0``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                          | :ref:`back_op_write_mask<class_RDPipelineDepthStencilState_property_back_op_write_mask>`         | ``0``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>`   | :ref:`depth_compare_operator<class_RDPipelineDepthStencilState_property_depth_compare_operator>` | ``7``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                      | :ref:`depth_range_max<class_RDPipelineDepthStencilState_property_depth_range_max>`               | ``0.0``   |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                      | :ref:`depth_range_min<class_RDPipelineDepthStencilState_property_depth_range_min>`               | ``0.0``   |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                        | :ref:`enable_depth_range<class_RDPipelineDepthStencilState_property_enable_depth_range>`         | ``false`` |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                        | :ref:`enable_depth_test<class_RDPipelineDepthStencilState_property_enable_depth_test>`           | ``false`` |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                        | :ref:`enable_depth_write<class_RDPipelineDepthStencilState_property_enable_depth_write>`         | ``false`` |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                        | :ref:`enable_stencil<class_RDPipelineDepthStencilState_property_enable_stencil>`                 | ``false`` |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>`   | :ref:`front_op_compare<class_RDPipelineDepthStencilState_property_front_op_compare>`             | ``7``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                          | :ref:`front_op_compare_mask<class_RDPipelineDepthStencilState_property_front_op_compare_mask>`   | ``0``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` | :ref:`front_op_depth_fail<class_RDPipelineDepthStencilState_property_front_op_depth_fail>`       | ``1``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` | :ref:`front_op_fail<class_RDPipelineDepthStencilState_property_front_op_fail>`                   | ``1``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` | :ref:`front_op_pass<class_RDPipelineDepthStencilState_property_front_op_pass>`                   | ``1``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                          | :ref:`front_op_reference<class_RDPipelineDepthStencilState_property_front_op_reference>`         | ``0``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                          | :ref:`front_op_write_mask<class_RDPipelineDepthStencilState_property_front_op_write_mask>`       | ``0``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_RDPipelineDepthStencilState_property_back_op_compare:

.. rst-class:: classref-property

:ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **back_op_compare** = ``7`` :ref:`🔗<class_RDPipelineDepthStencilState_property_back_op_compare>`

.. rst-class:: classref-property-setget

- |void| **set_back_op_compare**\ (\ value\: :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>`\ )
- :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **get_back_op_compare**\ (\ )

Метод, що використовується для порівняння попереднього значення зворотного трафарету та :ref:`back_op_reference<class_RDPipelineDepthStencilState_property_back_op_reference>`.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_back_op_compare_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **back_op_compare_mask** = ``0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_back_op_compare_mask>`

.. rst-class:: classref-property-setget

- |void| **set_back_op_compare_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_back_op_compare_mask**\ (\ )

Вибирає, які біти з задньої вартості трафарету будуть порівнюватися.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_back_op_depth_fail:

.. rst-class:: classref-property

:ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **back_op_depth_fail** = ``1`` :ref:`🔗<class_RDPipelineDepthStencilState_property_back_op_depth_fail>`

.. rst-class:: classref-property-setget

- |void| **set_back_op_depth_fail**\ (\ value\: :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>`\ )
- :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **get_back_op_depth_fail**\ (\ )

Операція для виконання на буфері трафарету для спини пікселів, які проходять тест трафарету, але не перевіряють глибину.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_back_op_fail:

.. rst-class:: classref-property

:ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **back_op_fail** = ``1`` :ref:`🔗<class_RDPipelineDepthStencilState_property_back_op_fail>`

.. rst-class:: classref-property-setget

- |void| **set_back_op_fail**\ (\ value\: :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>`\ )
- :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **get_back_op_fail**\ (\ )

Операція, яка виконується з трафаретним буфером для задніх пікселів, які не пройшли перевірку трафарету.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_back_op_pass:

.. rst-class:: classref-property

:ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **back_op_pass** = ``1`` :ref:`🔗<class_RDPipelineDepthStencilState_property_back_op_pass>`

.. rst-class:: classref-property-setget

- |void| **set_back_op_pass**\ (\ value\: :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>`\ )
- :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **get_back_op_pass**\ (\ )

Операція для виконання на буфері трафарету для спини пікселів, які проходять перевірку трафарету.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_back_op_reference:

.. rst-class:: classref-property

:ref:`int<class_int>` **back_op_reference** = ``0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_back_op_reference>`

.. rst-class:: classref-property-setget

- |void| **set_back_op_reference**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_back_op_reference**\ (\ )

Вартість попереднього зворотного трафарету в порівнянні з.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_back_op_write_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **back_op_write_mask** = ``0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_back_op_write_mask>`

.. rst-class:: classref-property-setget

- |void| **set_back_op_write_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_back_op_write_mask**\ (\ )

Вибирає, які біти з задньої вартості трафарету будуть змінені.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_depth_compare_operator:

.. rst-class:: classref-property

:ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **depth_compare_operator** = ``7`` :ref:`🔗<class_RDPipelineDepthStencilState_property_depth_compare_operator>`

.. rst-class:: classref-property-setget

- |void| **set_depth_compare_operator**\ (\ value\: :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>`\ )
- :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **get_depth_compare_operator**\ (\ )

Метод, який використовується для порівняння попередніх і поточних значень глибини.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_depth_range_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth_range_max** = ``0.0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_depth_range_max>`

.. rst-class:: classref-property-setget

- |void| **set_depth_range_max**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth_range_max**\ (\ )

Максимальна глибина, яка повертає ``true`` для :ref:`enable_depth_range<class_RDPipelineDepthStencilState_property_enable_depth_range>`.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_depth_range_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth_range_min** = ``0.0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_depth_range_min>`

.. rst-class:: classref-property-setget

- |void| **set_depth_range_min**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth_range_min**\ (\ )

Мінімальна глибина, яка повертає ``true`` для :ref:`enable_depth_range<class_RDPipelineDepthStencilState_property_enable_depth_range>`.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_enable_depth_range:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_depth_range** = ``false`` :ref:`🔗<class_RDPipelineDepthStencilState_property_enable_depth_range>`

.. rst-class:: classref-property-setget

- |void| **set_enable_depth_range**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_depth_range**\ (\ )

Якщо ``true``, кожне значення глибини буде перевірено на наявність у діапазоні між :ref:`depth_range_min<class_RDPipelineDepthStencilState_property_depth_range_min>` та :ref:`depth_range_max<class_RDPipelineDepthStencilState_property_depth_range_max>`. Якщо воно виходить за межі цих значень, його буде відкинуто.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_enable_depth_test:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_depth_test** = ``false`` :ref:`🔗<class_RDPipelineDepthStencilState_property_enable_depth_test>`

.. rst-class:: classref-property-setget

- |void| **set_enable_depth_test**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_depth_test**\ (\ )

Якщо ``true``, дозволяє тестування глибини, що дозволяє об'єктам автоматично включати інші об'єкти на основі їх глибини. Це також дозволяє об'єктам бути частково за винятком інших об'єктів. Якщо ``false``, об'єкти з'являться в порядку, що вони були намальовані (наприклад, в Godot's 2D рендерера).

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_enable_depth_write:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_depth_write** = ``false`` :ref:`🔗<class_RDPipelineDepthStencilState_property_enable_depth_write>`

.. rst-class:: classref-property-setget

- |void| **set_enable_depth_write**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_depth_write**\ (\ )

Якщо ``true``, запис у буфер глибини щоразу, коли перевірка глибини повертає ``true``. Працює лише тоді, коли enable_depth_test також ``true``.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_enable_stencil:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_stencil** = ``false`` :ref:`🔗<class_RDPipelineDepthStencilState_property_enable_stencil>`

.. rst-class:: classref-property-setget

- |void| **set_enable_stencil**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_stencil**\ (\ )

Якщо ``true``, дозволяє тестування трафарету. Для передпосівних трикутників є окремі трафаретні манжети. Дивитися властивості, які починаються з "front_op" і властивості з "back_op" для кожного.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_front_op_compare:

.. rst-class:: classref-property

:ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **front_op_compare** = ``7`` :ref:`🔗<class_RDPipelineDepthStencilState_property_front_op_compare>`

.. rst-class:: classref-property-setget

- |void| **set_front_op_compare**\ (\ value\: :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>`\ )
- :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **get_front_op_compare**\ (\ )

Метод, що використовується для порівняння попереднього значення переднього трафарету та :ref:`front_op_reference<class_RDPipelineDepthStencilState_property_front_op_reference>`.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_front_op_compare_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **front_op_compare_mask** = ``0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_front_op_compare_mask>`

.. rst-class:: classref-property-setget

- |void| **set_front_op_compare_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_front_op_compare_mask**\ (\ )

Вибирає, які біти з переднього значення трафарету будуть порівнюватися.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_front_op_depth_fail:

.. rst-class:: classref-property

:ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **front_op_depth_fail** = ``1`` :ref:`🔗<class_RDPipelineDepthStencilState_property_front_op_depth_fail>`

.. rst-class:: classref-property-setget

- |void| **set_front_op_depth_fail**\ (\ value\: :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>`\ )
- :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **get_front_op_depth_fail**\ (\ )

Операція для виконання на буфері трафарету для передніх пікселів, які проходять перевірку трафарету, але не проходять випробування глибини.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_front_op_fail:

.. rst-class:: classref-property

:ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **front_op_fail** = ``1`` :ref:`🔗<class_RDPipelineDepthStencilState_property_front_op_fail>`

.. rst-class:: classref-property-setget

- |void| **set_front_op_fail**\ (\ value\: :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>`\ )
- :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **get_front_op_fail**\ (\ )

Операція для виконання на буфері трафарету для фронтальних пікселів, які не виконують випробування трафарету.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_front_op_pass:

.. rst-class:: classref-property

:ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **front_op_pass** = ``1`` :ref:`🔗<class_RDPipelineDepthStencilState_property_front_op_pass>`

.. rst-class:: classref-property-setget

- |void| **set_front_op_pass**\ (\ value\: :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>`\ )
- :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **get_front_op_pass**\ (\ )

Операція для виконання на буфері трафарету для фронтальних пікселів, які проходять перевірку трафарету.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_front_op_reference:

.. rst-class:: classref-property

:ref:`int<class_int>` **front_op_reference** = ``0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_front_op_reference>`

.. rst-class:: classref-property-setget

- |void| **set_front_op_reference**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_front_op_reference**\ (\ )

Вартість попередньої передньої трафаретної вартості буде у порівнянні з.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_front_op_write_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **front_op_write_mask** = ``0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_front_op_write_mask>`

.. rst-class:: classref-property-setget

- |void| **set_front_op_write_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_front_op_write_mask**\ (\ )

Виберіть, які біти з переднього значення трафарету будуть змінені.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
