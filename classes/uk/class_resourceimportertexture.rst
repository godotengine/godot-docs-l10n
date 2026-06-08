:github_url: hide

.. _class_ResourceImporterTexture:

ResourceImporterTexture
=======================

**Успадковує:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Імпортувати зображення для використання в 2D або 3D рендерингу.

.. rst-class:: classref-introduction-group

Опис
--------

Цей імпортер :ref:`CompressedTexture2D<class_CompressedTexture2D>` ресурси. Якщо вам потрібно обробити зображення в скриптах більш зручним способом, скористайтеся :ref:`ResourceImporterImage<class_ResourceImporterImage>`. Дивись також :ref:`ResourceImporterLayeredTexture<class_ResourceImporterLayeredTexture>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Імпорт зображень <../tutorials/assets_pipeline/importing_images>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`compress/channel_pack<class_ResourceImporterTexture_property_compress/channel_pack>`                                     | ``0``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`compress/hdr_compression<class_ResourceImporterTexture_property_compress/hdr_compression>`                               | ``1``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`compress/high_quality<class_ResourceImporterTexture_property_compress/high_quality>`                                     | ``false`` |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`   | :ref:`compress/lossy_quality<class_ResourceImporterTexture_property_compress/lossy_quality>`                                   | ``0.7``   |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`compress/mode<class_ResourceImporterTexture_property_compress/mode>`                                                     | ``0``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`compress/normal_map<class_ResourceImporterTexture_property_compress/normal_map>`                                         | ``0``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`   | :ref:`compress/rdo_quality_loss<class_ResourceImporterTexture_property_compress/rdo_quality_loss>`                             | ``0.0``   |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`compress/uastc_level<class_ResourceImporterTexture_property_compress/uastc_level>`                                       | ``0``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`detect_3d/compress_to<class_ResourceImporterTexture_property_detect_3d/compress_to>`                                     | ``1``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`editor/convert_colors_with_editor_theme<class_ResourceImporterTexture_property_editor/convert_colors_with_editor_theme>` | ``false`` |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`editor/scale_with_editor_scale<class_ResourceImporterTexture_property_editor/scale_with_editor_scale>`                   | ``false`` |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`mipmaps/generate<class_ResourceImporterTexture_property_mipmaps/generate>`                                               | ``false`` |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`mipmaps/limit<class_ResourceImporterTexture_property_mipmaps/limit>`                                                     | ``-1``    |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`process/channel_remap/alpha<class_ResourceImporterTexture_property_process/channel_remap/alpha>`                         | ``3``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`process/channel_remap/blue<class_ResourceImporterTexture_property_process/channel_remap/blue>`                           | ``2``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`process/channel_remap/green<class_ResourceImporterTexture_property_process/channel_remap/green>`                         | ``1``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`process/channel_remap/red<class_ResourceImporterTexture_property_process/channel_remap/red>`                             | ``0``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`process/fix_alpha_border<class_ResourceImporterTexture_property_process/fix_alpha_border>`                               | ``true``  |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`process/hdr_as_srgb<class_ResourceImporterTexture_property_process/hdr_as_srgb>`                                         | ``false`` |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`process/hdr_clamp_exposure<class_ResourceImporterTexture_property_process/hdr_clamp_exposure>`                           | ``false`` |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`process/normal_map_invert_y<class_ResourceImporterTexture_property_process/normal_map_invert_y>`                         | ``false`` |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`process/premult_alpha<class_ResourceImporterTexture_property_process/premult_alpha>`                                     | ``false`` |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`process/size_limit<class_ResourceImporterTexture_property_process/size_limit>`                                           | ``0``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`roughness/mode<class_ResourceImporterTexture_property_roughness/mode>`                                                   | ``0``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>` | :ref:`roughness/src_normal<class_ResourceImporterTexture_property_roughness/src_normal>`                                       | ``""``    |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`   | :ref:`svg/scale<class_ResourceImporterTexture_property_svg/scale>`                                                             | ``1.0``   |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_ResourceImporterTexture_property_compress/channel_pack:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/channel_pack** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_compress/channel_pack>`

Керує тим, як колірні канали повинні використовуватися в імпортованій текстурі.

\ **Зручний для sRGB:** Запобігає використанню кольорових форматів R та RG, оскільки вони не підтримують нелінійне кодування sRGB.

