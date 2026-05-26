:github_url: hide

.. _class_ResourceImporterTexture:

ResourceImporterTexture
=======================

**Наследует:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Импортирует изображение для использования в 2D- или 3D-рендеринге.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот импортер импортирует ресурсы :ref:`CompressedTexture2D<class_CompressedTexture2D>`. Если вам нужно обработать изображение в скриптах более удобным способом, используйте вместо этого :ref:`ResourceImporterImage<class_ResourceImporterImage>`. См. также :ref:`ResourceImporterLayeredTexture<class_ResourceImporterLayeredTexture>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Импорт изображений <../tutorials/assets_pipeline/importing_images>`

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Описания свойств
--------------------------------

.. _class_ResourceImporterTexture_property_compress/channel_pack:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/channel_pack** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_compress/channel_pack>`

Управляет использованием цветовых каналов в импортируемой текстуре.

\ **sRGB Friendly:** Предотвращает использование цветовых форматов R и RG, поскольку они не поддерживают нелинейное кодирование sRGB.

\ **Optimized:** Позволяет использовать цветовой формат RG, если текстура не использует синий канал. Это снижает потребление памяти, если синий канал текстуры можно отбросить (все пиксели должны иметь значение синего цвета ``0``).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/hdr_compression:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/hdr_compression** = ``1`` :ref:`🔗<class_ResourceImporterTexture_property_compress/hdr_compression>`

Управляет тем, как должно выполняться сжатие VRAM для HDR-изображений.

\ **Отключено:** Никогда не использовать сжатие VRAM для HDR-текстур, независимо от того, являются ли они непрозрачными или прозрачными. Вместо этого текстура преобразуется в RGBE9995 (9 бит на канал + 5-битная экспонента = 32 бита на пиксель) для снижения использования памяти по сравнению с форматом изображения с плавающей точкой с половинной или одинарной точностью.

\ **Только непрозрачные:** Использует сжатие VRAM только для непрозрачных HDR-текстур. Это связано с ограничением форматов HDR, поскольку нет формата HDR со сжатием VRAM, который одновременно поддерживает прозрачность.

\ **Всегда:** Принудительно применять сжатие VRAM даже для HDR-текстур с альфа-каналом. Для этого альфа-канал отбрасывается при импорте.

\ **Примечание:** Эффективно только для изображений Radiance HDR (``.hdr``) и OpenEXR (``.exr``).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/high_quality:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress/high_quality** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_compress/high_quality>`

Если ``true``, используется сжатие BPTC на настольных платформах и сжатие ASTC на мобильных платформах. При использовании BPTC для текстур SDR используется BC7, а для текстур HDR — BC6H.

Если ``false``, используется более быстрое, но менее качественное сжатие S3TC на настольных платформах и ETC2 на мобильных/веб-платформах. При использовании S3TC для непрозрачных текстур используется DXT1 (BC1), а для прозрачных или текстур карты нормалей (RGTC) — DXT5 (BC3).

BPTC и ASTC поддерживают сжатие VRAM для текстур HDR, но S3TC и ETC2 — нет (см. :ref:`compress/hdr_compression<class_ResourceImporterTexture_property_compress/hdr_compression>`).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/lossy_quality:

.. rst-class:: classref-property

:ref:`float<class_float>` **compress/lossy_quality** = ``0.7`` :ref:`🔗<class_ResourceImporterTexture_property_compress/lossy_quality>`

Качество, используемое при использовании режима сжатия **Lossy**. Более высокие значения дают лучшее качество за счет большего размера файла. Качество с потерями не влияет на использование памяти импортированной текстурой, а только на размер файла на диске.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/mode** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_compress/mode>`

Режим сжатия для использования. Каждый режим сжатия обеспечивает свой компромисс:

\ **Без потерь**: Исходное качество, высокое использование памяти, большой размер на диске, быстрый импорт.

\ **С потерями:** Пониженное качество, высокое использование памяти, малый размер на диске, быстрый импорт.

\ **Сжатый VRAM:** Пониженное качество, низкое использование памяти, малый размер на диске, самый медленный импорт. Использовать только для текстур в 3D-сценах, но не для 2D-элементов.

\ **Несжатый VRAM:** Исходное качество, высокое использование памяти, самый большой размер на диске, самый быстрый импорт.

\ **Базовый универсальный:** Пониженное качество, низкое использование памяти, самый маленький размер на диске, медленный импорт. Использовать только для текстур в 3D-сценах, но не для 2D-элементов.

Более подробную информацию см. в разделе `Режим сжатия <../tutorials/assets_pipeline/importing_images.html#compress-mode>`__ в руководстве.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/normal_map:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/normal_map** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_compress/normal_map>`

