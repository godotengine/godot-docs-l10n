:github_url: hide

.. _class_ResourceImporterStreamedTexture:

ResourceImporterStreamedTexture
===============================

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Imports an image as a streaming-capable texture for dynamic mipmap loading.

.. rst-class:: classref-introduction-group

Опис
--------

This importer creates :ref:`StreamedTexture2D<class_StreamedTexture2D>` resources that support dynamic mipmap streaming. When texture streaming is enabled in the Project Settings (:ref:`ProjectSettings.rendering/textures/streaming/enabled<class_ProjectSettings_property_rendering/textures/streaming/enabled>`), these textures can have their mipmap levels dynamically loaded and unloaded based on usage, significantly reducing VRAM consumption for projects with many large textures.

The streaming system monitors which textures are visible in each frame and loads appropriate mipmap levels accordingly. Textures that are far from the camera or not currently visible have their higher-resolution mipmap levels unloaded, while textures being displayed up close are loaded at higher resolutions.

For textures that don't need streaming support, use :ref:`ResourceImporterTexture<class_ResourceImporterTexture>` instead.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`compress/channel_pack<class_ResourceImporterStreamedTexture_property_compress/channel_pack>`           | ``0``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`compress/hdr_compression<class_ResourceImporterStreamedTexture_property_compress/hdr_compression>`     | ``1``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`compress/high_quality<class_ResourceImporterStreamedTexture_property_compress/high_quality>`           | ``false`` |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`compress/normal_map<class_ResourceImporterStreamedTexture_property_compress/normal_map>`               | ``0``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`roughness/mode<class_ResourceImporterStreamedTexture_property_roughness/mode>`                         | ``0``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>` | :ref:`roughness/src_normal<class_ResourceImporterStreamedTexture_property_roughness/src_normal>`             | ``""``    |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`streaming/max_lod_override<class_ResourceImporterStreamedTexture_property_streaming/max_lod_override>` | ``0``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`streaming/min_lod_override<class_ResourceImporterStreamedTexture_property_streaming/min_lod_override>` | ``0``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_ResourceImporterStreamedTexture_property_compress/channel_pack:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/channel_pack** = ``0`` :ref:`🔗<class_ResourceImporterStreamedTexture_property_compress/channel_pack>`

Керує тим, як колірні канали повинні використовуватися в імпортованій текстурі.

\ **Зручний для sRGB:** Запобігає використанню кольорових форматів R та RG, оскільки вони не підтримують нелінійне кодування sRGB.

\ **Оптимізований:** Дозволяє використовувати кольоровий формат RG, якщо текстура не використовує синій канал. Це зменшує використання пам'яті, якщо синій канал текстури можна відкинути (усі пікселі повинні мати значення синього ``0``).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterStreamedTexture_property_compress/hdr_compression:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/hdr_compression** = ``1`` :ref:`🔗<class_ResourceImporterStreamedTexture_property_compress/hdr_compression>`

Контроль якості стиснення VRAM слід виконувати для зображень HDR.

\ **Вимкнено:** Ніколи не використовуйте стиснення VRAM для текстур HDR, незалежно від того, чи є вони непрозорими або прозорими. Замість текстури перетворюються на RGBE9995 (9-bits на канал + 5-bit exponent = 32 біти на піксель) для зменшення використання пам'яті у порівнянні з полуплавним або одноточним форматом плавлення.

\ **Opaque Тільки:** Тільки використовується стиснення VRAM для текстур Opaque HDR. Це пов'язано з обмеженням форматів HDR, оскільки не існує формату VRAM, який підтримує прозорість одночасно.

\ **Always:** Пристрої стиснення VRAM навіть для текстур HDR з альфа-каналом. Для того, щоб виконати це, альфа-канал відкидається на імпорт.

\ **Примітка:** Тільки ефективний на Radiance HDR (\ ``.hdr``) і OpenEXR (\ ``.exr``) зображень.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterStreamedTexture_property_compress/high_quality:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress/high_quality** = ``false`` :ref:`🔗<class_ResourceImporterStreamedTexture_property_compress/high_quality>`

Якщо ``true``, використовує стиснення BPTC на настільних платформах та стиснення ASTC на мобільних платформах. При використанні BPTC, BC7 використовується для текстур SDR і BC6H для текстур HDR.

Якщо ``false``, скористайтеся швидким, але низькою якістю стиснення S3TC на настільних платформах і ETC2 на мобільних/web платформах. При використанні S3TC, DXT1 (BC1) використовується для непрозорих текстур і DXT5 (BC3) використовується для прозорої або нормальної карти (RGTC) текстур.

BPTC і ASTC підтримка VRAM стиснення для текстур HDR, але S3TC і ETC2 не (див. :ref:`compress/hdr_compression<class_ResourceImporterStreamedTexture_property_compress/hdr_compression>`).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterStreamedTexture_property_compress/normal_map:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/normal_map** = ``0`` :ref:`🔗<class_ResourceImporterStreamedTexture_property_compress/normal_map>`

When using a texture as normal map, only the red and green channels are required. Given regular texture compression algorithms produce artifacts that don't look that nice in normal maps, the RGTC compression format is the best fit for this data. Forcing this option to Enable will make Godot import the image as RGTC compressed. By default, it's set to Detect. This means that if the texture is ever detected to be used as a normal map, it will be changed to Enable and reimported automatically.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterStreamedTexture_property_roughness/mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **roughness/mode** = ``0`` :ref:`🔗<class_ResourceImporterStreamedTexture_property_roughness/mode>`

The color channel to consider as a roughness map in this texture. Only effective if Roughness > Src Normal is not empty.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterStreamedTexture_property_roughness/src_normal:

.. rst-class:: classref-property

:ref:`String<class_String>` **roughness/src_normal** = ``""`` :ref:`🔗<class_ResourceImporterStreamedTexture_property_roughness/src_normal>`

The path to the texture to consider as a normal map for roughness filtering on import. Specifying this can help decrease specular aliasing slightly in 3D.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterStreamedTexture_property_streaming/max_lod_override:

.. rst-class:: classref-property

:ref:`int<class_int>` **streaming/max_lod_override** = ``0`` :ref:`🔗<class_ResourceImporterStreamedTexture_property_streaming/max_lod_override>`

The maximum LOD (mipmap level) that can be loaded for this texture. Lower values allow higher resolution. A value of ``0`` uses the global setting from :ref:`ProjectSettings.rendering/textures/streaming/max_lod<class_ProjectSettings_property_rendering/textures/streaming/max_lod>`. Values ``1`` to ``14`` correspond to LOD levels ``0`` to ``13``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterStreamedTexture_property_streaming/min_lod_override:

.. rst-class:: classref-property

:ref:`int<class_int>` **streaming/min_lod_override** = ``0`` :ref:`🔗<class_ResourceImporterStreamedTexture_property_streaming/min_lod_override>`

The minimum LOD (mipmap level) the texture starts at when loaded. Higher values result in lower initial resolution. A value of ``0`` uses the global setting from :ref:`ProjectSettings.rendering/textures/streaming/min_lod<class_ProjectSettings_property_rendering/textures/streaming/min_lod>`. Values ``1`` to ``14`` correspond to LOD levels ``0`` to ``13``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
