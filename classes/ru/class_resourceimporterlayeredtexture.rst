:github_url: hide

.. _class_ResourceImporterLayeredTexture:

ResourceImporterLayeredTexture
==============================

**Наследует:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Импортирует трехмерную текстуру (:ref:`Texture3D<class_Texture3D>`), :ref:`Texture2DArray<class_Texture2DArray>`, :ref:`Cubemap<class_Cubemap>` или ``Cubemap Array``.

.. rst-class:: classref-introduction-group

Описание
----------------

Это импортирует 3-мерную текстуру, которую затем можно использовать в пользовательских шейдерах, как карту плотности :ref:`FogMaterial<class_FogMaterial>` или как :ref:`GPUParticlesAttractorVectorField3D<class_GPUParticlesAttractorVectorField3D>`. См. также :ref:`ResourceImporterTexture<class_ResourceImporterTexture>` и :ref:`ResourceImporterTextureAtlas<class_ResourceImporterTextureAtlas>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Импорт изображений <../tutorials/assets_pipeline/importing_images>`

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Описания свойств
--------------------------------

.. _class_ResourceImporterLayeredTexture_property_compress/channel_pack:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/channel_pack** = ``0`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/channel_pack>`

Управляет использованием цветовых каналов в импортируемой текстуре.

\ **sRGB Friendly:** предотвращает использование цветовых форматов R и RG, поскольку они не поддерживают нелинейное кодирование sRGB.

\ **Optimized:** позволяет использовать цветовой формат RG, если текстура не использует синий канал. Это снижает потребление памяти, если синий канал текстуры можно отбросить (все пиксели должны иметь значение синего цвета ``0``).

\ **Normal Map (RG Channels):** Это заставляет все слои текстуры импортироваться с цветовым форматом RG, сохраняя только красный и зеленый каналы. Сжатие RGTC (Red-Green Texture Compression) позволяет гораздо лучше сохранять детали, используя при этом тот же объем памяти, что и стандартная текстура RGBA, сжатая в VRAM. Это влияет только на текстуры с режимами сжатия VRAM Compressed или Basis Universal. Этот режим доступен только для многослойных текстур (:ref:`Cubemap<class_Cubemap>`, :ref:`CubemapArray<class_CubemapArray>`, :ref:`Texture2DArray<class_Texture2DArray>` и :ref:`Texture3D<class_Texture3D>`).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/hdr_compression:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/hdr_compression** = ``1`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/hdr_compression>`

Управляет тем, как должно выполняться сжатие VRAM для HDR-изображений.

\ **Отключено:** Никогда не использовать сжатие VRAM для HDR-текстур, независимо от того, являются ли они непрозрачными или прозрачными. Вместо этого текстура преобразуется в RGBE9995 (9 бит на канал + 5-битная экспонента = 32 бита на пиксель) для снижения использования памяти по сравнению с форматом изображения с плавающей точкой с половинной или одинарной точностью.

\ **Только непрозрачные:** Использует сжатие VRAM только для непрозрачных HDR-текстур. Это связано с ограничением форматов HDR, поскольку нет формата HDR со сжатием VRAM, который одновременно поддерживает прозрачность.

\ **Всегда:** Принудительно применять сжатие VRAM даже для HDR-текстур с альфа-каналом. Для этого альфа-канал отбрасывается при импорте.

\ **Примечание:** Эффективно только для изображений Radiance HDR (``.hdr``) и OpenEXR (``.exr``).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/high_quality:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress/high_quality** = ``false`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/high_quality>`

Если ``true``, используется сжатие BPTC на настольных платформах и сжатие ASTC на мобильных платформах. При использовании BPTC для текстур SDR используется BC7, а для текстур HDR — BC6H.

Если ``false``, используется более быстрое, но менее качественное сжатие S3TC на настольных платформах и ETC2 на мобильных/веб-платформах. При использовании S3TC для непрозрачных текстур используется DXT1 (BC1), а для прозрачных или текстур карты нормалей (RGTC) — DXT5 (BC3).

BPTC и ASTC поддерживают сжатие VRAM для текстур HDR, но S3TC и ETC2 — нет (см. :ref:`compress/hdr_compression<class_ResourceImporterLayeredTexture_property_compress/hdr_compression>`).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/lossy_quality:

.. rst-class:: classref-property

:ref:`float<class_float>` **compress/lossy_quality** = ``0.7`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/lossy_quality>`

