:github_url: hide

.. _class_ResourceImporterOggVorbis:

ResourceImporterOggVorbis
=========================

**Наследует:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Импортирует аудиофайл Ogg Vorbis для воспроизведения.

.. rst-class:: classref-introduction-group

Описание
----------------

Ogg Vorbis — это аудиоформат с потерями, с лучшим качеством звука по сравнению с :ref:`ResourceImporterMP3<class_ResourceImporterMP3>` при заданном битрейте.

В большинстве случаев рекомендуется использовать Ogg Vorbis вместо MP3. Однако, если вы используете источник звука MP3 без более качественного источника, рекомендуется использовать файл MP3 напрямую, чтобы избежать двойного сжатия с потерями.

Ogg Vorbis требует больше ресурсов ЦП для декодирования, чем :ref:`ResourceImporterWAV<class_ResourceImporterWAV>`. Если вам нужно воспроизводить много одновременных звуков, рекомендуется использовать для этих звуков WAV, особенно если вы ориентируетесь на бюджетные устройства.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Импорт аудиосэмплов <../tutorials/assets_pipeline/importing_audio_samples>`

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Методы
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

Описания свойств
--------------------------------

.. _class_ResourceImporterOggVorbis_property_bar_beats:

.. rst-class:: classref-property

:ref:`int<class_int>` **bar_beats** = ``4`` :ref:`🔗<class_ResourceImporterOggVorbis_property_bar_beats>`

Количество долей (битов) в одном такте аудиодорожки. Это актуально только для музыки, которая предполагает использование интерактивных музыкальных функций, а не звуковых эффектов.

Более удобный редактор для :ref:`bar_beats<class_ResourceImporterOggVorbis_property_bar_beats>` доступен в диалоговом окне **Расширенные настройки импорта**, так как он позволяет предварительно просмотреть изменения без необходимости повторного импорта аудио.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOggVorbis_property_beat_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **beat_count** = ``0`` :ref:`🔗<class_ResourceImporterOggVorbis_property_beat_count>`

Длительность аудиодорожки в тактах (битах). Фактическая длительность аудиофайла может быть больше, чем указано в этом свойстве. Это актуально только для музыки, которая предполагает использование интерактивных музыкальных функций, а не звуковых эффектов.

Более удобный редактор для :ref:`beat_count<class_ResourceImporterOggVorbis_property_beat_count>` предоставляется в диалоговом окне **Расширенные настройки импорта**, поскольку он позволяет предварительно просмотреть изменения без необходимости повторного импорта аудио.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOggVorbis_property_bpm:

.. rst-class:: classref-property

:ref:`float<class_float>` **bpm** = ``0`` :ref:`🔗<class_ResourceImporterOggVorbis_property_bpm>`

Темп аудиодорожки, измеренный в ударах в минуту. Он должен соответствовать показателю BPM, который использовался при создании трека. Это актуально только для музыки, которая предполагает использование интерактивных музыкальных функций, а не звуковых эффектов.

Более удобный редактор для :ref:`bpm<class_ResourceImporterOggVorbis_property_bpm>` предоставляется в диалоговом окне **Расширенные настройки импорта**, поскольку он позволяет предварительно просмотреть изменения без необходимости повторного импорта аудио.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOggVorbis_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``false`` :ref:`🔗<class_ResourceImporterOggVorbis_property_loop>`

Если эта функция включена, воспроизведение аудио начнётся либо с начала, либо с :ref:`loop_offset<class_ResourceImporterOggVorbis_property_loop_offset>` после завершения воспроизведения, либо после достижения конца аудиофайла, либо конца последнего такта в соответствии с величиной, указанной в :ref:`beat_count<class_ResourceImporterOggVorbis_property_beat_count>`.

\ **Примечание:** В :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` сигнал :ref:`AudioStreamPlayer.finished<class_AudioStreamPlayer_signal_finished>` не будет генерироваться для зацикливания аудио, когда он достигнет конца аудиофайла, поскольку воспроизведение аудио будет продолжаться бесконечно.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOggVorbis_property_loop_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **loop_offset** = ``0`` :ref:`🔗<class_ResourceImporterOggVorbis_property_loop_offset>`

Определяет, где аудио начнет цикл после того, как воспроизведение достигнет конца аудио. Это можно использовать для циклического воспроизведения только части аудиофайла, что полезно для некоторых окружающих звуков или музыки. Значение определяется в секундах относительно начала аудио. Значение ``0.0`` зациклит весь аудиофайл.

Действует только в том случае, если :ref:`loop<class_ResourceImporterOggVorbis_property_loop>` равно ``true``.

Более удобный редактор для :ref:`loop_offset<class_ResourceImporterOggVorbis_property_loop_offset>` представлен в диалоговом окне **Расширенные параметры импорта**, поскольку он позволяет предварительно просматривать изменения без необходимости повторного импорта аудио.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_ResourceImporterOggVorbis_method_load_from_buffer:

.. rst-class:: classref-method

:ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` **load_from_buffer**\ (\ stream_data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |static| :ref:`🔗<class_ResourceImporterOggVorbis_method_load_from_buffer>`

**Устарело:** Use :ref:`AudioStreamOggVorbis.load_from_buffer()<class_AudioStreamOggVorbis_method_load_from_buffer>` instead.

Создает новый экземпляр :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` из указанного буфера. Буфер должен содержать данные Ogg Vorbis.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOggVorbis_method_load_from_file:

.. rst-class:: classref-method

:ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` **load_from_file**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_ResourceImporterOggVorbis_method_load_from_file>`

**Устарело:** Use :ref:`AudioStreamOggVorbis.load_from_file()<class_AudioStreamOggVorbis_method_load_from_file>` instead.

Создает новый экземпляр :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` из указанного пути к файлу. Файл должен быть в формате Ogg Vorbis.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