При использовании текстуры в качестве карты нормалей требуются только красный и зеленый каналы. Учитывая, что обычные алгоритмы сжатия текстур создают артефакты, которые не очень хорошо выглядят на картах нормалей, формат сжатия RGTC лучше всего подходит для этих данных. Принудительное включение этого параметра заставит Godot импортировать изображение как сжатое RGTC. По умолчанию он установлен на Detect. Это означает, что если текстура когда-либо будет обнаружена для использования в качестве карты нормалей, она будет изменена на Enable и автоматически повторно импортирована. 

Обратите внимание, что сжатие RGTC влияет на результирующее изображение карты нормалей. Вам придется настроить пользовательские шейдеры, которые используют синий канал карты нормалей, чтобы учесть это. Встроенные шейдеры материалов уже игнорируют синий канал в карте нормалей (независимо от фактического содержимого карты нормалей).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/rdo_quality_loss:

.. rst-class:: classref-property

:ref:`float<class_float>` **compress/rdo_quality_loss** = ``0.0`` :ref:`🔗<class_ResourceImporterTexture_property_compress/rdo_quality_loss>`

Если больше или равно ``0.01``, включается оптимизация скорости искажения (RDO) для уменьшения размера файла. Более высокие значения приводят к меньшему размеру файла, но к более низкому качеству.

\ **Примечание:** Включение RDO значительно увеличивает время кодирования, особенно если изображение большое.

См. также :ref:`ProjectSettings.rendering/textures/basis_universal/rdo_dict_size<class_ProjectSettings_property_rendering/textures/basis_universal/rdo_dict_size>` и :ref:`ProjectSettings.rendering/textures/basis_universal/zstd_supercompression_level<class_ProjectSettings_property_rendering/textures/basis_universal/zstd_supercompression_level>`, если вы хотите еще больше уменьшить размер файла.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/uastc_level:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/uastc_level** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_compress/uastc_level>`

Уровень кодирования UASTC. Более высокие значения обеспечивают лучшее качество, но увеличивают время кодирования.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_detect_3d/compress_to:

.. rst-class:: classref-property

:ref:`int<class_int>` **detect_3d/compress_to** = ``1`` :ref:`🔗<class_ResourceImporterTexture_property_detect_3d/compress_to>`

Это изменяет параметр :ref:`compress/mode<class_ResourceImporterTexture_property_compress/mode>`, который используется, когда текстура определяется как используемая в 3D.

Изменение этого параметра импорта имеет эффект только в том случае, если текстура определяется как используемая в 3D. Изменение этого параметра на **Disabled** при повторном импорте не изменит существующий режим сжатия текстуры (если она определяется как используемая в 3D), но выбор **VRAM Compressed** или **Basis Universal** изменит.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_editor/convert_colors_with_editor_theme:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor/convert_colors_with_editor_theme** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_editor/convert_colors_with_editor_theme>`

Если ``true``, цвета импортированного изображения преобразуются в цвета :ref:`EditorSettings.interface/theme/icon_and_font_color<class_EditorSettings_property_interface/theme/icon_and_font_color>`. При этом предполагается, что изображение использует те же цвета, что и :doc:`собственная цветовая палитра Godot для значков редактора <../engine_details/editor/creating_icons>`, а исходный файл разработан для тёмной темы оформления редактора. Эту функцию следует включить для значков плагинов редактора и значков пользовательских классов, в противном случае её следует отключить.

\ **Примечание:** Доступно только для изображений SVG.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_editor/scale_with_editor_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor/scale_with_editor_scale** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_editor/scale_with_editor_scale>`

If ``true``, scales the imported image to match :ref:`EditorSettings.interface/editor/appearance/custom_display_scale<class_EditorSettings_property_interface/editor/appearance/custom_display_scale>`. This should be enabled for editor plugin icons and custom class icons, but should be left disabled otherwise.

\ **Note:** Only available for SVG images.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_mipmaps/generate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mipmaps/generate** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_mipmaps/generate>`

