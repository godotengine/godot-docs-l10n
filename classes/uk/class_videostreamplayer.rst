:github_url: hide

.. _class_VideoStreamPlayer:

VideoStreamPlayer
=================

**Успадковує:** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Використовується для відтворення відео.

.. rst-class:: classref-introduction-group

Опис
--------

Контроль, що використовується для відтворення ресурсів :ref:`VideoStream<class_VideoStream>`.

Підтримувані формати відео `Ogg Theora <https://www.theora.org/>`__ (\ ``.ogv``, :ref:`VideoStreamTheora<class_VideoStreamTheora>`) і будь-який формат, що видається за допомогою плагіна GDExtension.

\ **Навігація:** На Веб-сайті, відтворення відео *will* виконає погано через відсутність архітектурно-специфічної оптимізації збірки.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Грати відео <../tutorials/animation/playing_videos>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`                 | :ref:`audio_track<class_VideoStreamPlayer_property_audio_track>`         | ``0``         |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`               | :ref:`autoplay<class_VideoStreamPlayer_property_autoplay>`               | ``false``     |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`                 | :ref:`buffering_msec<class_VideoStreamPlayer_property_buffering_msec>`   | ``500``       |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`StringName<class_StringName>`   | :ref:`bus<class_VideoStreamPlayer_property_bus>`                         | ``&"Master"`` |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`               | :ref:`expand<class_VideoStreamPlayer_property_expand>`                   | ``false``     |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`               | :ref:`loop<class_VideoStreamPlayer_property_loop>`                       | ``false``     |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`               | :ref:`paused<class_VideoStreamPlayer_property_paused>`                   | ``false``     |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`             | :ref:`speed_scale<class_VideoStreamPlayer_property_speed_scale>`         | ``1.0``       |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`VideoStream<class_VideoStream>` | :ref:`stream<class_VideoStreamPlayer_property_stream>`                   |               |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`             | :ref:`stream_position<class_VideoStreamPlayer_property_stream_position>` |               |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`             | :ref:`volume<class_VideoStreamPlayer_property_volume>`                   |               |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`             | :ref:`volume_db<class_VideoStreamPlayer_property_volume_db>`             | ``0.0``       |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | :ref:`get_stream_length<class_VideoStreamPlayer_method_get_stream_length>`\ (\ ) |const| |
   +-----------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`get_stream_name<class_VideoStreamPlayer_method_get_stream_name>`\ (\ ) |const|     |
   +-----------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`get_video_texture<class_VideoStreamPlayer_method_get_video_texture>`\ (\ ) |const| |
   +-----------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`is_playing<class_VideoStreamPlayer_method_is_playing>`\ (\ ) |const|               |
   +-----------------------------------+------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`play<class_VideoStreamPlayer_method_play>`\ (\ )                                   |
   +-----------------------------------+------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`stop<class_VideoStreamPlayer_method_stop>`\ (\ )                                   |
   +-----------------------------------+------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_VideoStreamPlayer_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_VideoStreamPlayer_signal_finished>`

При завершенні відтворення.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VideoStreamPlayer_property_audio_track:

.. rst-class:: classref-property

:ref:`int<class_int>` **audio_track** = ``0`` :ref:`🔗<class_VideoStreamPlayer_property_audio_track>`

.. rst-class:: classref-property-setget

- |void| **set_audio_track**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_audio_track**\ (\ )

Вбудований аудіо доріжки для гри.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_autoplay:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autoplay** = ``false`` :ref:`🔗<class_VideoStreamPlayer_property_autoplay>`

.. rst-class:: classref-property-setget

- |void| **set_autoplay**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_autoplay**\ (\ )

Якщо ``true``, відтворення починається при навантаженні сцени.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_buffering_msec:

.. rst-class:: classref-property

:ref:`int<class_int>` **buffering_msec** = ``500`` :ref:`🔗<class_VideoStreamPlayer_property_buffering_msec>`

.. rst-class:: classref-property-setget

- |void| **set_buffering_msec**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_buffering_msec**\ (\ )

Кількість часу в мілісекундах для зберігання в буфері під час гри.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_bus:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **bus** = ``&"Master"`` :ref:`🔗<class_VideoStreamPlayer_property_bus>`

.. rst-class:: classref-property-setget

- |void| **set_bus**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_bus**\ (\ )

Аудіо автобус для використання для відтворення звуку.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_expand:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **expand** = ``false`` :ref:`🔗<class_VideoStreamPlayer_property_expand>`

.. rst-class:: classref-property-setget

- |void| **set_expand**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_expand**\ (\ )

Якщо ``true``, відеовага до розміру управління. В іншому випадку, мінімальний розмір керування автоматично регульований, щоб відповідати розмірам відео потоку.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``false`` :ref:`🔗<class_VideoStreamPlayer_property_loop>`

.. rst-class:: classref-property-setget

- |void| **set_loop**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_loop**\ (\ )

Якщо ``true``, відеоперезапуски, коли він досягає кінця.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_paused:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **paused** = ``false`` :ref:`🔗<class_VideoStreamPlayer_property_paused>`

.. rst-class:: classref-property-setget

- |void| **set_paused**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_paused**\ (\ )

Якщо ``true``, відео паулюється.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **speed_scale** = ``1.0`` :ref:`🔗<class_VideoStreamPlayer_property_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_speed_scale**\ (\ )