\ **Оптимізований:** Дозволяє використовувати кольоровий формат RG, якщо текстура не використовує синій канал. Це зменшує використання пам'яті, якщо синій канал текстури можна відкинути (усі пікселі повинні мати значення синього ``0``).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/hdr_compression:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/hdr_compression** = ``1`` :ref:`🔗<class_ResourceImporterTexture_property_compress/hdr_compression>`

Контроль якості стиснення VRAM слід виконувати для зображень HDR.

\ **Вимкнено:** Ніколи не використовуйте стиснення VRAM для текстур HDR, незалежно від того, чи є вони непрозорими або прозорими. Замість текстури перетворюються на RGBE9995 (9-bits на канал + 5-bit exponent = 32 біти на піксель) для зменшення використання пам'яті у порівнянні з полуплавним або одноточним форматом плавлення.

\ **Opaque Тільки:** Тільки використовується стиснення VRAM для текстур Opaque HDR. Це пов'язано з обмеженням форматів HDR, оскільки не існує формату VRAM, який підтримує прозорість одночасно.

\ **Always:** Пристрої стиснення VRAM навіть для текстур HDR з альфа-каналом. Для того, щоб виконати це, альфа-канал відкидається на імпорт.

\ **Примітка:** Тільки ефективний на Radiance HDR (``.hdr``) і OpenEXR (``.exr``) зображень.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/high_quality:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress/high_quality** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_compress/high_quality>`

Якщо ``true``, використовує стиснення BPTC на настільних платформах та стиснення ASTC на мобільних платформах. При використанні BPTC, BC7 використовується для текстур SDR і BC6H для текстур HDR.

Якщо ``false``, скористайтеся швидким, але низькою якістю стиснення S3TC на настільних платформах і ETC2 на мобільних/web платформах. При використанні S3TC, DXT1 (BC1) використовується для непрозорих текстур і DXT5 (BC3) використовується для прозорої або нормальної карти (RGTC) текстур.

BPTC і ASTC підтримка VRAM стиснення для текстур HDR, але S3TC і ETC2 не (див. :ref:`compress/hdr_compression<class_ResourceImporterTexture_property_compress/hdr_compression>`).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/lossy_quality:

.. rst-class:: classref-property

:ref:`float<class_float>` **compress/lossy_quality** = ``0.7`` :ref:`🔗<class_ResourceImporterTexture_property_compress/lossy_quality>`

Якість використання при використанні **Lossy** режим стиснення. Найвищі значення в результаті кращої якості, за вартістю більших розмірів файлів. Якість втрати не впливає на використання пам'яті імпортної текстури, тільки його розмір файлу на диску.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/mode** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_compress/mode>`

Режим стиснення для використання. Кожний режим стиснення забезпечує різну торгівлю:

\ **Lossless**: Оригінальна якість, висока пам'ять, високий розмір на диску, швидкий імпорт.

\ **Lossy:** Знижена якість, висока пам'ять, низький розмір на диску, швидкий імпорт.

\ ** VRAM ** Знижена якість, низьке використання пам'яті, низький розмір на диску, повільне імпорт. Тільки для текстур в 3D-сценах, не для 2D-елементів.

\ ** VRAM Uncompressed:** Оригінальна якість, висока якість використання пам'яті, найвищий розмір на диску, швидкий імпорт.

\ **Basis Universal:** Знижена якість, низьке використання пам'яті, найнижчий розмір на диску, повільний імпорт. Тільки для текстур в 3D-сценах, не для 2D-елементів.

