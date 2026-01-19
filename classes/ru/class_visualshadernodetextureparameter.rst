:github_url: hide

.. _class_VisualShaderNodeTextureParameter:

VisualShaderNodeTextureParameter
================================

**Наследует:** :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`VisualShaderNodeCubemapParameter<class_VisualShaderNodeCubemapParameter>`, :ref:`VisualShaderNodeTexture2DArrayParameter<class_VisualShaderNodeTexture2DArrayParameter>`, :ref:`VisualShaderNodeTexture2DParameter<class_VisualShaderNodeTexture2DParameter>`, :ref:`VisualShaderNodeTexture3DParameter<class_VisualShaderNodeTexture3DParameter>`, :ref:`VisualShaderNodeTextureParameterTriplanar<class_VisualShaderNodeTextureParameterTriplanar>`

Выполняет равномерный поиск текстуры в графе визуального шейдера.

.. rst-class:: classref-introduction-group

Описание
----------------

Выполняет операцию поиска по текстуре, предоставленной в качестве единой для шейдера.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------+
   | :ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>`   | :ref:`color_default<class_VisualShaderNodeTextureParameter_property_color_default>`   | ``0`` |
   +---------------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------+
   | :ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` | :ref:`texture_filter<class_VisualShaderNodeTextureParameter_property_texture_filter>` | ``0`` |
   +---------------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------+
   | :ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>` | :ref:`texture_repeat<class_VisualShaderNodeTextureParameter_property_texture_repeat>` | ``0`` |
   +---------------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------+
   | :ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` | :ref:`texture_source<class_VisualShaderNodeTextureParameter_property_texture_source>` | ``0`` |
   +---------------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------+
   | :ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>`     | :ref:`texture_type<class_VisualShaderNodeTextureParameter_property_texture_type>`     | ``0`` |
   +---------------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_VisualShaderNodeTextureParameter_TextureType:

.. rst-class:: classref-enumeration

enum **TextureType**: :ref:`🔗<enum_VisualShaderNodeTextureParameter_TextureType>`

.. _class_VisualShaderNodeTextureParameter_constant_TYPE_DATA:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>` **TYPE_DATA** = ``0``

Никаких подсказок в единое заявление не добавляется.

.. _class_VisualShaderNodeTextureParameter_constant_TYPE_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>` **TYPE_COLOR** = ``1``

Добавляет ``source_color`` в качестве подсказки к объявлению униформы для корректного преобразования из нелинейного кодирования sRGB в линейное кодирование.

.. _class_VisualShaderNodeTextureParameter_constant_TYPE_NORMAL_MAP:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>` **TYPE_NORMAL_MAP** = ``2``

Добавляет ``hint_normal`` в качестве подсказки к объявлению uniform, которое внутренне преобразует текстуру для правильного использования в качестве карты нормалей.

.. _class_VisualShaderNodeTextureParameter_constant_TYPE_ANISOTROPY:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>` **TYPE_ANISOTROPY** = ``3``

Добавляет ``hint_anisotropy`` в качестве подсказки к объявлению uniform для использования в flowmap.

.. _class_VisualShaderNodeTextureParameter_constant_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>` **TYPE_MAX** = ``4``

Представляет размер перечисления :ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>`.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeTextureParameter_ColorDefault:

.. rst-class:: classref-enumeration

enum **ColorDefault**: :ref:`🔗<enum_VisualShaderNodeTextureParameter_ColorDefault>`

.. _class_VisualShaderNodeTextureParameter_constant_COLOR_DEFAULT_WHITE:

.. rst-class:: classref-enumeration-constant

:ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>` **COLOR_DEFAULT_WHITE** = ``0``

По умолчанию используется полностью непрозрачный белый цвет.

.. _class_VisualShaderNodeTextureParameter_constant_COLOR_DEFAULT_BLACK:

.. rst-class:: classref-enumeration-constant

:ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>` **COLOR_DEFAULT_BLACK** = ``1``

По умолчанию используется полностью непрозрачный черный цвет.

.. _class_VisualShaderNodeTextureParameter_constant_COLOR_DEFAULT_TRANSPARENT:

.. rst-class:: classref-enumeration-constant

:ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>` **COLOR_DEFAULT_TRANSPARENT** = ``2``

По умолчанию используется полностью прозрачный черный цвет.

.. _class_VisualShaderNodeTextureParameter_constant_COLOR_DEFAULT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>` **COLOR_DEFAULT_MAX** = ``3``

Представляет размер перечисления :ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>`.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeTextureParameter_TextureFilter:

.. rst-class:: classref-enumeration

enum **TextureFilter**: :ref:`🔗<enum_VisualShaderNodeTextureParameter_TextureFilter>`

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_DEFAULT** = ``0``

