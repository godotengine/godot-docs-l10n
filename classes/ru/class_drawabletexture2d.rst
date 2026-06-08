:github_url: hide

.. _class_DrawableTexture2D:

DrawableTexture2D
=================

**Наследует:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

2D текстура, поддерживающая отрисовку самой на себя с помощью вызовов Blit.

.. rst-class:: classref-introduction-group

Описание
----------------

2D текстура, которую можно изменять с помощью вызовов blit, копируя изображение с целевой текстуры на себя. В основном предназначена для управления в коде; пользователь должен вызвать :ref:`setup()<class_DrawableTexture2D_method_setup>` для инициализации состояния перед отрисовкой. Каждый вызов :ref:`blit_rect()<class_DrawableTexture2D_method_blit_rect>` принимает как минимум прямоугольник (область для отрисовки) и другую текстуру (что именно нужно отрисовать). Вызовы отрисовки используют шейдер Texture_Blit для обработки и вычисления результата, пиксель за пикселем. Пользователи могут предоставлять собственные ShaderMaterial с пользовательскими шейдерами Texture_Blit для более сложных сценариев поведения.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------+-------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | resource_local_to_scene | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-------------------------+-------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`blit_rect<class_DrawableTexture2D_method_blit_rect>`\ (\ rect\: :ref:`Rect2i<class_Rect2i>`, source\: :ref:`Texture2D<class_Texture2D>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), mipmap\: :ref:`int<class_int>` = 0, material\: :ref:`Material<class_Material>` = null\ )                                                                                                                                           |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`blit_rect_multi<class_DrawableTexture2D_method_blit_rect_multi>`\ (\ rect\: :ref:`Rect2i<class_Rect2i>`, sources\: :ref:`Array<class_Array>`\[:ref:`Texture2D<class_Texture2D>`\], extra_targets\: :ref:`Array<class_Array>`\[:ref:`DrawableTexture2D<class_DrawableTexture2D>`\], modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), mipmap\: :ref:`int<class_int>` = 0, material\: :ref:`Material<class_Material>` = null\ ) |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`generate_mipmaps<class_DrawableTexture2D_method_generate_mipmaps>`\ (\ )                                                                                                                                                                                                                                                                                                                                                              |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_use_mipmaps<class_DrawableTexture2D_method_get_use_mipmaps>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                        |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_format<class_DrawableTexture2D_method_set_format>`\ (\ format\: :ref:`DrawableFormat<enum_DrawableTexture2D_DrawableFormat>`\ )                                                                                                                                                                                                                                                                                                   |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_use_mipmaps<class_DrawableTexture2D_method_set_use_mipmaps>`\ (\ mipmaps\: :ref:`bool<class_bool>`\ )                                                                                                                                                                                                                                                                                                                             |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`setup<class_DrawableTexture2D_method_setup>`\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, format\: :ref:`DrawableFormat<enum_DrawableTexture2D_DrawableFormat>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), use_mipmaps\: :ref:`bool<class_bool>` = false\ )                                                                                                                                        |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_DrawableTexture2D_DrawableFormat:

.. rst-class:: classref-enumeration

enum **DrawableFormat**: :ref:`🔗<enum_DrawableTexture2D_DrawableFormat>`

.. _class_DrawableTexture2D_constant_DRAWABLE_FORMAT_RGBA8:

.. rst-class:: classref-enumeration-constant

:ref:`DrawableFormat<enum_DrawableTexture2D_DrawableFormat>` **DRAWABLE_FORMAT_RGBA8** = ``0``

Текстурный формат OpenGL RGBA, состоящий из четырех компонентов, каждый с 8-битной глубиной цвета.

.. _class_DrawableTexture2D_constant_DRAWABLE_FORMAT_RGBA8_SRGB:

.. rst-class:: classref-enumeration-constant

:ref:`DrawableFormat<enum_DrawableTexture2D_DrawableFormat>` **DRAWABLE_FORMAT_RGBA8_SRGB** = ``1``

Текстурный формат OpenGL RGBA с четырьмя компонентами, каждый с 8-битной глубиной цвета.

При отрисовке выполняется преобразование цветового пространства sRGB в линейное.

.. _class_DrawableTexture2D_constant_DRAWABLE_FORMAT_RGBAH:

.. rst-class:: classref-enumeration-constant

:ref:`DrawableFormat<enum_DrawableTexture2D_DrawableFormat>` **DRAWABLE_FORMAT_RGBAH** = ``2``

Текстурный формат OpenGL GL_RGBA16F, состоящий из четырех компонентов, каждый из которых представляет собой 16-битное значение с плавающей запятой "половинной точности".

