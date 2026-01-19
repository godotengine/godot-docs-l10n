:github_url: hide

.. _class_AnimationNodeOneShot:

AnimationNodeOneShot
====================

**Наследует:** :ref:`AnimationNodeSync<class_AnimationNodeSync>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Воспроизводит анимацию один раз в :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Ресурс для добавления в :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`. Этот узел анимации выполнит поданимацию и вернется после ее завершения. Можно настроить время смешивания для появления и исчезновения, а также фильтры.

После установки запроса и изменения воспроизведения анимации узел one-shot автоматически очищает запрос на следующем кадре процесса, устанавливая его значение ``request`` на :ref:`ONE_SHOT_REQUEST_NONE<class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_NONE>`.


.. tabs::

 .. code-tab:: gdscript

    # Воспроизвести дочернюю анимацию, подключенную к порту "shot".
    animation_tree.set("parameters/OneShot/request", AnimationNodeOneShot.ONE_SHOT_REQUEST_FIRE)
    Альтернативный синтаксис (тот же результат, что и выше).
    animation_tree["parameters/OneShot/request"] = AnimationNodeOneShot.ONE_SHOT_REQUEST_FIRE

    # Прервать дочернюю анимацию, подключенную к порту «выстрел».
    animation_tree.set("parameters/OneShot/request", AnimationNodeOneShot.ONE_SHOT_REQUEST_ABORT)
    # Альтернативный синтаксис (тот же результат, что и выше).
    animation_tree["parameters/OneShot/request"] = AnimationNodeOneShot.ONE_SHOT_REQUEST_ABORT

    # Отменить дочернюю анимацию с затуханием, подключенным к порту «выстрел».
    animation_tree.set("parameters/OneShot/request", AnimationNodeOneShot.ONE_SHOT_REQUEST_FADE_OUT)
    # Альтернативный синтаксис (тот же результат, что и выше).
    animation_tree["parameters/OneShot/request"] = AnimationNodeOneShot.ONE_SHOT_REQUEST_FADE_OUT

    # Получить текущее состояние (только чтение).
    animation_tree.get("parameters/OneShot/active")
    # Альтернативный синтаксис (тот же результат, что и выше).
    animation_tree["parameters/OneShot/active"]

    # Получить текущее внутреннее состояние (только для чтения).
    animation_tree.get("parameters/OneShot/internal_active")
    # Альтернативный синтаксис (тот же результат, что и выше).
    animation_tree["parameters/OneShot/internal_active"]

 .. code-tab:: csharp

    // Воспроизвести дочернюю анимацию, подключенную к порту «выстрел».
    animationTree.Set("parameters/OneShot/request", (int)AnimationNodeOneShot.OneShotRequest.Fire);

    //Прервать дочернюю анимацию, подключенную к порту «shot».
    animationTree.Set("parameters/OneShot/request", (int)AnimationNodeOneShot.OneShotRequest.Abort);

    // Прервать дочернюю анимацию с затуханием, подключенную к порту «shot».
    animationTree.Set("parameters/OneShot/request", (int)AnimationNodeOneShot.OneShotRequest.FadeOut);

    // Получить текущее состояние (только чтение).
    animationTree.Get("parameters/OneShot/active");

    // Получить текущее внутреннее состояние (только для чтения).
    animationTree.Get("parameters/OneShot/internal_active");



