:github_url: hide

.. _class_RDTextureFormat:

RDTextureFormat
===============

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Формат Текстури (використано :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Опис
--------

Цей об'єкт використовується :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                        | :ref:`array_layers<class_RDTextureFormat_property_array_layers>`           | ``1``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                        | :ref:`depth<class_RDTextureFormat_property_depth>`                         | ``1``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`DataFormat<enum_RenderingDevice_DataFormat>`                           | :ref:`format<class_RDTextureFormat_property_format>`                       | ``8``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                        | :ref:`height<class_RDTextureFormat_property_height>`                       | ``1``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                      | :ref:`is_discardable<class_RDTextureFormat_property_is_discardable>`       | ``false`` |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                      | :ref:`is_resolve_buffer<class_RDTextureFormat_property_is_resolve_buffer>` | ``false`` |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                        | :ref:`mipmaps<class_RDTextureFormat_property_mipmaps>`                     | ``1``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>`                   | :ref:`samples<class_RDTextureFormat_property_samples>`                     | ``0``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`TextureType<enum_RenderingDevice_TextureType>`                         | :ref:`texture_type<class_RDTextureFormat_property_texture_type>`           | ``1``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | |bitfield|\[:ref:`TextureUsageBits<enum_RenderingDevice_TextureUsageBits>`\] | :ref:`usage_bits<class_RDTextureFormat_property_usage_bits>`               | ``0``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                        | :ref:`width<class_RDTextureFormat_property_width>`                         | ``1``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_shareable_format<class_RDTextureFormat_method_add_shareable_format>`\ (\ format\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ )       |
   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`remove_shareable_format<class_RDTextureFormat_method_remove_shareable_format>`\ (\ format\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ ) |
   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_RDTextureFormat_property_array_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **array_layers** = ``1`` :ref:`🔗<class_RDTextureFormat_property_array_layers>`

.. rst-class:: classref-property-setget

- |void| **set_array_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_array_layers**\ (\ )

Кількість шарів в фактурі. Тільки відповідні для 2D текстурних масивів.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_depth:

.. rst-class:: classref-property

:ref:`int<class_int>` **depth** = ``1`` :ref:`🔗<class_RDTextureFormat_property_depth>`

.. rst-class:: classref-property-setget

- |void| **set_depth**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_depth**\ (\ )

Глибина текстури (у пікселях). Це завжди ``1`` для текстур 2D.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_format:

.. rst-class:: classref-property

:ref:`DataFormat<enum_RenderingDevice_DataFormat>` **format** = ``8`` :ref:`🔗<class_RDTextureFormat_property_format>`

.. rst-class:: classref-property-setget

- |void| **set_format**\ (\ value\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ )
- :ref:`DataFormat<enum_RenderingDevice_DataFormat>` **get_format**\ (\ )

Формат даних фактури.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_height:

.. rst-class:: classref-property

:ref:`int<class_int>` **height** = ``1`` :ref:`🔗<class_RDTextureFormat_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_height**\ (\ )

Висота текстури (у пікселях).

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_is_discardable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **is_discardable** = ``false`` :ref:`🔗<class_RDTextureFormat_property_is_discardable>`

.. rst-class:: classref-property-setget

- |void| **set_is_discardable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_is_discardable**\ (\ )

Якщо текстуру можна відкинути, її вміст не потрібно зберігати між кадрами. Цей прапор має значення лише тоді, коли текстура використовується як ціль у списку малювання. 

Ця інформація використовується :ref:`RenderingDevice<class_RenderingDevice>`, щоб визначити, чи можна скинути вміст текстури, усуваючи непотрібні записи в пам’ять і підвищуючи продуктивність.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_is_resolve_buffer:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **is_resolve_buffer** = ``false`` :ref:`🔗<class_RDTextureFormat_property_is_resolve_buffer>`

.. rst-class:: classref-property-setget

- |void| **set_is_resolve_buffer**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_is_resolve_buffer**\ (\ )

Текстура використовуватиметься як місце призначення операції вирішення.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_mipmaps:

.. rst-class:: classref-property

:ref:`int<class_int>` **mipmaps** = ``1`` :ref:`🔗<class_RDTextureFormat_property_mipmaps>`

.. rst-class:: classref-property-setget

- |void| **set_mipmaps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_mipmaps**\ (\ )

Кількість mipmaps доступна в фактурі.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_samples:

.. rst-class:: classref-property

:ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **samples** = ``0`` :ref:`🔗<class_RDTextureFormat_property_samples>`

.. rst-class:: classref-property-setget

- |void| **set_samples**\ (\ value\: :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>`\ )
- :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **get_samples**\ (\ )

Кількість зразків, які використовуються при підборі текстури.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_texture_type:

.. rst-class:: classref-property

:ref:`TextureType<enum_RenderingDevice_TextureType>` **texture_type** = ``1`` :ref:`🔗<class_RDTextureFormat_property_texture_type>`

.. rst-class:: classref-property-setget

- |void| **set_texture_type**\ (\ value\: :ref:`TextureType<enum_RenderingDevice_TextureType>`\ )
- :ref:`TextureType<enum_RenderingDevice_TextureType>` **get_texture_type**\ (\ )

Тип текстури.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_usage_bits:

.. rst-class:: classref-property

|bitfield|\[:ref:`TextureUsageBits<enum_RenderingDevice_TextureUsageBits>`\] **usage_bits** = ``0`` :ref:`🔗<class_RDTextureFormat_property_usage_bits>`

.. rst-class:: classref-property-setget

- |void| **set_usage_bits**\ (\ value\: |bitfield|\[:ref:`TextureUsageBits<enum_RenderingDevice_TextureUsageBits>`\]\ )
- |bitfield|\[:ref:`TextureUsageBits<enum_RenderingDevice_TextureUsageBits>`\] **get_usage_bits**\ (\ )

Укуси використання текстури, які визначають те, що можна зробити за допомогою текстури.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **width** = ``1`` :ref:`🔗<class_RDTextureFormat_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_width**\ (\ )

Ширина текстури (в пікселях).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_RDTextureFormat_method_add_shareable_format:

.. rst-class:: classref-method

|void| **add_shareable_format**\ (\ format\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ ) :ref:`🔗<class_RDTextureFormat_method_add_shareable_format>`

Додає ``format`` як дійсний формат для відповідної властивості :ref:`RDTextureView<class_RDTextureView>` :ref:`RDTextureView.format_override<class_RDTextureView_property_format_override>`. Якщо будь-який формат додається як доступний для спільного використання, тоді також потрібно додати головний :ref:`format<class_RDTextureFormat_property_format>`.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_method_remove_shareable_format:

.. rst-class:: classref-method

|void| **remove_shareable_format**\ (\ format\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ ) :ref:`🔗<class_RDTextureFormat_method_remove_shareable_format>`

Видаляє ``format`` зі списку дійсних форматів, які можна встановити для відповідної властивості :ref:`RDTextureView.format_override<class_RDTextureView_property_format_override>` :ref:`RDTextureView<class_RDTextureView>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
