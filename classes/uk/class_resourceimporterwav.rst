:github_url: hide

.. _class_ResourceImporterWAV:

ResourceImporterWAV
===================

**Успадковує:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Імпорт аудіофайлу WAV для відтворення.

.. rst-class:: classref-introduction-group

Опис
--------

WAV — це нестиснутий формат, який може забезпечити вищу якість порівняно з Ogg Vorbis і MP3. Він також має найнижчу вартість процесора для декодування. Це означає, що велика кількість звуків WAV може відтворюватися одночасно, навіть на пристроях низького класу. 

За замовчуванням Godot імпортує файли WAV за допомогою стиснення цілком нормального аудіо з втратами. Ви можете змінити це, встановивши властивість :ref:`compress/mode<class_ResourceImporterWAV_property_compress/mode>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Імпорт аудіо зразків <../tutorials/assets_pipeline/importing_audio_samples>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`compress/mode<class_ResourceImporterWAV_property_compress/mode>`         | ``2``     |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`edit/loop_begin<class_ResourceImporterWAV_property_edit/loop_begin>`     | ``0``     |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`edit/loop_end<class_ResourceImporterWAV_property_edit/loop_end>`         | ``-1``    |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`edit/loop_mode<class_ResourceImporterWAV_property_edit/loop_mode>`       | ``0``     |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`edit/normalize<class_ResourceImporterWAV_property_edit/normalize>`       | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`edit/trim<class_ResourceImporterWAV_property_edit/trim>`                 | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`force/8_bit<class_ResourceImporterWAV_property_force/8_bit>`             | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`force/max_rate<class_ResourceImporterWAV_property_force/max_rate>`       | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`force/max_rate_hz<class_ResourceImporterWAV_property_force/max_rate_hz>` | ``44100`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`force/mono<class_ResourceImporterWAV_property_force/mono>`               | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_ResourceImporterWAV_property_compress/mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/mode** = ``2`` :ref:`🔗<class_ResourceImporterWAV_property_compress/mode>`

Режим стиснення для імпорту. 

- **PCM (без стиснення):** імпортує аудіодані без будь-якої форми стиснення, зберігаючи найвищу можливу якість. Він має найнижчу вартість ЦП, але найбільше використання пам’яті. 

- **IMA ADPCM:** застосовує швидке стиснення з втратами під час імпорту, помітно знижуючи якість, але з низькими витратами процесора та використанням пам’яті. Не підтримує пошук і підтримується лише режим прямого циклу. 

- **\ `Цілком добре аудіо <https://qoaformat.org/>`__:** також застосовує стиснення з втратами під час імпорту, дещо вищу вартість процесора порівняно з IMA ADPCM, але набагато вищу якість і найменше використання пам’яті.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/loop_begin:

.. rst-class:: classref-property

:ref:`int<class_int>` **edit/loop_begin** = ``0`` :ref:`🔗<class_ResourceImporterWAV_property_edit/loop_begin>`

Початкова точка петлі для використання при :ref:`edit/loop_mode<class_ResourceImporterWAV_property_edit/loop_mode>` **Forward**, **Ping-Pong**, або **Backward**. Після початку аудіо-файлу встановіть зразки.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/loop_end:

.. rst-class:: classref-property

:ref:`int<class_int>` **edit/loop_end** = ``-1`` :ref:`🔗<class_ResourceImporterWAV_property_edit/loop_end>`

Кінцева петля точка для використання при :ref:`edit/loop_mode<class_ResourceImporterWAV_property_edit/loop_mode>` **Forward**, **Ping-Pong**, або **Backward**. Після початку аудіо-файлу встановіть зразки. Значення ``-1`` використовує кінець аудіофайлу в якості кінцевої точки петлі.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/loop_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **edit/loop_mode** = ``0`` :ref:`🔗<class_ResourceImporterWAV_property_edit/loop_mode>`

Контролює, як звук має повторюватися. 

- **Виявлення з WAV:** Використовує інформацію циклу з метаданих WAV. 

- **Вимкнено:** Не повторювати аудіо, навіть якщо метадані вказують на те, що відтворення файлу має повторюватися. 

- **Вперед:** Стандартне повторення звуку. Відтворює аудіо з початку до :ref:`edit/loop_end<class_ResourceImporterWAV_property_edit/loop_end>`, потім повертається до :ref:`edit/loop_begin<class_ResourceImporterWAV_property_edit/loop_begin>` і повторює. 

- **Пінг-понг:** відтворює аудіо вперед до :ref:`edit/loop_end<class_ResourceImporterWAV_property_edit/loop_end>`, потім назад до :ref:`edit/loop_begin<class_ResourceImporterWAV_property_edit/loop_begin>`, повторюючи цей цикл. 

- **Назад:** Відтворює аудіо назад від :ref:`edit/loop_end<class_ResourceImporterWAV_property_edit/loop_end>` до :ref:`edit/loop_begin<class_ResourceImporterWAV_property_edit/loop_begin>`, а потім повторює. 

\ **Примітка.** У :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` сигнал :ref:`AudioStreamPlayer.finished<class_AudioStreamPlayer_signal_finished>` не видаватиметься для циклічного аудіо, коли він досягне кінця аудіофайлу, оскільки аудіо відтворюватиметься безкінечно.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/normalize:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit/normalize** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_edit/normalize>`

Якщо ``true``, нормалізуйте аудіо об'єм, щоб його піковий обсяг дорівнює 0 дБ. Увімкнено нормалізацію звукового звуку в залежності від початкового об’єму піку.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/trim:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit/trim** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_edit/trim>`

Якщо ``true``, автоматично обрізаючи початок і кінець аудіо, якщо це нижче, ніж -50 dB після нормалізації (див. :ref:`edit/normalize<class_ResourceImporterWAV_property_edit/normalize>`). Це запобігає потраплянню файлів з тигрою на початку або кінці, що збільшує їх розмір необов'язково і додає затримки до моменту, коли вони граються назад. Під час обрізки також використовується фад-в / вихідний період 500 зразків.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_force/8_bit:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force/8_bit** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_force/8_bit>`

Якщо ``true``, змушує імпортувати аудіо для використання 8-бітної квантизації, якщо вихідний файл 16-біт або вище.

Включаючи це, як правило, не рекомендується, оскільки 8-бітна квантизація значно знижується якість звуку. Якщо вам потрібні менші розміри файлів, розгляньте за допомогою Ogg Vorbis або MP3 аудіо замість.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_force/max_rate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force/max_rate** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_force/max_rate>`

Якщо встановити значення більше, ніж ``0``, змушує швидкість зразка аудіо, щоб зменшити значення, ніж або дорівнює значення, зазначеному в :ref:`force/max_rate_hz<class_ResourceImporterWAV_property_force/max_rate_hz>`.

Це може зменшити розмір файлу помітно на певних звуках, не впливаючи якість в залежності від фактичного вмісту звуку. Див. ` Найкращі практики  <../tutorials/assets_pipeline/importing_audio_samples.html#doc-importing-audio-samples-best-practices>`__ для отримання додаткової інформації.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_force/max_rate_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **force/max_rate_hz** = ``44100`` :ref:`🔗<class_ResourceImporterWAV_property_force/max_rate_hz>`

Частота для обмеження імпортного аудіопрокату (в Гц). ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_force/mono:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force/mono** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_force/mono>`

Якщо ``true``, змушує імпортувати аудіо, щоб бути моно, якщо вихідний файл є стерео. Це зменшує розмір файлу на 50%, збільшуючи два канали в одну.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