.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование дерева анимации <../tutorials/animation/animation_tree>`

- `Демонстрация шутера от третьего лица (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Перечисления
------------------------

.. _enum_AnimationNodeOneShot_OneShotRequest:

.. rst-class:: classref-enumeration

enum **OneShotRequest**: :ref:`🔗<enum_AnimationNodeOneShot_OneShotRequest>`

.. _class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`OneShotRequest<enum_AnimationNodeOneShot_OneShotRequest>` **ONE_SHOT_REQUEST_NONE** = ``0``

Состояние запроса по умолчанию. Ничего не сделано.

.. _class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_FIRE:

.. rst-class:: classref-enumeration-constant

:ref:`OneShotRequest<enum_AnimationNodeOneShot_OneShotRequest>` **ONE_SHOT_REQUEST_FIRE** = ``1``

Запрос на воспроизведение анимации подключен к порту "shot".

.. _class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_ABORT:

.. rst-class:: classref-enumeration-constant

:ref:`OneShotRequest<enum_AnimationNodeOneShot_OneShotRequest>` **ONE_SHOT_REQUEST_ABORT** = ``2``

Запрос на остановку анимации подключен к порту "shot".

.. _class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_FADE_OUT:

.. rst-class:: classref-enumeration-constant

:ref:`OneShotRequest<enum_AnimationNodeOneShot_OneShotRequest>` **ONE_SHOT_REQUEST_FADE_OUT** = ``3``

Запрос на затухание анимации, подключенной к порту "shot".

.. rst-class:: classref-item-separator

----

.. _enum_AnimationNodeOneShot_MixMode:

.. rst-class:: classref-enumeration

enum **MixMode**: :ref:`🔗<enum_AnimationNodeOneShot_MixMode>`

.. _class_AnimationNodeOneShot_constant_MIX_MODE_BLEND:

.. rst-class:: classref-enumeration-constant

:ref:`MixMode<enum_AnimationNodeOneShot_MixMode>` **MIX_MODE_BLEND** = ``0``

Смешивает две анимации. См. также :ref:`AnimationNodeBlend2<class_AnimationNodeBlend2>`.

.. _class_AnimationNodeOneShot_constant_MIX_MODE_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`MixMode<enum_AnimationNodeOneShot_MixMode>` **MIX_MODE_ADD** = ``1``

Смешивает две анимации аддитивно. См. также :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_AnimationNodeOneShot_property_abort_on_reset:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **abort_on_reset** = ``false`` :ref:`🔗<class_AnimationNodeOneShot_property_abort_on_reset>`

.. rst-class:: classref-property-setget

- |void| **set_abort_on_reset**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_aborted_on_reset**\ (\ )

Если ``true``, то при возобновлении анимации с перезагрузкой после предыдущего прерывания, она будет прервана.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_autorestart:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autorestart** = ``false`` :ref:`🔗<class_AnimationNodeOneShot_property_autorestart>`

.. rst-class:: classref-property-setget

- |void| **set_autorestart**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_autorestart**\ (\ )

Если ``true``, суб-анимация автоматически перезапустится после завершения.

Другими словами, чтобы начать автоматический перезапуск, анимация должна быть воспроизведена один раз с запросом :ref:`ONE_SHOT_REQUEST_FIRE<class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_FIRE>`. Запрос :ref:`ONE_SHOT_REQUEST_ABORT<class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_ABORT>` останавливает автоматический перезапуск, но он не отключает сам :ref:`autorestart<class_AnimationNodeOneShot_property_autorestart>`. Таким образом, запрос :ref:`ONE_SHOT_REQUEST_FIRE<class_AnimationNodeOneShot_constant_ONE_SHOT_REQUEST_FIRE>` снова запустит автоматический перезапуск.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_autorestart_delay:

.. rst-class:: classref-property

:ref:`float<class_float>` **autorestart_delay** = ``1.0`` :ref:`🔗<class_AnimationNodeOneShot_property_autorestart_delay>`

.. rst-class:: classref-property-setget

- |void| **set_autorestart_delay**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_autorestart_delay**\ (\ )

Задержка, после которой срабатывает автоматический перезапуск, в секундах.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_autorestart_random_delay:

.. rst-class:: classref-property

:ref:`float<class_float>` **autorestart_random_delay** = ``0.0`` :ref:`🔗<class_AnimationNodeOneShot_property_autorestart_random_delay>`

.. rst-class:: classref-property-setget

- |void| **set_autorestart_random_delay**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_autorestart_random_delay**\ (\ )

Если :ref:`autorestart<class_AnimationNodeOneShot_property_autorestart>` имеет значение ``true``, к :ref:`autorestart_delay<class_AnimationNodeOneShot_property_autorestart_delay>` будет добавлена случайная дополнительная задержка (в секундах) между 0 и этим значением.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_break_loop_at_end:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **break_loop_at_end** = ``false`` :ref:`🔗<class_AnimationNodeOneShot_property_break_loop_at_end>`

.. rst-class:: classref-property-setget

- |void| **set_break_loop_at_end**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_loop_broken_at_end**\ (\ )

Если ``true``, прерывает цикл в конце цикла перехода, даже если анимация зациклена.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_fadein_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **fadein_curve** :ref:`🔗<class_AnimationNodeOneShot_property_fadein_curve>`

.. rst-class:: classref-property-setget

- |void| **set_fadein_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_fadein_curve**\ (\ )

Определяет, как плавно смягчается перекрестное затухание между анимациями. Если пусто, переход будет линейным. Должен быть единицей :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_fadein_time:

.. rst-class:: classref-property

:ref:`float<class_float>` **fadein_time** = ``0.0`` :ref:`🔗<class_AnimationNodeOneShot_property_fadein_time>`

.. rst-class:: classref-property-setget

- |void| **set_fadein_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fadein_time**\ (\ )

Длительность начального затухания. Например, если задать значение ``1.0`` для анимации длиной 5 секунд, то будет создано перекрестное затухание, которое начинается с 0 секунды и заканчивается на 1 секунде во время анимации.

\ **Примечание:** **AnimationNodeOneShot** переводит текущее состояние после завершения затухания.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_fadeout_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **fadeout_curve** :ref:`🔗<class_AnimationNodeOneShot_property_fadeout_curve>`

.. rst-class:: classref-property-setget

- |void| **set_fadeout_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_fadeout_curve**\ (\ )

Определяет, как плавно смягчается перекрестное затухание между анимациями. Если пусто, переход будет линейным. Должен быть единицей :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_fadeout_time:

.. rst-class:: classref-property

:ref:`float<class_float>` **fadeout_time** = ``0.0`` :ref:`🔗<class_AnimationNodeOneShot_property_fadeout_time>`

.. rst-class:: classref-property-setget

- |void| **set_fadeout_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fadeout_time**\ (\ )

Длительность конечного затухания. Например, если задать значение ``1.0`` для анимации длиной 5 секунд, то будет создано перекрестное затухание, которое начинается на 4 секунде и заканчивается на 5 секунде во время анимации.

\ **Примечание:** **AnimationNodeOneShot** переводит текущее состояние после завершения затухания.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeOneShot_property_mix_mode:

.. rst-class:: classref-property

:ref:`MixMode<enum_AnimationNodeOneShot_MixMode>` **mix_mode** = ``0`` :ref:`🔗<class_AnimationNodeOneShot_property_mix_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mix_mode**\ (\ value\: :ref:`MixMode<enum_AnimationNodeOneShot_MixMode>`\ )
- :ref:`MixMode<enum_AnimationNodeOneShot_MixMode>` **get_mix_mode**\ (\ )

Тип смешивания.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
