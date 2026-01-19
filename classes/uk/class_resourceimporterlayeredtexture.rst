:github_url: hide

.. _class_ResourceImporterLayeredTexture:

ResourceImporterLayeredTexture
==============================

**Успадковує:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Імпорт 3-вимірної текстури (:ref:`Texture3D<class_Texture3D>`), :ref:`Texture2DArray<class_Texture2DArray>`, :ref:`Cubemap<class_Cubemap>` або :ref:`CubemapArray<class_CubemapArray>`.

.. rst-class:: classref-introduction-group

Опис
--------

Цей імпорт 3-вимірної текстури, яка може бути використана в користувацьких шейдерах, як :ref:`FogMaterial<class_FogMaterial>` карта щільності або як :ref:`GPUParticlesAttractorVectorField3D<class_GPUParticlesAttractorVectorField3D>`. Дивитися також :ref:`ResourceImporterTexture<class_ResourceImporterTexture>` і :ref:`ResourceImporterTextureAtlas<class_ResourceImporterTextureAtlas>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Імпорт зображень <../tutorials/assets_pipeline/importing_images>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`compress/channel_pack<class_ResourceImporterLayeredTexture_property_compress/channel_pack>`         | ``0``     |
   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`compress/hdr_compression<class_ResourceImporterLayeredTexture_property_compress/hdr_compression>`   | ``1``     |
   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`compress/high_quality<class_ResourceImporterLayeredTexture_property_compress/high_quality>`         | ``false`` |
   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`compress/lossy_quality<class_ResourceImporterLayeredTexture_property_compress/lossy_quality>`       | ``0.7``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`compress/mode<class_ResourceImporterLayeredTexture_property_compress/mode>`                         | ``1``     |
   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`compress/rdo_quality_loss<class_ResourceImporterLayeredTexture_property_compress/rdo_quality_loss>` | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`compress/uastc_level<class_ResourceImporterLayeredTexture_property_compress/uastc_level>`           | ``0``     |
   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`mipmaps/generate<class_ResourceImporterLayeredTexture_property_mipmaps/generate>`                   | ``true``  |
   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`mipmaps/limit<class_ResourceImporterLayeredTexture_property_mipmaps/limit>`                         | ``-1``    |
   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`slices/arrangement<class_ResourceImporterLayeredTexture_property_slices/arrangement>`               | ``1``     |
   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_ResourceImporterLayeredTexture_property_compress/channel_pack:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/channel_pack** = ``0`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/channel_pack>`

Керує тим, як колірні канали повинні використовуватися в імпортованій текстурі.

\ **sRGB Friendly:** запобігає використанню кольорових форматів R та RG, оскільки вони не підтримують нелінійне кодування sRGB.

\ **Optimized:** дозволяє використовувати кольоровий формат RG, якщо текстура не використовує синій канал. Це зменшує використання пам'яті, якщо синій канал текстури можна відкинути (усі пікселі повинні мати значення синього ``0``).

\ **Normal Map (RG Channels):** Це змушує всі шари текстури імпортуватися з кольоровим форматом RG, зберігаючи лише червоний та зелений канали. Стиснення RGTC (Red-Green Texture Compression) здатне набагато краще зберегти деталізацію, використовуючи той самий обсяг пам'яті, що й стандартна текстура, стиснута за допомогою RGBA VRAM. Це впливає лише на текстури з режимами стиснення VRAM Compressed або Basis Universal. Цей режим доступний лише для шаруватих текстур (:ref:`Cubemap<class_Cubemap>`, :ref:`CubemapArray<class_CubemapArray>`, :ref:`Texture2DArray<class_Texture2DArray>` та :ref:`Texture3D<class_Texture3D>`).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/hdr_compression:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/hdr_compression** = ``1`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/hdr_compression>`

Контроль якості стиснення VRAM слід виконувати для зображень HDR.

\ **Вимкнено:** Ніколи не використовуйте стиснення VRAM для текстур HDR, незалежно від того, чи є вони непрозорими або прозорими. Замість текстури перетворюються на RGBE9995 (9-bits на канал + 5-bit exponent = 32 біти на піксель) для зменшення використання пам'яті у порівнянні з полуплавним або одноточним форматом плавлення.

\ **Opaque Тільки:** Тільки використовується стиснення VRAM для текстур Opaque HDR. Це пов'язано з обмеженням форматів HDR, оскільки не існує формату VRAM, який підтримує прозорість одночасно.

\ **Always:** Пристрої стиснення VRAM навіть для текстур HDR з альфа-каналом. Для того, щоб виконати це, альфа-канал відкидається на імпорт.

\ **Примітка:** Тільки ефективний на Radiance HDR (``.hdr``) і OpenEXR (``.exr``) зображень.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/high_quality:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress/high_quality** = ``false`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/high_quality>`

Якщо ``true``, використовує стиснення BPTC на настільних платформах та стиснення ASTC на мобільних платформах. При використанні BPTC, BC7 використовується для текстур SDR і BC6H для текстур HDR.

Якщо ``false``, скористайтеся швидким, але низькою якістю стиснення S3TC на настільних платформах і ETC2 на мобільних/web платформах. При використанні S3TC, DXT1 (BC1) використовується для непрозорих текстур і DXT5 (BC3) використовується для прозорої або нормальної карти (RGTC) текстур.

BPTC і ASTC підтримка VRAM стиснення для текстур HDR, але S3TC і ETC2 не (див. :ref:`compress/hdr_compression<class_ResourceImporterLayeredTexture_property_compress/hdr_compression>`).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/lossy_quality:

.. rst-class:: classref-property

:ref:`float<class_float>` **compress/lossy_quality** = ``0.7`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/lossy_quality>`

Якість використання при використанні **Lossy** режим стиснення. Найвищі значення в результаті кращої якості, за вартістю більших розмірів файлів. Якість втрати не впливає на використання пам'яті імпортної текстури, тільки його розмір файлу на диску.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/mode** = ``1`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/mode>`

Режим стиснення для використання. Кожний режим стиснення забезпечує різну торгівлю:

\ **Lossless**: Оригінальна якість, висока пам'ять, високий розмір на диску, швидкий імпорт.

\ **Lossy:** Знижена якість, висока пам'ять, низький розмір на диску, швидкий імпорт.

\ ** VRAM ** Знижена якість, низьке використання пам'яті, низький розмір на диску, повільне імпорт. Тільки для текстур в 3D-сценах, не для 2D-елементів.

\ ** VRAM Uncompressed:** Оригінальна якість, висока якість використання пам'яті, найвищий розмір на диску, швидкий імпорт.

\ **Basis Universal:** Знижена якість, низьке використання пам'яті, найнижчий розмір на диску, повільний імпорт. Тільки для текстур в 3D-сценах, не для 2D-елементів.

Див. `Compress mode <../tutorials/assets_pipeline/importing_images.html#compress-mode>`__ в інструкції для отримання більш детальної інформації.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/rdo_quality_loss:

