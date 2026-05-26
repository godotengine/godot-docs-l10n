:github_url: hide

.. _class_AudioStreamWAV:

AudioStreamWAV
==============

**Успадковує:** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Зберігає аудіодані, завантажені з файлів WAV.

.. rst-class:: classref-introduction-group

Опис
--------

AudioStreamWAV зберігає зразки звуку, завантажені з файлів WAV. Щоб відтворити збережений звук, використовуйте :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` (для непозиційного аудіо) або :ref:`AudioStreamPlayer2D<class_AudioStreamPlayer2D>`/:ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>` (для позиційного аудіо). Звук можна зациклювати.

 Цей клас також можна використовувати для зберігання динамічно створених аудіоданих PCM. Дивіться також :ref:`AudioStreamGenerator<class_AudioStreamGenerator>` для процедурної генерації аудіо.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Звукові потоки <../tutorials/audio/audio_streams>`

- :doc:`Завантаження та збереження файлів під час виконання <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`data<class_AudioStreamWAV_property_data>`             | ``PackedByteArray()`` |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`Format<enum_AudioStreamWAV_Format>`     | :ref:`format<class_AudioStreamWAV_property_format>`         | ``0``                 |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                         | :ref:`loop_begin<class_AudioStreamWAV_property_loop_begin>` | ``0``                 |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                         | :ref:`loop_end<class_AudioStreamWAV_property_loop_end>`     | ``0``                 |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`LoopMode<enum_AudioStreamWAV_LoopMode>` | :ref:`loop_mode<class_AudioStreamWAV_property_loop_mode>`   | ``0``                 |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                         | :ref:`mix_rate<class_AudioStreamWAV_property_mix_rate>`     | ``44100``             |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                       | :ref:`stereo<class_AudioStreamWAV_property_stereo>`         | ``false``             |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`Dictionary<class_Dictionary>`           | :ref:`tags<class_AudioStreamWAV_property_tags>`             | ``{}``                |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamWAV<class_AudioStreamWAV>` | :ref:`load_from_buffer<class_AudioStreamWAV_method_load_from_buffer>`\ (\ stream_data\: :ref:`PackedByteArray<class_PackedByteArray>`, options\: :ref:`Dictionary<class_Dictionary>` = {}\ ) |static| |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamWAV<class_AudioStreamWAV>` | :ref:`load_from_file<class_AudioStreamWAV_method_load_from_file>`\ (\ path\: :ref:`String<class_String>`, options\: :ref:`Dictionary<class_Dictionary>` = {}\ ) |static|                              |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`       | :ref:`save_to_wav<class_AudioStreamWAV_method_save_to_wav>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                 |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_AudioStreamWAV_Format:

.. rst-class:: classref-enumeration

enum **Format**: :ref:`🔗<enum_AudioStreamWAV_Format>`

.. _class_AudioStreamWAV_constant_FORMAT_8_BITS:

.. rst-class:: classref-enumeration-constant

:ref:`Format<enum_AudioStreamWAV_Format>` **FORMAT_8_BITS** = ``0``

8-бітний аудіокодек PCM.

.. _class_AudioStreamWAV_constant_FORMAT_16_BITS:

.. rst-class:: classref-enumeration-constant

:ref:`Format<enum_AudioStreamWAV_Format>` **FORMAT_16_BITS** = ``1``

16-бітний аудіокодек PCM.

.. _class_AudioStreamWAV_constant_FORMAT_IMA_ADPCM:

.. rst-class:: classref-enumeration-constant

:ref:`Format<enum_AudioStreamWAV_Format>` **FORMAT_IMA_ADPCM** = ``2``

Аудіо стискається із втратами як IMA ADPCM.

.. _class_AudioStreamWAV_constant_FORMAT_QOA:

.. rst-class:: classref-enumeration-constant

:ref:`Format<enum_AudioStreamWAV_Format>` **FORMAT_QOA** = ``3``

Аудіо стискається із втратами, як `Quite OK Audio <https://qoaformat.org/>`__.

.. rst-class:: classref-item-separator

----

.. _enum_AudioStreamWAV_LoopMode:

.. rst-class:: classref-enumeration

enum **LoopMode**: :ref:`🔗<enum_AudioStreamWAV_LoopMode>`

.. _class_AudioStreamWAV_constant_LOOP_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`LoopMode<enum_AudioStreamWAV_LoopMode>` **LOOP_DISABLED** = ``0``

