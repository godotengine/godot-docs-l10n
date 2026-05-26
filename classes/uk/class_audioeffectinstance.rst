:github_url: hide

.. _class_AudioEffectInstance:

AudioEffectInstance
===================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`AudioEffectSpectrumAnalyzerInstance<class_AudioEffectSpectrumAnalyzerInstance>`

Керує отриманим звуком для певного ефекту.

.. rst-class:: classref-introduction-group

Опис
--------

Екземпляр звукового ефекту маніпулює звуком, який він отримує для певного ефекту. Цей екземпляр автоматично створюється :ref:`AudioEffect<class_AudioEffect>`, коли він додається до шини, і зазвичай його не слід створювати безпосередньо. Якщо необхідно, його можна отримати під час виконання за допомогою :ref:`AudioServer.get_bus_effect_instance()<class_AudioServer_method_get_bus_effect_instance>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Звукові шини <../tutorials/audio/audio_buses>`

- :doc:`Audio effects <../tutorials/audio/audio_effects>`

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`_process<class_AudioEffectInstance_private_method__process>`\ (\ src_buffer\: ``const void*``, r_dst_buffer\: ``AudioFrame*``, frame_count\: :ref:`int<class_int>`\ ) |virtual| |required| |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_process_silence<class_AudioEffectInstance_private_method__process_silence>`\ (\ ) |virtual| |const|                                                                                       |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_AudioEffectInstance_private_method__process:

.. rst-class:: classref-method

|void| **_process**\ (\ src_buffer\: ``const void*``, r_dst_buffer\: ``AudioFrame*``, frame_count\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_AudioEffectInstance_private_method__process>`

Викликається :ref:`AudioServer<class_AudioServer>` для обробки цього ефекту. Якщо :ref:`_process_silence()<class_AudioEffectInstance_private_method__process_silence>` не перевизначено або повертає ``false``, цей метод викликається лише тоді, коли шина активна.

\ **Примітка:** Перевизначати цей метод у GDScript або C# не корисно. Тільки GDExtension може скористатися цим.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectInstance_private_method__process_silence:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_process_silence**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioEffectInstance_private_method__process_silence>`

Перевизначте цей метод, щоб налаштувати поведінку обробки цього екземпляра ефекту.

 Повинен повернути ``true``, щоб змусити :ref:`AudioServer<class_AudioServer>` завжди викликати :ref:`_process()<class_AudioEffectInstance_private_method__process>`, навіть якщо звук шини вимкнено або її неможливо почути іншим чином.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
