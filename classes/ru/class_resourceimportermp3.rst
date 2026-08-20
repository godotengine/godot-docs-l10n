:github_url: hide

.. _class_ResourceImporterMP3:

ResourceImporterMP3
===================

**Наследует:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Импортирует аудиофайл MP3 для воспроизведения.

.. rst-class:: classref-introduction-group

Описание
----------------

MP3 — это формат аудио с потерями, с худшим качеством звука по сравнению с :ref:`ResourceImporterOggVorbis<class_ResourceImporterOggVorbis>` при заданном битрейте.

В большинстве случаев рекомендуется использовать Ogg Vorbis вместо MP3. Однако, если вы используете источник звука MP3 без более качественного источника, рекомендуется использовать файл MP3 напрямую, чтобы избежать двойного сжатия с потерями.

MP3 требует больше ресурсов ЦП для декодирования, чем :ref:`ResourceImporterWAV<class_ResourceImporterWAV>`. Если вам нужно воспроизводить много одновременных звуков, рекомендуется использовать для этих звуков WAV, особенно если вы ориентируетесь на бюджетные устройства.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Импорт аудиосэмплов <../tutorials/assets_pipeline/importing_audio_samples>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`bar_beats<class_ResourceImporterMP3_property_bar_beats>`     | ``4``     |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`beat_count<class_ResourceImporterMP3_property_beat_count>`   | ``0``     |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`bpm<class_ResourceImporterMP3_property_bpm>`                 | ``0``     |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`loop<class_ResourceImporterMP3_property_loop>`               | ``false`` |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`loop_offset<class_ResourceImporterMP3_property_loop_offset>` | ``0``     |
   +---------------------------+--------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_ResourceImporterMP3_property_bar_beats:

.. rst-class:: classref-property

:ref:`int<class_int>` **bar_beats** = ``4`` :ref:`🔗<class_ResourceImporterMP3_property_bar_beats>`

Количество долей (битов) в одном такте аудиодорожки. Это актуально только для музыки, которая предполагает использование интерактивных музыкальных функций, а не звуковых эффектов.

Более удобный редактор для :ref:`bar_beats<class_ResourceImporterMP3_property_bar_beats>` доступен в диалоговом окне **Расширенные настройки импорта**, так как он позволяет предварительно просмотреть изменения без необходимости повторного импорта аудио.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterMP3_property_beat_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **beat_count** = ``0`` :ref:`🔗<class_ResourceImporterMP3_property_beat_count>`

Длительность аудиодорожки в тактах (битах). Фактическая длительность аудиофайла может быть больше, чем указано в этом свойстве. Это актуально только для музыки, которая предполагает использование интерактивных музыкальных функций, а не звуковых эффектов.

Более удобный редактор для :ref:`beat_count<class_ResourceImporterMP3_property_beat_count>` предоставляется в диалоговом окне **Расширенные настройки импорта**, поскольку он позволяет предварительно просмотреть изменения без необходимости повторного импорта аудио.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterMP3_property_bpm:

.. rst-class:: classref-property

:ref:`float<class_float>` **bpm** = ``0`` :ref:`🔗<class_ResourceImporterMP3_property_bpm>`

Темп аудиодорожки, измеренный в ударах в минуту. Он должен соответствовать показателю BPM, который использовался при создании трека. Это актуально только для музыки, которая предполагает использование интерактивных музыкальных функций, а не звуковых эффектов.

Более удобный редактор для :ref:`bpm<class_ResourceImporterMP3_property_bpm>` предоставляется в диалоговом окне **Расширенные настройки импорта**, поскольку он позволяет предварительно просмотреть изменения без необходимости повторного импорта аудио.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterMP3_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``false`` :ref:`🔗<class_ResourceImporterMP3_property_loop>`

Если эта функция включена, воспроизведение аудио начнётся либо с начала, либо с :ref:`loop_offset<class_ResourceImporterMP3_property_loop_offset>` после завершения воспроизведения, либо после достижения конца аудиофайла, либо конца последнего такта в соответствии с величиной, указанной в :ref:`beat_count<class_ResourceImporterMP3_property_beat_count>`.

\ **Примечание:** В :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` сигнал :ref:`AudioStreamPlayer.finished<class_AudioStreamPlayer_signal_finished>` не будет генерироваться для зацикливания аудио, когда он достигнет конца аудиофайла, поскольку воспроизведение аудио будет продолжаться бесконечно.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterMP3_property_loop_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **loop_offset** = ``0`` :ref:`🔗<class_ResourceImporterMP3_property_loop_offset>`

Определяет, где аудио начнет цикл после того, как воспроизведение достигнет конца аудио. Это можно использовать для циклического воспроизведения только части аудиофайла, что полезно для некоторых окружающих звуков или музыки. Значение определяется в секундах относительно начала аудио. Значение ``0.0`` зациклит весь аудиофайл.

Действует только в том случае, если :ref:`loop<class_ResourceImporterMP3_property_loop>` равно ``true``.

Более удобный редактор для :ref:`loop_offset<class_ResourceImporterMP3_property_loop_offset>` представлен в диалоговом окне **Расширенные параметры импорта**, поскольку он позволяет предварительно просматривать изменения без необходимости повторного импорта аудио.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
