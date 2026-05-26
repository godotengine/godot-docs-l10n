:github_url: hide

.. _class_MovieWriter:

MovieWriter
===========

**Наследует:** :ref:`Object<class_Object>`

Абстрактный класс для кодировщиков видеозаписи не в реальном времени.

.. rst-class:: classref-introduction-group

Описание
----------------

Godot может записывать видео с симуляцией не в реальном времени. Как и аргумент командной строки ``--fixed-fps`` :doc:`../tutorials/editor/command_line_tutorial`, это обеспечивает одинаковое значение ``delta`` в функциях :ref:`Node._process()<class_Node_private_method__process>` для всех кадров, независимо от фактического времени рендеринга кадра. Это можно использовать для записи высококачественного видео с идеальной скоростью кадров независимо от возможностей вашего оборудования.

Godot имеет 3 встроенных **MovieWriter**:

- OGV контейнер с Theora для видео и Vorbis для аудио (расширение файла ``.ogv``). Сжатие с потерями, файлы среднего размера, быстрое кодирование. Качество сжатия с потерями можно настроить, изменив :ref:`ProjectSettings.editor/movie_writer/video_quality<class_ProjectSettings_property_editor/movie_writer/video_quality>` и :ref:`ProjectSettings.editor/movie_writer/ogv/audio_quality<class_ProjectSettings_property_editor/movie_writer/ogv/audio_quality>`. TПолученный файл можно просмотреть в Godot с помощью :ref:`VideoStreamPlayer<class_VideoStreamPlayer>` и большинства видеоплееров, но не в веб-браузерах, поскольку они не поддерживают Theora.

- AVI контейнер с MJPEG для видео и несжатого аудио (расширение файла ``.avi``). Сжатие с потерями, средние размеры файлов, быстрое кодирование. Качество сжатия с потерями можно настроить, изменив :ref:`ProjectSettings.editor/movie_writer/video_quality<class_ProjectSettings_property_editor/movie_writer/video_quality>`. Полученный файл можно просмотреть в большинстве видеоплееров, но для просмотра в Интернете или с помощью Godot его необходимо конвертировать в другой формат. :ref:`VideoStreamPlayer<class_VideoStreamPlayer>`. MJPEG не поддерживает прозрачность. AVI в настоящее время размер выходного файла ограничен максимум 4 ГБ.

- PNG последовательность изображений для видео и WAV для аудио (расширение файла ``.png``). Сжатие без потерь, большой размер файлов, медленное кодирование. Разработан для кодирования в видеофайл с помощью другого инструмента, например `FFmpeg <https://ffmpeg.org/>`__ после записи. Прозрачность в настоящее время не поддерживается, даже если корневая область просмотра настроена как прозрачная.

Если вам нужно кодировать видео в другой формат или направлять поток через стороннее ПО, вы можете расширить класс **MovieWriter** для создания собственных модулей записи фильмов. Обычно для этого используется GDExtension из соображений производительности.

\ **Использование редактора:** Путь к файлу видео по умолчанию можно указать в :ref:`ProjectSettings.editor/movie_writer/movie_file<class_ProjectSettings_property_editor/movie_writer/movie_file>`. В качестве альтернативы, для запуска отдельных сцен, в корневой узел можно добавить метаданные ``movie_file``, указав путь к файлу фильма, который будет использоваться при записи этой сцены. После того как путь задан, щелкните значок видеоленты в правом верхнем углу редактора, чтобы включить режим Movie Maker, а затем запустите любую сцену как обычно. Движок начнет запись сразу после завершения отображения заставки и остановит ее только после остановки двигателя. Чтобы отключить режим Movie Maker, щелкните значок видеоленты еще раз. NОбратите внимание, что переключение режима Movie Maker не влияет на уже запущенные экземпляры проектов.

\ **Примечание:** MovieWriter доступен для использования как в редакторе, так и в экспортированных проектах, но он *не* предназначен для использования конечными пользователями для записи видео во время воспроизведения. Игрокам, желающим записать видео игрового процесса, следует вместо этого установить такие инструменты, как `OBS Studio <https://obsproject.com/>`__ или `SimpleScreenRecorder <https://www.maartenbaert.be/simplescreenrecorder/>`__.

\ **Примечание:** MJPEG ооддержка (расширение файла ``.avi``) зависит от включения модуля ``jpg`` во время компиляции (поведение по умолчанию).