Див. `Compress mode <../tutorials/assets_pipeline/importing_images.html#compress-mode>`__ в інструкції для отримання більш детальної інформації.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/normal_map:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/normal_map** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_compress/normal_map>`

При використанні текстури як нормальної карти, потрібні тільки червоні і зелені канали. З огляду на регулярні алгоритми стиснення текстури виробляють артефакти, які не виглядають, які приємно в нормальних картах, формат стиснення RGTC найкраще підходять для цих даних. Для того, щоб зробити Godot імпортувати зображення як стиснення RGTCTC. За замовчуванням, це встановити для виявлення. Це означає, що якщо текстура коли-небудь виявлена, щоб бути використана як нормальна карта, вона буде змінена для Увімкнути і переімпортувати автоматично.

Зверніть увагу, що стиснення RGTC впливає на зображення нормальної карти. Ви повинні регулювати користувацькі тіні, які використовують синий канал нормальної карти, щоб взяти це врахувати. Побудовані матеріальні шейдери вже ігнорують блакитний канал в нормальній карті (незалежно від фактичного нормального вмісту карти).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/rdo_quality_loss:

.. rst-class:: classref-property

:ref:`float<class_float>` **compress/rdo_quality_loss** = ``0.0`` :ref:`🔗<class_ResourceImporterTexture_property_compress/rdo_quality_loss>`

Якщо значення більше або дорівнює ``0.01``, вмикається оптимізація швидкості спотворення (RDO) для зменшення розміру файлу. Вищі значення призводять до меншого розміру файлу, але нижчої якості.

\ **Примітка:** Увімкнення RDO значно збільшує час кодування, особливо коли зображення велике.

Див. також :ref:`ProjectSettings.rendering/textures/basis_universal/rdo_dict_size<class_ProjectSettings_property_rendering/textures/basis_universal/rdo_dict_size>` та :ref:`ProjectSettings.rendering/textures/basis_universal/zstd_supercompression_level<class_ProjectSettings_property_rendering/textures/basis_universal/zstd_supercompression_level>`, якщо ви хочете ще більше зменшити розмір файлу.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/uastc_level:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/uastc_level** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_compress/uastc_level>`

Рівень кодування UASTC. Вищі значення забезпечують кращу якість, але збільшують час кодування.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_detect_3d/compress_to:

.. rst-class:: classref-property

:ref:`int<class_int>` **detect_3d/compress_to** = ``1`` :ref:`🔗<class_ResourceImporterTexture_property_detect_3d/compress_to>`

Це зміни параметра :ref:`compress/mode<class_ResourceImporterTexture_property_compress/mode>`, який використовується при виявленні текстури як використовується в 3D.

Зміна цього параметра імпорту тільки має ефект, якщо текстура виявлена як використовується в 3D. Зміна цього до **Вимкнено **, після чого переімпортування не змінить існуючий режим компресу на текстурі (якщо він виявлений для використання в 3D), але вибираючи **VRAM Compressed** або **Basis Universal**.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_editor/convert_colors_with_editor_theme:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor/convert_colors_with_editor_theme** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_editor/convert_colors_with_editor_theme>`

Якщо ``true``, перетворює кольори імпортованого зображення відповідно до :ref:`EditorSettings.interface/theme/icon_and_font_color<class_EditorSettings_property_interface/theme/icon_and_font_color>`. Це передбачає, що зображення використовує ті самі кольори, що й :doc:`власна палітра кольорів Godot для іконок редактора <../engine_details/editor/creating_icons>`, а вихідний файл призначений для темної теми редактора. Цю опцію слід увімкнути для іконок плагінів редактора та іконок користувацьких класів, але в інших випадках її слід залишити вимкненою.

\ **Примітка:** Доступно тільки для зображень SVG.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_editor/scale_with_editor_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor/scale_with_editor_scale** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_editor/scale_with_editor_scale>`

Якщо ``true``, імпортоване зображення масштабується відповідно до параметра :ref:`EditorSettings.interface/editor/appearance/custom_display_scale<class_EditorSettings_property_interface/editor/appearance/custom_display_scale>`. Цю опцію слід увімкнути для піктограм плагінів редактора та піктограм користувацьких класів, у всіх інших випадках її слід залишити вимкненою.

