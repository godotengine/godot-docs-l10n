:github_url: hide

.. _class_AudioEffectAmplify:

AudioEffectAmplify
==================

**Успадковує:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Adds a volume manipulation audio effect to an audio bus.

.. rst-class:: classref-introduction-group

Опис
--------

Збільшує або зменшує гучність, що направляється через аудіошину.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Звукові шини <../tutorials/audio/audio_buses>`

- :doc:`Audio effects <../tutorials/audio/audio_effects>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`volume_db<class_AudioEffectAmplify_property_volume_db>`         | ``0.0`` |
   +---------------------------+-----------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`volume_linear<class_AudioEffectAmplify_property_volume_linear>` |         |
   +---------------------------+-----------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_AudioEffectAmplify_property_volume_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_db** = ``0.0`` :ref:`🔗<class_AudioEffectAmplify_property_volume_db>`

.. rst-class:: classref-property-setget

- |void| **set_volume_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_db**\ (\ )

Amount of amplification in dB. Positive values make the sound louder, negative values make it quieter. Value can range from -80 to 24.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectAmplify_property_volume_linear:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_linear** :ref:`🔗<class_AudioEffectAmplify_property_volume_linear>`

.. rst-class:: classref-property-setget

- |void| **set_volume_linear**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_linear**\ (\ )

Величина підсилення як лінійна величина. 

\ **Примітка:** цей учасник змінює :ref:`volume_db<class_AudioEffectAmplify_property_volume_db>` для зручності. Повернене значення еквівалентно результату :ref:`@GlobalScope.db_to_linear()<class_@GlobalScope_method_db_to_linear>` на :ref:`volume_db<class_AudioEffectAmplify_property_volume_db>`. Налаштування цього члена еквівалентно встановленню :ref:`volume_db<class_AudioEffectAmplify_property_volume_db>` для результату :ref:`@GlobalScope.linear_to_db()<class_@GlobalScope_method_linear_to_db>` для значення.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
