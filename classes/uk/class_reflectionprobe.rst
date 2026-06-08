:github_url: hide

.. meta::
	:keywords: environment, envmap

.. _class_ReflectionProbe:

ReflectionProbe
===============

**Успадковує:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Захоплює його оточення для створення швидкого, точного відображення з даної точки.

.. rst-class:: classref-introduction-group

Опис
--------

Захоплює своє оточення як кубічну карту та зберігає її версії зі зростаючим рівнем розмиття для імітації різних шорсткостей матеріалу.

\ **ReflectionProbe** використовується для створення високоякісних відбиттів з низькими витратами на продуктивність (коли :ref:`update_mode<class_ReflectionProbe_property_update_mode>` має значення :ref:`UPDATE_ONCE<class_ReflectionProbe_constant_UPDATE_ONCE>`). **ReflectionProbe** можна плавно змішувати разом та з рештою сцени. **ReflectionProbe** також можна поєднувати з :ref:`VoxelGI<class_VoxelGI>`, SDFGI (:ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`) та відображеннями екранного простору (:ref:`Environment.ssr_enabled<class_Environment_property_ssr_enabled>`) для отримання точніших відбиттів у певних областях. **ReflectionProbe** відображають усі об'єкти в межах їх :ref:`cull_mask<class_ReflectionProbe_property_cull_mask>`, тому їх оновлення може бути досить дорогим. Найкраще оновити їх один раз важливими статичними об'єктами, а потім залишити їх як є.

\ **Примітка:** На відміну від :ref:`VoxelGI<class_VoxelGI>` та SDFGI, **ReflectionProbe** отримують своє середовище лише з вузла :ref:`WorldEnvironment<class_WorldEnvironment>`. Якщо ви вкажете ресурс :ref:`Environment<class_Environment>` у вузлі :ref:`Camera3D<class_Camera3D>`, **ReflectionProbe** ігноруватиме його. Це може призвести до неправильного освітлення в **ReflectionProbe**.

\ **Примітка:** Під час використання методу мобільного рендерингу, на кожному ресурсі сітки може відображатися лише ``8`` зондів відбиття, тоді як метод рендерингу сумісності підтримує лише до ``2`` зондів відбиття на кожній сітці. Спроба відобразити більше ніж ``8`` зондів відбиття на одному ресурсі сітки за допомогою мобільного рендерера призведе до мерехтіння зондів відбиття під час руху камери, тоді як рендерер сумісності не відтворюватиме жодних додаткових зондів, якщо використовується більше ніж ``2`` зондів відбиття.

\ **Примітка:** Під час використання методу мобільного рендерингу, зонди відбиття коректно впливатимуть лише на ті сітки, видимість яких AABB перетинається з AABB зонда відбиття. Якщо використовується шейдер для деформації сітки таким чином, що вона виходить за межі свого AABB, необхідно збільшити значення :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>` на сітці. В іншому випадку зонд відбиття може бути невидимим на сітці.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Відображення зондів <../tutorials/3d/global_illumination/reflection_probes>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`Color<class_Color>`                            | :ref:`ambient_color<class_ReflectionProbe_property_ambient_color>`               | ``Color(0, 0, 0, 1)``   |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                            | :ref:`ambient_color_energy<class_ReflectionProbe_property_ambient_color_energy>` | ``1.0``                 |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` | :ref:`ambient_mode<class_ReflectionProbe_property_ambient_mode>`                 | ``1``                   |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                            | :ref:`blend_distance<class_ReflectionProbe_property_blend_distance>`             | ``1.0``                 |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                              | :ref:`box_projection<class_ReflectionProbe_property_box_projection>`             | ``false``               |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                | :ref:`cull_mask<class_ReflectionProbe_property_cull_mask>`                       | ``1048575``             |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                              | :ref:`enable_shadows<class_ReflectionProbe_property_enable_shadows>`             | ``false``               |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                            | :ref:`intensity<class_ReflectionProbe_property_intensity>`                       | ``1.0``                 |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                              | :ref:`interior<class_ReflectionProbe_property_interior>`                         | ``false``               |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                            | :ref:`max_distance<class_ReflectionProbe_property_max_distance>`                 | ``0.0``                 |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                            | :ref:`mesh_lod_threshold<class_ReflectionProbe_property_mesh_lod_threshold>`     | ``1.0``                 |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`Vector3<class_Vector3>`                        | :ref:`origin_offset<class_ReflectionProbe_property_origin_offset>`               | ``Vector3(0, 0, 0)``    |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                | :ref:`reflection_mask<class_ReflectionProbe_property_reflection_mask>`           | ``1048575``             |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`Vector3<class_Vector3>`                        | :ref:`size<class_ReflectionProbe_property_size>`                                 | ``Vector3(20, 20, 20)`` |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>`   | :ref:`update_mode<class_ReflectionProbe_property_update_mode>`                   | ``0``                   |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_ReflectionProbe_UpdateMode:

.. rst-class:: classref-enumeration

enum **UpdateMode**: :ref:`🔗<enum_ReflectionProbe_UpdateMode>`

.. _class_ReflectionProbe_constant_UPDATE_ONCE:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>` **UPDATE_ONCE** = ``0``

Оновити зонд один раз на наступну раму (повідомлення для більшості об'єктів). Відповідна карта випромінювань буде сформована над наступним шістьма кадрами. Це займає більше часу для оновлення, ніж :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>`, але має меншу вартість виконання і може призвести до більш якісного відображення. ВідображенняПробе оновлюється при перетворенні змін, але не при зміні геометрії. Ви можете змусити оновлення **ReflectionProbe** шляхом переміщення **ReflectionProbe** злегка в будь-якому напрямку.

.. _class_ReflectionProbe_constant_UPDATE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>` **UPDATE_ALWAYS** = ``1``

Оновити зонд кожного кадру. Це забезпечує кращі результати для швидкознімних динамічних об'єктів (наприклад, автомобілів). Тим не менш, має суттєву вартість виконання. У зв'язку з вартістю, рекомендується використовувати тільки один ВідображенняПробе з :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>` на більшості за лаштунками. Для всіх інших випадків використання :ref:`UPDATE_ONCE<class_ReflectionProbe_constant_UPDATE_ONCE>`.

.. rst-class:: classref-item-separator

----

.. _enum_ReflectionProbe_AmbientMode:

.. rst-class:: classref-enumeration

enum **AmbientMode**: :ref:`🔗<enum_ReflectionProbe_AmbientMode>`

.. _class_ReflectionProbe_constant_AMBIENT_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` **AMBIENT_DISABLED** = ``0``

Не застосуйте будь-яке освітлення навколишнього середовища всередині коробки **ReflectionProbe**, визначеної його :ref:`size<class_ReflectionProbe_property_size>`.

.. _class_ReflectionProbe_constant_AMBIENT_ENVIRONMENT:

.. rst-class:: classref-enumeration-constant

:ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` **AMBIENT_ENVIRONMENT** = ``1``

Застосувати автоматичне освітлення навколишнього середовища всередині коробки **ReflectionProbe**, визначеної його :ref:`size<class_ReflectionProbe_property_size>`.

.. _class_ReflectionProbe_constant_AMBIENT_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` **AMBIENT_COLOR** = ``2``

Застосуйте власне навколишнє освітлення всередині блоку **ReflectionProbe**, визначеного його розміром :ref:`size<class_ReflectionProbe_property_size>`. Див. :ref:`ambient_color<class_ReflectionProbe_property_ambient_color>` та :ref:`ambient_color_energy<class_ReflectionProbe_property_ambient_color_energy>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_ReflectionProbe_property_ambient_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **ambient_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_ReflectionProbe_property_ambient_color>`

.. rst-class:: classref-property-setget

- |void| **set_ambient_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_ambient_color**\ (\ )

Власний колір оточення, який використовуватиметься в межах блоку **ReflectionProbe**, визначеного його розміром :ref:`size<class_ReflectionProbe_property_size>`. Діє лише тоді, коли :ref:`ambient_mode<class_ReflectionProbe_property_ambient_mode>` має значення :ref:`AMBIENT_COLOR<class_ReflectionProbe_constant_AMBIENT_COLOR>`.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_ambient_color_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **ambient_color_energy** = ``1.0`` :ref:`🔗<class_ReflectionProbe_property_ambient_color_energy>`

.. rst-class:: classref-property-setget

- |void| **set_ambient_color_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_ambient_color_energy**\ (\ )

Енергія власного кольору навколишнього середовища, яка використовується в межах поля **ReflectionProbe**, визначеного його розміром :ref:`size<class_ReflectionProbe_property_size>`. Діє лише тоді, коли :ref:`ambient_mode<class_ReflectionProbe_property_ambient_mode>` має значення :ref:`AMBIENT_COLOR<class_ReflectionProbe_constant_AMBIENT_COLOR>`.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_ambient_mode:

.. rst-class:: classref-property

:ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` **ambient_mode** = ``1`` :ref:`🔗<class_ReflectionProbe_property_ambient_mode>`

.. rst-class:: classref-property-setget

- |void| **set_ambient_mode**\ (\ value\: :ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>`\ )
- :ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` **get_ambient_mode**\ (\ )

Колір оточення, який буде використовуватися в межах поля **ReflectionProbe**, визначеного параметром :ref:`size<class_ReflectionProbe_property_size>`. Колір оточення буде плавно поєднуватися з іншими **ReflectionProbe** та рештою сцени (поза межами поля **ReflectionProbe**, визначеного параметром :ref:`size<class_ReflectionProbe_property_size>`).

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_blend_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **blend_distance** = ``1.0`` :ref:`🔗<class_ReflectionProbe_property_blend_distance>`

.. rst-class:: classref-property-setget

- |void| **set_blend_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_blend_distance**\ (\ )

Визначає відстань у метрах, на якій зонд зливається зі сценою.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_box_projection:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **box_projection** = ``false`` :ref:`🔗<class_ReflectionProbe_property_box_projection>`

.. rst-class:: classref-property-setget

- |void| **set_enable_box_projection**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_box_projection_enabled**\ (\ )

Якщо ``true``, увімкнено проекцію коробки. Це робить рефлексію більш правильним у прямокутно-подібних кімнатах, відключаючи центр відображення залежно від розташування камери.

\ **Примітка:** Щоб краще підходять прямокутні номери, які не вирівнюються до сітки, можна обертати вузол **ReflectionProbe**.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **cull_mask** = ``1048575`` :ref:`🔗<class_ReflectionProbe_property_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

Налаштовує куляну маску, яка визначає, які об'єкти намальовані цим зондом. Кожен :ref:`VisualInstance3D<class_VisualInstance3D>` з шаром, що входить в цю маску для кулі, буде подано зондом. Найкраще включати великі об'єкти, які, ймовірно, приймають багато місця в рефлексії, щоб заощадити на рендерингу вартість.

Це також може бути використаний для запобігання об'єкта від відображення на себе (наприклад, **ReflectionProbe**, розташованого на транспортному забезпеченні).

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_enable_shadows:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_shadows** = ``false`` :ref:`🔗<class_ReflectionProbe_property_enable_shadows>`

.. rst-class:: classref-property-setget

- |void| **set_enable_shadows**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_shadows_enabled**\ (\ )

Якщо ``true``, обчислює тіні в рефлекторі. Це робить рефлектор для рендерингу; ви можете відключити це, якщо за допомогою :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>` :ref:`update_mode<class_ReflectionProbe_property_update_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_intensity:

.. rst-class:: classref-property

:ref:`float<class_float>` **intensity** = ``1.0`` :ref:`🔗<class_ReflectionProbe_property_intensity>`

.. rst-class:: classref-property-setget

- |void| **set_intensity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_intensity**\ (\ )

Визначає інтенсивність відображення. Інтенсивність модулює міцність відбиття.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_interior:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interior** = ``false`` :ref:`🔗<class_ReflectionProbe_property_interior>`

.. rst-class:: classref-property-setget

- |void| **set_as_interior**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_set_as_interior**\ (\ )

Якщо ``true``, відбиття ігнорувати неба.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_distance** = ``0.0`` :ref:`🔗<class_ReflectionProbe_property_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_distance**\ (\ )

Максимальна відстань від **ReflectionProbe** об'єкт може бути до того, як він культивований. Визначте це для підвищення продуктивності, особливо при використанні :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>` :ref:`update_mode<class_ReflectionProbe_property_update_mode>`.

\ **Примітка:** Максимальна відстань відбиття завжди не менше, ніж дорівнює мірам пробе. Це означає, що зменшення :ref:`max_distance<class_ReflectionProbe_property_max_distance>` не завжди ліктьові об'єкти з відбиття, особливо якщо коробка відбиття, визначена його :ref:`size<class_ReflectionProbe_property_size>` вже велика.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_mesh_lod_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **mesh_lod_threshold** = ``1.0`` :ref:`🔗<class_ReflectionProbe_property_mesh_lod_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_mesh_lod_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mesh_lod_threshold**\ (\ )

Автоматичне зміщення LOD, яке використовується для сіток, що відображаються в **ReflectionProbe** (аналог :ref:`Viewport.mesh_lod_threshold<class_Viewport_property_mesh_lod_threshold>`). Вищі значення використовуватимуть менш деталізовані версії сіток, для яких згенеровано варіації LOD. Якщо встановлено значення ``0.0``, автоматичне LOD вимкнено. Збільште :ref:`mesh_lod_threshold<class_ReflectionProbe_property_mesh_lod_threshold>`, щоб покращити продуктивність за рахунок деталізації геометрії, особливо при використанні :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>` :ref:`update_mode<class_ReflectionProbe_property_update_mode>`.

\ **Примітка:** :ref:`mesh_lod_threshold<class_ReflectionProbe_property_mesh_lod_threshold>` не впливає на діапазони видимості :ref:`GeometryInstance3D<class_GeometryInstance3D>` (також відомі як "ручний" LOD або ієрархічний LOD).

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_origin_offset:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **origin_offset** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_ReflectionProbe_property_origin_offset>`

.. rst-class:: classref-property-setget

- |void| **set_origin_offset**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_origin_offset**\ (\ )

Встановлює зміщення початку координат, яке буде використовуватися, коли цей **ReflectionProbe** знаходиться в режимі :ref:`box_projection<class_ReflectionProbe_property_box_projection>`. Його можна встановити на ненульове значення, щоб забезпечити відповідність відображення кімнаті прямокутної форми, одночасно зменшуючи кількість об'єктів, які "заважають" відображенню.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_reflection_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **reflection_mask** = ``1048575`` :ref:`🔗<class_ReflectionProbe_property_reflection_mask>`

.. rst-class:: classref-property-setget

- |void| **set_reflection_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_reflection_mask**\ (\ )

Налаштовує маску відбиття, яка визначає, які об’єкти мають відбиття, що застосовуються з цього пробу. Кожен :ref:`VisualInstance3D<class_VisualInstance3D>` з шаром, що входить до цієї маски відображення, буде мати відбиття, що застосовуються з цього пробе. Дивись також :ref:`cull_mask<class_ReflectionProbe_property_cull_mask>`, який можна використовувати для виключення об'єктів з з'являються в рефлексії, поки що робить їх постраждалими від **ReflectionProbe**.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(20, 20, 20)`` :ref:`🔗<class_ReflectionProbe_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

Розмір відбиття зонда. Чим більший розмір, тим більший простір, покритий зоною, який знизить видиму роздільну здатність. Це найкраще тримати розмір тільки так само, як вам потрібно.

\ **Note:** Щоб краще підходять ділянки, які не вирівнюються до сітки, можна обертати вузол **ReflectionProbe**.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_update_mode:

.. rst-class:: classref-property

:ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>` **update_mode** = ``0`` :ref:`🔗<class_ReflectionProbe_property_update_mode>`

.. rst-class:: classref-property-setget

- |void| **set_update_mode**\ (\ value\: :ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>`\ )
- :ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>` **get_update_mode**\ (\ )

Як часто оновлюється **ReflectionProbe**. Може бути :ref:`UPDATE_ONCE<class_ReflectionProbe_constant_UPDATE_ONCE>` або :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