Аудіо не зациклюється.

.. _class_AudioStreamWAV_constant_LOOP_FORWARD:

.. rst-class:: classref-enumeration-constant

:ref:`LoopMode<enum_AudioStreamWAV_LoopMode>` **LOOP_FORWARD** = ``1``

Аудіо зациклює дані між :ref:`loop_begin<class_AudioStreamWAV_property_loop_begin>` і :ref:`loop_end<class_AudioStreamWAV_property_loop_end>`, відтворюючи лише вперед.

.. _class_AudioStreamWAV_constant_LOOP_PINGPONG:

.. rst-class:: classref-enumeration-constant

:ref:`LoopMode<enum_AudioStreamWAV_LoopMode>` **LOOP_PINGPONG** = ``2``

Аудіо зациклює дані між :ref:`loop_begin<class_AudioStreamWAV_property_loop_begin>` і :ref:`loop_end<class_AudioStreamWAV_property_loop_end>`, відтворюючи вперед і назад.

.. _class_AudioStreamWAV_constant_LOOP_BACKWARD:

.. rst-class:: classref-enumeration-constant

:ref:`LoopMode<enum_AudioStreamWAV_LoopMode>` **LOOP_BACKWARD** = ``3``

Аудіо зациклює дані між :ref:`loop_begin<class_AudioStreamWAV_property_loop_begin>` і :ref:`loop_end<class_AudioStreamWAV_property_loop_end>`, відтворюючи лише назад.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_AudioStreamWAV_property_data:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **data** = ``PackedByteArray()`` :ref:`🔗<class_AudioStreamWAV_property_data>`

.. rst-class:: classref-property-setget

