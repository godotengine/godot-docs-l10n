:github_url: hide

.. _class_AnimationNodeAnimation:

AnimationNodeAnimation
======================

**Успадковує:** :ref:`AnimationRootNode<class_AnimationRootNode>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Вхідна анімація для :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

.. rst-class:: classref-introduction-group

Опис
--------

Ресурс для додавання до :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`. Має лише один вихідний порт, який використовує властивість :ref:`animation<class_AnimationNodeAnimation_property_animation>`. Використовується як вхідні дані для :ref:`AnimationNode<class_AnimationNode>`, які поєднують анімації.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання Дерева анімації <../tutorials/animation/animation_tree>`

- `Демонстрація 3D-платформера <https://godotengine.org/asset-library/asset/2748>`__

- `Демо-версія шутера від третьої особи (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                               | :ref:`advance_on_start<class_AnimationNodeAnimation_property_advance_on_start>`       | ``false`` |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`StringName<class_StringName>`                   | :ref:`animation<class_AnimationNodeAnimation_property_animation>`                     | ``&""``   |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`LoopMode<enum_Animation_LoopMode>`              | :ref:`loop_mode<class_AnimationNodeAnimation_property_loop_mode>`                     |           |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`PlayMode<enum_AnimationNodeAnimation_PlayMode>` | :ref:`play_mode<class_AnimationNodeAnimation_property_play_mode>`                     | ``0``     |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`start_offset<class_AnimationNodeAnimation_property_start_offset>`               |           |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                               | :ref:`stretch_time_scale<class_AnimationNodeAnimation_property_stretch_time_scale>`   |           |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`timeline_length<class_AnimationNodeAnimation_property_timeline_length>`         |           |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                               | :ref:`use_custom_timeline<class_AnimationNodeAnimation_property_use_custom_timeline>` | ``false`` |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_AnimationNodeAnimation_PlayMode:

.. rst-class:: classref-enumeration

enum **PlayMode**: :ref:`🔗<enum_AnimationNodeAnimation_PlayMode>`

.. _class_AnimationNodeAnimation_constant_PLAY_MODE_FORWARD:

.. rst-class:: classref-enumeration-constant

:ref:`PlayMode<enum_AnimationNodeAnimation_PlayMode>` **PLAY_MODE_FORWARD** = ``0``

Відтворює анімацію в звичайному напрямку.

.. _class_AnimationNodeAnimation_constant_PLAY_MODE_BACKWARD:

.. rst-class:: classref-enumeration-constant

:ref:`PlayMode<enum_AnimationNodeAnimation_PlayMode>` **PLAY_MODE_BACKWARD** = ``1``

Відтворює анімацію у зворотному напрямку.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_AnimationNodeAnimation_property_advance_on_start:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **advance_on_start** = ``false`` :ref:`🔗<class_AnimationNodeAnimation_property_advance_on_start>`

.. rst-class:: classref-property-setget

- |void| **set_advance_on_start**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_advance_on_start**\ (\ )

Якщо ``true``, після отримання запиту на відтворення анімації з початку перший кадр не малюється, а лише обробляється, і відтворення починається з наступного кадру. 

Дивіться також примітки до :ref:`AnimationPlayer.play()<class_AnimationPlayer_method_play>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeAnimation_property_animation:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **animation** = ``&""`` :ref:`🔗<class_AnimationNodeAnimation_property_animation>`

.. rst-class:: classref-property-setget

- |void| **set_animation**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_animation**\ (\ )

Анімація для виведення. Це одна з анімацій, що надаються :ref:`AnimationTree.anim_player<class_AnimationTree_property_anim_player>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeAnimation_property_loop_mode:

.. rst-class:: classref-property

:ref:`LoopMode<enum_Animation_LoopMode>` **loop_mode** :ref:`🔗<class_AnimationNodeAnimation_property_loop_mode>`

.. rst-class:: classref-property-setget

- |void| **set_loop_mode**\ (\ value\: :ref:`LoopMode<enum_Animation_LoopMode>`\ )
- :ref:`LoopMode<enum_Animation_LoopMode>` **get_loop_mode**\ (\ )

Якщо :ref:`use_custom_timeline<class_AnimationNodeAnimation_property_use_custom_timeline>` має значення ``true``, замініть параметри циклу вихідного ресурсу :ref:`Animation<class_Animation>` значенням.

\ **Примітка:** Якщо :ref:`Animation.loop_mode<class_Animation_property_loop_mode>` не налаштовано на цикл, параметр :ref:`Animation.track_set_interpolation_loop_wrap()<class_Animation_method_track_set_interpolation_loop_wrap>` не застосовуватиметься. Якщо ви не можете отримати очікувану поведінку, подумайте про дублювання ресурсу :ref:`Animation<class_Animation>` і зміни параметрів циклу.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeAnimation_property_play_mode:

.. rst-class:: classref-property

:ref:`PlayMode<enum_AnimationNodeAnimation_PlayMode>` **play_mode** = ``0`` :ref:`🔗<class_AnimationNodeAnimation_property_play_mode>`

.. rst-class:: classref-property-setget

- |void| **set_play_mode**\ (\ value\: :ref:`PlayMode<enum_AnimationNodeAnimation_PlayMode>`\ )
- :ref:`PlayMode<enum_AnimationNodeAnimation_PlayMode>` **get_play_mode**\ (\ )

Визначає напрямок відтворення анімації.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeAnimation_property_start_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **start_offset** :ref:`🔗<class_AnimationNodeAnimation_property_start_offset>`

.. rst-class:: classref-property-setget

- |void| **set_start_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_start_offset**\ (\ )

Якщо :ref:`use_custom_timeline<class_AnimationNodeAnimation_property_use_custom_timeline>` має значення ``true``, зсув початкової позиції анімації.

 Це корисно для налаштування того, яка нога ступає першою в 3D-анімації ходьби.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeAnimation_property_stretch_time_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **stretch_time_scale** :ref:`🔗<class_AnimationNodeAnimation_property_stretch_time_scale>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_time_scale**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_stretching_time_scale**\ (\ )

Якщо ``true``, масштабує час так, щоб довжина, указана в :ref:`timeline_length<class_AnimationNodeAnimation_property_timeline_length>`, становила один цикл.

 Це корисно для зіставлення періодів анімації ходьби та бігу.

 Якщо ``false``, оригінальна тривалість анімації дотримується. Якщо ви встановите для циклу :ref:`loop_mode<class_AnimationNodeAnimation_property_loop_mode>`, анімація буде повторюватися в :ref:`timeline_length<class_AnimationNodeAnimation_property_timeline_length>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeAnimation_property_timeline_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **timeline_length** :ref:`🔗<class_AnimationNodeAnimation_property_timeline_length>`

.. rst-class:: classref-property-setget

- |void| **set_timeline_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_timeline_length**\ (\ )

Тривалість користувацької часової шкали.

Якщо :ref:`stretch_time_scale<class_AnimationNodeAnimation_property_stretch_time_scale>` має значення ``true``, масштабує анімацію до цієї довжини.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeAnimation_property_use_custom_timeline:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_custom_timeline** = ``false`` :ref:`🔗<class_AnimationNodeAnimation_property_use_custom_timeline>`

.. rst-class:: classref-property-setget

- |void| **set_use_custom_timeline**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_custom_timeline**\ (\ )

Якщо ``true``, :ref:`AnimationNode<class_AnimationNode>` забезпечує анімацію на основі ресурсу :ref:`Animation<class_Animation>` з деякими налаштованими параметрами.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
