:github_url: hide

.. _class_RDTextureView:

RDTextureView
=============

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Текстура (використана :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Опис
--------

Цей об'єкт використовується :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------------------------+---------+
   | :ref:`DataFormat<enum_RenderingDevice_DataFormat>`         | :ref:`format_override<class_RDTextureView_property_format_override>` | ``232`` |
   +------------------------------------------------------------+----------------------------------------------------------------------+---------+
   | :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` | :ref:`swizzle_a<class_RDTextureView_property_swizzle_a>`             | ``6``   |
   +------------------------------------------------------------+----------------------------------------------------------------------+---------+
   | :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` | :ref:`swizzle_b<class_RDTextureView_property_swizzle_b>`             | ``5``   |
   +------------------------------------------------------------+----------------------------------------------------------------------+---------+
   | :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` | :ref:`swizzle_g<class_RDTextureView_property_swizzle_g>`             | ``4``   |
   +------------------------------------------------------------+----------------------------------------------------------------------+---------+
   | :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` | :ref:`swizzle_r<class_RDTextureView_property_swizzle_r>`             | ``3``   |
   +------------------------------------------------------------+----------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_RDTextureView_property_format_override:

.. rst-class:: classref-property

:ref:`DataFormat<enum_RenderingDevice_DataFormat>` **format_override** = ``232`` :ref:`🔗<class_RDTextureView_property_format_override>`

.. rst-class:: classref-property-setget

- |void| **set_format_override**\ (\ value\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ )
- :ref:`DataFormat<enum_RenderingDevice_DataFormat>` **get_format_override**\ (\ )

Необов’язкове перевизначення формату даних, у якому повертаються вибіркові значення. У відповідному :ref:`RDTextureFormat<class_RDTextureFormat>` це має бути додано як формат, доступний для спільного використання. Значення за замовчуванням :ref:`RenderingDevice.DATA_FORMAT_MAX<class_RenderingDevice_constant_DATA_FORMAT_MAX>` не перевизначає формат.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureView_property_swizzle_a:

.. rst-class:: classref-property

:ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **swizzle_a** = ``6`` :ref:`🔗<class_RDTextureView_property_swizzle_a>`

.. rst-class:: classref-property-setget

- |void| **set_swizzle_a**\ (\ value\: :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>`\ )
- :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **get_swizzle_a**\ (\ )

Канал для вибірки при відбору альфа-каналу.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureView_property_swizzle_b:

.. rst-class:: classref-property

:ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **swizzle_b** = ``5`` :ref:`🔗<class_RDTextureView_property_swizzle_b>`

.. rst-class:: classref-property-setget

- |void| **set_swizzle_b**\ (\ value\: :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>`\ )
- :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **get_swizzle_b**\ (\ )

Канал для вибірки при відборі синього кольору каналу.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureView_property_swizzle_g:

.. rst-class:: classref-property

:ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **swizzle_g** = ``4`` :ref:`🔗<class_RDTextureView_property_swizzle_g>`

.. rst-class:: classref-property-setget

- |void| **set_swizzle_g**\ (\ value\: :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>`\ )
- :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **get_swizzle_g**\ (\ )

Канал для вибірки при відбору зеленого каналу кольору.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureView_property_swizzle_r:

.. rst-class:: classref-property

:ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **swizzle_r** = ``3`` :ref:`🔗<class_RDTextureView_property_swizzle_r>`

.. rst-class:: classref-property-setget

- |void| **set_swizzle_r**\ (\ value\: :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>`\ )
- :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **get_swizzle_r**\ (\ )

Канал для вибірки при відбору червоного кольору каналу.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