Если ``true``, при импорте генерируются меньшие версии текстуры. Например, текстура 64×64 сгенерирует 6 mip-карт (32×32, 16×16, 8×8, 4×4, 2×2, 1×1). Это имеет несколько преимуществ:

- Текстуры не станут зернистыми на расстоянии (в 3D) или при уменьшении масштаба из-за масштабирования :ref:`Camera2D<class_Camera2D>` или масштабирования :ref:`CanvasItem<class_CanvasItem>` (в 2D).

- Производительность улучшится, если текстура будет отображаться на расстоянии, поскольку выборка меньших версий исходной текстуры выполняется быстрее и требует меньше пропускной способности памяти.

Недостатком mip-карт является то, что они увеличивают использование памяти примерно на 33%.

Рекомендуется включать mip-карты в 3D. Однако в 2D это следует включать только в том случае, если ваш проект явно выигрывает от включения mip-карт. Если камера никогда не отдаляет изображение слишком сильно, то включение MIP-текстур не даст никакого преимущества, но увеличится использование памяти.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_mipmaps/limit:

.. rst-class:: classref-property

:ref:`int<class_int>` **mipmaps/limit** = ``-1`` :ref:`🔗<class_ResourceImporterTexture_property_mipmaps/limit>`

Не реализовано. В настоящее время это не имеет никакого эффекта при изменении.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/channel_remap/alpha:

.. rst-class:: classref-property

:ref:`int<class_int>` **process/channel_remap/alpha** = ``3`` :ref:`🔗<class_ResourceImporterTexture_property_process/channel_remap/alpha>`

Указывает источник данных альфа-канала выходного изображения.

\ **Red:** Использовать значения из красного канала исходного изображения.

\ **Green:** Использовать значения из зеленого канала исходного изображения.

\ **Blue:** Использовать значения из синего канала исходного изображения.

\ **Alpha:** Использовать значения из альфа-канала исходного изображения.

\ **Red Inverted:** Использовать инвертированные значения из красного канала исходного изображения (``1.0 - R``).

\ **Green Inverted:** Использовать инвертированные значения из зеленого канала исходного изображения (``1.0 - G``).

\ **Blue Inverted:** Использовать инвертированные значения из синего канала исходного изображения (``1.0 - B``).

\ **Alpha Inverted:** Использовать инвертированные значения из альфа-канала исходного изображения (``1.0 - A``).

\ **Unused:** Установить значение цветового канала по умолчанию (``1.0`` для альфа, ``0.0`` для красного, зеленого или синего).

\ **Zero:** Установить значение цветового канала на ``0.0``.

\ **One:** Установить значение цветового канала на ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/channel_remap/blue:

.. rst-class:: classref-property

:ref:`int<class_int>` **process/channel_remap/blue** = ``2`` :ref:`🔗<class_ResourceImporterTexture_property_process/channel_remap/blue>`

Указывает источник данных синего канала выходного изображения.

\ **Red:** Использовать значения из красного канала исходного изображения.

\ **Green:** Использовать значения из зеленого канала исходного изображения.

\ **Blue:** Использовать значения из синего канала исходного изображения.

\ **Alpha:** Использовать значения из альфа-канала исходного изображения.

\ **Red Inverted:** Использовать инвертированные значения из красного канала исходного изображения (``1.0 - R``).

\ **Green Inverted:** Использовать инвертированные значения из зеленого канала исходного изображения (``1.0 - G``).

\ **Blue Inverted:** Использовать инвертированные значения из синего канала исходного изображения (``1.0 - B``).

\ **Alpha Inverted:** Использовать инвертированные значения из альфа-канала исходного изображения (``1.0 - A``).

\ **Unused:** Установить значение цветового канала по умолчанию (``1.0`` для альфа, ``0.0`` для красного, зеленого или синего).

\ **Zero:** Установить значение цветового канала на ``0.0``.

\ **One:** Установить значение цветового канала на ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/channel_remap/green:

.. rst-class:: classref-property

:ref:`int<class_int>` **process/channel_remap/green** = ``1`` :ref:`🔗<class_ResourceImporterTexture_property_process/channel_remap/green>`

Указывает источник данных зеленого канала выходного изображения.

\ **Red:** Использовать значения из красного канала исходного изображения.

\ **Green:** Использовать значения из зеленого канала исходного изображения.

\ **Blue:** Использовать значения из синего канала исходного изображения.

\ **Alpha:** Использовать значения из альфа-канала исходного изображения.

