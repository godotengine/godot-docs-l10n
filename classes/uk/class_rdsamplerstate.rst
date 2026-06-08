:github_url: hide

.. _class_RDSamplerState:

RDSamplerState
==============

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Зразковий стан (використаний :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Опис
--------

Цей об'єкт використовується :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                          | :ref:`anisotropy_max<class_RDSamplerState_property_anisotropy_max>`     | ``1.0``   |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`SamplerBorderColor<enum_RenderingDevice_SamplerBorderColor>` | :ref:`border_color<class_RDSamplerState_property_border_color>`         | ``2``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>`       | :ref:`compare_op<class_RDSamplerState_property_compare_op>`             | ``7``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                            | :ref:`enable_compare<class_RDSamplerState_property_enable_compare>`     | ``false`` |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                          | :ref:`lod_bias<class_RDSamplerState_property_lod_bias>`                 | ``0.0``   |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>`           | :ref:`mag_filter<class_RDSamplerState_property_mag_filter>`             | ``0``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                          | :ref:`max_lod<class_RDSamplerState_property_max_lod>`                   | ``1e+20`` |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>`           | :ref:`min_filter<class_RDSamplerState_property_min_filter>`             | ``0``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                          | :ref:`min_lod<class_RDSamplerState_property_min_lod>`                   | ``0.0``   |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>`           | :ref:`mip_filter<class_RDSamplerState_property_mip_filter>`             | ``0``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>`   | :ref:`repeat_u<class_RDSamplerState_property_repeat_u>`                 | ``2``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>`   | :ref:`repeat_v<class_RDSamplerState_property_repeat_v>`                 | ``2``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>`   | :ref:`repeat_w<class_RDSamplerState_property_repeat_w>`                 | ``2``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                            | :ref:`unnormalized_uvw<class_RDSamplerState_property_unnormalized_uvw>` | ``false`` |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                            | :ref:`use_anisotropy<class_RDSamplerState_property_use_anisotropy>`     | ``false`` |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_RDSamplerState_property_anisotropy_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **anisotropy_max** = ``1.0`` :ref:`🔗<class_RDSamplerState_property_anisotropy_max>`

.. rst-class:: classref-property-setget

- |void| **set_anisotropy_max**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_anisotropy_max**\ (\ )

Максимальна анізотропія, яку можна використовувати під час семплювання. Ефективно лише тоді, коли :ref:`use_anisotropy<class_RDSamplerState_property_use_anisotropy>` має значення ``true``. Вищі значення призводять до чіткішого семплера під похилими кутами, але це знижує продуктивність (через пропускну здатність пам'яті). Це значення може бути обмежене використовуваним графічним обладнанням. Більшість графічного обладнання підтримує значення лише до ``16.0``.

Якщо :ref:`anisotropy_max<class_RDSamplerState_property_anisotropy_max>` має значення ``1.0``, примусово вимикається анізотропія, навіть якщо :ref:`use_anisotropy<class_RDSamplerState_property_use_anisotropy>` має значення ``true``.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_border_color:

.. rst-class:: classref-property

:ref:`SamplerBorderColor<enum_RenderingDevice_SamplerBorderColor>` **border_color** = ``2`` :ref:`🔗<class_RDSamplerState_property_border_color>`

.. rst-class:: classref-property-setget

- |void| **set_border_color**\ (\ value\: :ref:`SamplerBorderColor<enum_RenderingDevice_SamplerBorderColor>`\ )
- :ref:`SamplerBorderColor<enum_RenderingDevice_SamplerBorderColor>` **get_border_color**\ (\ )

Колір межі, який буде повернуто під час семплювання за межами семплера, а режими :ref:`repeat_u<class_RDSamplerState_property_repeat_u>`, :ref:`repeat_v<class_RDSamplerState_property_repeat_v>` або :ref:`repeat_w<class_RDSamplerState_property_repeat_w>` мають вимкнене повторення.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_compare_op:

.. rst-class:: classref-property

:ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **compare_op** = ``7`` :ref:`🔗<class_RDSamplerState_property_compare_op>`

.. rst-class:: classref-property-setget

- |void| **set_compare_op**\ (\ value\: :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>`\ )
- :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **get_compare_op**\ (\ )

Порівняти роботу з використанням. ``true``.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_enable_compare:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_compare** = ``false`` :ref:`🔗<class_RDSamplerState_property_enable_compare>`

.. rst-class:: classref-property-setget

- |void| **set_enable_compare**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_compare**\ (\ )

Якщо значення ``true``, повернуті значення будуть базуватися на операції порівняння, визначеній у :ref:`compare_op<class_RDSamplerState_property_compare_op>`. Це апаратний підхід, і тому він швидший, ніж виконувати його вручну в шейдері. Наприклад, операції порівняння використовуються для рендерингу карти тіней шляхом порівняння значень глибини з семплера тіней.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_lod_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **lod_bias** = ``0.0`` :ref:`🔗<class_RDSamplerState_property_lod_bias>`

.. rst-class:: classref-property-setget

- |void| **set_lod_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lod_bias**\ (\ )

Mipmap LOD для використання. Позитивні цінності зроблять відбій пробки на даній дистанції, при цьому негативні значення змусять заточувати при цьому гострий зразок на даній дистанції (при ризику пошуку зерна). ``-0.5`` і ``0.0``. Тільки ефективний, якщо пробектор має mipmaps доступні.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_mag_filter:

.. rst-class:: classref-property

:ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>` **mag_filter** = ``0`` :ref:`🔗<class_RDSamplerState_property_mag_filter>`

.. rst-class:: classref-property-setget

- |void| **set_mag_filter**\ (\ value\: :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>`\ )
- :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>` **get_mag_filter**\ (\ )

Магнітний фільтр пробовідбірника. Це метод фільтрування, який використовується при відбору тексів, які з'являються більше, ніж на екранних пікселів.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_max_lod:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_lod** = ``1e+20`` :ref:`🔗<class_RDSamplerState_property_max_lod>`

.. rst-class:: classref-property-setget

- |void| **set_max_lod**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_lod**\ (\ )

Максимальна mipmap LOD для відображення (повільне рішення). Тільки ефективний, якщо пробектор має mipmaps доступні.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_min_filter:

.. rst-class:: classref-property

:ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>` **min_filter** = ``0`` :ref:`🔗<class_RDSamplerState_property_min_filter>`

.. rst-class:: classref-property-setget

- |void| **set_min_filter**\ (\ value\: :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>`\ )
- :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>` **get_min_filter**\ (\ )

Фільтр пробовідбірника. Це метод фільтрування, який використовується при відбору тексів, які з'являються меншими, ніж на екранних пікселів.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_min_lod:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_lod** = ``0.0`` :ref:`🔗<class_RDSamplerState_property_min_lod>`

.. rst-class:: classref-property-setget

- |void| **set_min_lod**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_lod**\ (\ )

Мінімальна mipmap LOD для відображення (найвища роздільна здатність). Тільки ефективний, якщо пробектор має mipmaps доступні.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_mip_filter:

.. rst-class:: classref-property

:ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>` **mip_filter** = ``0`` :ref:`🔗<class_RDSamplerState_property_mip_filter>`

.. rst-class:: classref-property-setget

- |void| **set_mip_filter**\ (\ value\: :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>`\ )
- :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>` **get_mip_filter**\ (\ )

Метод фільтрування для використання міток.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_repeat_u:

.. rst-class:: classref-property

:ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>` **repeat_u** = ``2`` :ref:`🔗<class_RDSamplerState_property_repeat_u>`

.. rst-class:: classref-property-setget

- |void| **set_repeat_u**\ (\ value\: :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>`\ )
- :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>` **get_repeat_u**\ (\ )

Режим повторення використання вздовж осі УФ-координат. Це впливає на повернуті значення, якщо вибір за межі УФ.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_repeat_v:

.. rst-class:: classref-property

:ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>` **repeat_v** = ``2`` :ref:`🔗<class_RDSamplerState_property_repeat_v>`

.. rst-class:: classref-property-setget

- |void| **set_repeat_v**\ (\ value\: :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>`\ )
- :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>` **get_repeat_v**\ (\ )

Режим повторення за допомогою вісь УФ-координат. Це впливає на повернуті значення, якщо вибір за межі УФ.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_repeat_w:

.. rst-class:: classref-property

:ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>` **repeat_w** = ``2`` :ref:`🔗<class_RDSamplerState_property_repeat_w>`

.. rst-class:: classref-property-setget

- |void| **set_repeat_w**\ (\ value\: :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>`\ )
- :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>` **get_repeat_w**\ (\ )

Режим повторення за допомогою вісь УФ-координат. Це впливає на повернуті значення, якщо вибір за межі УФ. Тільки ефективні для 3D-проекторів.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_unnormalized_uvw:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **unnormalized_uvw** = ``false`` :ref:`🔗<class_RDSamplerState_property_unnormalized_uvw>`

.. rst-class:: classref-property-setget

- |void| **set_unnormalized_uvw**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_unnormalized_uvw**\ (\ )

Якщо ``true``, то текстура буде запропонована координатами, починаючи від 0 до вирішення текстури. В іншому випадку координати будуть нормалізовані і діапазон від 0 до 1.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_use_anisotropy:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_anisotropy** = ``false`` :ref:`🔗<class_RDSamplerState_property_use_anisotropy>`

.. rst-class:: classref-property-setget

- |void| **set_use_anisotropy**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_anisotropy**\ (\ )

Якщо ``true``, виконати анізотропну вибірку. Див. :ref:`anisotropy_max<class_RDSamplerState_property_anisotropy_max>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
