:github_url: hide

.. _class_AnimationNodeOneShot:

AnimationNodeOneShot
====================

**Успадковує:** :ref:`AnimationNodeSync<class_AnimationNodeSync>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Відтворює анімацію один раз у :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

.. rst-class:: classref-introduction-group

Опис
--------

Ресурс для додавання до :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`. Цей вузол анімації виконає субанімацію і повернеться після її завершення. Можна налаштувати час змішування для зникання і з'являння, а також фільтри.

Після встановлення запиту і зміни відтворення анімації, вузол однократної анімації автоматично очистить запит на наступному кадрі процесу, встановивши значення ``request`` у :ref:`ONE_SHOT_REQUEST_NONE<class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_NONE>`.


.. tabs::

 .. code-tab:: gdscript

    # Відтворити дочірню анімацію, підключену до порту "shot".
    animation_tree.set("parameters/OneShot/request", AnimationNodeOneShot.ONE_SHOT_REQUEST_FIRE)
    # Альтернативний синтаксис (той самий результат, що і вище).
    animation_tree["parameters/OneShot/request"] = AnimationNodeOneShot.ONE_SHOT_REQUEST_FIRE

    # Перериваємо дочірню анімацію, підключену до порту "shot".
    animation_tree.set("parameters/OneShot/request", AnimationNodeOneShot.ONE_SHOT_REQUEST_ABORT)
    # Альтернативний синтаксис (той самий результат, що і вище).
    animation_tree["parameters/OneShot/request"] = AnimationNodeOneShot.ONE_SHOT_REQUEST_ABORT

    # Перериває дочірню анімацію зі згасанням, підключену до порту "shot".
    animation_tree.set("parameters/OneShot/request", AnimationNodeOneShot.ONE_SHOT_REQUEST_FADE_OUT)
    # Альтернативний синтаксис (той самий результат, що й вище).
    animation_tree["parameters/OneShot/request"] = AnimationNodeOneShot.ONE_SHOT_REQUEST_FADE_OUT

    # Отримати поточний стан (тільки для читання).
    animation_tree.get("parameters/OneShot/active")
    # Альтернативний синтаксис (той самий результат, що й вище).
    animation_tree["parameters/OneShot/active"]

    # Отримати поточний внутрішній стан (тільки для читання).
    animation_tree.get("parameters/OneShot/internal_active")
    # Альтернативний синтаксис (той самий результат, що і вище).
    animation_tree["parameters/OneShot/internal_active"]

 .. code-tab:: csharp

    // Відтворити дочірню анімацію, підключену до порту "shot".
    animationTree.Set("parameters/OneShot/request", (int)AnimationNodeOneShot.OneShotRequest.Fire);

    // Перериваємо дочірню анімацію, підключену до порту "shot".
    animationTree.Set("parameters/OneShot/request", (int)AnimationNodeOneShot.OneShotRequest.Abort);

    // Перериваємо дочірню анімацію зі згасанням, підключену до порту "shot".
    animationTree.Set("parameters/OneShot/request", (int)AnimationNodeOneShot.OneShotRequest.FadeOut);

    // Отримати поточний стан (тільки для читання).
    animationTree.Get("parameters/OneShot/active");

    // Отримати поточний внутрішній стан (тільки для читання).
    animationTree.Get("parameters/OneShot/internal_active");



