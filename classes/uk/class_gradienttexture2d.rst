:github_url: hide

.. _class_GradientTexture2D:

GradientTexture2D
=================

**Успадковує:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Двовимірна текстура, яка створює візерунок із кольорами, отриманими з :ref:`Gradient<class_Gradient>`.

.. rst-class:: classref-introduction-group

Опис
--------

2D-текстура, яка отримує кольори з ``Градієнта`` для заповнення даних текстури. Ця текстура здатна трансформувати перехід кольору в різні візерунки, такі як лінійний або радіальний градієнт. Текстура заповнюється інтерполяцією кольорів, починаючи зі зміщень :ref:`fill_to<class_GradientTexture2D_property_fill_to>` до :ref:`fill_to<class_GradientTexture2D_property_fill_to>` за замовчуванням, але градієнтну заливку можна повторити, щоб покрити всю текстуру.

Градієнт вибірково вибирається окремо для кожного пікселя, тому він не обов'язково є точною копією градієнта (див. :ref:`width<class_GradientTexture2D_property_width>` та :ref:`height<class_GradientTexture2D_property_height>`). Див. також :ref:`GradientTexture1D<class_GradientTexture1D>`, :ref:`CurveTexture<class_CurveTexture>` та :ref:`CurveXYZTexture<class_CurveXYZTexture>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Fill<enum_GradientTexture2D_Fill>`     | :ref:`fill<class_GradientTexture2D_property_fill>`           | ``0``                                                                                  |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                | :ref:`fill_from<class_GradientTexture2D_property_fill_from>` | ``Vector2(0, 0)``                                                                      |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                | :ref:`fill_to<class_GradientTexture2D_property_fill_to>`     | ``Vector2(1, 0)``                                                                      |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Gradient<class_Gradient>`              | :ref:`gradient<class_GradientTexture2D_property_gradient>`   |                                                                                        |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                        | :ref:`height<class_GradientTexture2D_property_height>`       | ``64``                                                                                 |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Repeat<enum_GradientTexture2D_Repeat>` | :ref:`repeat<class_GradientTexture2D_property_repeat>`       | ``0``                                                                                  |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                      | resource_local_to_scene                                      | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                      | :ref:`use_hdr<class_GradientTexture2D_property_use_hdr>`     | ``false``                                                                              |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                        | :ref:`width<class_GradientTexture2D_property_width>`         | ``64``                                                                                 |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_GradientTexture2D_Fill:

.. rst-class:: classref-enumeration

enum **Fill**: :ref:`🔗<enum_GradientTexture2D_Fill>`

.. _class_GradientTexture2D_constant_FILL_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`Fill<enum_GradientTexture2D_Fill>` **FILL_LINEAR** = ``0``

Кольори лінійно інтерполюються по прямій лінії.

.. _class_GradientTexture2D_constant_FILL_RADIAL:

.. rst-class:: classref-enumeration-constant

:ref:`Fill<enum_GradientTexture2D_Fill>` **FILL_RADIAL** = ``1``

Кольори лінійно інтерполюються в круговому візерунку.

.. _class_GradientTexture2D_constant_FILL_SQUARE:

.. rst-class:: classref-enumeration-constant

:ref:`Fill<enum_GradientTexture2D_Fill>` **FILL_SQUARE** = ``2``

Кольори лінійно інтерпольовані в квадратний візерунок.

.. _class_GradientTexture2D_constant_FILL_CONIC:

.. rst-class:: classref-enumeration-constant

:ref:`Fill<enum_GradientTexture2D_Fill>` **FILL_CONIC** = ``3``

Кольори лінійно інтерполюються за конусною схемою.

.. rst-class:: classref-item-separator

----

.. _enum_GradientTexture2D_Repeat:

.. rst-class:: classref-enumeration

enum **Repeat**: :ref:`🔗<enum_GradientTexture2D_Repeat>`