\ **Red Inverted:** Использовать инвертированные значения из красного канала исходного изображения (``1.0 - R``).

\ **Green Inverted:** Использовать инвертированные значения из зеленого канала исходного изображения (``1.0 - G``).

\ **Blue Inverted:** Использовать инвертированные значения из синего канала исходного изображения (``1.0 - B``).

\ **Alpha Inverted:** Использовать инвертированные значения из альфа-канала исходного изображения (``1.0 - A``).

\ **Unused:** Установить значение цветового канала по умолчанию (``1.0`` для альфа, ``0.0`` для красного, зеленого или синего).

\ **Zero:** Установить значение цветового канала на ``0.0``.

\ **One:** Установить значение цветового канала на ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/channel_remap/red:

.. rst-class:: classref-property

:ref:`int<class_int>` **process/channel_remap/red** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_process/channel_remap/red>`

Указывает источник данных красного канала выходного изображения.

\ **Red:** Использовать значения из красного канала исходного изображения.

\ **Green:** Использовать значения из зеленого канала исходного изображения.

\ **Blue:** Использовать значения из синего канала исходного изображения.

\ **Alpha:** Использовать значения из альфа-канала исходного изображения.

\ **Red Inverted:** Использовать инвертированные значения из красного канала исходного изображения (``1.0 - R``).

\ **Green Inverted:** Использовать инвертированные значения из зеленого канала исходного изображения (``1.0 - G``).

\ **Blue Inverted:** Использовать инвертированные значения из синего канала исходного изображения (``1.0 - B``).

\ **Alpha Inverted:** Использовать инвертированные значения из альфа-канала исходного изображения (``1.0 - A``).

\ **Unused:** Установить значение цветового канала по умолчанию (``1.0`` для альфа, ``0.0`` для красного, зеленого или синего).

\ **Zero:** Установить значение цветового канала на ``0.0``.

\ **One:** Установить значение цветового канала на ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/fix_alpha_border:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **process/fix_alpha_border** = ``true`` :ref:`🔗<class_ResourceImporterTexture_property_process/fix_alpha_border>`

Если ``true``, то пиксели того же окружающего цвета переходят из прозрачных областей в непрозрачные. Для текстур, отображаемых с билинейной фильтрацией, это помогает уменьшить эффект контура при экспорте изображений из редактора изображений.

Рекомендуется оставить это включенным (как по умолчанию), если только это не вызывает проблем для конкретного изображения.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/hdr_as_srgb:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **process/hdr_as_srgb** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_process/hdr_as_srgb>`

Некоторые HDR-изображения, которые можно найти в интернете, могут быть повреждены и содержать данные, закодированные с использованием нелинейной функции преобразования sRGB (вместо линейного кодирования). Не рекомендуется использовать такие файлы. Если это абсолютно необходимо, включение :ref:`process/hdr_as_srgb<class_ResourceImporterTexture_property_process/hdr_as_srgb>` позволит им выглядеть правильно.

\ **Предупреждение:** Включение :ref:`process/hdr_as_srgb<class_ResourceImporterTexture_property_process/hdr_as_srgb>` для правильно отформатированных HDR-изображений приведет к тому, что результирующее изображение будет выглядеть слишком темным, поэтому, если вы не уверены, оставьте это значение ``false``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/hdr_clamp_exposure:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **process/hdr_clamp_exposure** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_process/hdr_clamp_exposure>`

Если ``true``, экспозиция в импортированных изображениях с высоким динамическим диапазоном фиксируется с помощью интеллектуальной формулы фиксации (без введения *видимого* отсечения).

Некоторые панорамные изображения HDR, которые вы можете найти в сети, могут содержать чрезвычайно яркие пиксели, поскольку они взяты из реальных источников без какого-либо отсечения.

Хотя эти панорамные изображения HDR соответствуют реальной жизни, это может привести к тому, что карта сияния, созданная Godot, будет содержать искры при использовании в качестве фонового неба. Это можно увидеть в отражениях материалов (даже на грубых материалах в крайних случаях). Включение :ref:`process/hdr_clamp_exposure<class_ResourceImporterTexture_property_process/hdr_clamp_exposure>` может решить эту проблему.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/normal_map_invert_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **process/normal_map_invert_y** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_process/normal_map_invert_y>`

**Устарело:** The same result can be achieved by setting :ref:`process/channel_remap/green<class_ResourceImporterTexture_property_process/channel_remap/green>` to ``Green Inverted``.