- |void| **set_data**\ (\ value\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_data**\ (\ )

Містить аудіодані в байтах. 

\ **Примітка.** Якщо :ref:`format<class_AudioStreamWAV_property_format>` встановлено на :ref:`FORMAT_8_BITS<class_AudioStreamWAV_constant_FORMAT_8_BITS>`, ця властивість очікує 8-розрядних даних PCM зі знаком. Щоб конвертувати з беззнакового 8-бітного PCM, відніміть 128 від кожного байта. 

\ **Примітка:** Якщо для параметра :ref:`format<class_AudioStreamWAV_property_format>` встановлено значення :ref:`FORMAT_QOA<class_AudioStreamWAV_constant_FORMAT_QOA>`, ця властивість очікує даних із повного файлу QOA.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_property_format:

.. rst-class:: classref-property

:ref:`Format<enum_AudioStreamWAV_Format>` **format** = ``0`` :ref:`🔗<class_AudioStreamWAV_property_format>`

.. rst-class:: classref-property-setget

- |void| **set_format**\ (\ value\: :ref:`Format<enum_AudioStreamWAV_Format>`\ )
- :ref:`Format<enum_AudioStreamWAV_Format>` **get_format**\ (\ )

Аудіоформат.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_property_loop_begin:

.. rst-class:: classref-property

:ref:`int<class_int>` **loop_begin** = ``0`` :ref:`🔗<class_AudioStreamWAV_property_loop_begin>`

.. rst-class:: classref-property-setget

- |void| **set_loop_begin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_loop_begin**\ (\ )

Точка початку циклу (у кількості зразків відносно початку потоку).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_property_loop_end:

.. rst-class:: classref-property

:ref:`int<class_int>` **loop_end** = ``0`` :ref:`🔗<class_AudioStreamWAV_property_loop_end>`

.. rst-class:: classref-property-setget

- |void| **set_loop_end**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_loop_end**\ (\ )

Кінцева точка циклу (у кількості вибірок відносно початку потоку).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_property_loop_mode:

.. rst-class:: classref-property

:ref:`LoopMode<enum_AudioStreamWAV_LoopMode>` **loop_mode** = ``0`` :ref:`🔗<class_AudioStreamWAV_property_loop_mode>`

.. rst-class:: classref-property-setget

- |void| **set_loop_mode**\ (\ value\: :ref:`LoopMode<enum_AudioStreamWAV_LoopMode>`\ )
- :ref:`LoopMode<enum_AudioStreamWAV_LoopMode>` **get_loop_mode**\ (\ )

Режим циклу.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_property_mix_rate:

.. rst-class:: classref-property

:ref:`int<class_int>` **mix_rate** = ``44100`` :ref:`🔗<class_AudioStreamWAV_property_mix_rate>`

.. rst-class:: classref-property-setget

- |void| **set_mix_rate**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_mix_rate**\ (\ )

Частота дискретизації для мікшування цього аудіо. Вищі значення потребують більше місця для зберігання, але призводять до кращої якості.

 В іграх стандартні частоти дискретизації: ``11025``, ``16000``, ``22050``, ``32000``, ``44100`` і ``48000``.

 Згідно з `теоремою вибірки Найквіста-Шеннона <https://en.wikipedia.org/wiki/Nyquist%E2%80%93Shannon_sampling_theorem>`__, немає жодної різниці в якості людського слуху, коли частота перевищує 40 000 Гц ( оскільки більшість людей можуть чути лише ~20 000 Гц, часто менше). Якщо ви використовуєте низькі звуки, наприклад голоси, можна використовувати нижчу частоту дискретизації, наприклад ``32000`` або ``22050`` без втрати якості.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_property_stereo:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **stereo** = ``false`` :ref:`🔗<class_AudioStreamWAV_property_stereo>`

.. rst-class:: classref-property-setget

- |void| **set_stereo**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_stereo**\ (\ )

Якщо ``true``, звук стерео.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_property_tags:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **tags** = ``{}`` :ref:`🔗<class_AudioStreamWAV_property_tags>`

.. rst-class:: classref-property-setget

- |void| **set_tags**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_tags**\ (\ )

Містить визначені користувачем теги, якщо вони є в даних WAV.

Зазвичай використовуються такі теги: ``назва``, ``виконавець``, ``альбом``, ``tracknumber``, and ``date`` (``date`` не має стандартного формату дати).

\ **Примітка:** Жоден тег не *гарантовано* присутній у кожному файлі, тому обов’язково враховуйте, що ключі не завжди існують.

\ **Примітка:** Наразі підтримуються лише WAV-файли, що використовують фрагмент ``LIST`` з ідентифікатором ``INFO`` для кодування тегів.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_AudioStreamWAV_method_load_from_buffer:

.. rst-class:: classref-method

:ref:`AudioStreamWAV<class_AudioStreamWAV>` **load_from_buffer**\ (\ stream_data\: :ref:`PackedByteArray<class_PackedByteArray>`, options\: :ref:`Dictionary<class_Dictionary>` = {}\ ) |static| :ref:`🔗<class_AudioStreamWAV_method_load_from_buffer>`

Створює новий екземпляр **AudioStreamWAV** із заданого буфера. Буфер повинен містити дані WAV. 

Ключі та значення ``options`` відповідають властивостям :ref:`ResourceImporterWAV<class_ResourceImporterWAV>`. Використання ``options`` ідентично :ref:`load_from_file()<class_AudioStreamWAV_method_load_from_file>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_method_load_from_file:

.. rst-class:: classref-method

:ref:`AudioStreamWAV<class_AudioStreamWAV>` **load_from_file**\ (\ path\: :ref:`String<class_String>`, options\: :ref:`Dictionary<class_Dictionary>` = {}\ ) |static| :ref:`🔗<class_AudioStreamWAV_method_load_from_file>`

Створює новий екземпляр **AudioStreamWAV** із указаного шляху до файлу. Файл має бути у форматі WAV. 

Ключі та значення ``options`` відповідають властивостям :ref:`ResourceImporterWAV<class_ResourceImporterWAV>`. 

\ **Приклад:** Завантажте перший вилучений файл як WAV і відтворіть його: 

::
 
    @onready var audio_player = $AudioStreamPlayer 

    func _ready(): 
        get_window().files_dropped.connect(_on_files_dropped) 

    func _on_files_dropped(файли): 
        if files[0].get_extension() == "wav": 
            audio_player.stream = AudioStreamWAV.load_from_file(файли[0], { 
                    "force/max_rate": правда, 
                    "force/max_rate_hz": 11025 
                }) 
            audio_player.play() 

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_method_save_to_wav:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save_to_wav**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_AudioStreamWAV_method_save_to_wav>`

Зберігає AudioStreamWAV як файл WAV у ``path``. Зразки з форматами IMA ADPCM або Quite OK Audio не можна зберегти. 

\ **Примітка:** Розширення ``.wav`` автоматично додається до ``path``, якщо воно відсутнє.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
