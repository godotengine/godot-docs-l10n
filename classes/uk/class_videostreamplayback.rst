:github_url: hide

.. _class_VideoStreamPlayback:

VideoStreamPlayback
===================

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Внутрішній клас, який використовується :ref:`VideoStream<class_VideoStream>` для управління станом відтворення при відтворенні :ref:`VideoStreamPlayer<class_VideoStreamPlayer>`.

.. rst-class:: classref-introduction-group

Опис
--------

Цей клас призначений для перенаправлення розширенням відеодекодера з користувацькими виконаннями :ref:`VideoStream<class_VideoStream>`.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`             | :ref:`_get_channels<class_VideoStreamPlayback_private_method__get_channels>`\ (\ ) |virtual| |const|                                                                                                                            |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | :ref:`_get_length<class_VideoStreamPlayback_private_method__get_length>`\ (\ ) |virtual| |const|                                                                                                                                |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`             | :ref:`_get_mix_rate<class_VideoStreamPlayback_private_method__get_mix_rate>`\ (\ ) |virtual| |const|                                                                                                                            |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | :ref:`_get_playback_position<class_VideoStreamPlayback_private_method__get_playback_position>`\ (\ ) |virtual| |const|                                                                                                          |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`_get_texture<class_VideoStreamPlayback_private_method__get_texture>`\ (\ ) |virtual| |const|                                                                                                                              |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`_is_paused<class_VideoStreamPlayback_private_method__is_paused>`\ (\ ) |virtual| |const|                                                                                                                                  |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`_is_playing<class_VideoStreamPlayback_private_method__is_playing>`\ (\ ) |virtual| |const|                                                                                                                                |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`_play<class_VideoStreamPlayback_private_method__play>`\ (\ ) |virtual|                                                                                                                                                    |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`_seek<class_VideoStreamPlayback_private_method__seek>`\ (\ time\: :ref:`float<class_float>`\ ) |virtual|                                                                                                                  |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`_set_audio_track<class_VideoStreamPlayback_private_method__set_audio_track>`\ (\ idx\: :ref:`int<class_int>`\ ) |virtual|                                                                                                 |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`_set_paused<class_VideoStreamPlayback_private_method__set_paused>`\ (\ paused\: :ref:`bool<class_bool>`\ ) |virtual|                                                                                                      |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`_stop<class_VideoStreamPlayback_private_method__stop>`\ (\ ) |virtual|                                                                                                                                                    |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`_update<class_VideoStreamPlayback_private_method__update>`\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| |required|                                                                                                  |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`             | :ref:`mix_audio<class_VideoStreamPlayback_method_mix_audio>`\ (\ num_frames\: :ref:`int<class_int>`, buffer\: :ref:`PackedFloat32Array<class_PackedFloat32Array>` = PackedFloat32Array(), offset\: :ref:`int<class_int>` = 0\ ) |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_VideoStreamPlayback_private_method__get_channels:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_channels**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__get_channels>`

Повертає кількість аудіо каналів.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__get_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_length**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__get_length>`

Повертає тривалість відео за секундами, якщо відомо, або 0, якщо невідомо.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__get_mix_rate:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_mix_rate**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__get_mix_rate>`

Повертає рівень звуку, що використовується для змішування.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__get_playback_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_playback_position**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__get_playback_position>`

Повернути поточний час відтворення. У відповідь на :ref:`VideoStreamPlayer.stream_положення<class_VideoStreamPlayer_property_stream_положення>` getter.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__get_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **_get_texture**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__get_texture>`

Відносно :ref:`Texture2D<class_Texture2D>`, в якому будуть намальовані відеорамки.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__is_paused:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_paused**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__is_paused>`

Повертає статус паузи, як встановлено :ref:`_set_paused()<class_VideoStreamPlayback_private_method__set_paused>`.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__is_playing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_playing**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__is_playing>`

Повертає стан відтворення, визначений викликами методів :ref:`_play()<class_VideoStreamPlayback_private_method__play>` та :ref:`_stop()<class_VideoStreamPlayback_private_method__stop>`.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__play:

.. rst-class:: classref-method

|void| **_play**\ (\ ) |virtual| :ref:`🔗<class_VideoStreamPlayback_private_method__play>`

Викликається у відповідь на :ref:`VideoStreamPlayer.autoplay<class_VideoStreamPlayer_property_autoplay>` або :ref:`VideoStreamPlayer.play()<class_VideoStreamPlayer_method_play>`. Зауважте, що ручне відтворення також може викликати :ref:`_stop()<class_VideoStreamPlayback_private_method__stop>` кілька разів перед викликом цього методу. :ref:`_is_playing()<class_VideoStreamPlayback_private_method__is_playing>` має повертати ``true`` під час відтворення.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__seek:

.. rst-class:: classref-method

|void| **_seek**\ (\ time\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_VideoStreamPlayback_private_method__seek>`

Шукає значення ``time`` секунд. Викликається у відповідь на сеттер :ref:`VideoStreamPlayer.stream_position<class_VideoStreamPlayer_property_stream_position>`.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__set_audio_track:

.. rst-class:: classref-method

|void| **_set_audio_track**\ (\ idx\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_VideoStreamPlayback_private_method__set_audio_track>`

Виберіть аудіо трек ``idx``. Зателефонуйте при запуску відтворення, а також у відповідь на :ref:`VideoStreamPlayer.audio_track<class_VideoStreamPlayer_property_audio_track>`.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__set_paused:

.. rst-class:: classref-method

|void| **_set_paused**\ (\ paused\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_VideoStreamPlayback_private_method__set_paused>`

Налаштуйте захищений статус відтворення відео. :ref:`_is_paused()<class_VideoStreamPlayback_private_method__is_paused>` обов'язкове повернення ``paused``. Викликані у відповідь на :ref:`VideoStreamPlayer.paused<class_VideoStreamPlayer_property_paused>`.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__stop:

.. rst-class:: classref-method

|void| **_stop**\ (\ ) |virtual| :ref:`🔗<class_VideoStreamPlayback_private_method__stop>`

Зупинка відтворення. Може викликатися кілька разів перед :ref:`_play()<class_VideoStreamPlayback_private_method__play>` або у відповідь на :ref:`VideoStreamPlayer.stop()<class_VideoStreamPlayer_method_stop>`. Після зупинки :ref:`_is_playing()<class_VideoStreamPlayback_private_method__is_playing>` має повертати ``false``.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__update:

.. rst-class:: classref-method

|void| **_update**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| |required| :ref:`🔗<class_VideoStreamPlayback_private_method__update>`

Позначає відтворення відео протягом ``delta`` секунд. Викликається кожен кадр, якщо :ref:`_is_paused()<class_VideoStreamPlayback_private_method__is_paused>` і :ref:`_is_playing()<class_VideoStreamPlayback_private_method__is_playing>` повертають ``true``.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_method_mix_audio:

.. rst-class:: classref-method

:ref:`int<class_int>` **mix_audio**\ (\ num_frames\: :ref:`int<class_int>`, buffer\: :ref:`PackedFloat32Array<class_PackedFloat32Array>` = PackedFloat32Array(), offset\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_VideoStreamPlayback_method_mix_audio>`

Рендер ``num_frames`` аудіорамки (від :ref:`_get_channels()<class_VideoStreamPlayback_private_method__get_channels>` floats кожен) з ``buffer``, починаючи з індексу ``offset`` в масиві. Повертаємо кількість аудіорамок, що надано, або -1 на помилку.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
