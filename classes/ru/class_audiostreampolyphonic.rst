:github_url: hide

.. _class_AudioStreamPolyphonic:

AudioStreamPolyphonic
=====================

**Наследует:** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

AudioStream, который позволяет пользователю воспроизводить пользовательские потоки в любое время из кода, одновременно используя один проигрыватель.

.. rst-class:: classref-introduction-group

Описание
----------------

AudioStream, который позволяет пользователю воспроизводить пользовательские потоки в любое время из кода, одновременно используя один проигрыватель.

Управление воспроизведением осуществляется через экземпляр :ref:`AudioStreamPlaybackPolyphonic<class_AudioStreamPlaybackPolyphonic>`, установленный внутри проигрывателя, который можно получить с помощью методов :ref:`AudioStreamPlayer.get_stream_playback()<class_AudioStreamPlayer_method_get_stream_playback>`, :ref:`AudioStreamPlayer2D.get_stream_playback()<class_AudioStreamPlayer2D_method_get_stream_playback>` или :ref:`AudioStreamPlayer3D.get_stream_playback()<class_AudioStreamPlayer3D_method_get_stream_playback>`. Получение экземпляра воспроизведения допустимо только после того, как свойство ``stream`` установлено как **AudioStreamPolyphonic** в этих проигрывателях.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Аудиопотоки <../tutorials/audio/audio_streams>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`polyphony<class_AudioStreamPolyphonic_property_polyphony>` | ``32`` |
   +-----------------------+------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_AudioStreamPolyphonic_property_polyphony:

.. rst-class:: classref-property

:ref:`int<class_int>` **polyphony** = ``32`` :ref:`🔗<class_AudioStreamPolyphonic_property_polyphony>`

.. rst-class:: classref-property-setget

- |void| **set_polyphony**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_polyphony**\ (\ )

Максимальное количество одновременных потоков, которые можно воспроизводить.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