\ **Примітка:** Доступно лише для зображень у форматі SVG.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_mipmaps/generate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mipmaps/generate** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_mipmaps/generate>`

Якщо ``true``, менші версії текстури створюються на імпорті. Наприклад, текстура 64×64 буде генерувати 6 mipmaps (32×32, 16×16, 8×8, 4×4, 2×2, 1×1). Це має кілька переваг:

- Текстури не стануть зернові на відстані (в 3D), або якщо масштабовані через збільшення :ref:`Camera2D<class_Camera2D>` або :ref:`CanvasItem<class_CanvasItem>` (в 2D).

- Продуктивність поліпшить, якщо текстура відображається на відстані, так як вибірка менших версій оригінальної текстури швидше і вимагає меншої пропускної здатності пам'яті.

Знизу mipmaps є те, що вони підвищують використання пам'яті приблизно на 33%.

Рекомендовано увімкнути mipmaps у 3D. Однак, в 2D, це повинно бути включений лише якщо ваш проект ввімкнено перевагами, що мають ввімкнені mipmaps. Якщо камера ніколи не збільшиться, не буде корисною для забезпечення міток, але використання пам'яті збільшиться.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_mipmaps/limit:

.. rst-class:: classref-property

:ref:`int<class_int>` **mipmaps/limit** = ``-1`` :ref:`🔗<class_ResourceImporterTexture_property_mipmaps/limit>`

Непристойна. В даний час немає ефекту при зміні.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/channel_remap/alpha:

.. rst-class:: classref-property

:ref:`int<class_int>` **process/channel_remap/alpha** = ``3`` :ref:`🔗<class_ResourceImporterTexture_property_process/channel_remap/alpha>`

Визначає джерело даних альфа-каналу вихідного зображення.

\ **Червоний:** Використовувати значення з червоного каналу вихідного зображення.

\ **Зелений:** Використовувати значення з зеленого каналу вихідного зображення.

\ **Синій:** Використовувати значення з синього каналу вихідного зображення.

\ **Альфа:** Використовувати значення з альфа-каналу вихідного зображення.

\ **Інвертований червоний:** Використовувати інвертовані значення з червоного каналу вихідного зображення (``1.0 - R``).

\ **Інвертований зелений:** Використовувати інвертовані значення з зеленого каналу вихідного зображення (``1.0 - G``).

\ **Інвертований синій:** Використовувати інвертовані значення з синього каналу вихідного зображення (``1.0 - B``).

\ **Інвертований альфа-канал:** Використовувати інвертовані значення з альфа-каналу вихідного зображення (``1.0 - A``).

\ **Невикористаний:** Встановлювати значення колірного каналу за замовчуванням (``1.0`` для альфа-каналу, ``0.0`` для червоного, зеленого або синього).

\ **Нуль:** Встановлювати значення колірного каналу на ``0.0``.

\ **Одиниця:** Встановлювати значення колірного каналу на ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/channel_remap/blue:

.. rst-class:: classref-property

:ref:`int<class_int>` **process/channel_remap/blue** = ``2`` :ref:`🔗<class_ResourceImporterTexture_property_process/channel_remap/blue>`

Визначає джерело даних синього каналу вихідного зображення.

\ **Червоний:** Використовувати значення з червоного каналу вихідного зображення.

\ **Зелений:** Використовувати значення з зеленого каналу вихідного зображення.

\ **Синій:** Використовувати значення з синього каналу вихідного зображення.

\ **Альфа:** Використовувати значення з альфа-каналу вихідного зображення.

\ **Інвертований червоний:** Використовувати інвертовані значення з червоного каналу вихідного зображення (``1.0 - R``).

\ **Інвертований зелений:** Використовувати інвертовані значення з зеленого каналу вихідного зображення (``1.0 - G``).

\ **Інвертований синій:** Використовувати інвертовані значення з синього каналу вихідного зображення (``1.0 - B``).

\ **Інвертований альфа-канал:** Використовувати інвертовані значення з альфа-каналу вихідного зображення (``1.0 - A``).

\ **Невикористаний:** Встановлювати значення колірного каналу за замовчуванням (``1.0`` для альфа-каналу, ``0.0`` для червоного, зеленого або синього).

\ **Нуль:** Встановлювати значення колірного каналу на ``0.0``.

\ **Одиниця:** Встановлювати значення колірного каналу на ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/channel_remap/green:

.. rst-class:: classref-property

:ref:`int<class_int>` **process/channel_remap/green** = ``1`` :ref:`🔗<class_ResourceImporterTexture_property_process/channel_remap/green>`

Визначає джерело даних зеленого каналу вихідного зображення.

\ **Червоний:** Використовувати значення з червоного каналу вихідного зображення.

\ **Зелений:** Використовувати значення з зеленого каналу вихідного зображення.

\ **Синій:** Використовувати значення з синього каналу вихідного зображення.

\ **Альфа:** Використовувати значення з альфа-каналу вихідного зображення.

\ **Інвертований червоний:** Використовувати інвертовані значення з червоного каналу вихідного зображення (``1.0 - R``).

\ **Інвертований зелений:** Використовувати інвертовані значення з зеленого каналу вихідного зображення (``1.0 - G``).

\ **Інвертований синій:** Використовувати інвертовані значення з синього каналу вихідного зображення (``1.0 - B``).

\ **Інвертований альфа-канал:** Використовувати інвертовані значення з альфа-каналу вихідного зображення (``1.0 - A``).

\ **Невикористаний:** Встановлювати значення колірного каналу за замовчуванням (``1.0`` для альфа-каналу, ``0.0`` для червоного, зеленого або синього).

\ **Нуль:** Встановлювати значення колірного каналу на ``0.0``.

\ **Одиниця:** Встановлювати значення колірного каналу на ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/channel_remap/red:

.. rst-class:: classref-property

:ref:`int<class_int>` **process/channel_remap/red** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_process/channel_remap/red>`

