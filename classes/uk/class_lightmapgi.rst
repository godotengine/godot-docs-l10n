:github_url: hide

.. _class_LightmapGI:

LightmapGI
==========

**Успадковує:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Склади та магазини запечені мапи для швидкого глобального освітлення.

.. rst-class:: classref-introduction-group

Опис
--------

Вузол **LightmapGI** використовується для обчислення та зберігання запечених карт світла. Карти освітлення використовуються для забезпечення високоякісного непрямого освітлення з дуже невеликим витоком світла. **LightmapGI** також може забезпечити приблизні відбиття за допомогою сферичних гармонік, якщо ввімкнено :ref:`directional<class_LightmapGI_property_directional>`. Динамічні об’єкти можуть отримувати непряме освітлення завдяки *світловим пробникам*, які можна автоматично розміщувати, установивши для :ref:`generate_probes_subdiv<class_LightmapGI_property_generate_probes_subdiv>` значення, відмінне від :ref:`GENERATE_PROBES_DISABLED<class_LightmapGI_constant_GENERATE_PROBES_DISABLED>`. Додаткові зонди карт освітлення також можна додати, створивши вузли :ref:`LightmapProbe<class_LightmapProbe>`. Недоліком є те, що світлові карти є повністю статичними і не можуть бути запікані в експортованому проекті. Запікання вузла **LightmapGI** також повільніше порівняно з :ref:`VoxelGI<class_VoxelGI>`. 

