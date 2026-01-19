:github_url: hide

.. _class_VisualShaderNodeTexture:

VisualShaderNodeTexture
=======================

**Успадковує:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Виконує зовнішній вигляд текстури 2D в графі візуального відтінку.

.. rst-class:: classref-introduction-group

Опис
--------

Виконує роботу зовнішнього вигляду на заданій фактурі, за допомогою підтримки декількох джерел текстур, щоб вибрати з.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+
   | :ref:`Source<enum_VisualShaderNodeTexture_Source>`           | :ref:`source<class_VisualShaderNodeTexture_property_source>`             | ``0`` |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>`                            | :ref:`texture<class_VisualShaderNodeTexture_property_texture>`           |       |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+
   | :ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>` | :ref:`texture_type<class_VisualShaderNodeTexture_property_texture_type>` | ``0`` |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_VisualShaderNodeTexture_Source:

.. rst-class:: classref-enumeration

enum **Source**: :ref:`🔗<enum_VisualShaderNodeTexture_Source>`

.. _class_VisualShaderNodeTexture_constant_SOURCE_TEXTURE:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_TEXTURE** = ``0``

Використовуйте фактуру, надану як аргумент для цієї функції.

.. _class_VisualShaderNodeTexture_constant_SOURCE_SCREEN:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_SCREEN** = ``1``

Використовуйте текстуру поточного порту як джерело.

.. _class_VisualShaderNodeTexture_constant_SOURCE_2D_TEXTURE:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_2D_TEXTURE** = ``2``

Використовуйте текстуру з цієї текстури шейдера вбудована (наприклад, текстура :ref:`Sprite2D<class_Sprite2D>`).

.. _class_VisualShaderNodeTexture_constant_SOURCE_2D_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_2D_NORMAL** = ``3``

Використовуйте текстуру з нормальної карти цього відтінку.

.. _class_VisualShaderNodeTexture_constant_SOURCE_DEPTH:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_DEPTH** = ``4``

Використовуйте глибину текстуру, захоплену під час проходу глибини. Тільки доступні при використанні глибинного обходу (тобто в просторих шейкерах і в forward_plus або gl_compatibility рендерингу).

.. _class_VisualShaderNodeTexture_constant_SOURCE_PORT:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_PORT** = ``5``

Використовуйте текстуру, надану в вхідному порту для цієї функції.

.. _class_VisualShaderNodeTexture_constant_SOURCE_3D_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_3D_NORMAL** = ``6``

Використання нормального буфера, захопленого під час проходу глибини. Доступно тільки при нормальному розміщенні буфера (тобто в просторих відтінках і в реверсії_plus рендерера).

.. _class_VisualShaderNodeTexture_constant_SOURCE_ROUGHNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_ROUGHNESS** = ``7``

Використовуйте буфер грубості, захоплений під час проходу глибини. Доступно тільки при нормальному розміщенні буфера (тобто в просторих відтінках і в реверсії_plus рендерера).

.. _class_VisualShaderNodeTexture_constant_SOURCE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_MAX** = ``8``

Представляємо розмір :ref:`Source<enum_VisualShaderNodeTexture_Source>` enum.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeTexture_TextureType:

.. rst-class:: classref-enumeration

enum **TextureType**: :ref:`🔗<enum_VisualShaderNodeTexture_TextureType>`

.. _class_VisualShaderNodeTexture_constant_TYPE_DATA:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>` **TYPE_DATA** = ``0``

Немає натяків додається до однорідної декларації.

.. _class_VisualShaderNodeTexture_constant_TYPE_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>` **TYPE_COLOR** = ``1``

Додає ``source_color`` як підказку до уніфікованого оголошення для правильного перетворення з нелінійного кодування sRGB на лінійне кодування.

.. _class_VisualShaderNodeTexture_constant_TYPE_NORMAL_MAP:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>` **TYPE_NORMAL_MAP** = ``2``

Додавання ``hint_normal`` як натяка на рівномірну декларацію, яка внутрішньо перетворює фактуру для належного використання як нормальну карту.

.. _class_VisualShaderNodeTexture_constant_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>` **TYPE_MAX** = ``3``

Представляємо розмір :ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>` enum.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VisualShaderNodeTexture_property_source:

.. rst-class:: classref-property

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **source** = ``0`` :ref:`🔗<class_VisualShaderNodeTexture_property_source>`

.. rst-class:: classref-property-setget

- |void| **set_source**\ (\ value\: :ref:`Source<enum_VisualShaderNodeTexture_Source>`\ )
- :ref:`Source<enum_VisualShaderNodeTexture_Source>` **get_source**\ (\ )

Визначає джерело для пошуку.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeTexture_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_VisualShaderNodeTexture_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

Вихідна текстура, якщо потрібна для вибраного :ref:`source<class_VisualShaderNodeTexture_property_source>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeTexture_property_texture_type:

.. rst-class:: classref-property

:ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>` **texture_type** = ``0`` :ref:`🔗<class_VisualShaderNodeTexture_property_texture_type>`

.. rst-class:: classref-property-setget

- |void| **set_texture_type**\ (\ value\: :ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>`\ )
- :ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>` **get_texture_type**\ (\ )

Визначає тип текстури, якщо :ref:`source<class_VisualShaderNodeTexture_property_source>` встановлено на :ref:`SOURCE_TEXTURE<class_VisualShaderNodeTexture_constant_SOURCE_TEXTURE>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