\ **Примечание:** Поддержка OGV (расширение файла ``.ogv``) зависит от включения модуля ``theora`` во время компиляции (поведение по умолчанию). Сжатие Theora доступно только в двоичных файлах редактора.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_audio_mix_rate<class_MovieWriter_private_method__get_audio_mix_rate>`\ (\ ) |virtual| |required| |const|                                                                                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SpeakerMode<enum_AudioServer_SpeakerMode>`  | :ref:`_get_audio_speaker_mode<class_MovieWriter_private_method__get_audio_speaker_mode>`\ (\ ) |virtual| |required| |const|                                                                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_supported_extensions<class_MovieWriter_private_method__get_supported_extensions>`\ (\ ) |virtual| |required| |const|                                                                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_handles_file<class_MovieWriter_private_method__handles_file>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |required| |const|                                                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`_write_begin<class_MovieWriter_private_method__write_begin>`\ (\ movie_size\: :ref:`Vector2i<class_Vector2i>`, fps\: :ref:`int<class_int>`, base_path\: :ref:`String<class_String>`\ ) |virtual| |required| |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`_write_end<class_MovieWriter_private_method__write_end>`\ (\ ) |virtual| |required|                                                                                                                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`_write_frame<class_MovieWriter_private_method__write_frame>`\ (\ frame_image\: :ref:`Image<class_Image>`, audio_frame_block\: ``const void*``\ ) |virtual| |required|                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_writer<class_MovieWriter_method_add_writer>`\ (\ writer\: :ref:`MovieWriter<class_MovieWriter>`\ ) |static|                                                                                             |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_MovieWriter_private_method__get_audio_mix_rate:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_audio_mix_rate**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MovieWriter_private_method__get_audio_mix_rate>`

Вызывается, когда движок запрашивает частоту дискретизации звука, используемую для записи звука. Возвращаемое значение должно быть указано в Гц. По умолчанию 48000 Гц, если :ref:`_get_audio_mix_rate()<class_MovieWriter_private_method__get_audio_mix_rate>` не переопределен.

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__get_audio_speaker_mode:

.. rst-class:: classref-method

:ref:`SpeakerMode<enum_AudioServer_SpeakerMode>` **_get_audio_speaker_mode**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MovieWriter_private_method__get_audio_speaker_mode>`

Вызывается, когда движок запрашивает режим аудиодинамика, используемый для записи звука. Это может повлиять на количество выходных каналов в результирующем аудиофайле/потоке. По умолчанию :ref:`AudioServer.SPEAKER_MODE_STEREO<class_AudioServer_constant_SPEAKER_MODE_STEREO>`, если :ref:`_get_audio_speaker_mode()<class_MovieWriter_private_method__get_audio_speaker_mode>` не переопределен.

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__get_supported_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_supported_extensions**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MovieWriter_private_method__get_supported_extensions>`

Returns the list of supported filename extensions for movies written with this **MovieWriter**.

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__handles_file:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_handles_file**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |required| |const| :ref:`🔗<class_MovieWriter_private_method__handles_file>`

Вызывается, когда движок определяет, может ли этот **MovieWriter** обработать файл по адресу ``path``. Должен вернуть ``true``, если этот **MovieWriter** может обработать указанный путь к файлу, в противном случае ``false``. Обычно :ref:`_handles_file()<class_MovieWriter_private_method__handles_file>` переопределяется следующим образом, чтобы позволить пользователю записывать файл по любому пути с указанным расширением файла:

::

    func _handles_file(path):
        #Позволяет указать выходной файл с расширением `.mkv` (без учета регистра),
        # либо в настройках проекта, либо с помощью аргумента командной строки `--write-movie <путь>`.
        return path.get_extension().to_lower() == "mkv"

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__write_begin:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_write_begin**\ (\ movie_size\: :ref:`Vector2i<class_Vector2i>`, fps\: :ref:`int<class_int>`, base_path\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_MovieWriter_private_method__write_begin>`

Вызывается один раз перед тем, как движок начнет записывать видео- и аудиоданные. ``movie_size`` — ширина и высота сохраняемого видео. ``fps`` — количество кадров в секунду, указанное в настройках проекта или с помощью ``--fixed-fps <fps>`` :doc:`аргумента командной строки <../tutorials/editor/command_line_tutorial>`.

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__write_end:

.. rst-class:: classref-method

|void| **_write_end**\ (\ ) |virtual| |required| :ref:`🔗<class_MovieWriter_private_method__write_end>`

Вызывается, когда движок завершает запись. Это происходит, когда движок завершает работу, нажимая кнопку закрытия оконного менеджера или когда вызывается :ref:`SceneTree.quit()<class_SceneTree_method_quit>`.

\ **Примечание:** Нажатие :kbd:`Ctrl + C` на терминале, на котором запущен редактор/проект, *не* приводит к вызову :ref:`_write_end()<class_MovieWriter_private_method__write_end>`.

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__write_frame:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_write_frame**\ (\ frame_image\: :ref:`Image<class_Image>`, audio_frame_block\: ``const void*``\ ) |virtual| |required| :ref:`🔗<class_MovieWriter_private_method__write_frame>`

Вызывается в конце каждого отрендеренного кадра. Аргументы функции ``frame_image`` и ``audio_frame_block`` должны быть записаны.

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_method_add_writer:

.. rst-class:: classref-method

|void| **add_writer**\ (\ writer\: :ref:`MovieWriter<class_MovieWriter>`\ ) |static| :ref:`🔗<class_MovieWriter_method_add_writer>`

Добавляет писатель, который может использоваться движком. Поддерживаемые расширения файлов можно задать, переопределив :ref:`_handles_file()<class_MovieWriter_private_method__handles_file>`.

\ **Примечание:** :ref:`add_writer()<class_MovieWriter_method_add_writer>` должен быть вызван достаточно рано при инициализации движка, чтобы работать, так как запись фильма разработана для запуска одновременно с остальной частью движка.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
