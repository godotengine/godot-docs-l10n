:github_url: hide

.. _class_SpotLight3D:

SpotLight3D
===========

**Успадковує:** :ref:`Light3D<class_Light3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Помітка, такі як світловідбивача або ліхтар.

.. rst-class:: classref-introduction-group

Опис
--------

Прожектор (Spotlight) – це тип вузла :ref:`Light3D<class_Light3D>`, який випромінює світло в певному напрямку, у формі конуса. Світло послаблюється на відстань. Це ослаблення можна налаштувати, змінюючи параметри енергії, радіуса та ослаблення :ref:`Light3D<class_Light3D>`.

Світло випромінюється в напрямку -Z глобальної основи вузла. Для необертаного світла це означає, що світло випромінюється вперед, освітлюючи передню сторону 3D-моделі (див. :ref:`Vector3.FORWARD<class_Vector3_constant_FORWARD>` та :ref:`Vector3.MODEL_FRONT<class_Vector3_constant_MODEL_FRONT>`).

\ **Примітка:** Під час використання методу мобільного рендерингу на кожному сітчастому ресурсі можна відобразити лише 8 прожекторів. Спроба відобразити більше 8 прожекторів на одному сітчастому ресурсі призведе до мерехтіння прожекторів під час руху камери. Під час використання методу рендерингу «Сумісність» на кожному ресурсі сітки за замовчуванням може відображатися лише 8 точкових світильників, але цю кількість можна збільшити, налаштувавши :ref:`ProjectSettings.rendering/limits/opengl/max_lights_per_object<class_ProjectSettings_property_rendering/limits/opengl/max_lights_per_object>`.

\ **Примітка:** Під час використання методів рендерингу «Мобільні» або «Сумісність», точкові світильники коректно впливатимуть лише на сітки, видимість яких AABB перетинається з AABB світильника. Якщо використовується шейдер для деформації сітки таким чином, що вона виходить за межі свого AABB, необхідно збільшити значення :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>` на сітці. В іншому випадку світло може бути невидимим на сітці.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `3D світло та тіні <../tutorials/3d/lights_and_shadows.html#spot-light>`__

- :doc:`Захоплення глобального освітлення <../tutorials/3d/global_illumination/faking_global_illumination>`

- `Демо-версія шутера від третьої особи (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | light_specular                                                                   | ``0.5`` (overrides :ref:`Light3D<class_Light3D_property_light_specular>`)     |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | shadow_bias                                                                      | ``0.03`` (overrides :ref:`Light3D<class_Light3D_property_shadow_bias>`)       |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | shadow_normal_bias                                                               | ``1.0`` (overrides :ref:`Light3D<class_Light3D_property_shadow_normal_bias>`) |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`spot_angle<class_SpotLight3D_property_spot_angle>`                         | ``45.0``                                                                      |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`spot_angle_attenuation<class_SpotLight3D_property_spot_angle_attenuation>` | ``1.0``                                                                       |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`spot_attenuation<class_SpotLight3D_property_spot_attenuation>`             | ``1.0``                                                                       |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`spot_range<class_SpotLight3D_property_spot_range>`                         | ``5.0``                                                                       |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_SpotLight3D_property_spot_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **spot_angle** = ``45.0`` :ref:`🔗<class_SpotLight3D_property_spot_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Кут прожектора в градусах. Це кутовий радіус, тобто кут від осі -Z, центру конуса, до краю конуса. Кутовий радіус за замовчуванням 45 градусів відповідає конусу з кутовим діаметром 90 градусів.

\ **Примітка:** :ref:`spot_angle<class_SpotLight3D_property_spot_angle>` не залежить від :ref:`Node3D.scale<class_Node3D_property_scale>` (масштабу світильника або масштабу його батьківського елемента).

.. rst-class:: classref-item-separator

----

.. _class_SpotLight3D_property_spot_angle_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **spot_angle_attenuation** = ``1.0`` :ref:`🔗<class_SpotLight3D_property_spot_angle_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

*кутна* загартована крива. Дивись також :ref:`spot_attenuation<class_SpotLight3D_property_spot_attenuation>`.

.. rst-class:: classref-item-separator

----

.. _class_SpotLight3D_property_spot_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **spot_attenuation** = ``1.0`` :ref:`🔗<class_SpotLight3D_property_spot_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Контроль функції дистанційного зондування для прожекторів.

Значення ``0.0`` буде підтримувати постійну яскравість через більшу частину діапазону, але плавно нахилити світло на краю діапазону. Використовуйте значення ``2.0`` для фізично точних світильників, як це призводить до належної інверсної квадратної загартування.

\ **Примітка:** Встановлення атетуації до ``2.0`` або вище може призвести до віддалених об'єктів, що отримують мінімальне освітлення, навіть в діапазоні. Наприклад, з діапазоном ``4096``, об'єкт на ``100`` юніти заміщено фактором ``0.0001``. За замовчуванням яскравість ``1``, світло не буде видно на цій відстані.

\ **Примітка:** Використання негативних або значень вище ``10.0`` може призвести до несподіваних результатів.

.. rst-class:: classref-item-separator

----

.. _class_SpotLight3D_property_spot_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **spot_range** = ``5.0`` :ref:`🔗<class_SpotLight3D_property_spot_range>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Максимальна дальність освітлення прожектором. Зверніть увагу, що ефективно освітлена площа може здаватися меншою залежно від використовуваного параметра :ref:`spot_attenuation<class_SpotLight3D_property_spot_attenuation>`. Незалежно від використовуваного параметра :ref:`spot_attenuation<class_SpotLight3D_property_spot_attenuation>`, світло ніколи не досягне нічого поза цим діапазоном.

\ **Примітка:** На :ref:`spot_range<class_SpotLight3D_property_spot_range>` не впливає :ref:`Node3D.scale<class_Node3D_property_scale>` (масштаб світильника або його батьківського елемента).

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
