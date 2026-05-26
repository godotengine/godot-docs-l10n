:github_url: hide

.. _class_AudioStreamMicrophone:

AudioStreamMicrophone
=====================

**Наследует:** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Воспроизводит входные аудиоданные в реальном времени.

.. rst-class:: classref-introduction-group

Описание
----------------

При использовании непосредственно в узле :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` **AudioStreamMicrophone** воспроизводит вход микрофона в реальном времени. Это можно использовать вместе с :ref:`AudioEffectCapture<class_AudioEffectCapture>` для обработки данных или их сохранения.

\ **Примечание:** :ref:`ProjectSettings.audio/driver/enable_input<class_ProjectSettings_property_audio/driver/enable_input>` должен быть ``true`` для работы аудиовхода. См. также описание этого параметра для предостережений, связанных с разрешениями и настройками конфиденциальности операционной системы.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Аудиопотоки <../tutorials/audio/audio_streams>`

- :doc:`Запись с микрофона <../tutorials/audio/recording_with_microphone>`

- `Audio Mic Record Демо <https://github.com/godotengine/godot-demo-projects/tree/master/audio/mic_record>`__

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