Качество, используемое при использовании режима сжатия **Lossy**. Более высокие значения дают лучшее качество за счет большего размера файла. Качество с потерями не влияет на использование памяти импортированной текстурой, а только на размер файла на диске.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/mode** = ``1`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/mode>`

Режим сжатия для использования. Каждый режим сжатия обеспечивает свой компромисс:

\ **Без потерь**: Исходное качество, высокое использование памяти, большой размер на диске, быстрый импорт.

\ **С потерями:** Пониженное качество, высокое использование памяти, малый размер на диске, быстрый импорт.

\ **Сжатый VRAM:** Пониженное качество, низкое использование памяти, малый размер на диске, самый медленный импорт. Использовать только для текстур в 3D-сценах, но не для 2D-элементов.

\ **Несжатый VRAM:** Исходное качество, высокое использование памяти, самый большой размер на диске, самый быстрый импорт.

\ **Базовый универсальный:** Пониженное качество, низкое использование памяти, самый маленький размер на диске, медленный импорт. Использовать только для текстур в 3D-сценах, но не для 2D-элементов.

Более подробную информацию см. в разделе `Режим сжатия <../tutorials/assets_pipeline/importing_images.html#compress-mode>`__ в руководстве.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/rdo_quality_loss:

.. rst-class:: classref-property

:ref:`float<class_float>` **compress/rdo_quality_loss** = ``0.0`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/rdo_quality_loss>`

Если больше или равно ``0.01``, включается оптимизация скорости искажения (RDO) для уменьшения размера файла. Более высокие значения приводят к меньшему размеру файла, но к более низкому качеству.

\ **Примечание:** Включение RDO значительно увеличивает время кодирования, особенно если изображение большое.

См. также :ref:`ProjectSettings.rendering/textures/basis_universal/rdo_dict_size<class_ProjectSettings_property_rendering/textures/basis_universal/rdo_dict_size>` и :ref:`ProjectSettings.rendering/textures/basis_universal/zstd_supercompression_level<class_ProjectSettings_property_rendering/textures/basis_universal/zstd_supercompression_level>`, если вы хотите еще больше уменьшить размер файла.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/uastc_level:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/uastc_level** = ``0`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/uastc_level>`

Уровень кодирования UASTC. Более высокие значения обеспечивают лучшее качество, но увеличивают время кодирования.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_mipmaps/generate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mipmaps/generate** = ``true`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_mipmaps/generate>`

Если ``true``, при импорте генерируются меньшие версии текстуры. Например, текстура 64×64 сгенерирует 6 mip-карт (32×32, 16×16, 8×8, 4×4, 2×2, 1×1). Это имеет несколько преимуществ:

- Текстуры не станут зернистыми на расстоянии (в 3D) или при уменьшении масштаба из-за масштабирования :ref:`Camera2D<class_Camera2D>` или масштабирования :ref:`CanvasItem<class_CanvasItem>` (в 2D).

- Производительность улучшится, если текстура будет отображаться на расстоянии, поскольку выборка меньших версий исходной текстуры выполняется быстрее и требует меньше пропускной способности памяти.

Недостатком mip-карт является то, что они увеличивают использование памяти примерно на 33% (для :ref:`Texture2DArray<class_Texture2DArray>`, :ref:`Cubemap<class_Cubemap>` и :ref:`CubemapArray<class_CubemapArray>`) или на 14% (для :ref:`Texture3D<class_Texture3D>`).

Рекомендуется включить mip-карты в 3D. Однако в 2D это следует включать только в том случае, если ваш проект явно выигрывает от включения mip-карт. Если камера никогда не отдаляется значительно, то включение mip-карт не даст никаких преимуществ, но использование памяти увеличится.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_mipmaps/limit:

.. rst-class:: classref-property

:ref:`int<class_int>` **mipmaps/limit** = ``-1`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_mipmaps/limit>`

Не реализовано. В настоящее время это не имеет никакого эффекта при изменении.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_slices/arrangement:

.. rst-class:: classref-property

:ref:`int<class_int>` **slices/arrangement** = ``1`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_slices/arrangement>`

Управляет тем, как текстура кубической карты внутренне выложена. При использовании кубических карт высокого разрешения **2×3** и **3×2** менее склонны к превышению ограничений на размер аппаратной текстуры по сравнению с **1×6** и **6×1**.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
