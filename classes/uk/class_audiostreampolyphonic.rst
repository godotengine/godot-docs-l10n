:github_url: hide

.. _class_AudioStreamPolyphonic:

AudioStreamPolyphonic
=====================

**Успадковує:** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

AudioStream, який дозволяє користувачеві відтворювати власні потоки в будь-який час із коду, одночасно використовуючи один програвач.

.. rst-class:: classref-introduction-group

Опис
--------

AudioStream, який дозволяє користувачеві відтворювати власні потоки в будь-який час із коду, одночасно використовуючи один програвач.

Керування відтворенням здійснюється за допомогою набору :ref:`AudioStreamPlaybackPolyphonic<class_AudioStreamPlaybackPolyphonic>` екземпляра всередині програвача, який можна отримати за допомогою методів :ref:`AudioStreamPlayer.get_stream_playback()<class_AudioStreamPlayer_method_get_stream_playback>`, :ref:`AudioStreamPlayer2D.get_stream_playback()<class_AudioStreamPlayer2D_method_get_stream_playback>` або :ref:`AudioStreamPlayer3D.get_stream_playback()<class_AudioStreamPlayer3D_method_get_stream_playback>`. Отримання екземпляра відтворення дійсне лише після встановлення властивості ``stream`` як **AudioStreamPolyphonic** у цих програвачах.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Звукові потоки <../tutorials/audio/audio_streams>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`polyphony<class_AudioStreamPolyphonic_property_polyphony>` | ``32`` |
   +-----------------------+------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_AudioStreamPolyphonic_property_polyphony:

.. rst-class:: classref-property

:ref:`int<class_int>` **polyphony** = ``32`` :ref:`🔗<class_AudioStreamPolyphonic_property_polyphony>`

.. rst-class:: classref-property-setget

- |void| **set_polyphony**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_polyphony**\ (\ )

Максимальна кількість одночасних потоків, які можна відтворити.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