\ **Процедурна генерація:** функція запікання карти світла доступна лише в редакторі. Це означає, що **LightmapGI** не підходить для процедурно згенерованих або створених користувачами рівнів. Для процедурно згенерованих або створених користувачами рівнів замість цього використовуйте :ref:`VoxelGI<class_VoxelGI>` або SDFGI (див. :ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`). 

\ **Продуктивність: ** **LightmapGI** забезпечує найкращу продуктивність під час виконання для глобального освітлення. Він підходить для апаратного забезпечення низького рівня, включаючи інтегровану графіку та мобільні пристрої. 

\ **Примітка:** Через те, як працюють карти освітлення, більшість властивостей мають видимий ефект лише після повторного запікання карт освітлення. 

\ **Примітка.** Запікання карти освітлення на :ref:`CSGShape3D<class_CSGShape3D>` і :ref:`PrimitiveMesh<class_PrimitiveMesh>` не підтримується, оскільки вони не можуть зберігати дані UV2, необхідні для запікання. 

\ **Примітка.** Якщо не встановлено користувальницькі інструменти відображення світла, **LightmapGI** можна створити лише з пристроїв, які підтримують засоби візуалізації Forward+ або Mobile. 

\ **Примітка: ** Вузол **LightmapGI** записує легкі дані лише для дочірніх вузлів свого батька. Вузли вище в ієрархії сцени не будуть запікатися.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання глобального освітлення Lightmap <../tutorials/3d/global_illumination/using_lightmap_gi>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                 | :ref:`bias<class_LightmapGI_property_bias>`                                           | ``0.0005``            |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                 | :ref:`bounce_indirect_energy<class_LightmapGI_property_bounce_indirect_energy>`       | ``1.0``               |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                     | :ref:`bounces<class_LightmapGI_property_bounces>`                                     | ``3``                 |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`CameraAttributes<class_CameraAttributes>`           | :ref:`camera_attributes<class_LightmapGI_property_camera_attributes>`                 |                       |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                     | :ref:`denoiser_range<class_LightmapGI_property_denoiser_range>`                       | ``10``                |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                 | :ref:`denoiser_strength<class_LightmapGI_property_denoiser_strength>`                 | ``0.1``               |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`directional<class_LightmapGI_property_directional>`                             | ``false``             |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                                 | :ref:`environment_custom_color<class_LightmapGI_property_environment_custom_color>`   | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                 | :ref:`environment_custom_energy<class_LightmapGI_property_environment_custom_energy>` | ``1.0``               |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Sky<class_Sky>`                                     | :ref:`environment_custom_sky<class_LightmapGI_property_environment_custom_sky>`       |                       |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>`   | :ref:`environment_mode<class_LightmapGI_property_environment_mode>`                   | ``1``                 |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>`     | :ref:`generate_probes_subdiv<class_LightmapGI_property_generate_probes_subdiv>`       | ``2``                 |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`interior<class_LightmapGI_property_interior>`                                   | ``false``             |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`LightmapGIData<class_LightmapGIData>`               | :ref:`light_data<class_LightmapGI_property_light_data>`                               |                       |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                     | :ref:`max_texture_size<class_LightmapGI_property_max_texture_size>`                   | ``16384``             |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`BakeQuality<enum_LightmapGI_BakeQuality>`           | :ref:`quality<class_LightmapGI_property_quality>`                                     | ``1``                 |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>` | :ref:`shadowmask_mode<class_LightmapGI_property_shadowmask_mode>`                     | ``0``                 |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                 | :ref:`specular_intensity<class_LightmapGI_property_specular_intensity>`               | ``0.0``               |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`supersampling<class_LightmapGI_property_supersampling>`                         | ``false``             |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                 | :ref:`supersampling_factor<class_LightmapGI_property_supersampling_factor>`           | ``2.0``               |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                 | :ref:`texel_scale<class_LightmapGI_property_texel_scale>`                             | ``1.0``               |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`use_denoiser<class_LightmapGI_property_use_denoiser>`                           | ``true``              |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`use_texture_for_bounces<class_LightmapGI_property_use_texture_for_bounces>`     | ``true``              |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_LightmapGI_BakeQuality:

.. rst-class:: classref-enumeration

enum **BakeQuality**: :ref:`🔗<enum_LightmapGI_BakeQuality>`

.. _class_LightmapGI_constant_BAKE_QUALITY_LOW:

.. rst-class:: classref-enumeration-constant

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **BAKE_QUALITY_LOW** = ``0``

Низька якість випікання (найшвидший час випікання). Якість цього попереднього налаштування можна налаштувати, змінивши :ref:`ProjectSettings.rendering/lightmapping/bake_quality/low_quality_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/low_quality_ray_count>` і :ref:`ProjectSettings.rendering/lightmapping/bake_quality/low_quality_probe_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/low_quality_probe_ray_count>`.

.. _class_LightmapGI_constant_BAKE_QUALITY_MEDIUM:

.. rst-class:: classref-enumeration-constant

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **BAKE_QUALITY_MEDIUM** = ``1``

Середня якість випікання (швидкий час випікання). Якість цього попереднього налаштування можна регулювати, змінюючи :ref:`ProjectSettings.rendering/lightmapping/bake_quality/medium_quality_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/medium_quality_ray_count>` і :ref:`ProjectSettings.rendering/lightmapping/bake_quality/medium_quality_probe_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/medium_quality_probe_ray_count>`.

.. _class_LightmapGI_constant_BAKE_QUALITY_HIGH:

.. rst-class:: classref-enumeration-constant

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **BAKE_QUALITY_HIGH** = ``2``

Висока якість випікання (повільний час випікання). Якість цього попереднього налаштування можна регулювати, змінюючи :ref:`ProjectSettings.rendering/lightmapping/bake_quality/high_quality_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/high_quality_ray_count>` і :ref:`ProjectSettings.rendering/lightmapping/bake_quality/high_quality_probe_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/high_quality_probe_ray_count>`.

.. _class_LightmapGI_constant_BAKE_QUALITY_ULTRA:

.. rst-class:: classref-enumeration-constant

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **BAKE_QUALITY_ULTRA** = ``3``

Найвища якість випікання (найповільніший час випікання). Якість цього попереднього налаштування можна налаштувати, змінивши :ref:`ProjectSettings.rendering/lightmapping/bake_quality/ultra_quality_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/ultra_quality_ray_count>` і :ref:`ProjectSettings.rendering/lightmapping/bake_quality/ultra_quality_probe_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/ultra_quality_probe_ray_count>`.

.. rst-class:: classref-item-separator

----

.. _enum_LightmapGI_GenerateProbes:

.. rst-class:: classref-enumeration

enum **GenerateProbes**: :ref:`🔗<enum_LightmapGI_GenerateProbes>`

.. _class_LightmapGI_constant_GENERATE_PROBES_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_DISABLED** = ``0``

Don't generate additional lightmap probes for lighting dynamic objects. Probes will still be generated on each corner of the LightmapGI's bounds (8 probes total), so that interpolation works correctly when using additional :ref:`LightmapProbe<class_LightmapProbe>` nodes.

.. _class_LightmapGI_constant_GENERATE_PROBES_SUBDIV_4:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_SUBDIV_4** = ``1``

Найнижчий рівень підрозділу (разу випікання, найменші розміри файлів).

.. _class_LightmapGI_constant_GENERATE_PROBES_SUBDIV_8:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_SUBDIV_8** = ``2``

Низький рівень підрозділу (смачні випікання, невеликі розміри файлів).

.. _class_LightmapGI_constant_GENERATE_PROBES_SUBDIV_16:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_SUBDIV_16** = ``3``

Високий рівень підрозділу (повільний час випікання, великі розміри файлів).

.. _class_LightmapGI_constant_GENERATE_PROBES_SUBDIV_32:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_SUBDIV_32** = ``4``

Найвищий рівень підрозділу (найвільніший час випічки, найбільший розмір файлу).

.. rst-class:: classref-item-separator

----

.. _enum_LightmapGI_BakeError:

.. rst-class:: classref-enumeration

enum **BakeError**: :ref:`🔗<enum_LightmapGI_BakeError>`

.. _class_LightmapGI_constant_BAKE_ERROR_OK:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_OK** = ``0``

Lightmap було успішним.

.. _class_LightmapGI_constant_BAKE_ERROR_NO_SCENE_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_NO_SCENE_ROOT** = ``1``

Lightmap випікання не вдалося, тому що кореневий вузол для редагування сцени не може бути підключений.

.. _class_LightmapGI_constant_BAKE_ERROR_FOREIGN_DATA:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_FOREIGN_DATA** = ``2``

Lightmap випікання не вдалося як ресурс даних Lightmap вбудований в іноземний ресурс.

.. _class_LightmapGI_constant_BAKE_ERROR_NO_LIGHTMAPPER:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_NO_LIGHTMAPPER** = ``3``

Lightmap випічка не вдалося, як там немає світлакарта, доступна в цій колекції Godot.

.. _class_LightmapGI_constant_BAKE_ERROR_NO_SAVE_PATH:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_NO_SAVE_PATH** = ``4``

Lightmap випічка не була як :ref:`LightmapGIData<class_LightmapGIData>` зберегти шлях не налаштовується в ресурсі.

.. _class_LightmapGI_constant_BAKE_ERROR_NO_MESHES:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_NO_MESHES** = ``5``

Lightmap випікання не вдалося, оскільки немає сітки, які :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` є :ref:`GeometryInstance3D.GI_MODE_STATIC<class_GeometryInstance3D_constant_GI_MODE_STATIC>` і з чинним УФ2 картуванням в поточній сцені. Вам може знадобитися вибрати 3D-сцени в Доку Імпорта і змінити свій глобальний режим освітлення відповідно.

.. _class_LightmapGI_constant_BAKE_ERROR_MESHES_INVALID:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_MESHES_INVALID** = ``6``

Lightmap не вдалося проаналізувати деякі сітки, позначені статичною для випічки.

.. _class_LightmapGI_constant_BAKE_ERROR_CANT_CREATE_IMAGE:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_CANT_CREATE_IMAGE** = ``7``

Lightmap не вдалося зберегти або імпортувати Godot після його збереження.

.. _class_LightmapGI_constant_BAKE_ERROR_USER_ABORTED:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_USER_ABORTED** = ``8``

Користувач припинив роботу випікання Lightmap (типово натиснувши кнопку **Cancel** у діалоговому вікні прогресу).

.. _class_LightmapGI_constant_BAKE_ERROR_TEXTURE_SIZE_TOO_SMALL:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_TEXTURE_SIZE_TOO_SMALL** = ``9``

Lightmap випікання не вдалося, оскільки максимальний розмір текстури занадто малий, щоб підійти деякі сітки, позначені для випічки.

.. _class_LightmapGI_constant_BAKE_ERROR_LIGHTMAP_TOO_SMALL:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_LIGHTMAP_TOO_SMALL** = ``10``

Lightmap випічка не була настільки невеликою.

.. _class_LightmapGI_constant_BAKE_ERROR_ATLAS_TOO_SMALL:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_ATLAS_TOO_SMALL** = ``11``

Lightmap випічка не в змозі вписати в атлас.

.. _class_LightmapGI_constant_BAKE_ERROR_TEXTURE_EXCEEDS_DEVICE_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_TEXTURE_EXCEEDS_DEVICE_LIMIT** = ``12``

Lightmap baking failed as the baking process requires a texture larger than the maximum texture size supported by the rendering device. This can happen when :ref:`supersampling<class_LightmapGI_property_supersampling>` is enabled with a high :ref:`supersampling_factor<class_LightmapGI_property_supersampling_factor>`.

.. rst-class:: classref-item-separator

----

.. _enum_LightmapGI_EnvironmentMode:

.. rst-class:: classref-enumeration

enum **EnvironmentMode**: :ref:`🔗<enum_LightmapGI_EnvironmentMode>`

.. _class_LightmapGI_constant_ENVIRONMENT_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **ENVIRONMENT_MODE_DISABLED** = ``0``

Освітлення навколишнього середовища при випіканні світлин.

.. _class_LightmapGI_constant_ENVIRONMENT_MODE_SCENE:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **ENVIRONMENT_MODE_SCENE** = ``1``

Використовуйте освітлення середовища сцени під час запікання карт світла.

\ **Примітка:** Якщо запікання карт освітлення в сцені без вузла :ref:`WorldEnvironment<class_WorldEnvironment>`, це діятиме як :ref:`ENVIRONMENT_MODE_DISABLED<class_LightmapGI_constant_ENVIRONMENT_MODE_DISABLED>`. Попередній перегляд неба та сонця в редакторі *не* враховується **LightmapGI** під час запікання карт освітлення.

.. _class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_SKY:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **ENVIRONMENT_MODE_CUSTOM_SKY** = ``2``

Використовуйте :ref:`environment_custom_sky<class_LightmapGI_property_environment_custom_sky>` як джерело освітлення оточення під час запікання карт освітлення.

.. _class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **ENVIRONMENT_MODE_CUSTOM_COLOR** = ``3``

Використовуйте :ref:`environment_custom_color<class_LightmapGI_property_environment_custom_color>`, помножене на :ref:`environment_custom_energy<class_LightmapGI_property_environment_custom_energy>`, як постійне джерело освітлення оточення під час запікання карт освітлення.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_LightmapGI_property_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **bias** = ``0.0005`` :ref:`🔗<class_LightmapGI_property_bias>`

.. rst-class:: classref-property-setget

- |void| **set_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bias**\ (\ )

Біас використовувати при обчисленні тіней. Зростання :ref:`bias<class_LightmapGI_property_bias>` може зафіксувати тіньові прищі на отриманому запеченому світлі карти, але може ввести петер-панування (порід не з'єднуючись до своїх роликів). В режимі реального часу :ref:`Light3D<class_Light3D>` тіні не впливають на це :ref:`Bias<class_LightmapGI_property_Bias>`.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_bounce_indirect_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **bounce_indirect_energy** = ``1.0`` :ref:`🔗<class_LightmapGI_property_bounce_indirect_energy>`

.. rst-class:: classref-property-setget

- |void| **set_bounce_indirect_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bounce_indirect_energy**\ (\ )

Мультиплікатор енергії для кожної бунції. Найвищі значення зроблять непряме освітлення яскравіше. Значення ``1.0`` являє собою фізичну точну поведінку, але більш високі значення можуть бути використані для того, щоб зробити непряме освітлення пропагувати більш помітно при використанні низької кількості відмов. Це може бути використана для прискорення часу випікання шляхом зменшення кількості :ref:`bounces<class_LightmapGI_property_bounces>`, потім збільшення :ref:`bounce_indirect_energy<class_LightmapGI_property_bounce_indirect_energy>`.

\ **Примітка:** :ref:`bounce_indirect_energy<class_LightmapGI_property_bounce_indirect_energy>` тільки має ефект, якщо :ref:`bounces<class_LightmapGI_property_bounces>` встановлено значення більше або дорівнює ``1``.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_bounces:

.. rst-class:: classref-property

:ref:`int<class_int>` **bounces** = ``3`` :ref:`🔗<class_LightmapGI_property_bounces>`

.. rst-class:: classref-property-setget

- |void| **set_bounces**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bounces**\ (\ )

Кількість світлових відмов, які враховуються під час випічки. Більшість значень, що призводить до більш яскравого, більш реалістичного освітлення, за вартістю більш тривалого часу випікання. Якщо встановити до ``0``, випікають тільки освітлення навколишнього середовища, пряме освітлення і подача освітлення.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_camera_attributes:

.. rst-class:: classref-property

:ref:`CameraAttributes<class_CameraAttributes>` **camera_attributes** :ref:`🔗<class_LightmapGI_property_camera_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_camera_attributes**\ (\ value\: :ref:`CameraAttributes<class_CameraAttributes>`\ )
- :ref:`CameraAttributes<class_CameraAttributes>` **get_camera_attributes**\ (\ )

:ref:`CameraAttributes<class_CameraAttributes>` ресурс, який визначає рівні впливу на випікання. Автоекспозиції та неефективні властивості ігноруються. Параметри експозиції повинні бути використані для зменшення динамічного діапазону, що присутні при випіканні. Якщо експозиція занадто висока, то **LightmapGI** буде перехоплювати артефакти або може мати позаштачні артефакти.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_denoiser_range:

.. rst-class:: classref-property

:ref:`int<class_int>` **denoiser_range** = ``10`` :ref:`🔗<class_LightmapGI_property_denoiser_range>`

.. rst-class:: classref-property-setget

- |void| **set_denoiser_range**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_denoiser_range**\ (\ )

Відстань в пікселях з яких зразків дезодоратора. Низькі значення зберігають більше деталей, але можуть дати розмиті результати, якщо якість Lightmap недостатньо. Тільки ефективний, якщо :ref:`use_denoiser<class_LightmapGI_property_use_denoiser>` є ``true`` і :ref:`ProjectSettings.rendering/lightmapping/denoising/denoiser<class_ProjectSettings_property_rendering/lightmapping/denoising/denoiser>` встановлюється на JNLM.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_denoiser_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **denoiser_strength** = ``0.1`` :ref:`🔗<class_LightmapGI_property_denoiser_strength>`

.. rst-class:: classref-property-setget

- |void| **set_denoiser_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_denoiser_strength**\ (\ )

Міцність дезойнізуючого кроку наноситься на створену мапу. Тільки ефективний, якщо :ref:`use_denoiser<class_LightmapGI_property_use_denoiser>` є ``true`` і :ref:`ProjectSettings.rendering/lightmapping/denoiser<class_ProjectSettings_property_rendering/lightmapping/denoiser>` встановлюється на JNLM.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_directional:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **directional** = ``false`` :ref:`🔗<class_LightmapGI_property_directional>`

.. rst-class:: classref-property-setget

- |void| **set_directional**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_directional**\ (\ )

Якщо ``true``, випікає світлини, щоб містити в якості сферичної гармоніки. Це призводить до більш реалістичного зовнішнього вигляду освітлення, особливо з нормальними друкованими матеріалами і для вогнів, які мають їх прямий світло, випечений (:ref:`Light3D.light_bake_mode<class_Light3D_property_light_bake_mode>`, встановлених до :ref:`Light3D.BAKE_STATIC<class_Light3D_constant_BAKE_STATIC>` і з :ref:`Light3D.editor_only<class_Light3D_property_editor_only>` встановлюється на ``false``. Напрямна інформація також використовується для забезпечення грубих відбиття для статичних та динамічних об'єктів. Це має невелику вартість виконання робочого часу, оскільки шейдер повинен виконувати більше роботи для інтерпретації інформації про напрямок від Lightmap. Прямі мапи також візьмуть довше, щоб випікати і призвести до більшого розміру файлів.

\ **Примітка:** Назва майна не має відносин з :ref:`DirectionalLight3D<class_DirectionalLight3D>`. :ref:`directional<class_LightmapGI_property_directional>` працює з усіма видами світла.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_environment_custom_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **environment_custom_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_LightmapGI_property_environment_custom_color>`

.. rst-class:: classref-property-setget

- |void| **set_environment_custom_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_environment_custom_color**\ (\ )

Колір, який використовуватиметься для освітлення середовища. Ефективний лише тоді, коли :ref:`environment_mode<class_LightmapGI_property_environment_mode>` має значення :ref:`ENVIRONMENT_MODE_CUSTOM_COLOR<class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_COLOR>`.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_environment_custom_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **environment_custom_energy** = ``1.0`` :ref:`🔗<class_LightmapGI_property_environment_custom_energy>`

.. rst-class:: classref-property-setget

- |void| **set_environment_custom_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_environment_custom_energy**\ (\ )

Множник кольору, який використовується для освітлення середовища. Ефективний лише тоді, коли :ref:`environment_mode<class_LightmapGI_property_environment_mode>` має значення :ref:`ENVIRONMENT_MODE_CUSTOM_COLOR<class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_COLOR>`.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_environment_custom_sky:

.. rst-class:: classref-property

:ref:`Sky<class_Sky>` **environment_custom_sky** :ref:`🔗<class_LightmapGI_property_environment_custom_sky>`

.. rst-class:: classref-property-setget

- |void| **set_environment_custom_sky**\ (\ value\: :ref:`Sky<class_Sky>`\ )
- :ref:`Sky<class_Sky>` **get_environment_custom_sky**\ (\ )

Небо, яке буде використовуватися як джерело освітлення навколишнього середовища. Ефективно лише тоді, коли :ref:`environment_mode<class_LightmapGI_property_environment_mode>` має значення :ref:`ENVIRONMENT_MODE_CUSTOM_SKY<class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_SKY>`.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_environment_mode:

.. rst-class:: classref-property

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **environment_mode** = ``1`` :ref:`🔗<class_LightmapGI_property_environment_mode>`

.. rst-class:: classref-property-setget

- |void| **set_environment_mode**\ (\ value\: :ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>`\ )
- :ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **get_environment_mode**\ (\ )

Режим навколишнього середовища для використання при випіканні світлин.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_generate_probes_subdiv:

.. rst-class:: classref-property

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **generate_probes_subdiv** = ``2`` :ref:`🔗<class_LightmapGI_property_generate_probes_subdiv>`

.. rst-class:: classref-property-setget

- |void| **set_generate_probes**\ (\ value\: :ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>`\ )
- :ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **get_generate_probes**\ (\ )

Рівень підрозділу, який автоматично генерує :ref:`LightmapProbe<class_LightmapProbe>` для динамічного освітлення об'єкта. Більшість значень, що призводить до більш точного непрямого освітлення на динамічних об'єктах, за вартістю більш тривалого часу випікання і більшого розміру файлів.

\ **Примітка:** Автоматично генерується :ref:`LightmapProbe<class_LightmapProbe>` не видно, як вузли в докці Сцени, і не можна змінити цей спосіб після їх створення.

\ **Примітка:** Незалежно від :ref:`generate_probes_subdiv<class_LightmapGI_property_generate_probes_subdiv>`, прямий освітлення на динамічних об'єктах завжди застосовується за допомогою :ref:`Light3D<class_Light3D>` вузлів в режимі реального часу.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_interior:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interior** = ``false`` :ref:`🔗<class_LightmapGI_property_interior>`

.. rst-class:: classref-property-setget

- |void| **set_interior**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_interior**\ (\ )

Якщо ``true``, ігноруйте освітлення середовища при випіканні світлин.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_light_data:

.. rst-class:: classref-property

:ref:`LightmapGIData<class_LightmapGIData>` **light_data** :ref:`🔗<class_LightmapGI_property_light_data>`

.. rst-class:: classref-property-setget

- |void| **set_light_data**\ (\ value\: :ref:`LightmapGIData<class_LightmapGIData>`\ )
- :ref:`LightmapGIData<class_LightmapGIData>` **get_light_data**\ (\ )

:ref:`LightmapGIData<class_LightmapGIData>` пов'язаний з цим **LightmapGI** вершиною. Цей ресурс автоматично створений після випічки, і не призначений для створення вручну.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_max_texture_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_texture_size** = ``16384`` :ref:`🔗<class_LightmapGI_property_max_texture_size>`

.. rst-class:: classref-property-setget

- |void| **set_max_texture_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_texture_size**\ (\ )

The maximum texture size for the generated texture atlas. Higher values will result in fewer slices being generated, but may not work on all hardware as a result of hardware limitations on texture sizes. Leave :ref:`max_texture_size<class_LightmapGI_property_max_texture_size>` at its default value of ``16384`` if unsure.

\ **Note:** If :ref:`supersampling<class_LightmapGI_property_supersampling>` is enabled, the texture atlas used while baking may be up to :ref:`supersampling_factor<class_LightmapGI_property_supersampling_factor>` times larger than :ref:`max_texture_size<class_LightmapGI_property_max_texture_size>`, since it's downsampled before saving.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_quality:

.. rst-class:: classref-property

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **quality** = ``1`` :ref:`🔗<class_LightmapGI_property_quality>`

.. rst-class:: classref-property-setget

- |void| **set_bake_quality**\ (\ value\: :ref:`BakeQuality<enum_LightmapGI_BakeQuality>`\ )
- :ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **get_bake_quality**\ (\ )

Попереднє налаштування якості для використання під час запікання карт освітлення. Це впливає на час запікання, але розмір вихідного файлу залишається переважно однаковим на всіх рівнях якості. 

Щоб ще більше пришвидшити час запікання, зменште :ref:`bounces<class_LightmapGI_property_bounces>`, вимкніть :ref:`use_denoiser<class_LightmapGI_property_use_denoiser>` і/або зменште :ref:`texel_scale<class_LightmapGI_property_texel_scale>`. 

Щоб ще більше підвищити якість, увімкніть :ref:`supersampling<class_LightmapGI_property_supersampling>` і/або збільште :ref:`texel_scale<class_LightmapGI_property_texel_scale>`.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_shadowmask_mode:

.. rst-class:: classref-property

:ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>` **shadowmask_mode** = ``0`` :ref:`🔗<class_LightmapGI_property_shadowmask_mode>`

.. rst-class:: classref-property-setget

- |void| **set_shadowmask_mode**\ (\ value\: :ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>`\ )
- :ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>` **get_shadowmask_mode**\ (\ )

**Експериментальний:** Ця властивість може бути змінена або усунута у наступних версіях.

Політика маскування тіней, яка використовується для спрямованих тіней на статичних об’єктах, запечених за допомогою цього екземпляра **LightmapGI**. 

Shadowmasking дозволяє вузлам :ref:`DirectionalLight3D<class_DirectionalLight3D>` відкидати тіні навіть за межами діапазону, визначеного їх властивістю :ref:`DirectionalLight3D.directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>`. Це робиться шляхом запікання текстури, яка містить карту тіней для спрямованого світла, а потім використання цієї текстури відповідно до поточного режиму маски тіней. 

\ **Примітка.** Текстура тіньової маски створюється, лише якщо :ref:`shadowmask_mode<class_LightmapGI_property_shadowmask_mode>` не є :ref:`LightmapGIData.SHADOWMASK_MODE_NONE<class_LightmapGIData_constant_SHADOWMASK_MODE_NONE>`. Щоб побачити різницю, потрібно знову запекти карти світла після переходу з :ref:`LightmapGIData.SHADOWMASK_MODE_NONE<class_LightmapGIData_constant_SHADOWMASK_MODE_NONE>` на будь-який інший режим.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_specular_intensity:

.. rst-class:: classref-property

:ref:`float<class_float>` **specular_intensity** = ``0.0`` :ref:`🔗<class_LightmapGI_property_specular_intensity>`

.. rst-class:: classref-property-setget

- |void| **set_specular_intensity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_specular_intensity**\ (\ )

The strength of the lightmap's approximated specular lobe. This helps make lightmapped scenes look closer to real-time lighting, which is particularly noticeable for lights that use the :ref:`Light3D.BAKE_STATIC<class_Light3D_constant_BAKE_STATIC>` bake mode. Only effective if :ref:`directional<class_LightmapGI_property_directional>` is ``true``.

\ **Note:** The lightmap is only able to represent one light direction per texel, which means that the specular direction may appear to be incorrect in certain cases. This can manifest as specular lobes appearing to warp around as the camera moves.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_supersampling:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **supersampling** = ``false`` :ref:`🔗<class_LightmapGI_property_supersampling>`

.. rst-class:: classref-property-setget

- |void| **set_supersampling_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_supersampling_enabled**\ (\ )

Якщо ``true``, карти освітлення запікаються зі шкалою текселів, помноженою на :ref:`supersampling_factor<class_LightmapGI_property_supersampling_factor>`, і перед збереженням карти освітлення зменшується дискретизація (тому ефективна щільність текселів є ідентичною щільності супервибірки вимкнуто). 

Надвибірка забезпечує покращену якість карти освітлення з меншим шумом, більш гладкими тінями та кращим затіненням дрібних елементів об’єктів. Однак це може призвести до значного збільшення часу запікання та використання пам’яті під час запікання світлових карт. Підкладка автоматично регулюється, щоб уникнути збільшення витоку світла.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_supersampling_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **supersampling_factor** = ``2.0`` :ref:`🔗<class_LightmapGI_property_supersampling_factor>`

.. rst-class:: classref-property-setget

- |void| **set_supersampling_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_supersampling_factor**\ (\ )

Коефіцієнт, на який множиться щільність текселів для супердискретизації. Для отримання найкращих результатів використовуйте ціле число. Хоча дробові значення дозволені, вони можуть призвести до збільшення витоку світла та розмитості карти освітлення. 

Вищі значення можуть призвести до кращої якості, але також збільшити час випікання та використання пам’яті під час випікання. 

Для отримання додаткової інформації див. :ref:`supersampling<class_LightmapGI_property_supersampling>`.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_texel_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **texel_scale** = ``1.0`` :ref:`🔗<class_LightmapGI_property_texel_scale>`

.. rst-class:: classref-property-setget

- |void| **set_texel_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texel_scale**\ (\ )

Масштабує щільність текселів на карті освітлення всіх сіток для поточного запікання. Це множник, який базується на наявному розмірі текселів карти освітлення, визначеному в кожній імпортованій 3D-сцені, а також множнику щільності для кожної сітки (який призначений для використання, коли та сама сітка використовується в різних масштабах). Менші значення призведуть до швидшого часу випікання. 

Наприклад, подвоєння :ref:`texel_scale<class_LightmapGI_property_texel_scale>` подвоює роздільну здатність текстури світлової карти для всіх об’єктів *на кожній осі*, тому кількість текселів *збільшується вчетверо*.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_use_denoiser:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_denoiser** = ``true`` :ref:`🔗<class_LightmapGI_property_use_denoiser>`

.. rst-class:: classref-property-setget

- |void| **set_use_denoiser**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_denoiser**\ (\ )

Якщо ``true``, скористайтеся алгоритмом денозування GPU на створеній мапу. Це усуває більшість шумів у створеному світлікарти за вартістю довший час випікання. Розміри файлів, як правило, не впливають на використання деноайзера, хоча стиснення без втрат може зробити краще роботу при компресації денозованого зображення.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_use_texture_for_bounces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_texture_for_bounces** = ``true`` :ref:`🔗<class_LightmapGI_property_use_texture_for_bounces>`

.. rst-class:: classref-property-setget

- |void| **set_use_texture_for_bounces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_texture_for_bounces**\ (\ )

Якщо ``true``, буде створено текстуру з інформацією про освітлення, щоб пришвидшити створення непрямого освітлення ціною певної точності. У геометрії можуть спостерігатися додаткові артефакти витоку світла під час використання карт освітлення з низькою роздільною здатністю або UVs, які значно розтягують карту освітлення по поверхнях. Залиште :ref:`use_texture_for_bounces<class_LightmapGI_property_use_texture_for_bounces>` значенням за замовчуванням ``true``, якщо не впевнені.

\ **Примітка:** :ref:`use_texture_for_bounces<class_LightmapGI_property_use_texture_for_bounces>` має ефект, лише якщо :ref:`bounces<class_LightmapGI_property_bounces>` встановлено на значення, більше або дорівнює ``1``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
