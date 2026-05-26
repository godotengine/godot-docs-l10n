:github_url: hide

.. _class_AudioEffectRecord:

AudioEffectRecord
=================

**Успадковує:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Аудіоефект, який використовується для запису звуку з аудіошини.

.. rst-class:: classref-introduction-group

Опис
--------

Allows the user to record the sound from an audio bus into an :ref:`AudioStreamWAV<class_AudioStreamWAV>`. When used on the Master audio bus, this includes all audio output by Godot.

Unlike :ref:`AudioEffectCapture<class_AudioEffectCapture>`, this effect encodes the recording with the given format (8-bit, 16-bit, or compressed) instead of giving access to the raw audio samples.

Can be used (with an :ref:`AudioStreamMicrophone<class_AudioStreamMicrophone>`) to record from a microphone.

\ **Note:** :ref:`ProjectSettings.audio/driver/enable_input<class_ProjectSettings_property_audio/driver/enable_input>` must be ``true`` for audio input to work. See also that setting's description for caveats related to permissions and operating system privacy settings.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Запис з мікрофона <../tutorials/audio/recording_with_microphone>`

- `Демонстраційний запис аудіо з мікрофона <https://godotengine.org/asset-library/asset/2760>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------------+--------------------------------------------------------+-------+
   | :ref:`Format<enum_AudioStreamWAV_Format>` | :ref:`format<class_AudioEffectRecord_property_format>` | ``1`` |
   +-------------------------------------------+--------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamWAV<class_AudioStreamWAV>` | :ref:`get_recording<class_AudioEffectRecord_method_get_recording>`\ (\ ) |const|                                         |
   +---------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`is_recording_active<class_AudioEffectRecord_method_is_recording_active>`\ (\ ) |const|                             |
   +---------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`set_recording_active<class_AudioEffectRecord_method_set_recording_active>`\ (\ record\: :ref:`bool<class_bool>`\ ) |
   +---------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_AudioEffectRecord_property_format:

.. rst-class:: classref-property

:ref:`Format<enum_AudioStreamWAV_Format>` **format** = ``1`` :ref:`🔗<class_AudioEffectRecord_property_format>`

.. rst-class:: classref-property-setget

- |void| **set_format**\ (\ value\: :ref:`Format<enum_AudioStreamWAV_Format>`\ )
- :ref:`Format<enum_AudioStreamWAV_Format>` **get_format**\ (\ )

Визначає формат, у якому буде записано семпл.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_AudioEffectRecord_method_get_recording:

.. rst-class:: classref-method

:ref:`AudioStreamWAV<class_AudioStreamWAV>` **get_recording**\ (\ ) |const| :ref:`🔗<class_AudioEffectRecord_method_get_recording>`

Повертає записаний зразок.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectRecord_method_is_recording_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_recording_active**\ (\ ) |const| :ref:`🔗<class_AudioEffectRecord_method_is_recording_active>`

Повертає, чи активний запис чи ні.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectRecord_method_set_recording_active:

.. rst-class:: classref-method

|void| **set_recording_active**\ (\ record\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AudioEffectRecord_method_set_recording_active>`

Якщо ``true``, звук буде записано. Зауважте, що перезапуск запису видалить попередньо записаний зразок.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