.. rst-class:: classref-property

:ref:`float<class_float>` **compress/rdo_quality_loss** = ``0.0`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/rdo_quality_loss>`

Якщо значення більше або дорівнює ``0.01``, вмикається оптимізація швидкості спотворення (RDO) для зменшення розміру файлу. Вищі значення призводять до меншого розміру файлу, але нижчої якості.

\ **Примітка:** Увімкнення RDO значно збільшує час кодування, особливо коли зображення велике.

Див. також :ref:`ProjectSettings.rendering/textures/basis_universal/rdo_dict_size<class_ProjectSettings_property_rendering/textures/basis_universal/rdo_dict_size>` та :ref:`ProjectSettings.rendering/textures/basis_universal/zstd_supercompression_level<class_ProjectSettings_property_rendering/textures/basis_universal/zstd_supercompression_level>`, якщо ви хочете ще більше зменшити розмір файлу.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/uastc_level:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/uastc_level** = ``0`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/uastc_level>`

Рівень кодування UASTC. Вищі значення забезпечують кращу якість, але збільшують час кодування.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_mipmaps/generate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mipmaps/generate** = ``true`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_mipmaps/generate>`

Якщо ``true``, менші версії текстури створюються на імпорті. Наприклад, текстура 64×64 буде генерувати 6 mipmaps (32×32, 16×16, 8×8, 4×4, 2×2, 1×1). Це має кілька переваг:

- Текстури не стануть зернові на відстані (в 3D), або якщо масштабовані через збільшення :ref:`Camera2D<class_Camera2D>` або :ref:`CanvasItem<class_CanvasItem>` (в 2D).

- Продуктивність поліпшить, якщо текстура відображається на відстані, так як вибірка менших версій оригінальної текстури швидше і вимагає меншої пропускної здатності пам'яті.

Знизу mipmaps є те, що вони підвищують використання пам'яті приблизно на 33% (для :ref:`Texture2DArray<class_Texture2DArray>`, :ref:`Cubemap<class_Cubemap>` і :ref:`CubemapArray<class_CubemapArray>` або 14% (для :ref:`Texture3D<class_Texture3D>`).

Рекомендовано увімкнути mipmaps у 3D. Однак, в 2D, це повинно бути включений лише якщо ваш проект ввімкнено перевагами, що мають ввімкнені mipmaps. Якщо камера ніколи не збільшиться, не буде корисною для забезпечення міток, але використання пам'яті збільшиться.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_mipmaps/limit:

.. rst-class:: classref-property

:ref:`int<class_int>` **mipmaps/limit** = ``-1`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_mipmaps/limit>`

Непристойна. В даний час немає ефекту при зміні.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_slices/arrangement:

.. rst-class:: classref-property

:ref:`int<class_int>` **slices/arrangement** = ``1`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_slices/arrangement>`

Контролює те, як текстура кубічної карти внутрішньо викладена. При використанні кубічних карт високої роздільної здатності **2 × 3** і **3 × 2** менш схильні до перевищення діапазонів розмірів апаратних фактур порівняно з **1 × 6** і **6 ×1**.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
