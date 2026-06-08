:github_url: hide

.. _class_MovieWriter:

MovieWriter
===========

**Успадковує:** :ref:`Object<class_Object>`

Абстрактний клас для нереальних відеореєстраторів.

.. rst-class:: classref-introduction-group

Опис
--------

Godot може записувати відео без симуляції в реальному часі. Як і аргумент командного рядка ``--fixed-fps`` :doc:`../tutorials/editor/command_line_tutorial`, це змушує повідомлену ``delta`` у функціях :ref:`Node._process()<class_Node_private_method__process>` бути ідентичною для всіх кадрів, незалежно від того, скільки часу фактично знадобилося для рендерингу кадру. Це можна використовувати для запису високоякісних відео з ідеальним темпом кадрів незалежно від можливостей вашого обладнання.

Godot має 3 вбудовані **MovieWriter**:

- Контейнер OGV з Theora для відео та Vorbis для аудіо (розширення файлу ``.ogv``). Стиснення з втратами, середні розміри файлів, швидке кодування. Якість стиснення з втратами можна налаштувати, змінивши :ref:`ProjectSettings.editor/movie_writer/video_quality<class_ProjectSettings_property_editor/movie_writer/video_quality>` та :ref:`ProjectSettings.editor/movie_writer/ogv/audio_quality<class_ProjectSettings_property_editor/movie_writer/ogv/audio_quality>`. Отриманий файл можна переглянути в Godot за допомогою :ref:`VideoStreamPlayer<class_VideoStreamPlayer>` та більшості відеоплеєрів, але не у веббраузерах, оскільки вони не підтримують Theora.

- Контейнер AVI з MJPEG для відео та нестисненого аудіо (розширення файлу ``.avi``). Стиснення з втратами, середні розміри файлів, швидке кодування. Якість стиснення з втратами можна налаштувати, змінивши :ref:`ProjectSettings.editor/movie_writer/video_quality<class_ProjectSettings_property_editor/movie_writer/video_quality>`. Отриманий файл можна переглянути в більшості відеоплеєрів, але його потрібно конвертувати в інший формат для перегляду в Інтернеті або в Godot за допомогою :ref:`VideoStreamPlayer<class_VideoStreamPlayer>`. MJPEG не підтримує прозорість. Вихід AVI наразі обмежений файлом розміром не більше 4 ГБ.

- Послідовність зображень PNG для відео та WAV для аудіо (розширення файлу ``.png``). Стиснення без втрат, великі розміри файлів, повільне кодування. Розроблено для кодування у відеофайл за допомогою іншого інструменту, такого як `FFmpeg <https://ffmpeg.org/>`__ після запису. Прозорість наразі не підтримується, навіть якщо кореневий переглядовий екран налаштовано на прозорість.

Якщо вам потрібно кодувати в інший формат або передати потік через стороннє програмне забезпечення, ви можете розширити клас **MovieWriter** для створення власних програм для запису фільмів. Зазвичай це слід робити за допомогою GDExtension з міркувань продуктивності.

\ **Використання редактора:** Шлях до файлу фільму за замовчуванням можна вказати в :ref:`ProjectSettings.editor/movie_writer/movie_file<class_ProjectSettings_property_editor/movie_writer/movie_file>`. Крім того, для запуску окремих сцен до кореневого вузла можна додати метадані ``movie_file``, вказуючи шлях до файлу фільму, який буде використовуватися під час запису цієї сцени. Після встановлення шляху клацніть значок відеоролика у верхньому правому куті редактора, щоб увімкнути режим Movie Maker, а потім запустіть будь-яку сцену як завжди. Двигун почне запис, як тільки завершиться заставка, і зупинить запис лише після завершення роботи движка. Знову клацніть значок відеоролика, щоб вимкнути режим Movie Maker. Зверніть увагу, що перемикання в режим Movie Maker не впливає на екземпляри проекту, які вже запущені.

\ **Примітка:** MovieWriter доступний для використання як у редакторі, так і в експортованих проектах, але він *не* призначений для використання кінцевими користувачами для запису відео під час гри. Гравцям, які бажають записувати ігрові відео, слід встановити такі інструменти, як `OBS Studio <https://obsproject.com/>`__ або `SimpleScreenRecorder <https://www.maartenbaert.be/simplescreenrecorder/>`__.

\ **Примітка:** Підтримка MJPEG (розширення файлу ``.avi``) залежить від увімкнення модуля ``jpg`` під час компіляції (поведінка за замовчуванням).

\ **Примітка:** Підтримка OGV (розширення файлу ``.ogv``) залежить від увімкнення модуля ``theora`` під час компіляції (поведінка за замовчуванням). Стиснення Theora доступне лише у двійкових файлах редактора.

