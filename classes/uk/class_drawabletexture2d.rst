:github_url: hide

.. _class_DrawableTexture2D:

DrawableTexture2D
=================

**Успадковує:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Двовимірна текстура, яка підтримує малювання на себе за допомогою викликів Blit.

.. rst-class:: classref-introduction-group

Опис
--------

2D-текстура, яку можна модифікувати за допомогою викликів blit, копіюючи дані з цільової текстури в саму себе. Оскільки вона в першу чергу призначена для управління в коді, користувач повинен викликати :ref:`setup()<class_DrawableTexture2D_method_setup>` для ініціалізації стану перед малюванням. Кожен виклик :ref:`blit_rect()<class_DrawableTexture2D_method_blit_rect>` приймає як мінімум прямокутник (область для малювання) та іншу текстуру (те, що потрібно намалювати). Виклики малювання використовують шейдер Texture_Blit для обробки та обчислення результату піксель за пікселем. Користувачі можуть надати власний ShaderMaterial із налаштованими шейдерами Texture_Blit для більш складних дій.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------+-------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | resource_local_to_scene | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-------------------------+-------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
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

Переліки
----------------

.. _enum_DrawableTexture2D_DrawableFormat:

.. rst-class:: classref-enumeration

enum **DrawableFormat**: :ref:`🔗<enum_DrawableTexture2D_DrawableFormat>`

.. _class_DrawableTexture2D_constant_DRAWABLE_FORMAT_RGBA8:

.. rst-class:: classref-enumeration-constant

:ref:`DrawableFormat<enum_DrawableTexture2D_DrawableFormat>` **DRAWABLE_FORMAT_RGBA8** = ``0``

Формат текстури OpenGL RGBA з чотирма компонентами, кожен із яких має розрядність 8 біт.

.. _class_DrawableTexture2D_constant_DRAWABLE_FORMAT_RGBA8_SRGB:

.. rst-class:: classref-enumeration-constant

:ref:`DrawableFormat<enum_DrawableTexture2D_DrawableFormat>` **DRAWABLE_FORMAT_RGBA8_SRGB** = ``1``

Формат текстури OpenGL RGBA з чотирма компонентами, кожен із яких має розрядність 8 біт.

Під час виведення на екран виконується перетворення з колірного простору sRGB у лінійний.

.. _class_DrawableTexture2D_constant_DRAWABLE_FORMAT_RGBAH:

.. rst-class:: classref-enumeration-constant

:ref:`DrawableFormat<enum_DrawableTexture2D_DrawableFormat>` **DRAWABLE_FORMAT_RGBAH** = ``2``

Формат текстури OpenGL GL_RGBA16F, що складається з чотирьох компонентів, кожен з яких є 16-бітним числом з плаваючою комою «напівточної точності».

.. _class_DrawableTexture2D_constant_DRAWABLE_FORMAT_RGBAF:

.. rst-class:: classref-enumeration-constant

:ref:`DrawableFormat<enum_DrawableTexture2D_DrawableFormat>` **DRAWABLE_FORMAT_RGBAF** = ``3``

Формат текстури OpenGL GL_RGBA32F, що складається з чотирьох компонентів, кожен з яких є 32-бітним значенням з плаваючою комою.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_DrawableTexture2D_method_blit_rect:

.. rst-class:: classref-method

|void| **blit_rect**\ (\ rect\: :ref:`Rect2i<class_Rect2i>`, source\: :ref:`Texture2D<class_Texture2D>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), mipmap\: :ref:`int<class_int>` = 0, material\: :ref:`Material<class_Material>` = null\ ) :ref:`🔗<class_DrawableTexture2D_method_blit_rect>`

**Експериментальний:** Цей метод може бути змінений або усунутий у наступних версіях.

Малює на заданій ``rect`` області цієї текстури, копіюючи дані з вказаного ``source``. Для використання шейдером можна передати колір ``modulate``, але за замовчуванням використовується білий. Значення ``mipmap`` дозволяє вказати малювання на нижчому рівні міпмапу. Параметр ``material`` може приймати об’єкт ShaderMaterial із шейдером TextureBlit для реалізації власного алгоритму малювання.

.. rst-class:: classref-item-separator

----

.. _class_DrawableTexture2D_method_blit_rect_multi:

.. rst-class:: classref-method

|void| **blit_rect_multi**\ (\ rect\: :ref:`Rect2i<class_Rect2i>`, sources\: :ref:`Array<class_Array>`\[:ref:`Texture2D<class_Texture2D>`\], extra_targets\: :ref:`Array<class_Array>`\[:ref:`DrawableTexture2D<class_DrawableTexture2D>`\], modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), mipmap\: :ref:`int<class_int>` = 0, material\: :ref:`Material<class_Material>` = null\ ) :ref:`🔗<class_DrawableTexture2D_method_blit_rect_multi>`

**Експериментальний:** Цей метод може бути змінений або усунутий у наступних версіях.

Малює на заданій ``rect`` на цій текстурі, а також на максимум 3 об’єктах DrawableTexture ``extra_targets``. Усі ``extra_targets`` повинні мати той самий розмір і формат DrawableFormat, що й вихідна ціль, інакше шейдер може не спрацювати. Приймає до 4 текстур ``sources``, але замінить відсутні ``sources`` чорними текстурами за замовчуванням.

.. rst-class:: classref-item-separator

----

.. _class_DrawableTexture2D_method_generate_mipmaps:

.. rst-class:: classref-method

|void| **generate_mipmaps**\ (\ ) :ref:`🔗<class_DrawableTexture2D_method_generate_mipmaps>`

Перераховує міп-карти для цієї текстури за запитом.

.. rst-class:: classref-item-separator

----

.. _class_DrawableTexture2D_method_get_use_mipmaps:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_use_mipmaps**\ (\ ) |const| :ref:`🔗<class_DrawableTexture2D_method_get_use_mipmaps>`

Повертає ``true``, якщо для цього об’єкта DrawableTexture налаштовано використання міпмап.

.. rst-class:: classref-item-separator

----

.. _class_DrawableTexture2D_method_set_format:

.. rst-class:: classref-method

|void| **set_format**\ (\ format\: :ref:`DrawableFormat<enum_DrawableTexture2D_DrawableFormat>`\ ) :ref:`🔗<class_DrawableTexture2D_method_set_format>`

Встановлює формат цієї DrawableTexture.

.. rst-class:: classref-item-separator

----

.. _class_DrawableTexture2D_method_set_use_mipmaps:

.. rst-class:: classref-method

|void| **set_use_mipmaps**\ (\ mipmaps\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_DrawableTexture2D_method_set_use_mipmaps>`

Встановлює, чи слід використовувати міп-мапи для цього об’єкта DrawableTexture.

.. rst-class:: classref-item-separator

----

.. _class_DrawableTexture2D_method_setup:

.. rst-class:: classref-method

|void| **setup**\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, format\: :ref:`DrawableFormat<enum_DrawableTexture2D_DrawableFormat>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), use_mipmaps\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_DrawableTexture2D_method_setup>`

**Експериментальний:** Цей метод може бути змінений або усунутий у наступних версіях.

Ініціалізує DrawableTexture як білу текстуру із заданими параметрами ``width``, ``height`` та ``format``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