Визначає джерело даних червоного каналу вихідного зображення.

\ **Червоний:** Використовувати значення з червоного каналу вихідного зображення.

\ **Зелений:** Використовувати значення з зеленого каналу вихідного зображення.

\ **Синій:** Використовувати значення з синього каналу вихідного зображення.

\ **Альфа:** Використовувати значення з альфа-каналу вихідного зображення.

\ **Інвертований червоний:** Використовувати інвертовані значення з червоного каналу вихідного зображення (``1.0 - R``).

\ **Інвертований зелений:** Використовувати інвертовані значення з зеленого каналу вихідного зображення (``1.0 - G``).

\ **Інвертований синій:** Використовувати інвертовані значення з синього каналу вихідного зображення (``1.0 - B``).

\ **Інвертований альфа-канал:** Використовувати інвертовані значення з альфа-каналу вихідного зображення (``1.0 - A``).

\ **Невикористаний:** Встановлювати значення колірного каналу за замовчуванням (``1.0`` для альфа-каналу, ``0.0`` для червоного, зеленого або синього).

\ **Нуль:** Встановлювати значення колірного каналу на ``0.0``.

\ **Одиниця:** Встановлювати значення колірного каналу на ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/fix_alpha_border:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **process/fix_alpha_border** = ``true`` :ref:`🔗<class_ResourceImporterTexture_property_process/fix_alpha_border>`

Якщо ``true``, виставляє пікселики того ж зовнішнього кольору при переході від прозорих до непрозорих зон. Для текстур, що відображаються з дволінійним фільтруванням, це допомагає зменшити ефект контуру при експорті зображень з редактора зображень.

Рекомендовано залишити це ввімкнено (як це за замовчуванням), якщо це викликає проблеми для певного зображення.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/hdr_as_srgb:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **process/hdr_as_srgb** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_process/hdr_as_srgb>`

Деякі HDR-зображення, які ви можете знайти в Інтернеті, можуть бути пошкодженими та містити дані, закодовані за допомогою нелінійної функції передачі sRGB (замість лінійного кодування). Рекомендується не використовувати такі файли. Якщо це абсолютно необхідно, увімкнення :ref:`process/hdr_as_srgb<class_ResourceImporterTexture_property_process/hdr_as_srgb>` зробить їх вигляд правильним.

\ **Попередження:** Увімкнення :ref:`process/hdr_as_srgb<class_ResourceImporterTexture_property_process/hdr_as_srgb>` на добре відформатованих HDR-зображеннях призведе до того, що отримане зображення виглядатиме занадто темним, тому залиште це значення на ``false``, якщо не впевнені.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/hdr_clamp_exposure:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **process/hdr_clamp_exposure** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_process/hdr_clamp_exposure>`

Якщо ``true``, випромінює вплив на імпортні високодинамічні зображення діапазону за допомогою розумної формули затискання (без введення *видимі* кліпування).

Деякі HDR панорамні зображення ви можете знайти в Інтернеті, можуть містити надзвичайно яскраві пікселів, через взяті з реальних джерел життя без натискання.

Незважаючи на те, що ці HDR панорамні зображення є точними для реального життя, це може призвести до карти променевості, створеної Godot, щоб містити іскри при використанні фонового неба. Це можна побачити в матеріалі рефлексії (навіть на грубих матеріалах у крайніх випадках). Увімкнення :ref:`process/hdr_clamp_exposure<class_ResourceImporterTexture_property_process/hdr_clamp_exposure>` може вирішити це.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/normal_map_invert_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **process/normal_map_invert_y** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_process/normal_map_invert_y>`

**Застаріло:** The same result can be achieved by setting :ref:`process/channel_remap/green<class_ResourceImporterTexture_property_process/channel_remap/green>` to ``Green Inverted``.

Якщо ``true``, перетворюйте нормальну карту з Y- (DirectX-style) в Y+ (OpenGL-style) шляхом інвертації зеленого каналу кольору. Це нормальна конвенція карти, очікувана Godot.

Більш детальну інформацію про звичайні карти (включаючи координаційний стіл для популярних двигунів) можна знайти `here <http://wiki.polycount.com/wiki/Normal_Map_Technical_Details>`__.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/premult_alpha:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **process/premult_alpha** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_process/premult_alpha>`

