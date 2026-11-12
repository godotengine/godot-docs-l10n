:github_url: hide

.. _class_PacketPeerStream:

PacketPeerStream
================

**Успадковує:** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Обгортання для використання Packet Пірс по StreamPeer.

.. rst-class:: classref-introduction-group

Опис
--------

PacketStreamPeer provides a wrapper for working using packets over a stream. This allows for using packet based code with StreamPeers. PacketPeerStream implements a custom protocol over the StreamPeer, so the user should not read or write to the wrapped StreamPeer directly.

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using remote deploy. Otherwise, network communication of any kind will be blocked by Android.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`input_buffer_max_size<class_PacketPeerStream_property_input_buffer_max_size>`   | ``65532`` |
   +-------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`output_buffer_max_size<class_PacketPeerStream_property_output_buffer_max_size>` | ``65532`` |
   +-------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`StreamPeer<class_StreamPeer>` | :ref:`stream_peer<class_PacketPeerStream_property_stream_peer>`                       |           |
   +-------------------------------------+---------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_PacketPeerStream_property_input_buffer_max_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **input_buffer_max_size** = ``65532`` :ref:`🔗<class_PacketPeerStream_property_input_buffer_max_size>`

.. rst-class:: classref-property-setget

- |void| **set_input_buffer_max_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_input_buffer_max_size**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerStream_property_output_buffer_max_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **output_buffer_max_size** = ``65532`` :ref:`🔗<class_PacketPeerStream_property_output_buffer_max_size>`

.. rst-class:: classref-property-setget

- |void| **set_output_buffer_max_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_output_buffer_max_size**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerStream_property_stream_peer:

.. rst-class:: classref-property

:ref:`StreamPeer<class_StreamPeer>` **stream_peer** :ref:`🔗<class_PacketPeerStream_property_stream_peer>`

.. rst-class:: classref-property-setget

- |void| **set_stream_peer**\ (\ value\: :ref:`StreamPeer<class_StreamPeer>`\ )
- :ref:`StreamPeer<class_StreamPeer>` **get_stream_peer**\ (\ )

Об'єкт :ref:`StreamPeer<class_StreamPeer>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