.. _class_DrawableTexture2D_constant_DRAWABLE_FORMAT_RGBAF:

.. rst-class:: classref-enumeration-constant

:ref:`DrawableFormat<enum_DrawableTexture2D_DrawableFormat>` **DRAWABLE_FORMAT_RGBAF** = ``3``

Текстурный формат OpenGL GL_RGBA32F, состоящий из четырех компонентов, каждый из которых представляет собой 32-битное значение с плавающей запятой.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_DrawableTexture2D_method_blit_rect:

.. rst-class:: classref-method

|void| **blit_rect**\ (\ rect\: :ref:`Rect2i<class_Rect2i>`, source\: :ref:`Texture2D<class_Texture2D>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), mipmap\: :ref:`int<class_int>` = 0, material\: :ref:`Material<class_Material>` = null\ ) :ref:`🔗<class_DrawableTexture2D_method_blit_rect>`

**Экспериментальное:** This function and its parameters are likely to change in the 4.7 Dev Cycle

Рисует на заданном ``rect`` участке этой текстуры, копируя изображение из заданного ``source``. В качестве цвета для шейдера можно передать ``modulate``, но по умолчанию он белый. Значение ``mipmap`` позволяет указать отрисовку на более низком уровне мипмапа. Параметр ``material`` может принимать объект ShaderMaterial с шейдером TextureBlit для настройки поведения отрисовки.

.. rst-class:: classref-item-separator

----

.. _class_DrawableTexture2D_method_blit_rect_multi:

.. rst-class:: classref-method

|void| **blit_rect_multi**\ (\ rect\: :ref:`Rect2i<class_Rect2i>`, sources\: :ref:`Array<class_Array>`\[:ref:`Texture2D<class_Texture2D>`\], extra_targets\: :ref:`Array<class_Array>`\[:ref:`DrawableTexture2D<class_DrawableTexture2D>`\], modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), mipmap\: :ref:`int<class_int>` = 0, material\: :ref:`Material<class_Material>` = null\ ) :ref:`🔗<class_DrawableTexture2D_method_blit_rect_multi>`

**Экспериментальное:** This function and its parameters are likely to change in the 4.7 Dev Cycle

Рисует на заданном ``rect`` участке этой текстуры, а также на не более чем 3 объектах DrawableTexture ``extra_targets``. Все ``extra_targets`` должны иметь тот же размер и формат DrawableFormat, что и исходный целевой объект, иначе шейдер может завершиться ошибкой. Ожидает до 4 объектов Texture ``sources``, но заменит отсутствующие ``sources`` текстурами Black по умолчанию.

.. rst-class:: classref-item-separator

----

.. _class_DrawableTexture2D_method_generate_mipmaps:

.. rst-class:: classref-method

|void| **generate_mipmaps**\ (\ ) :ref:`🔗<class_DrawableTexture2D_method_generate_mipmaps>`

Пересчитывает мипмапы для этой текстуры по запросу.

.. rst-class:: classref-item-separator

----

.. _class_DrawableTexture2D_method_get_use_mipmaps:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_use_mipmaps**\ (\ ) |const| :ref:`🔗<class_DrawableTexture2D_method_get_use_mipmaps>`

Возвращает ``true``, если для этого объекта DrawableTexture задано использование мипмапов.

.. rst-class:: classref-item-separator

----

.. _class_DrawableTexture2D_method_set_format:

.. rst-class:: classref-method

|void| **set_format**\ (\ format\: :ref:`DrawableFormat<enum_DrawableTexture2D_DrawableFormat>`\ ) :ref:`🔗<class_DrawableTexture2D_method_set_format>`

Задает формат этого DrawableTexture.

.. rst-class:: classref-item-separator

----

.. _class_DrawableTexture2D_method_set_use_mipmaps:

.. rst-class:: classref-method

|void| **set_use_mipmaps**\ (\ mipmaps\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_DrawableTexture2D_method_set_use_mipmaps>`

Определяет, следует ли использовать мипмапы для этого объекта DrawableTexture.

.. rst-class:: classref-item-separator

----

.. _class_DrawableTexture2D_method_setup:

.. rst-class:: classref-method

|void| **setup**\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, format\: :ref:`DrawableFormat<enum_DrawableTexture2D_DrawableFormat>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), use_mipmaps\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_DrawableTexture2D_method_setup>`

**Экспериментальное:** This function and its parameters are likely to change in the 4.7 Dev Cycle

Инициализирует DrawableTexture белой текстурой заданных параметров: ``width``, ``height`` и ``format``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
