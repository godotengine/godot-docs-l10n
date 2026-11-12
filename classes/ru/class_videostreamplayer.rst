:github_url: hide

.. _class_VideoStreamPlayer:

VideoStreamPlayer
=================

**Наследует:** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Элемент управления, используемый для воспроизведения видео.

.. rst-class:: classref-introduction-group

Описание
----------------

Элемент управления, используемый для воспроизведения ресурсов :ref:`VideoStream<class_VideoStream>`.

Поддерживаемые форматы видео: `Ogg Theora <https://www.theora.org/>`__ (\ ``.ogv``, :ref:`VideoStreamTheora<class_VideoStreamTheora>`) и любой формат, предоставляемый через плагин GDExtension.

\ **Предупреждение:** В Интернете воспроизведение видео *будет* работать плохо из-за отсутствия архитектурно-специфических оптимизаций сборки.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Воспроизведение видео <../tutorials/animation/playing_videos>`

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Методы
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

Сигналы
--------------

.. _class_VideoStreamPlayer_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_VideoStreamPlayer_signal_finished>`

Издается после завершения воспроизведения.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VideoStreamPlayer_property_audio_track:

.. rst-class:: classref-property

:ref:`int<class_int>` **audio_track** = ``0`` :ref:`🔗<class_VideoStreamPlayer_property_audio_track>`

.. rst-class:: classref-property-setget

- |void| **set_audio_track**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_audio_track**\ (\ )

Встроенная звуковая дорожка для воспроизведения.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_autoplay:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autoplay** = ``false`` :ref:`🔗<class_VideoStreamPlayer_property_autoplay>`

.. rst-class:: classref-property-setget

- |void| **set_autoplay**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_autoplay**\ (\ )

Если ``true``, воспроизведение начинается после загрузки сцены.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_buffering_msec:

.. rst-class:: classref-property

:ref:`int<class_int>` **buffering_msec** = ``500`` :ref:`🔗<class_VideoStreamPlayer_property_buffering_msec>`

.. rst-class:: classref-property-setget

- |void| **set_buffering_msec**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_buffering_msec**\ (\ )

Количество времени в миллисекундах, которое необходимо сохранить в буфере во время воспроизведения.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_bus:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **bus** = ``&"Master"`` :ref:`🔗<class_VideoStreamPlayer_property_bus>`

.. rst-class:: classref-property-setget

- |void| **set_bus**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_bus**\ (\ )

Аудиошина для воспроизведения звука.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_expand:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **expand** = ``false`` :ref:`🔗<class_VideoStreamPlayer_property_expand>`

.. rst-class:: classref-property-setget

- |void| **set_expand**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_expand**\ (\ )

Если ``true``, видео масштабируется до размера элемента управления. В противном случае минимальный размер элемента управления будет автоматически скорректирован в соответствии с размерами видеопотока.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``false`` :ref:`🔗<class_VideoStreamPlayer_property_loop>`

.. rst-class:: classref-property-setget

- |void| **set_loop**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_loop**\ (\ )

Если ``true``, видео перезапускается по достижении конца.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_paused:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **paused** = ``false`` :ref:`🔗<class_VideoStreamPlayer_property_paused>`

.. rst-class:: classref-property-setget

- |void| **set_paused**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_paused**\ (\ )

Если ``true``, видео приостанавливается.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **speed_scale** = ``1.0`` :ref:`🔗<class_VideoStreamPlayer_property_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_speed_scale**\ (\ )

Текущая шкала скорости потока. ``1.0`` — это обычная скорость, ``2.0`` — это двойная скорость, а ``0.5`` — это половинная скорость. Шкала скорости ``0.0`` приостанавливает видео, аналогично установке :ref:`paused<class_VideoStreamPlayer_property_paused>` на ``true``.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_stream:

.. rst-class:: classref-property

:ref:`VideoStream<class_VideoStream>` **stream** :ref:`🔗<class_VideoStreamPlayer_property_stream>`

.. rst-class:: classref-property-setget

- |void| **set_stream**\ (\ value\: :ref:`VideoStream<class_VideoStream>`\ )
- :ref:`VideoStream<class_VideoStream>` **get_stream**\ (\ )

Назначенный видеопоток. Смотрите описание поддерживаемых форматов.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_stream_position:

.. rst-class:: classref-property

:ref:`float<class_float>` **stream_position** :ref:`🔗<class_VideoStreamPlayer_property_stream_position>`

.. rst-class:: classref-property-setget

- |void| **set_stream_position**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_stream_position**\ (\ )

Текущее положение потока в секундах.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_volume:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume** :ref:`🔗<class_VideoStreamPlayer_property_volume>`

.. rst-class:: classref-property-setget

- |void| **set_volume**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume**\ (\ )

Громкость звука как линейная величина.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_volume_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_db** = ``0.0`` :ref:`🔗<class_VideoStreamPlayer_property_volume_db>`

.. rst-class:: classref-property-setget

- |void| **set_volume_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_db**\ (\ )

Громкость звука в дБ.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_VideoStreamPlayer_method_get_stream_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_stream_length**\ (\ ) |const| :ref:`🔗<class_VideoStreamPlayer_method_get_stream_length>`

Продолжительность текущего потока в секундах.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_method_get_stream_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_stream_name**\ (\ ) |const| :ref:`🔗<class_VideoStreamPlayer_method_get_stream_name>`

Возвращает имя видеопотока или ``"<No Stream>"``, если видеопоток не назначен.

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

Возвращает ``true``, если видео воспроизводится.

\ **Примечание:** Видео все равно считается воспроизводимым, если оно приостановлено во время воспроизведения.

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

Останавливает воспроизведение видео и устанавливает позицию потока на 0.

\ **Примечание:** Хотя позиция потока будет установлена на 0, первый кадр видеопотока не станет текущим кадром.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