Поточна шкала швидкості потоку. ``1.0`` – це нормальна швидкість, тоді як ``2.0`` – це подвійна швидкість, а ``0.5`` – половинна швидкість. Шкала швидкості ``0.0`` призупиняє відео, подібно до встановлення для :ref:`paused<class_VideoStreamPlayer_property_paused>` значення ``true``.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_stream:

.. rst-class:: classref-property

:ref:`VideoStream<class_VideoStream>` **stream** :ref:`🔗<class_VideoStreamPlayer_property_stream>`

.. rst-class:: classref-property-setget

- |void| **set_stream**\ (\ value\: :ref:`VideoStream<class_VideoStream>`\ )
- :ref:`VideoStream<class_VideoStream>` **get_stream**\ (\ )

Присвоєно відео потік. Переглянути опис для підтримуваних форматів.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_stream_position:

.. rst-class:: classref-property

:ref:`float<class_float>` **stream_position** :ref:`🔗<class_VideoStreamPlayer_property_stream_position>`

.. rst-class:: classref-property-setget

- |void| **set_stream_position**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_stream_position**\ (\ )

Поточна позиція потоку в секундах.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_volume:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume** :ref:`🔗<class_VideoStreamPlayer_property_volume>`

.. rst-class:: classref-property-setget

- |void| **set_volume**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume**\ (\ )

Аудіо об'єм як лінійне значення.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_volume_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_db** = ``0.0`` :ref:`🔗<class_VideoStreamPlayer_property_volume_db>`

.. rst-class:: classref-property-setget

- |void| **set_volume_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_db**\ (\ )

Аудіо об'єм в dB.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_VideoStreamPlayer_method_get_stream_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_stream_length**\ (\ ) |const| :ref:`🔗<class_VideoStreamPlayer_method_get_stream_length>`

Тривалість поточного потоку в секундах.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_method_get_stream_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_stream_name**\ (\ ) |const| :ref:`🔗<class_VideoStreamPlayer_method_get_stream_name>`

Повертає назву відео потік, або ``"<No Stream>"``, якщо не призначено відео потік.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_method_get_video_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_video_texture**\ (\ ) |const| :ref:`🔗<class_VideoStreamPlayer_method_get_video_texture>`

Returns the video playback texture.

The texture will be continually updated as the video plays, so call :ref:`Texture2D.get_image()<class_Texture2D_method_get_image>` to get a still frame.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_method_is_playing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_playing**\ (\ ) |const| :ref:`🔗<class_VideoStreamPlayer_method_is_playing>`

Повертає ``true``, якщо грає відео.

\ **Примітка:** Відео все ще вважається, якщо блідий під час відтворення.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_method_play:

.. rst-class:: classref-method

|void| **play**\ (\ ) :ref:`🔗<class_VideoStreamPlayer_method_play>`

Starts the video playback from the beginning, unless the video is already playing.

\ **Note:** If the video is paused, this will not unpause the video.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_VideoStreamPlayer_method_stop>`

Стопує відео відтворення і встановлює позицію потоку до 0.

\ **Примітка:** Незважаючи на те, що позиція потоку буде встановлена до 0, перший кадр відеопотоку не стане поточною рамою.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