Если ``true``, преобразуйте карту нормалей из Y- (стиль DirectX) в Y+ (стиль OpenGL), инвертируя ее зеленый цветовой канал. Это соглашение о карте нормалей, ожидаемое Godot.

Более подробную информацию о картах нормалей (включая таблицу порядка координат для популярных движков) можно найти `здесь <http://wiki.polycount.com/wiki/Normal_Map_Technical_Details>`__.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/premult_alpha:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **process/premult_alpha** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_process/premult_alpha>`

An alternative to fixing darkened borders with :ref:`process/fix_alpha_border<class_ResourceImporterTexture_property_process/fix_alpha_border>` is to use premultiplied alpha. By enabling this option, the texture will be converted to this format. A premultiplied alpha texture requires specific materials to be displayed correctly:

- In 2D, a :ref:`CanvasItemMaterial<class_CanvasItemMaterial>` will need to be created and configured to use the :ref:`CanvasItemMaterial.BLEND_MODE_PREMULT_ALPHA<class_CanvasItemMaterial_constant_BLEND_MODE_PREMULT_ALPHA>` blend mode on :ref:`CanvasItem<class_CanvasItem>`\ s that use this texture. In custom ``canvas_item`` shaders, ``render_mode blend_premul_alpha;`` should be used.

- In 3D, a :ref:`BaseMaterial3D<class_BaseMaterial3D>` will need to be created and configured to use the :ref:`BaseMaterial3D.BLEND_MODE_PREMULT_ALPHA<class_BaseMaterial3D_constant_BLEND_MODE_PREMULT_ALPHA>` blend mode on materials that use this texture. In custom ``spatial`` shaders, ``render_mode blend_premul_alpha;`` should be used.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/size_limit:

.. rst-class:: classref-property

:ref:`int<class_int>` **process/size_limit** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_process/size_limit>`

Если установлено значение больше ``0``, размер текстуры при импорте ограничивается значением, меньшим или равным значению, указанному здесь. Для неквадратных текстур ограничение размера влияет на большее измерение, а меньшее измерение масштабируется для сохранения соотношения сторон. Изменение размера выполняется с помощью кубической интерполяции.

Это можно использовать для уменьшения использования памяти, не влияя на исходные изображения, или для избежания проблем с текстурами, которые не отображаются на мобильных/веб-платформах (так как они обычно не могут отображать текстуры размером более 4096×4096).

\ **Примечание:** Даже если установлено значение ``0``, размер импорта ограничен следующими размерами по техническим причинам. В зависимости от :ref:`compress/mode<class_ResourceImporterTexture_property_compress/mode>` текстуры будут при необходимости уменьшены при импорте:

- **Потери:** ширина или высота 16383 пикселей, в зависимости от того, что больше;

- **Basis Universal:** 16384 пикселей в ширину или высоту, в зависимости от того, что больше;

- **Все остальные режимы:** 32768 пикселей в ширину или высоту, в зависимости от того, что больше.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_roughness/mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **roughness/mode** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_roughness/mode>`

Цветовой канал, который следует рассматривать как карту шероховатости в этой текстуре. Действует только если :ref:`roughness/src_normal<class_ResourceImporterTexture_property_roughness/src_normal>` не пуст.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_roughness/src_normal:

.. rst-class:: classref-property

:ref:`String<class_String>` **roughness/src_normal** = ``""`` :ref:`🔗<class_ResourceImporterTexture_property_roughness/src_normal>`

Путь к текстуре, которую следует рассматривать как карту нормалей для фильтрации шероховатости при импорте. Указание этого параметра может помочь немного уменьшить зеркальное наложение в 3D.

Фильтрация шероховатости при импорте используется только в 3D-рендеринге, а не в 2D.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_svg/scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **svg/scale** = ``1.0`` :ref:`🔗<class_ResourceImporterTexture_property_svg/scale>`

Масштаб, в котором должен отображаться SVG, при этом ``1.0`` — это исходный размер дизайна. Более высокие значения приводят к большему размеру изображения. Обратите внимание, что в отличие от передискретизации шрифта, это влияет на размер, в котором отображается SVG в 2D. См. также :ref:`editor/scale_with_editor_scale<class_ResourceImporterTexture_property_editor/scale_with_editor_scale>`.

\ **Примечание:** Доступно только для изображений SVG.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
