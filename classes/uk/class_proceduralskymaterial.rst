:github_url: hide

.. _class_ProceduralSkyMaterial:

ProceduralSkyMaterial
=====================

**Успадковує:** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Матеріал, який визначає простий небо для ресурсу :ref:`Sky<class_Sky>`.

.. rst-class:: classref-introduction-group

Опис
--------

**ProceduralSkyMaterial** забезпечує спосіб створення ефективного фону швидко шляхом визначення процесуальних параметрів сонця, неба і землі. Неба і земля визначаються головним кольором, кольором на горизонті, а також знижують криву для міжпокриття між ними. Сонце описуються положенням в небі, кольором і максимальним кутом від сонця, при якому закінчуються кривих. Максимальний кут тому визначає розмір сонця в небі.

\ **ProceduralSkyMaterial** підтримує до 4 сонячних променів, використовуючи колір, і енергію, напрямок і кутову відстань першого чотири :ref:`DirectionalLight3D<class_DirectionalLight3D>` вершини в сцені. Це означає, що сонце визначаються індивідуально за властивостями їх відповідних :ref:`DirectionalLight3D<class_DirectionalLight3D>` і по всьому світу :ref:`sun_angle_max<class_ProceduralSkyMaterial_property_sun_angle_max>` і :ref:`sun_curve<class_ProceduralSkyMaterial_property_sun_curve>`.