Выбрать текстуру, используя фильтр, определяемый узлом, к которому прикреплен этот шейдер.

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_NEAREST:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_NEAREST** = ``1``

Фильтр текстуры считывает только ближайший пиксель. Это делает текстуру пикселизированной вблизи и зернистой на расстоянии (из-за того, что mip-карты не сэмплируются).

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_LINEAR** = ``2``

Фильтр текстуры смешивает ближайшие 4 пикселя. Это делает текстуру гладкой вблизи и зернистой на расстоянии (из-за того, что mip-карты не сэмплируются).

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_NEAREST_MIPMAP:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_NEAREST_MIPMAP** = ``3``

Фильтр текстуры считывает данные с ближайшего пикселя и смешивает данные между двумя ближайшими mip-картами (или использует ближайшую mip-карту, если :ref:`ProjectSettings.rendering/textures/default_filters/use_nearest_mipmap_filter<class_ProjectSettings_property_rendering/textures/default_filters/use_nearest_mipmap_filter>` имеет значение ``true``). Это делает текстуру пикселизированной вблизи и гладкой на расстоянии. 

Используйте это для текстур, не являющихся пиксельным искусством, которые можно просматривать в низком масштабе (например, из-за масштабирования :ref:`Camera2D<class_Camera2D>` или масштабирования спрайтов), поскольку mip-карты важны для сглаживания пикселей, которые меньше пикселей на экране.

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_LINEAR_MIPMAP:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_LINEAR_MIPMAP** = ``4``

Фильтр текстуры смешивает ближайшие 4 пикселя и ближайшие 2 mip-карты (или использует ближайшую mip-карту, если :ref:`ProjectSettings.rendering/textures/default_filters/use_nearest_mipmap_filter<class_ProjectSettings_property_rendering/textures/default_filters/use_nearest_mipmap_filter>` имеет значение ``true``). Это делает текстуру гладкой вблизи и гладкой на расстоянии. 

Используйте это для текстур непиксельной графики, которые можно просматривать в низком масштабе (например, из-за масштабирования :ref:`Camera2D<class_Camera2D>` или масштабирования спрайтов), поскольку mip-карты важны для сглаживания пикселей, которые меньше пикселей на экране.

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_NEAREST_MIPMAP_ANISOTROPIC:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_NEAREST_MIPMAP_ANISOTROPIC** = ``5``

Фильтр текстур считывает данные из ближайшего пикселя и смешивает две MIP-карты (или использует ближайшее MIP-карту, если :ref:`ProjectSettings.rendering/textures/default_filters/use_nearest_mipmap_filter<class_ProjectSettings_property_rendering/textures/default_filters/use_nearest_mipmap_filter>` имеет значение ``true``) на основе угла между поверхностью и изображением камеры. Это делает текстуру пикселизированной вблизи и гладкой на расстоянии. Анизотропная фильтрация улучшает качество текстуры на поверхностях, которые находятся почти на одной линии с камерой, но работает немного медленнее. Уровень анизотропной фильтрации можно изменить, настроив :ref:`ProjectSettings.rendering/textures/default_filters/anisotropic_filtering_level<class_ProjectSettings_property_rendering/textures/default_filters/anisotropic_filtering_level>`.

\ **Примечание:** Этот текстурный фильтр редко бывает полезен в 2D-проектах. :ref:`FILTER_NEAREST_MIPMAP<class_VisualShaderNodeTextureParameter_constant_FILTER_NEAREST_MIPMAP>` обычно более подходит в этом случае.

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_LINEAR_MIPMAP_ANISOTROPIC:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_LINEAR_MIPMAP_ANISOTROPIC** = ``6``

Фильтр текстуры смешивает ближайшие 4 пикселя и смешивает 2 mip-карты (или использует ближайшую mip-карту, если :ref:`ProjectSettings.rendering/textures/default_filters/use_nearest_mipmap_filter<class_ProjectSettings_property_rendering/textures/default_filters/use_nearest_mipmap_filter>` имеет значение ``true``) на основе угла между поверхностью и видом камеры. Это делает текстуру гладкой вблизи и гладкой на расстоянии. Анизотропная фильтрация улучшает качество текстуры на поверхностях, которые почти совпадают с камерой, но немного медленнее. Уровень анизотропной фильтрации можно изменить, настроив :ref:`ProjectSettings.rendering/textures/default_filters/anisotropic_filtering_level<class_ProjectSettings_property_rendering/textures/default_filters/anisotropic_filtering_level>`.

\ **Примечание:** Этот фильтр текстуры редко полезен в 2D-проектах. :ref:`FILTER_LINEAR_MIPMAP<class_VisualShaderNodeTextureParameter_constant_FILTER_LINEAR_MIPMAP>` обычно более подходит в этом случае.

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_MAX** = ``7``