.. rst-class:: classref-reftable-group

Методи
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

Описи методів
--------------------------

.. _class_MovieWriter_private_method__get_audio_mix_rate:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_audio_mix_rate**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MovieWriter_private_method__get_audio_mix_rate>`

Викликається, коли рівень звуку, що використовується для запису аудіо, запитується двигуном. Повернутий значення необхідно вказати в Гц. За замовчуванням до 48000 Hz, якщо :ref:`_get_audio_mix_rate()<class_MovieWriter_private_method__get_audio_mix_rate>` не перейдиден.

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__get_audio_speaker_mode:

.. rst-class:: classref-method

:ref:`SpeakerMode<enum_AudioServer_SpeakerMode>` **_get_audio_speaker_mode**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MovieWriter_private_method__get_audio_speaker_mode>`

Викликається, коли режим аудіодинаміка, який використовується для запису аудіо, запитується двигуном. Це може впливати на кількість вихідних каналів в отриманому аудіо файлі / потоку. За замовчуванням до :ref:`AudioServer.SPEAKER_MODE_STEREO<class_AudioServer_constant_SPEAKER_MODE_STEREO>` якщо :ref:`_get_audio_speaker_mode()<class_MovieWriter_private_method__get_audio_speaker_mode>` не перейдиден.

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__get_supported_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_supported_extensions**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MovieWriter_private_method__get_supported_extensions>`

Повертає список розширень імен файлів, що підтримуються для фільмів, записаних за допомогою цього **MovieWriter**.

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__handles_file:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_handles_file**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |required| |const| :ref:`🔗<class_MovieWriter_private_method__handles_file>`

Викликається, коли механізм визначає, чи здатний цей **MovieWriter** обробити файл за ``path``. Має повернути ``true``, якщо цей **MovieWriter** здатний обробити заданий шлях до файлу, ``false`` інакше. Як правило, :ref:`_handles_file()<class_MovieWriter_private_method__handles_file>` замінюється таким чином, щоб дозволити користувачеві записувати файл за будь-яким шляхом із заданим розширенням файлу: 

::
 
    func _handles_file(path): 
        # Дозволяє вказувати вихідний файл із розширенням файлу `.mkv` (незалежно від регістру), 
        # або в налаштуваннях проекту, або за допомогою аргументу командного рядка `--write-movie <шлях>`. 
        return path.get_extension().to_lower() == "mkv" 

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__write_begin:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_write_begin**\ (\ movie_size\: :ref:`Vector2i<class_Vector2i>`, fps\: :ref:`int<class_int>`, base_path\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_MovieWriter_private_method__write_begin>`

Зателефонуйте, перш ніж почати писати відео та аудіо дані. ``movie_size`` - ширина і висота відео, щоб зберегти. ``fps`` є число кадрів в секунду, вказаних в налаштуваннях проекту або за допомогою ``-fixed-fps <fps>`` :doc:`command рядок аргумент <../tutorials/editor/command_line_tutorial>`.

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__write_end:

.. rst-class:: classref-method

|void| **_write_end**\ (\ ) |virtual| |required| :ref:`🔗<class_MovieWriter_private_method__write_end>`

Зателефонуйте, коли двигун завершує написання. Це відбувається, коли двигун кидає, натиснувши кнопку менеджера вікна, або коли називається :ref:`SceneTree.quit()<class_SceneTree_method_quit>`.

\ **Примітка:** Пресування :kbd:`Ctrl + C` на терміналі, що працює редактор / проект працює *not* результат :ref:`_write_end()<class_MovieWriter_private_method__write_end>`.

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__write_frame:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_write_frame**\ (\ frame_image\: :ref:`Image<class_Image>`, audio_frame_block\: ``const void*``\ ) |virtual| |required| :ref:`🔗<class_MovieWriter_private_method__write_frame>`

Викликається в кінці кожного рами. ``frame_image`` і ``audio_frame_block`` аргументи функції повинні бути написані до.

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_method_add_writer:

.. rst-class:: classref-method

|void| **add_writer**\ (\ writer\: :ref:`MovieWriter<class_MovieWriter>`\ ) |static| :ref:`🔗<class_MovieWriter_method_add_writer>`

Додайте письменника, який буде втілено двигуном. Підтримувані розширення файлів можна встановити шляхом перетягування :ref:`_handles_file()<class_MovieWriter_private_method__handles_file>`.

\ **Примітка:** :ref:`add_parser()<class_MovieWriter_method_add_parser>` повинен бути викликаний рано достатньо в ініціалізації двигуна для роботи, оскільки запис фільму призначений для запуску одночасно, як і решта двигуна.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