.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання Дерева анімації <../tutorials/animation/animation_tree>`

- `Демо-версія шутера від третьої особи (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`abort_on_reset<class_AnimationNodeOneShot_property_abort_on_reset>`                     | ``false`` |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`autorestart<class_AnimationNodeOneShot_property_autorestart>`                           | ``false`` |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                         | :ref:`autorestart_delay<class_AnimationNodeOneShot_property_autorestart_delay>`               | ``1.0``   |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                         | :ref:`autorestart_random_delay<class_AnimationNodeOneShot_property_autorestart_random_delay>` | ``0.0``   |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`break_loop_at_end<class_AnimationNodeOneShot_property_break_loop_at_end>`               | ``false`` |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`Curve<class_Curve>`                         | :ref:`fadein_curve<class_AnimationNodeOneShot_property_fadein_curve>`                         |           |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                         | :ref:`fadein_time<class_AnimationNodeOneShot_property_fadein_time>`                           | ``0.0``   |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`Curve<class_Curve>`                         | :ref:`fadeout_curve<class_AnimationNodeOneShot_property_fadeout_curve>`                       |           |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                         | :ref:`fadeout_time<class_AnimationNodeOneShot_property_fadeout_time>`                         | ``0.0``   |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`MixMode<enum_AnimationNodeOneShot_MixMode>` | :ref:`mix_mode<class_AnimationNodeOneShot_property_mix_mode>`                                 | ``0``     |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_AnimationNodeOneShot_OneShotRequest:

.. rst-class:: classref-enumeration

enum **OneShotRequest**: :ref:`🔗<enum_AnimationNodeOneShot_OneShotRequest>`

.. _class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`OneShotRequest<enum_AnimationNodeOneShot_OneShotRequest>` **ONE_SHOT_REQUEST_NONE** = ``0``

Стан запиту за замовчуванням. Нічого не робиться.

.. _class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_FIRE:

.. rst-class:: classref-enumeration-constant

:ref:`OneShotRequest<enum_AnimationNodeOneShot_OneShotRequest>` **ONE_SHOT_REQUEST_FIRE** = ``1``

Запит на відтворення анімації, підключеної до порту "shot".

.. _class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_ABORT:

.. rst-class:: classref-enumeration-constant

:ref:`OneShotRequest<enum_AnimationNodeOneShot_OneShotRequest>` **ONE_SHOT_REQUEST_ABORT** = ``2``

Запит на зупинку анімації, підключеної до порту "shot".

.. _class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_FADE_OUT:

.. rst-class:: classref-enumeration-constant

:ref:`OneShotRequest<enum_AnimationNodeOneShot_OneShotRequest>` **ONE_SHOT_REQUEST_FADE_OUT** = ``3``

Запит на згасання анімації, пов'язаної з портом "shot".

.. rst-class:: classref-item-separator

----

.. _enum_AnimationNodeOneShot_MixMode:

.. rst-class:: classref-enumeration

enum **MixMode**: :ref:`🔗<enum_AnimationNodeOneShot_MixMode>`

.. _class_AnimationNodeOneShot_constant_MIX_MODE_BLEND:

.. rst-class:: classref-enumeration-constant

:ref:`MixMode<enum_AnimationNodeOneShot_MixMode>` **MIX_MODE_BLEND** = ``0``

Змішує дві анімації. Дивіться також :ref:`AnimationNodeBlend2<class_AnimationNodeBlend2>`.

.. _class_AnimationNodeOneShot_constant_MIX_MODE_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`MixMode<enum_AnimationNodeOneShot_MixMode>` **MIX_MODE_ADD** = ``1``

Адитивно змішує дві анімації. Дивіться також :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_AnimationNodeOneShot_property_abort_on_reset:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **abort_on_reset** = ``false`` :ref:`🔗<class_AnimationNodeOneShot_property_abort_on_reset>`

.. rst-class:: classref-property-setget

- |void| **set_abort_on_reset**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_aborted_on_reset**\ (\ )

Якщо значення ``true``, піданімація перерветься, якщо її відновити зі скиданням після попереднього переривання.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_autorestart:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autorestart** = ``false`` :ref:`🔗<class_AnimationNodeOneShot_property_autorestart>`

.. rst-class:: classref-property-setget

- |void| **set_autorestart**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_autorestart**\ (\ )

Якщо ``true``, то під-анімація автоматично перезапуститься після завершення.

Іншими словами, щоб розпочати автоматичний перезапуск, анімацію потрібно відтворити один раз із запитом :ref:`ONE_SHOT_REQUEST_FIRE<class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_FIRE>`. Запит :ref:`ONE_SHOT_REQUEST_ABORT<class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_ABORT>` зупиняє автоматичний перезапуск, але не вимикає сам :ref:`autorestart<class_AnimationNodeOneShot_property_autorestart>`. Таким чином, запит :ref:`ONE_SHOT_REQUEST_FIRE<class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_FIRE>` знову почне автоматичний перезапуск.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_autorestart_delay:

.. rst-class:: classref-property

:ref:`float<class_float>` **autorestart_delay** = ``1.0`` :ref:`🔗<class_AnimationNodeOneShot_property_autorestart_delay>`

.. rst-class:: classref-property-setget

- |void| **set_autorestart_delay**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_autorestart_delay**\ (\ )

Затримка, після якої спрацьовує автоматичний перезапуск, у секундах.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_autorestart_random_delay:

.. rst-class:: classref-property

:ref:`float<class_float>` **autorestart_random_delay** = ``0.0`` :ref:`🔗<class_AnimationNodeOneShot_property_autorestart_random_delay>`

.. rst-class:: classref-property-setget

- |void| **set_autorestart_random_delay**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_autorestart_random_delay**\ (\ )

Якщо :ref:`autorestart<class_AnimationNodeOneShot_property_autorestart>` має значення ``true``, до :ref:`autorestart_delay<class_AnimationNodeOneShot_property_autorestart_delay>` буде додано випадкову додаткову затримку (у секундах) між 0 і цим значенням.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_break_loop_at_end:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **break_loop_at_end** = ``false`` :ref:`🔗<class_AnimationNodeOneShot_property_break_loop_at_end>`

.. rst-class:: classref-property-setget

- |void| **set_break_loop_at_end**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_loop_broken_at_end**\ (\ )

Якщо ``true``, розриває цикл у кінці циклу цикла для переходу, навіть якщо анімація повторюється.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_fadein_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **fadein_curve** :ref:`🔗<class_AnimationNodeOneShot_property_fadein_curve>`

.. rst-class:: classref-property-setget

- |void| **set_fadein_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_fadein_curve**\ (\ )

Визначає, як зменшується перехресне затухання між анімаціями. Якщо пусте, перехід буде лінійним. Має бути одиницею :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_fadein_time:

.. rst-class:: classref-property

:ref:`float<class_float>` **fadein_time** = ``0.0`` :ref:`🔗<class_AnimationNodeOneShot_property_fadein_time>`

.. rst-class:: classref-property-setget

- |void| **set_fadein_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fadein_time**\ (\ )

Тривалість поступового наростання. Наприклад, встановлення значення ``1.0`` для анімації тривалістю 5 секунд призведе до перехресного наростання, яке починається з 0 секунди та закінчується на 1 секунді анімації.

\ **Примітка:** **AnimationNodeOneShot** переводить поточний стан після завершення згасання.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_fadeout_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **fadeout_curve** :ref:`🔗<class_AnimationNodeOneShot_property_fadeout_curve>`

.. rst-class:: classref-property-setget

- |void| **set_fadeout_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_fadeout_curve**\ (\ )

Визначає, як зменшується перехресне затухання між анімаціями. Якщо пусте, перехід буде лінійним. Має бути одиницею :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_fadeout_time:

.. rst-class:: classref-property

:ref:`float<class_float>` **fadeout_time** = ``0.0`` :ref:`🔗<class_AnimationNodeOneShot_property_fadeout_time>`

.. rst-class:: classref-property-setget

- |void| **set_fadeout_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fadeout_time**\ (\ )

Тривалість поступового згасання. Наприклад, встановлення значення ``1.0`` для анімації тривалістю 5 секунд призведе до перехресного згасання, яке починається на 4 секунді та закінчується на 5 секунді анімації.

\ **Примітка:** **AnimationNodeOneShot** переводить поточний стан після завершення згасання.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_mix_mode:

.. rst-class:: classref-property

:ref:`MixMode<enum_AnimationNodeOneShot_MixMode>` **mix_mode** = ``0`` :ref:`🔗<class_AnimationNodeOneShot_property_mix_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mix_mode**\ (\ value\: :ref:`MixMode<enum_AnimationNodeOneShot_MixMode>`\ )
- :ref:`MixMode<enum_AnimationNodeOneShot_MixMode>` **get_mix_mode**\ (\ )

Тип змішування.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