Представляет размер перечисления :ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>`.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeTextureParameter_TextureRepeat:

.. rst-class:: classref-enumeration

enum **TextureRepeat**: :ref:`🔗<enum_VisualShaderNodeTextureParameter_TextureRepeat>`

.. _class_VisualShaderNodeTextureParameter_constant_REPEAT_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>` **REPEAT_DEFAULT** = ``0``

Выполняется выборка текстуры с использованием режима повторения, определяемого узлом, к которому прикреплен этот шейдер.

.. _class_VisualShaderNodeTextureParameter_constant_REPEAT_ENABLED:

.. rst-class:: classref-enumeration-constant

:ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>` **REPEAT_ENABLED** = ``1``

Текстура будет повторяться нормально.

.. _class_VisualShaderNodeTextureParameter_constant_REPEAT_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>` **REPEAT_DISABLED** = ``2``

Текстура не повторяется.

.. _class_VisualShaderNodeTextureParameter_constant_REPEAT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>` **REPEAT_MAX** = ``3``

Представляет размер перечисления :ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>`.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeTextureParameter_TextureSource:

.. rst-class:: classref-enumeration

enum **TextureSource**: :ref:`🔗<enum_VisualShaderNodeTextureParameter_TextureSource>`

.. _class_VisualShaderNodeTextureParameter_constant_SOURCE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` **SOURCE_NONE** = ``0``

Источник текстуры в шейдере не указан.

.. _class_VisualShaderNodeTextureParameter_constant_SOURCE_SCREEN:

.. rst-class:: classref-enumeration-constant

:ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` **SOURCE_SCREEN** = ``1``

Источником текстуры является текстура экрана, которая захватывает все непрозрачные объекты, нарисованные в этом кадре.

.. _class_VisualShaderNodeTextureParameter_constant_SOURCE_DEPTH:

.. rst-class:: classref-enumeration-constant

:ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` **SOURCE_DEPTH** = ``2``

Источником текстуры является текстура глубины из предварительного прохода глубины.

.. _class_VisualShaderNodeTextureParameter_constant_SOURCE_NORMAL_ROUGHNESS:

.. rst-class:: classref-enumeration-constant

:ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` **SOURCE_NORMAL_ROUGHNESS** = ``3``

Источником текстуры является буфер нормальной шероховатости (normal-roughness) из предварительного прохода по глубине.

.. _class_VisualShaderNodeTextureParameter_constant_SOURCE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` **SOURCE_MAX** = ``4``

Представляет размер перечисления :ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VisualShaderNodeTextureParameter_property_color_default:

.. rst-class:: classref-property

:ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>` **color_default** = ``0`` :ref:`🔗<class_VisualShaderNodeTextureParameter_property_color_default>`

.. rst-class:: classref-property-setget

- |void| **set_color_default**\ (\ value\: :ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>`\ )
- :ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>` **get_color_default**\ (\ )

Устанавливает цвет по умолчанию, если униформе не назначена текстура.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeTextureParameter_property_texture_filter:

.. rst-class:: classref-property

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **texture_filter** = ``0`` :ref:`🔗<class_VisualShaderNodeTextureParameter_property_texture_filter>`

.. rst-class:: classref-property-setget

- |void| **set_texture_filter**\ (\ value\: :ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>`\ )
- :ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **get_texture_filter**\ (\ )

Устанавливает режим фильтрации текстур.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeTextureParameter_property_texture_repeat:

.. rst-class:: classref-property

:ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>` **texture_repeat** = ``0`` :ref:`🔗<class_VisualShaderNodeTextureParameter_property_texture_repeat>`

.. rst-class:: classref-property-setget

- |void| **set_texture_repeat**\ (\ value\: :ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>`\ )
- :ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>` **get_texture_repeat**\ (\ )

Устанавливает режим повторения текстуры.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeTextureParameter_property_texture_source:

.. rst-class:: classref-property

:ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` **texture_source** = ``0`` :ref:`🔗<class_VisualShaderNodeTextureParameter_property_texture_source>`

.. rst-class:: classref-property-setget

- |void| **set_texture_source**\ (\ value\: :ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>`\ )
- :ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` **get_texture_source**\ (\ )

Устанавливает режим источника текстуры. Используется для чтения с экрана, глубины или текстуры normal_roughness.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeTextureParameter_property_texture_type:

.. rst-class:: classref-property

:ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>` **texture_type** = ``0`` :ref:`🔗<class_VisualShaderNodeTextureParameter_property_texture_type>`

.. rst-class:: classref-property-setget

- |void| **set_texture_type**\ (\ value\: :ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>`\ )
- :ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>` **get_texture_type**\ (\ )

Определяет тип данных, предоставляемых исходной текстурой.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
