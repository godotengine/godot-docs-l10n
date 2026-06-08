:github_url: hide

.. _class_ResourceImporterOggVorbis:

ResourceImporterOggVorbis
=========================

**Успадковує:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Імпорт аудіофайлу Ogg Vorbis для відтворення.

.. rst-class:: classref-introduction-group

Опис
--------

Ogg Vorbis є випадковим аудіо форматом, з кращою якістю звуку порівняно з :ref:`ResourceImporterMP3<class_ResourceImporterMP3>` надана бітрейт.

У більшості випадків рекомендується використовувати Ogg Vorbis над MP3. Однак, якщо ви використовуєте джерело звуку MP3 без джерела високої якості, то рекомендується використовувати файл MP3 безпосередньо для уникнення подвійного стиснення.

Ogg Vorbis вимагає більшого розміру процесора, ніж :ref:`ResourceImporterWAV<class_ResourceImporterWAV>`. Якщо ви повинні грати багато одночасних звуків, рекомендується використовувати WAV для тих звуків замість цього, особливо якщо ціль невисоких пристроїв.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Імпорт аудіо зразків <../tutorials/assets_pipeline/importing_audio_samples>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`bar_beats<class_ResourceImporterOggVorbis_property_bar_beats>`     | ``4``     |
   +---------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`beat_count<class_ResourceImporterOggVorbis_property_beat_count>`   | ``0``     |
   +---------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`bpm<class_ResourceImporterOggVorbis_property_bpm>`                 | ``0``     |
   +---------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`loop<class_ResourceImporterOggVorbis_property_loop>`               | ``false`` |
   +---------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`loop_offset<class_ResourceImporterOggVorbis_property_loop_offset>` | ``0``     |
   +---------------------------+--------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` | :ref:`load_from_buffer<class_ResourceImporterOggVorbis_method_load_from_buffer>`\ (\ stream_data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |static| |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` | :ref:`load_from_file<class_ResourceImporterOggVorbis_method_load_from_file>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                              |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_ResourceImporterOggVorbis_property_bar_beats:

.. rst-class:: classref-property

:ref:`int<class_int>` **bar_beats** = ``4`` :ref:`🔗<class_ResourceImporterOggVorbis_property_bar_beats>`

Кількість ударів у одному такті аудіодоріжки. Цей параметр актуальний лише для музичних файлів, у яких передбачено використання функцій інтерактивної музики, а не для звукових ефектів.

У діалоговому вікні **Розширені налаштування імпорту** передбачено більш зручний редактор для параметра :ref:`bar_beats<class_ResourceImporterOggVorbis_property_bar_beats>`, оскільки він дозволяє переглянути зміни без необхідності повторного імпорту аудіофайлу.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOggVorbis_property_beat_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **beat_count** = ``0`` :ref:`🔗<class_ResourceImporterOggVorbis_property_beat_count>`

Тривалість аудіодоріжки у тактах. Фактична тривалість аудіофайлу може перевищувати значення, вказане в цьому параметрі. Це стосується лише музичних композицій, для яких передбачено використання функцій інтерактивної музики, а не звукових ефектів.

У діалоговому вікні **Додаткові налаштування імпорту** передбачено більш зручний редактор для параметра :ref:`beat_count<class_ResourceImporterOggVorbis_property_beat_count>`, оскільки він дозволяє переглянути зміни без необхідності повторного імпорту аудіофайлу.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOggVorbis_property_bpm:

.. rst-class:: classref-property

:ref:`float<class_float>` **bpm** = ``0`` :ref:`🔗<class_ResourceImporterOggVorbis_property_bpm>`

Темп аудіодоріжки, що вимірюється в ударах на хвилину. Він повинен відповідати значенню BPM, яке використовувалося під час створення доріжки. Це актуально лише для музики, для якої передбачено використання функцій інтерактивної музики, а не для звукових ефектів.

У діалоговому вікні **Розширені налаштування імпорту** передбачено більш зручний редактор для параметра :ref:`bpm<class_ResourceImporterOggVorbis_property_bpm>`, оскільки він дозволяє переглянути зміни без необхідності повторного імпорту аудіо.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOggVorbis_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``false`` :ref:`🔗<class_ResourceImporterOggVorbis_property_loop>`

Якщо ця опція увімкнена, відтворення аудіо розпочнеться або з початку, або з позиції :ref:`loop_offset<class_ResourceImporterOggVorbis_property_loop_offset>` після завершення відтворення, яке відбувається або після досягнення кінця аудіофайлу, або після досягнення кінця останнього такту відповідно до значення, вказаного в :ref:`beat_count<class_ResourceImporterOggVorbis_property_beat_count>`.

\ **Примітка:** У :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` сигнал :ref:`AudioStreamPlayer.finished<class_AudioStreamPlayer_signal_finished>` не буде генеруватися для аудіо в режимі циклу, коли буде досягнуто кінця аудіофайлу, оскільки аудіо продовжуватиме відтворюватися нескінченно.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOggVorbis_property_loop_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **loop_offset** = ``0`` :ref:`🔗<class_ResourceImporterOggVorbis_property_loop_offset>`

Визначає, де почнеться зациклення аудіо після того, як відтворення досягне кінця. Це можна використовувати для зациклення лише частини аудіофайлу, що корисно для деяких навколишніх звуків або музики. Значення визначається в секундах відносно початку аудіо. Значення ``0.0`` зациклить весь аудіофайл.

Має ефект лише тоді, коли :ref:`loop<class_ResourceImporterOggVorbis_property_loop>` має значення ``true``.

Зручніший редактор для :ref:`loop_offset<class_ResourceImporterOggVorbis_property_loop_offset>` надається в діалоговому вікні **Додаткові налаштування імпорту**, оскільки він дозволяє переглядати зміни без необхідності повторного імпорту аудіо.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_ResourceImporterOggVorbis_method_load_from_buffer:

.. rst-class:: classref-method

:ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` **load_from_buffer**\ (\ stream_data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |static| :ref:`🔗<class_ResourceImporterOggVorbis_method_load_from_buffer>`

**Застаріло:** Use :ref:`AudioStreamOggVorbis.load_from_buffer()<class_AudioStreamOggVorbis_method_load_from_buffer>` instead.

Створює новий екземпляр :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` із заданого буфера. Буфер має містити дані Ogg Vorbis.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOggVorbis_method_load_from_file:

.. rst-class:: classref-method

:ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` **load_from_file**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_ResourceImporterOggVorbis_method_load_from_file>`

**Застаріло:** Use :ref:`AudioStreamOggVorbis.load_from_file()<class_AudioStreamOggVorbis_method_load_from_file>` instead.

Створює новий екземпляр :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` із указаного шляху до файлу. Файл має бути у форматі Ogg Vorbis.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