\ **ProceduralSkyMaterial** використовує легкий шейдер, щоб намалювати небо і тому підходить для оновлення в режимі реального часу. Це робить його великим варіантом для неба, який простий і зрозумілий дешевий, але нереальний. Якщо вам потрібен більш реалістичний варіант, скористайтеся :ref:`PhysicalSkyMaterial<class_PhysicalSkyMaterial>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`float<class_float>`         | :ref:`energy_multiplier<class_ProceduralSkyMaterial_property_energy_multiplier>`               | ``1.0``                              |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`ground_bottom_color<class_ProceduralSkyMaterial_property_ground_bottom_color>`           | ``Color(0.2, 0.169, 0.133, 1)``      |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`float<class_float>`         | :ref:`ground_curve<class_ProceduralSkyMaterial_property_ground_curve>`                         | ``0.02``                             |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`float<class_float>`         | :ref:`ground_energy_multiplier<class_ProceduralSkyMaterial_property_ground_energy_multiplier>` | ``1.0``                              |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`ground_horizon_color<class_ProceduralSkyMaterial_property_ground_horizon_color>`         | ``Color(0.6463, 0.6558, 0.6708, 1)`` |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`sky_cover<class_ProceduralSkyMaterial_property_sky_cover>`                               |                                      |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`sky_cover_modulate<class_ProceduralSkyMaterial_property_sky_cover_modulate>`             | ``Color(1, 1, 1, 1)``                |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`float<class_float>`         | :ref:`sky_curve<class_ProceduralSkyMaterial_property_sky_curve>`                               | ``0.15``                             |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`float<class_float>`         | :ref:`sky_energy_multiplier<class_ProceduralSkyMaterial_property_sky_energy_multiplier>`       | ``1.0``                              |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`sky_horizon_color<class_ProceduralSkyMaterial_property_sky_horizon_color>`               | ``Color(0.6463, 0.6558, 0.6708, 1)`` |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`sky_top_color<class_ProceduralSkyMaterial_property_sky_top_color>`                       | ``Color(0.385, 0.454, 0.55, 1)``     |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`float<class_float>`         | :ref:`sun_angle_max<class_ProceduralSkyMaterial_property_sun_angle_max>`                       | ``30.0``                             |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`float<class_float>`         | :ref:`sun_curve<class_ProceduralSkyMaterial_property_sun_curve>`                               | ``0.15``                             |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`use_debanding<class_ProceduralSkyMaterial_property_use_debanding>`                       | ``true``                             |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_ProceduralSkyMaterial_property_energy_multiplier:

.. rst-class:: classref-property

:ref:`float<class_float>` **energy_multiplier** = ``1.0`` :ref:`🔗<class_ProceduralSkyMaterial_property_energy_multiplier>`

.. rst-class:: classref-property-setget

- |void| **set_energy_multiplier**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_energy_multiplier**\ (\ )

Загальна яскравість неба. Найвищі значення в результаті яскравого неба.

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_ground_bottom_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **ground_bottom_color** = ``Color(0.2, 0.169, 0.133, 1)`` :ref:`🔗<class_ProceduralSkyMaterial_property_ground_bottom_color>`

.. rst-class:: classref-property-setget

- |void| **set_ground_bottom_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_ground_bottom_color**\ (\ )

Колір землі внизу. Зливається з :ref:`ground_horizon_color<class_ProceduralSkyMaterial_property_ground_horizon_color>`.

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_ground_curve:

.. rst-class:: classref-property

:ref:`float<class_float>` **ground_curve** = ``0.02`` :ref:`🔗<class_ProceduralSkyMaterial_property_ground_curve>`

.. rst-class:: classref-property-setget

- |void| **set_ground_curve**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_ground_curve**\ (\ )

Як швидко :ref:`ground_horizon_color<class_ProceduralSkyMaterial_property_ground_horizon_color>` переходить у :ref:`ground_bottom_color<class_ProceduralSkyMaterial_property_ground_bottom_color>`.

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_ground_energy_multiplier:

.. rst-class:: classref-property

:ref:`float<class_float>` **ground_energy_multiplier** = ``1.0`` :ref:`🔗<class_ProceduralSkyMaterial_property_ground_energy_multiplier>`

.. rst-class:: classref-property-setget

- |void| **set_ground_energy_multiplier**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_ground_energy_multiplier**\ (\ )

Множник для основного кольору. Чим вище значення зробить грунт яскравішим.

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_ground_horizon_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **ground_horizon_color** = ``Color(0.6463, 0.6558, 0.6708, 1)`` :ref:`🔗<class_ProceduralSkyMaterial_property_ground_horizon_color>`

.. rst-class:: classref-property-setget

- |void| **set_ground_horizon_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_ground_horizon_color**\ (\ )

Колір землі на горизонті. Зливається з :ref:`ground_bottom_color<class_ProceduralSkyMaterial_property_ground_bottom_color>`.

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_sky_cover:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **sky_cover** :ref:`🔗<class_ProceduralSkyMaterial_property_sky_cover>`

.. rst-class:: classref-property-setget

- |void| **set_sky_cover**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_sky_cover**\ (\ )

Неба обкладинка текстури для використання. Ця фактура повинна використовувати еквайрингову проекцію (іміляр до :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>`). Кольори текстури будуть *added* до існуючого кольору неба, і буде багатопліфіковано :ref:`sky_energy_multiplier<class_ProceduralSkyMaterial_property_sky_energy_multiplier>` і :ref:`sky_cover_modulate<class_ProceduralSkyMaterial_property_sky_cover_modulate>`. Це в основному підходить для відображення зірок в нічний час, але його також можна використовувати для відображення хмар в день або ніч (з нефізично-аккуратним виглядом).

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_sky_cover_modulate:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **sky_cover_modulate** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_ProceduralSkyMaterial_property_sky_cover_modulate>`

.. rst-class:: classref-property-setget

- |void| **set_sky_cover_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_sky_cover_modulate**\ (\ )

Текст застосувати до текстури :ref:`sky_cover<class_ProceduralSkyMaterial_property_sky_cover>`. Це може бути використаний для зміни кольорів неба або непрозорості незалежно від енергії неба, який корисний для нічних або погодних переходів. Тільки ефективний, якщо фактура визначена в :ref:`sky_cover<class_ProceduralSkyMaterial_property_sky_cover>`.

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_sky_curve:

.. rst-class:: classref-property

:ref:`float<class_float>` **sky_curve** = ``0.15`` :ref:`🔗<class_ProceduralSkyMaterial_property_sky_curve>`

.. rst-class:: classref-property-setget

- |void| **set_sky_curve**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sky_curve**\ (\ )

Як швидко :ref:`sky_horizon_color<class_ProceduralSkyMaterial_property_sky_horizon_color>` переходить у :ref:`sky_top_color<class_ProceduralSkyMaterial_property_sky_top_color>`.

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_sky_energy_multiplier:

.. rst-class:: classref-property

:ref:`float<class_float>` **sky_energy_multiplier** = ``1.0`` :ref:`🔗<class_ProceduralSkyMaterial_property_sky_energy_multiplier>`

.. rst-class:: classref-property-setget

- |void| **set_sky_energy_multiplier**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sky_energy_multiplier**\ (\ )

Мультиплікатор для кольору неба. Чим вище значення зробить небо яскравіше.

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_sky_horizon_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **sky_horizon_color** = ``Color(0.6463, 0.6558, 0.6708, 1)`` :ref:`🔗<class_ProceduralSkyMaterial_property_sky_horizon_color>`

.. rst-class:: classref-property-setget

- |void| **set_sky_horizon_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_sky_horizon_color**\ (\ )

Колір неба на горизонті. Зливається з :ref:`sky_top_color<class_ProceduralSkyMaterial_property_sky_top_color>`.

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_sky_top_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **sky_top_color** = ``Color(0.385, 0.454, 0.55, 1)`` :ref:`🔗<class_ProceduralSkyMaterial_property_sky_top_color>`

.. rst-class:: classref-property-setget

- |void| **set_sky_top_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_sky_top_color**\ (\ )

Колір неба зверху. Зливається з :ref:`sky_horizon_color<class_ProceduralSkyMaterial_property_sky_horizon_color>`.

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_sun_angle_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **sun_angle_max** = ``30.0`` :ref:`🔗<class_ProceduralSkyMaterial_property_sun_angle_max>`

.. rst-class:: classref-property-setget

- |void| **set_sun_angle_max**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sun_angle_max**\ (\ )

Відстань від центра сонця, де він повністю відданий.

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_sun_curve:

.. rst-class:: classref-property

:ref:`float<class_float>` **sun_curve** = ``0.15`` :ref:`🔗<class_ProceduralSkyMaterial_property_sun_curve>`

.. rst-class:: classref-property-setget

- |void| **set_sun_curve**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sun_curve**\ (\ )

Як швидко сонце зникає між краєм сонячного диска та :ref:`sun_angle_max<class_ProceduralSkyMaterial_property_sun_angle_max>`.

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_use_debanding:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_debanding** = ``true`` :ref:`🔗<class_ProceduralSkyMaterial_property_use_debanding>`

.. rst-class:: classref-property-setget

- |void| **set_use_debanding**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_debanding**\ (\ )

Якщо ``true``, що дозволяє розмежувати. Відмовлення додає невелику кількість шуму, що сприяє зменшенню смуг, що з'являється з гладких змін кольору в небі.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