.. _class_GradientTexture2D_constant_REPEAT_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Repeat<enum_GradientTexture2D_Repeat>` **REPEAT_NONE** = ``0``

Градієнтна заливка обмежена діапазоном, визначеним зсувами :ref:`fill_from<class_GradientTexture2D_property_fill_from>` до :ref:`fill_to<class_GradientTexture2D_property_fill_to>`.

.. _class_GradientTexture2D_constant_REPEAT:

.. rst-class:: classref-enumeration-constant

:ref:`Repeat<enum_GradientTexture2D_Repeat>` **REPEAT** = ``1``

Текстура заповнюється, починаючи від зміщення :ref:`fill_from<class_GradientTexture2D_property_fill_from>` до :ref:`fill_to<class_GradientTexture2D_property_fill_to>`, повторюючи той самий шаблон в обох напрямках.

.. _class_GradientTexture2D_constant_REPEAT_MIRROR:

.. rst-class:: classref-enumeration-constant

:ref:`Repeat<enum_GradientTexture2D_Repeat>` **REPEAT_MIRROR** = ``2``

Текстура заповнюється, починаючи від зміщення :ref:`fill_from<class_GradientTexture2D_property_fill_from>` до :ref:`fill_to<class_GradientTexture2D_property_fill_to>`, дзеркально відображаючи візерунок в обох напрямках.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_GradientTexture2D_property_fill:

.. rst-class:: classref-property

:ref:`Fill<enum_GradientTexture2D_Fill>` **fill** = ``0`` :ref:`🔗<class_GradientTexture2D_property_fill>`

.. rst-class:: classref-property-setget

- |void| **set_fill**\ (\ value\: :ref:`Fill<enum_GradientTexture2D_Fill>`\ )
- :ref:`Fill<enum_GradientTexture2D_Fill>` **get_fill**\ (\ )

Тип заливки градієнта.

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture2D_property_fill_from:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **fill_from** = ``Vector2(0, 0)`` :ref:`🔗<class_GradientTexture2D_property_fill_from>`

.. rst-class:: classref-property-setget

- |void| **set_fill_from**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_fill_from**\ (\ )

Початкове зміщення, яке використовується для заповнення текстури, указане в UV-координатах.

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture2D_property_fill_to:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **fill_to** = ``Vector2(1, 0)`` :ref:`🔗<class_GradientTexture2D_property_fill_to>`

.. rst-class:: classref-property-setget

- |void| **set_fill_to**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_fill_to**\ (\ )

Остаточне зміщення, яке використовується для заповнення текстури, зазначеної в UV-координатах.

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture2D_property_gradient:

.. rst-class:: classref-property

:ref:`Gradient<class_Gradient>` **gradient** :ref:`🔗<class_GradientTexture2D_property_gradient>`

.. rst-class:: classref-property-setget

- |void| **set_gradient**\ (\ value\: :ref:`Gradient<class_Gradient>`\ )
- :ref:`Gradient<class_Gradient>` **get_gradient**\ (\ )

:ref:`Gradient<class_Gradient>` використовується для заповнення текстури.

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture2D_property_height:

.. rst-class:: classref-property

:ref:`int<class_int>` **height** = ``64`` :ref:`🔗<class_GradientTexture2D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_height**\ (\ )

Кількість вертикальних зразків кольорів, які будуть отримані з :ref:`Gradient<class_Gradient>`, який також представляє висоту текстури.

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture2D_property_repeat:

.. rst-class:: classref-property

:ref:`Repeat<enum_GradientTexture2D_Repeat>` **repeat** = ``0`` :ref:`🔗<class_GradientTexture2D_property_repeat>`

.. rst-class:: classref-property-setget

- |void| **set_repeat**\ (\ value\: :ref:`Repeat<enum_GradientTexture2D_Repeat>`\ )
- :ref:`Repeat<enum_GradientTexture2D_Repeat>` **get_repeat**\ (\ )

Тип повторення градієнта.

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture2D_property_use_hdr:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_hdr** = ``false`` :ref:`🔗<class_GradientTexture2D_property_use_hdr>`

.. rst-class:: classref-property-setget

- |void| **set_use_hdr**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_hdr**\ (\ )

Якщо ``true``, згенерована текстура підтримуватиме високий динамічний діапазон (формат :ref:`Image.FORMAT_RGBAF<class_Image_constant_FORMAT_RGBAF>`). Це дозволяє ефектам світіння працювати, якщо :ref:`Environment.glow_enabled<class_Environment_property_glow_enabled>` має значення ``true``. Якщо ``false``, згенерована текстура використовуватиме низький динамічний діапазон; надто яскраві кольори будуть обмежені (формат :ref:`Image.FORMAT_RGBA8<class_Image_constant_FORMAT_RGBA8>`).

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture2D_property_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **width** = ``64`` :ref:`🔗<class_GradientTexture2D_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_width**\ (\ )

Кількість горизонтальних зразків кольорів, які будуть отримані з :ref:`Gradient<class_Gradient>`, який також представляє ширину текстури.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