Альтернативою виправленню затемнених країв за допомогою :ref:`process/fix_alpha_border<class_ResourceImporterTexture_property_process/fix_alpha_border>` є використання премультиплікованого альфа-каналу. Увімкнувши цю опцію, текстура буде перетворена у цей формат. Для коректного відображення текстури з премультиплікованим альфа-каналом необхідні спеціальні матеріали:

- У 2D потрібно створити :ref:`CanvasItemMaterial<class_CanvasItemMaterial>` і налаштувати його на використання режиму змішування :ref:`CanvasItemMaterial.BLEND_MODE_PREMULT_ALPHA<class_CanvasItemMaterial_constant_BLEND_MODE_PREMULT_ALPHA>` на :ref:`CanvasItem<class_CanvasItem>`\ s, які використовують цю текстуру. У власних шейдерах ``canvas_item`` слід використовувати ``render_mode blend_premul_alpha;``.

- У 3D потрібно створити :ref:`BaseMaterial3D<class_BaseMaterial3D>` та налаштувати його на використання режиму змішування :ref:`BaseMaterial3D.BLEND_MODE_PREMULT_ALPHA<class_BaseMaterial3D_constant_BLEND_MODE_PREMULT_ALPHA>` для матеріалів, що використовують цю текстуру. У власних шейдерах ``spatial`` слід використовувати ``render_mode blend_premul_alpha;``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/size_limit:

.. rst-class:: classref-property

:ref:`int<class_int>` **process/size_limit** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_process/size_limit>`

Якщо встановлено значення більше за ``0``, розмір текстури під час імпорту обмежується значенням, меншим або рівним вказаному тут значенню. Для неквадратних текстур обмеження розміру впливає на довший розмір, а менший розмір масштабується для збереження співвідношення сторін. Зміна розміру виконується за допомогою кубічної інтерполяції. 

Це можна використати, щоб зменшити використання пам’яті, не впливаючи на вихідні зображення, або уникнути проблем із відображенням текстур на мобільних/веб-платформах (оскільки вони зазвичай не можуть відображати текстури розміром більше 4096×4096). 

\ **Примітка:** Навіть якщо для цього значення встановлено значення ``0``, розмір імпорту обмежений наступними розмірами з технічних причин. Залежно від :ref:`compress/mode<class_ResourceImporterTexture_property_compress/mode>`, текстури буде зменшено під час імпорту, якщо необхідно: 

- **Втрати:** ширина або висота 16383 пікселів, залежно від того, що більше; 

- **Базовий універсальний:** ширина або висота 16384 пікселів, залежно від того, що більше; 

- **Усі інші режими:** ширина або висота 32768 пікселів, залежно від того, що більше.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_roughness/mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **roughness/mode** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_roughness/mode>`

Колірний канал, який слід розглядати як карту шорсткості в цій текстурі. Ефективно, лише якщо :ref:`roughness/src_normal<class_ResourceImporterTexture_property_roughness/src_normal>` не порожній.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_roughness/src_normal:

.. rst-class:: classref-property

:ref:`String<class_String>` **roughness/src_normal** = ``""`` :ref:`🔗<class_ResourceImporterTexture_property_roughness/src_normal>`

Шлях до текстури розглянути як нормальну карту для фільтрації грубості на імпорті. Вкажіть це може допомогти зменшити вагінальне освітлення трохи в 3D.

Фільтрування жорсткості на імпорт використовується тільки в 3D рендерингу, не 2D.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_svg/scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **svg/scale** = ``1.0`` :ref:`🔗<class_ResourceImporterTexture_property_svg/scale>`

Свага СВГ повинна бути надана, з ``1.0`` є оригінальним розміром дизайну. Більшість значень призводить до збільшення зображення. Зауважте, що на відміну від перенапруги шрифтів, це впливає на розмір SVG на 2D. Дивись також :ref:`editor/scale_with_editor_scale<class_ResourceImporterTexture_property_editor/scale_with_editor_scale>`.

\ **Примітка:** Тільки доступні для SVG зображень.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
