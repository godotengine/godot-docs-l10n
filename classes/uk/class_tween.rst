:github_url: hide

.. _class_Tween:

Tween
=====

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Легкий об'єкт, який використовується для універсальної анімації через скрипт, використовуючи :ref:`Tweener<class_Tweener>`\ s.

.. rst-class:: classref-introduction-group

Опис
--------

Твіни найчастіше використовуються для анімації, де потрібно інтерполювати числове значення в межах певного діапазону. Назва *tween* походить від *in-betweening* — техніки анімації, в якій ви задаєте *ключові кадри*, а комп’ютер інтерполює кадри, що з’являються між ними. Анімація за допомогою **Tween** називається твінінгом.

\ **Tween** більше підходить, ніж :ref:`AnimationPlayer<class_AnimationPlayer>`, для анімацій, де ви заздалегідь не знаєте кінцевих значень. Наприклад, інтерполяцію динамічно обраного значення масштабу камери найкраще виконувати за допомогою **Tween**; було б складно зробити те саме за допомогою вузла :ref:`AnimationPlayer<class_AnimationPlayer>`. Твіни також легші за :ref:`AnimationPlayer<class_AnimationPlayer>`, тому вони дуже добре підходять для простих анімацій або загальних завдань, які не вимагають візуального налаштування, що надається редактором. Їх можна використовувати у режимі «запустив і забув» для деякої логіки, яку зазвичай виконує код. Наприклад, ви можете змусити щось періодично стріляти, використовуючи зациклений :ref:`CallbackTweener<class_CallbackTweener>` із затримкою.

\ **Tween** можна створити за допомогою :ref:`SceneTree.create_tween()<class_SceneTree_method_create_tween>` або :ref:`Node.create_tween()<class_Node_method_create_tween>`. **Tween**, створені вручну (тобто за допомогою ``Tween.new()``), є недійсними і не можуть використовуватися для твінінгу значень.

Анімацію твіну створюють шляхом додавання :ref:`Tweener<class_Tweener>` до об'єкта **Tween**, використовуючи :ref:`tween_property()<class_Tween_method_tween_property>`, :ref:`tween_interval()<class_Tween_method_tween_interval>`, :ref:`tween_callback()<class_Tween_method_tween_callback>`, :ref:`tween_method()<class_Tween_method_tween_method>`, :ref:`tween_subtween()<class_Tween_method_tween_subtween>` або :ref:`tween_await()<class_Tween_method_tween_await>`:


.. tabs::

 .. code-tab:: gdscript

    var tween = get_tree().create_tween()
    tween.tween_property($Sprite, "modulate", Color.RED, 1.0)
    tween.tween_property($Sprite, "scale", Vector2(), 1.0)
    tween.tween_callback($Sprite.queue_free)

 .. code-tab:: csharp

    Tween tween = GetTree().CreateTween();
    tween.TweenProperty(GetNode("Sprite"), "modulate", Colors.Red, 1.0f);
    tween.TweenProperty(GetNode("Sprite"), "scale", Vector2.Zero, 1.0f);
    tween.TweenCallback(Callable.From(GetNode("Sprite").QueueFree));



Ця послідовність змусить вузол ``$Sprite`` стати червоним, потім зменшитися, а потім, нарешті, викличе :ref:`Node.queue_free()<class_Node_method_queue_free>` для звільнення спрайту. За замовчуванням :ref:`Tweener<class_Tweener>` виконуються один за одним. Цю поведінку можна змінити за допомогою :ref:`parallel()<class_Tween_method_parallel>` та :ref:`set_parallel()<class_Tween_method_set_parallel>`.

Коли :ref:`Tweener<class_Tweener>` створюється за допомогою одного з методів ``tween_*``, можна використовувати ланцюжок викликів методів, щоб налаштувати властивості цього :ref:`Tweener<class_Tweener>`. Наприклад, якщо ви хочете встановити інший тип переходу у наведеному вище прикладі, ви можете використати :ref:`set_trans()<class_Tween_method_set_trans>`:


.. tabs::

 .. code-tab:: gdscript

    var tween = get_tree().create_tween()
    tween.tween_property($Sprite, "modulate", Color.RED, 1.0).set_trans(Tween.TRANS_SINE)
    tween.tween_property($Sprite, "scale", Vector2(), 1.0).set_trans(Tween.TRANS_BOUNCE)
    tween.tween_callback($Sprite.queue_free)

 .. code-tab:: csharp

    Tween tween = GetTree().CreateTween();
    tween.TweenProperty(GetNode("Sprite"), "modulate", Colors.Red, 1.0f).SetTrans(Tween.TransitionType.Sine);
    tween.TweenProperty(GetNode("Sprite"), "scale", Vector2.Zero, 1.0f).SetTrans(Tween.TransitionType.Bounce);
    tween.TweenCallback(Callable.From(GetNode("Sprite").QueueFree));



Більшість методів **Tween** також можна поєднувати таким чином. У наведеному нижче прикладі **Tween** прив'язано до вузла скрипта, що виконується, а для його :ref:`Tweener<class_Tweener>`\ s встановлено перехід за замовчуванням:


.. tabs::

 .. code-tab:: gdscript

    var tween = get_tree().create_tween().bind_node(self).set_trans(Tween.TRANS_ELASTIC)
    tween.tween_property($Sprite, "modulate", Color.RED, 1.0)
    tween.tween_property($Sprite, "scale", Vector2(), 1.0)
    tween.tween_callback($Sprite.queue_free)

 .. code-tab:: csharp

    var tween = GetTree().CreateTween().BindNode(this).SetTrans(Tween.TransitionType.Elastic);
    tween.TweenProperty(GetNode("Sprite"), "modulate", Colors. Red, 1.0f);
    tween.TweenProperty(GetNode("Sprite"), "scale", Vector2.Zero, 1.0f);
    tween.TweenCallback(Callable.From(GetNode("Sprite").QueueFree));



Ще одне цікаве застосування **Tween** — анімація довільних наборів об'єктів:


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()
    for sprite in get_children():
     tween.tween_property(sprite, "position", Vector2(0, 0), 1.0)

 .. code-tab:: csharp

    Tween tween = CreateTween();
    foreach (Node sprite in GetChildren())
     tween.TweenProperty(sprite, "position", Vector2.Zero, 1.0f);



У наведеному вище прикладі всі дочірні елементи вузла по черзі переміщуються у позицію ``(0, 0)``.

Не слід використовувати більше одного **Tween** для однієї властивості об'єкта. Якщо два або більше твінів анімують одну властивість одночасно, останній створений твін матиме пріоритет і призначить кінцеве значення. Якщо ви хочете перервати та перезапустити анімацію, розгляньте можливість присвоєння **Tween** змінній:


.. tabs::

 .. code-tab:: gdscript

    var tween
    func animate():
     if tween:
     tween.kill() # Припинити попередню анімацію.
     tween = create_tween()

 .. code-tab:: csharp

    private Tween _tween;

    public void Animate()
    {
     if (_tween != null)
     _tween.Kill(); // Припинити попередню анімацію
        _tween = CreateTween();
    }



Деякі :ref:`Tweener<class_Tweener>` використовують переходи та ефекти плавності. Перший приймає константу :ref:`TransitionType<enum_Tween_TransitionType>` і стосується способу управління часом анімації (деякі приклади див. на `easings.net <https://easings.net/>`__). Другий приймає константу :ref:`EaseType<enum_Tween_EaseType>` і контролює, де ``trans_type`` застосовується до інтерполяції (на початку, в кінці або в обох місцях). Якщо ви не знаєте, який перехід і ефект плавності вибрати, ви можете спробувати різні константи :ref:`TransitionType<enum_Tween_TransitionType>` разом із :ref:`EASE_IN_OUT<class_Tween_constant_EASE_IN_OUT>` і використати ту, яка виглядає найкраще.

\ `Довідник типів плавності та переходів Tween <https://raw.githubusercontent.com/godotengine/godot-docs/master/img/tween_cheatsheet.webp>`__\ 

\ **Примітка:** Твіни не призначені для повторного використання, і спроба зробити це призведе до непередбачуваної поведінки. Створюйте новий твін для кожної анімації та кожного разу, коли ви відтворюєте анімацію з початку. Майте на увазі, що твіни починаються негайно, тому створюйте твін лише тоді, коли ви хочете розпочати анімацію.

\ **Примітка:** Твін обробляється після всіх вузлів у поточному кадрі, тобто метод вузла :ref:`Node._process()<class_Node_private_method__process>` буде викликано перед твіном (або :ref:`Node._physics_process()<class_Node_private_method__physics_process>`, залежно від значення, переданого до :ref:`set_process_mode()<class_Tween_method_set_process_mode>`).

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`bind_node<class_Tween_method_bind_node>`\ (\ node\: :ref:`Node<class_Node>`\ )                                                                                                                                                                                                                                                                                       |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`chain<class_Tween_method_chain>`\ (\ )                                                                                                                                                                                                                                                                                                                               |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`custom_step<class_Tween_method_custom_step>`\ (\ delta\: :ref:`float<class_float>`\ )                                                                                                                                                                                                                                                                                |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                         | :ref:`get_loops_left<class_Tween_method_get_loops_left>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                     |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                     | :ref:`get_total_elapsed_time<class_Tween_method_get_total_elapsed_time>`\ (\ ) |const|                                                                                                                                                                                                                                                                                     |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`has_tweeners<class_Tween_method_has_tweeners>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                         |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                 | :ref:`interpolate_value<class_Tween_method_interpolate_value>`\ (\ initial_value\: :ref:`Variant<class_Variant>`, delta_value\: :ref:`Variant<class_Variant>`, elapsed_time\: :ref:`float<class_float>`, duration\: :ref:`float<class_float>`, trans_type\: :ref:`TransitionType<enum_Tween_TransitionType>`, ease_type\: :ref:`EaseType<enum_Tween_EaseType>`\ ) |static| |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`is_running<class_Tween_method_is_running>`\ (\ )                                                                                                                                                                                                                                                                                                                     |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`is_valid<class_Tween_method_is_valid>`\ (\ )                                                                                                                                                                                                                                                                                                                         |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`kill<class_Tween_method_kill>`\ (\ )                                                                                                                                                                                                                                                                                                                                 |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`parallel<class_Tween_method_parallel>`\ (\ )                                                                                                                                                                                                                                                                                                                         |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`pause<class_Tween_method_pause>`\ (\ )                                                                                                                                                                                                                                                                                                                               |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`play<class_Tween_method_play>`\ (\ )                                                                                                                                                                                                                                                                                                                                 |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`set_ease<class_Tween_method_set_ease>`\ (\ ease\: :ref:`EaseType<enum_Tween_EaseType>`\ )                                                                                                                                                                                                                                                                            |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`set_ignore_time_scale<class_Tween_method_set_ignore_time_scale>`\ (\ ignore\: :ref:`bool<class_bool>` = true\ )                                                                                                                                                                                                                                                      |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`set_loops<class_Tween_method_set_loops>`\ (\ loops\: :ref:`int<class_int>` = 0\ )                                                                                                                                                                                                                                                                                    |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`set_parallel<class_Tween_method_set_parallel>`\ (\ parallel\: :ref:`bool<class_bool>` = true\ )                                                                                                                                                                                                                                                                      |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`set_pause_mode<class_Tween_method_set_pause_mode>`\ (\ mode\: :ref:`TweenPauseMode<enum_Tween_TweenPauseMode>`\ )                                                                                                                                                                                                                                                    |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`set_process_mode<class_Tween_method_set_process_mode>`\ (\ mode\: :ref:`TweenProcessMode<enum_Tween_TweenProcessMode>`\ )                                                                                                                                                                                                                                            |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`set_speed_scale<class_Tween_method_set_speed_scale>`\ (\ speed\: :ref:`float<class_float>`\ )                                                                                                                                                                                                                                                                        |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`set_trans<class_Tween_method_set_trans>`\ (\ trans\: :ref:`TransitionType<enum_Tween_TransitionType>`\ )                                                                                                                                                                                                                                                             |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`stop<class_Tween_method_stop>`\ (\ )                                                                                                                                                                                                                                                                                                                                 |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AwaitTweener<class_AwaitTweener>`       | :ref:`tween_await<class_Tween_method_tween_await>`\ (\ signal\: :ref:`Signal<class_Signal>`\ )                                                                                                                                                                                                                                                                             |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`CallbackTweener<class_CallbackTweener>` | :ref:`tween_callback<class_Tween_method_tween_callback>`\ (\ callback\: :ref:`Callable<class_Callable>`\ )                                                                                                                                                                                                                                                                 |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`IntervalTweener<class_IntervalTweener>` | :ref:`tween_interval<class_Tween_method_tween_interval>`\ (\ time\: :ref:`float<class_float>`\ )                                                                                                                                                                                                                                                                           |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MethodTweener<class_MethodTweener>`     | :ref:`tween_method<class_Tween_method_tween_method>`\ (\ method\: :ref:`Callable<class_Callable>`, from\: :ref:`Variant<class_Variant>`, to\: :ref:`Variant<class_Variant>`, duration\: :ref:`float<class_float>`\ )                                                                                                                                                       |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PropertyTweener<class_PropertyTweener>` | :ref:`tween_property<class_Tween_method_tween_property>`\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`NodePath<class_NodePath>`, final_val\: :ref:`Variant<class_Variant>`, duration\: :ref:`float<class_float>`\ )                                                                                                                                          |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SubtweenTweener<class_SubtweenTweener>` | :ref:`tween_subtween<class_Tween_method_tween_subtween>`\ (\ subtween\: :ref:`Tween<class_Tween>`\ )                                                                                                                                                                                                                                                                       |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_Tween_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_Tween_signal_finished>`

Увімкнено, коли **Tween** закінчили все твітіння. Ніколи не вдається, коли **Tween** встановлюється до нескінченної петлі (див. :ref:`set_loops()<class_Tween_method_set_loops>`).

.. rst-class:: classref-item-separator

----

.. _class_Tween_signal_loop_finished:

.. rst-class:: classref-signal

**loop_finished**\ (\ loop_count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Tween_signal_loop_finished>`

Випускається після завершення повного циклу (див. :ref:`set_loops()<class_Tween_method_set_loops>`), надаючи індекс циклу. Цей сигнал не випускається після останнього циклу, у цьому випадку замість нього використовується :ref:`finished<class_Tween_signal_finished>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_signal_step_finished:

.. rst-class:: classref-signal

**step_finished**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Tween_signal_step_finished>`

Увімкніть, коли один крок **Tween** завершено, надаючи покроковий індекс. Один крок є одним :ref:`Tweener<class_Tweener>` або групою :ref:`Tweener<class_Tweener>`, що працює паралельно.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_Tween_TweenProcessMode:

.. rst-class:: classref-enumeration

enum **TweenProcessMode**: :ref:`🔗<enum_Tween_TweenProcessMode>`

.. _class_Tween_constant_TWEEN_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`TweenProcessMode<enum_Tween_TweenProcessMode>` **TWEEN_PROCESS_PHYSICS** = ``0``

**Tween** оновлення після кожного фізичного кадру (див. :ref:`Node._physics_process()<class_Node_private_method__physics_process>`).

.. _class_Tween_constant_TWEEN_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`TweenProcessMode<enum_Tween_TweenProcessMode>` **TWEEN_PROCESS_IDLE** = ``1``

**Tween** оновлення після кожного процесу кадру (див. :ref:`Node._process()<class_Node_private_method__process>`).

.. rst-class:: classref-item-separator

----

.. _enum_Tween_TweenPauseMode:

.. rst-class:: classref-enumeration

enum **TweenPauseMode**: :ref:`🔗<enum_Tween_TweenPauseMode>`

.. _class_Tween_constant_TWEEN_PAUSE_BOUND:

.. rst-class:: classref-enumeration-constant

:ref:`TweenPauseMode<enum_Tween_TweenPauseMode>` **TWEEN_PAUSE_BOUND** = ``0``

Якщо **Tween** має обмежений вузол, він буде оброблятися, коли цей вузол може оброблятися (див. :ref:`Node.process_mode<class_Node_property_process_mode>`). В іншому випадку це те ж саме, як :ref:`TWEEN_PAUSE_STOP<class_Tween_constant_TWEEN_PAUSE_STOP>`.

.. _class_Tween_constant_TWEEN_PAUSE_STOP:

.. rst-class:: classref-enumeration-constant

:ref:`TweenPauseMode<enum_Tween_TweenPauseMode>` **TWEEN_PAUSE_STOP** = ``1``

Якщо :ref:`SceneTree<class_SceneTree>` паулюється, то **Tween** також буде пауза.

.. _class_Tween_constant_TWEEN_PAUSE_PROCESS:

.. rst-class:: classref-enumeration-constant

:ref:`TweenPauseMode<enum_Tween_TweenPauseMode>` **TWEEN_PAUSE_PROCESS** = ``2``

**Tween** оброблятиме незалежно від того, чи є :ref:`SceneTree<class_SceneTree>`.

.. rst-class:: classref-item-separator

----

.. _enum_Tween_TransitionType:

.. rst-class:: classref-enumeration

enum **TransitionType**: :ref:`🔗<enum_Tween_TransitionType>`

.. _class_Tween_constant_TRANS_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_LINEAR** = ``0``

Анімація міжпольована лінійно.

.. _class_Tween_constant_TRANS_SINE:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_SINE** = ``1``

Анімація інтерполюється за допомогою функції сину.

.. _class_Tween_constant_TRANS_QUINT:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_QUINT** = ``2``

Анімація переповнена хінтовою (до потужності 5) функцією.

.. _class_Tween_constant_TRANS_QUART:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_QUART** = ``3``

Анімація переповнена за допомогою квартичного (до потужності 4) функції.

.. _class_Tween_constant_TRANS_QUAD:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_QUAD** = ``4``

Анімація переповнена квадроциклом (до потужності 2) функції.

.. _class_Tween_constant_TRANS_EXPO:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_EXPO** = ``5``

Анімація переповнена за допомогою параметра (до потужності х).

.. _class_Tween_constant_TRANS_ELASTIC:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_ELASTIC** = ``6``

Анімація інтерполюється пружністю, зануренням по краях.

.. _class_Tween_constant_TRANS_CUBIC:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_CUBIC** = ``7``

Анімація переповнена кубічною (до потужності 3) функцією.

.. _class_Tween_constant_TRANS_CIRC:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_CIRC** = ``8``

Анімація переповнена функцією за допомогою квадратних коренів.

.. _class_Tween_constant_TRANS_BOUNCE:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_BOUNCE** = ``9``

Анімація переповнена стрибками в кінці.

.. _class_Tween_constant_TRANS_BACK:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_BACK** = ``10``

Анімація переповнена в кінці.

.. _class_Tween_constant_TRANS_SPRING:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_SPRING** = ``11``

Анімація переповнена як пружина до кінця.

.. rst-class:: classref-item-separator

----

.. _enum_Tween_EaseType:

.. rst-class:: classref-enumeration

enum **EaseType**: :ref:`🔗<enum_Tween_EaseType>`

.. _class_Tween_constant_EASE_IN:

.. rst-class:: classref-enumeration-constant

:ref:`EaseType<enum_Tween_EaseType>` **EASE_IN** = ``0``

Інтерполяція починається повільно і прискорюється до кінця.

.. _class_Tween_constant_EASE_OUT:

.. rst-class:: classref-enumeration-constant

:ref:`EaseType<enum_Tween_EaseType>` **EASE_OUT** = ``1``

Інтерполяція починається швидко і сповільнюється до кінця.

.. _class_Tween_constant_EASE_IN_OUT:

.. rst-class:: classref-enumeration-constant

:ref:`EaseType<enum_Tween_EaseType>` **EASE_IN_OUT** = ``2``

Поєднання :ref:`EASE_IN<class_Tween_constant_EASE_IN>` та :ref:`EASE_OUT<class_Tween_constant_EASE_OUT>`. Інтерполяція є повільним.

.. _class_Tween_constant_EASE_OUT_IN:

.. rst-class:: classref-enumeration-constant

:ref:`EaseType<enum_Tween_EaseType>` **EASE_OUT_IN** = ``3``

Поєднання :ref:`EASE_IN<class_Tween_constant_EASE_IN>` та :ref:`EASE_OUT<class_Tween_constant_EASE_OUT>`. Інтерполяція є найшвидшою в обох кінцях.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Tween_method_bind_node:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **bind_node**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_Tween_method_bind_node>`

Бінде це **Tween** з заданим ``node``. **Tween**\ s обробляються безпосередньо :ref:`SceneTree<class_SceneTree>`, тому вони працюють незалежно від анімованих вузлів. Коли ви зв'язаєте :ref:`Node<class_Node>` з **Tween**, **Tween** захопить анімацію, коли об'єкт не знаходиться всередині дерева, а **Tween** автоматично загинув, коли об'єкт звільняється. Також :ref:`TWEEN_PAUSE_BOUND<class_Tween_constant_TWEEN_PAUSE_BOUND>` змусить призупинити поведінку, залежну від обмеженого вузла.

Для більш короткого способу створення і зв'язування **Tween** можна використовувати :ref:`Node.create_tween()<class_Node_method_create_tween>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_chain:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **chain**\ (\ ) :ref:`🔗<class_Tween_method_chain>`

Використовується для об’єднання двох :ref:`Tweener<class_Tweener>` після того, як :ref:`set_parallel()<class_Tween_method_set_parallel>` викликається з ``true``. 


.. tabs:: 

 .. code-tab:: gdscript
 
    var tween = create_tween().set_parallel(true) 
    tween.tween_property(...) 
    tween.tween_property(...) # Буде працювати паралельно з вищевказаним. 
    tween.chain().tween_property(...) # Запуститься після завершення двох вищевказаних.  

 .. code-tab:: csharp
 
    Tween tween = CreateTween().SetParallel(true); 
    tween.TweenProperty(...); 
    tween.TweenProperty(...); // Виконуватиметься паралельно з вищезазначеним. 
    tween.Chain().TweenProperty(...); // Запуститься після завершення двох вищезазначених.  



.. rst-class:: classref-item-separator

----

.. _class_Tween_method_custom_step:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **custom_step**\ (\ delta\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Tween_method_custom_step>`

Процеси **Tween** заданої ``delta`` значення, за секундами. Це в основному корисно для ручного керування, коли **Tween** використовується. Також можна використовувати для завершення анімації **Tween** відразу, встановивши ``delta`` довше, ніж всю тривалість анімації **Tween**.

Повертає ``true``, якщо **Tween** ще має :ref:`Tweener<class_Tweener>`, які не закінчилися.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_get_loops_left:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_loops_left**\ (\ ) |const| :ref:`🔗<class_Tween_method_get_loops_left>`

Повертаємо кількість решток петель для цього **Tween** (див. :ref:`set_loops()<class_Tween_method_set_loops>`). Вартість повернення ``-1`` вказує на нескінченно петляцію **Tween**, а значення повернення ``0`` вказує на те, що **Tween** вже завершено.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_get_total_elapsed_time:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_total_elapsed_time**\ (\ ) |const| :ref:`🔗<class_Tween_method_get_total_elapsed_time>`

Повертає загальний час у секундах, протягом якого **Tween** анімував (тобто час з моменту його початку, не враховуючи пауз тощо). На час впливає метод ``set_speed_scale``, а метод :ref:`stop()<class_Tween_method_stop>` скине його до ``0``.

\ **Примітка:** Оскільки це є результатом накопичення дельт кадрів, час, що повертається після завершення анімації **Tween**, буде трохи більшим за фактичну тривалість **Tween**.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_has_tweeners:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_tweeners**\ (\ ) |const| :ref:`🔗<class_Tween_method_has_tweeners>`

Повертає ``true``, якщо до **Tween** додано хоча б один :ref:`Tweener<class_Tweener>` і **Tween** є дійсним. Це корисно, коли твінери додаються динамічно, а твін може виявитися порожнім. Припинення порожнього твіну до його запуску дозволить уникнути помилок.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_interpolate_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **interpolate_value**\ (\ initial_value\: :ref:`Variant<class_Variant>`, delta_value\: :ref:`Variant<class_Variant>`, elapsed_time\: :ref:`float<class_float>`, duration\: :ref:`float<class_float>`, trans_type\: :ref:`TransitionType<enum_Tween_TransitionType>`, ease_type\: :ref:`EaseType<enum_Tween_EaseType>`\ ) |static| :ref:`🔗<class_Tween_method_interpolate_value>`

Цей метод можна використовувати для ручного інтерполяції значення, коли ви не хочете **Tween**, щоб зробити анімацію для вас. Це схоже на :ref:`@GlobalScope.lerp()<class_@GlobalScope_method_lerp>`, але з підтримкою користувацького переходу та знижування.

\ ``initial_value`` є початковим значенням інтерполяції.

\ ``delta_value`` - зміна значення в інтерполяції, тобто дорівнює ``final_value - initial_value``.

\ ``elapsed_time`` - це час за секундами, які пройшли після міжполяції, і його використовували для контролю положення міжполодження. Наприклад, коли вона дорівнює половині ``duration``, міжпольоване значення буде половиною між початковими та кінцевими значеннями. Це значення також може бути більше, ніж ``duration`` або нижче 0, яка буде екстраполювати значення.

\ ``duration`` - загальний час міжполяції.

\ **Примітка:** Якщо тривалість ``duration`` дорівнює ``0``, метод завжди поверне кінцеве значення, незалежно від ``elapsed_time``.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_is_running:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_running**\ (\ ) :ref:`🔗<class_Tween_method_is_running>`

Повертає, чи зараз працює **Tween**, тобто це не було, і він не закінчився.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid**\ (\ ) :ref:`🔗<class_Tween_method_is_valid>`

Повертаємо вашу увагу на те, що **Tween** діє. Актуальна **Tween** є **Tween**, що міститься на ялинці (тобто масив з :ref:`SceneTree.get_processed_tweens()<class_SceneTree_method_get_processed_tweens>` міститиме це **Tween**). **Tween** може стати недійсним, коли він закінчився, загинув, або коли створився з ``Tween.new()``. Invalid **Tween**\ s не може :ref:`Tweener<class_Tweener>`\ s Додатки.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_kill:

.. rst-class:: classref-method

|void| **kill**\ (\ ) :ref:`🔗<class_Tween_method_kill>`

Визначте всі операції та недійсні дії ``Подивитися``.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_parallel:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **parallel**\ (\ ) :ref:`🔗<class_Tween_method_parallel>`

Змушує наступний :ref:`Tweener<class_Tweener>` працювати паралельно з попереднім. 


.. tabs:: 

 .. code-tab:: gdscript
 
    var tween = create_tween() 
    tween.tween_property(...) 
    tween.parallel().tween_property(...) 
    tween.parallel().tween_property(...)  

 .. code-tab:: csharp
 
    Tween tween = CreateTween(); 
    tween.TweenProperty(...); 
    tween.Parallel().TweenProperty(...); 
    tween.Parallel().TweenProperty(...);  

 

Усі :ref:`Tweener<class_Tweener>` у прикладі запускатимуться одночасно. 

Ви можете зробити **Tween** паралельним за замовчуванням за допомогою :ref:`set_parallel()<class_Tween_method_set_parallel>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_pause:

.. rst-class:: classref-method

|void| **pause**\ (\ ) :ref:`🔗<class_Tween_method_pause>`

Запобігає товщині. Анімація можна відновити за допомогою :ref:`play()<class_Tween_method_play>`.

\ **Примітка:** Якщо Tween не пов'язаний з будь-яким вершиною, він буде існувати невизначено до моменту запуску вручну або недійсним. Якщо ви втратите посилання на такий Tween, ви можете отримати його за допомогою :ref:`SceneTree.get_processed_tweens()<class_SceneTree_method_get_processed_tweens>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_play:

.. rst-class:: classref-method

|void| **play**\ (\ ) :ref:`🔗<class_Tween_method_play>`

Резюме паузу або зупинена **Tween**.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_ease:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_ease**\ (\ ease\: :ref:`EaseType<enum_Tween_EaseType>`\ ) :ref:`🔗<class_Tween_method_set_ease>`

Встановлює тип плавності за замовчуванням для :ref:`PropertyTweener<class_PropertyTweener>` та :ref:`MethodTweener<class_MethodTweener>`, доданих після цього методу.

До виклику цього методу типом плавності за замовчуванням є :ref:`EASE_IN_OUT<class_Tween_constant_EASE_IN_OUT>`.


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()
    tween.tween_property(self, "position", Vector2(300, 0), 0.5) # Використовує EASE_IN_OUT.
    tween.set_ease(Tween.EASE_IN)
    tween.tween_property(self, "rotation_degrees", 45.0, 0.5) # Використовує EASE_IN.

 .. code-tab:: csharp

    Tween tween = CreateTween();
    tween.TweenProperty(this, "position", new Vector2(300, 0), 0.5); // Використовує EaseType.InOut.
    tween.SetEase(Tween.EaseType.In);
    tween.TweenProperty(this, "rotation_degrees", 45.0, 0.5); // Використовує EaseType.In.



.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_ignore_time_scale:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_ignore_time_scale**\ (\ ignore\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_Tween_method_set_ignore_time_scale>`

Якщо ``ignore`` має значення ``true``, анімація ігноруватиме :ref:`Engine.time_scale<class_Engine_property_time_scale>` і оновлюватиме реальний час, що минув. Це впливає на всі :ref:`Tweener<class_Tweener>` і їх затримки. Значення за замовчуванням ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_loops:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_loops**\ (\ loops\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Tween_method_set_loops>`

Налаштовує кількість разів послідовність віджиму буде повторюватися, тобто ``set_loops(2)`` запустить анімацію двічі.

Зателефонувавши цей метод без аргументів, виконайте **Tween** нескінченно, доки він загинув з :ref:`вбивства()<class_Tween_method_вбивства>`, вузол **Tween** звільняється, або всі анімовані об'єкти були звільнені (що робить подальшу анімацію неможливо).

\ **Попередження:** Переконайтеся, що завжди додають деяку тривалість / витримку при використанні нескінченних петель. Щоб запобігти заморожуванню гри, 0-duration петлі анімація (наприклад, єдиний :ref:`CallbackTweener<class_CallbackTweener>` без затримки) припиняється після невеликої кількості петель, які можуть виробляти несподівані результати. Якщо термін служби **Tween** залежить від певного вузла, завжди використовуйте :ref:`bind_node()<class_Tween_method_bind_node>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_parallel:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_parallel**\ (\ parallel\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_Tween_method_set_parallel>`

Якщо ``parallel`` має значення ``true``, :ref:`Tweener<class_Tweener>`, додані після цього методу, за умовчанням запускатимуться одночасно, а не послідовно. 

\ **Примітка:** Так само, як і :ref:`parallel()<class_Tween_method_parallel>`, твін, доданий безпосередньо перед цим методом, також буде частиною паралельного кроку. 

::
 
    tween.tween_property(self, "position", Vector2(300, 0), 0,5) 
    tween.set_parallel() 
    tween.tween_property(self, "modulate", Color.GREEN, 0.5) # Виконується разом із аніматором позиції. 

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_pause_mode:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_pause_mode**\ (\ mode\: :ref:`TweenPauseMode<enum_Tween_TweenPauseMode>`\ ) :ref:`🔗<class_Tween_method_set_pause_mode>`

Визначає поведінку **Tween**, коли :ref:`SceneTree<class_SceneTree>` призупинено.

Значення за замовчуванням — :ref:`TWEEN_PAUSE_BOUND<class_Tween_constant_TWEEN_PAUSE_BOUND>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_process_mode:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_process_mode**\ (\ mode\: :ref:`TweenProcessMode<enum_Tween_TweenProcessMode>`\ ) :ref:`🔗<class_Tween_method_set_process_mode>`

Визначає, чи має працювати **Tween** після обробки кадрів (див. :ref:`Node._process()<class_Node_private_method__process>`) або фізики кадрів (див. :ref:`Node._physics_process()<class_Node_private_method__physics_process>`).

Значення за замовчуванням :ref:`TWEEN_PROCESS_IDLE<class_Tween_constant_TWEEN_PROCESS_IDLE>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_speed_scale:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_speed_scale**\ (\ speed\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Tween_method_set_speed_scale>`

Ваги швидкості твітіння. Це впливає на всі :ref:`Tweener<class_Tweener>` і їх затримки.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_trans:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_trans**\ (\ trans\: :ref:`TransitionType<enum_Tween_TransitionType>`\ ) :ref:`🔗<class_Tween_method_set_trans>`

Встановлює типовий тип переходу для :ref:`PropertyTweener<class_PropertyTweener>` і :ref:`MethodTweener<class_MethodTweener>`, доданих після цього методу. 

Перед викликом цього методу типовим типом переходу є :ref:`TRANS_LINEAR<class_Tween_constant_TRANS_LINEAR>`. 

::
 
    var tween = create_tween() 
    tween.tween_property(self, "position", Vector2(300, 0), 0.5) # Використовує TRANS_LINEAR. 
    tween.set_trans(Tween.TRANS_SINE) 
    tween.tween_property(self, "rotation_degrees", 45.0, 0.5) # Використовує TRANS_SINE. 

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_Tween_method_stop>`

Зупиняє анімацію та скидає **Tween** до початкового стану. Це не призведе до видалення будь-яких доданих :ref:`Tweener<class_Tweener>`. 

\ **Примітка.** Це *не* скидає цілі :ref:`PropertyTweener<class_PropertyTweener>` до їхніх значень під час першого запуску **Tween**. 

::
 
    var tween = create_tween() 

    # Зміниться від 0 до 500 протягом 1 секунди. 
    position.x = 0,0 
    tween.tween_property(self, "position:x", 500, 1.0) 

    # Коли таймер закінчиться, буде (приблизно) 250. 
    очікувати get_tree().create_timer(0.5).timeout 

    # Тепер зміниться від (приблизно) 250 до 500 протягом 1 секунди, 
    # таким чином на половині швидкості, ніж раніше. 
    tween.stop() 
    tween.play()  

\ **Примітка.** Якщо Tween зупинено та не прив’язано до жодного вузла, він існуватиме необмежений час, доки не буде запущено вручну або не стане недійсним. Якщо ви втратите посилання на такий Tween, ви можете отримати його за допомогою :ref:`SceneTree.get_processed_tweens()<class_SceneTree_method_get_processed_tweens>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_tween_await:

.. rst-class:: classref-method

:ref:`AwaitTweener<class_AwaitTweener>` **tween_await**\ (\ signal\: :ref:`Signal<class_Signal>`\ ) :ref:`🔗<class_Tween_method_tween_await>`

Створює та додає об’єкт :ref:`AwaitTweener<class_AwaitTweener>`. Цей метод можна використовувати для очікування надходження сигналу та створення асинхронних анімацій або відеороликів.

Анімація не перейде до наступного кроку, доки не надійде очікуваний сигнал або з’єднання не стане недійсним (наприклад, внаслідок звільнення цільового об’єкта). Якщо ви знаєте, що випромінювання може не відбутися, використовуйте ``метод AwaitTweener.set_timeout``.

\ **Примітка:** Очікуваний сигнал повинен бути випромінений під час кроку, коли :ref:`AwaitTweener<class_AwaitTweener>` активний.

\ **Приклад:** Об'єкт запускає себе і вибухає при зіткненні або через 4 секунди.

::

    var tween = create_tween()
    tween.tween_callback(launch)
    tween.tween_await(collided).set_timeout(4.0)
    tween.tween_callback(explode)

\ **Приклад:** Персонаж йде до певної точки, промовляє кілька реплік і повертається назад, коли гравець закриває вікно повідомлення.

::

    var tween = create_tween()
    tween.tween_callback(walk_to.bind(600.0))
    tween.tween_await(destination_reached)
    tween.tween_callback(say_dialogue.bind("Good day, sir!"))
    tween.tween_await(dialogue_closed)
    tween.tween_callback(walk_to.bind(0.0))

\ **Примітка:** Якщо ви очікуєте сигнал від зворотного виклику, викликаного в тому ж **Tween**, переконайтеся, що сигнал надсилається *після* початку очікування. Якщо це неможливо гарантувати, ви можете очікувати та надсилати сигнал в одному кроці:

::

    var tween = create_tween()
    tween.tween_await(signal)
    tween.parallel().tween_callback(method_that_emits_signal)

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_tween_callback:

.. rst-class:: classref-method

:ref:`CallbackTweener<class_CallbackTweener>` **tween_callback**\ (\ callback\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Tween_method_tween_callback>`

Створює та додає :ref:`CallbackTweener<class_CallbackTweener>`. Цей метод можна використовувати для виклику довільного методу в будь-якому об'єкті. Використовуйте :ref:`Callable.bind()<class_Callable_method_bind>` для прив'язки додаткових аргументів для виклику.

\ **Приклад:** Об'єкт, який продовжує стріляти кожну 1 секунду:


.. tabs::

 .. code-tab:: gdscript

    var tween = get_tree().create_tween().set_loops()
    tween.tween_callback(shoot).set_delay(1.0)

 .. code-tab:: csharp

    Tween tween = GetTree().CreateTween().SetLoops();
    tween.TweenCallback(Callable.From(Shoot)).SetDelay(1.0f);



\ **Приклад:** Зміна кольору спрайта на червоний, а потім на синій із затримкою 2 секунди:


.. tabs::

 .. code-tab:: gdscript

    var tween = get_tree().create_tween()
    tween.tween_callback($Sprite.set_modulate.bind(Color.RED)).set_delay(2)
    tween.tween_callback($Sprite.set_modulate.bind(Color.BLUE)).set_delay(2)

 .. code-tab:: csharp

    Tween tween = GetTree().CreateTween();
    Sprite2D sprite = GetNode<Sprite2D>("Sprite");
    tween.TweenCallback(Callable.From(() => sprite.Modulate = Colors.Red)).SetDelay(2.0f);
    tween.TweenCallback(Callable.From(() => sprite.Modulate = Colors.Blue)).SetDelay(2.0f);



.. rst-class:: classref-item-separator

----

.. _class_Tween_method_tween_interval:

.. rst-class:: classref-method

:ref:`IntervalTweener<class_IntervalTweener>` **tween_interval**\ (\ time\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Tween_method_tween_interval>`

Створює та додає :ref:`IntervalTweener<class_IntervalTweener>`. Цей метод можна використовувати для створення затримок в анімації tween, як альтернативу використанню затримки в інших :ref:`Tweener<class_Tweener>`, або коли анімація відсутня (у цьому випадку **Tween** діє як таймер). ``time`` – це тривалість інтервалу в секундах.

\ **Приклад:** Створення інтервалу під час виконання коду:


.. tabs::

 .. code-tab:: gdscript

    # ... деякий код
    await create_tween().tween_interval(2).finished
    # ... більше коду

 .. code-tab:: csharp

    // ... деякий код
    await ToSignal(CreateTween().TweenInterval(2.0f), Tween.SignalName.Finished);
    // ... більше коду



\ **Приклад:** Створення об'єкта, який рухається вперед-назад і стрибає кожні кілька секунд:


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween().set_loops()
    tween.tween_property($Sprite, "position:x", 200.0, 1.0).as_relative()
    tween.tween_callback(jump)
    tween.tween_interval(2)
    tween.tween_property($Sprite, "position:x", -200.0, 1.0).as_relative()
    tween.tween_callback(jump)
    tween.tween_interval(2)

 .. code-tab:: csharp

    Tween tween = CreateTween().SetLoops();
    tween.TweenProperty(GetNode("Sprite"), "position:x", 200.0f, 1.0f).AsRelative();
    tween.TweenCallback(Callable.From(Jump));
    tween.TweenInterval(2.0f);
    tween.TweenProperty(GetNode("Sprite"), "position:x", -200.0f, 1.0f).AsRelative();
    tween.TweenCallback(Callable.From(Jump));
    tween.TweenInterval(2.0f);



.. rst-class:: classref-item-separator

----

.. _class_Tween_method_tween_method:

.. rst-class:: classref-method

:ref:`MethodTweener<class_MethodTweener>` **tween_method**\ (\ method\: :ref:`Callable<class_Callable>`, from\: :ref:`Variant<class_Variant>`, to\: :ref:`Variant<class_Variant>`, duration\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Tween_method_tween_method>`

Створює та додає :ref:`MethodTweener<class_MethodTweener>`. Цей метод схожий на комбінацію :ref:`tween_callback()<class_Tween_method_tween_callback>` та :ref:`tween_property()<class_Tween_method_tween_property>`\ Він викликає метод з часом, передаючи змінене значення як аргумент. Значення змінюється між ``from`` та ``to`` протягом часу, заданого ``duration``, у секундах. Використання :ref:`Callable.bind()<class_Callable_method_bind>` щоб прив’язати додаткові аргументи до виклику. Ви можете використовувати :ref:`MethodTweener.set_ease()<class_MethodTweener_method_set_ease>` та :ref:`MethodTweener.set_trans()<class_MethodTweener_method_set_trans>` для налаштування згладжування та переходу значення або :ref:`MethodTweener.set_delay()<class_MethodTweener_method_set_delay>` для затримки твінінгу.

\ **Приклад:** Змусити 3D-об'єкт виглядати з однієї точки в іншу:


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()
    tween.tween_method(look_at.bind(Vector3.UP), Vector3(-1, 0, -1), Vector3(1, 0, -1), 1.0) # The look_at() method takes up vector as second argument.

 .. code-tab:: csharp

    Tween tween = CreateTween();
    tween.TweenMethod(Callable.From((Vector3 target) => LookAt(target, Vector3.Up)), new Vector3(-1.0f, 0.0f, -1.0f), new Vector3(1.0f, 0.0f, -1.0f), 1.0f); // Use lambdas to bind additional arguments for the call.



\ **Приклад:** Встановлення тексту :ref:`Label<class_Label>` за допомогою проміжного методу та після затримки:


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var tween = create_tween()
        tween.tween_method(set_label_text, 0, 10, 1.0).set_delay(1.0)

    func set_label_text(value: int):
        $Label.text = "Counting " + str(value)

 .. code-tab:: csharp

    public override void _Ready()
    {
        base._Ready();

        Tween tween = CreateTween();
        tween.TweenMethod(Callable.From<int>(SetLabelText), 0.0f, 10.0f, 1.0f).SetDelay(1.0f);
    }

    private void SetLabelText(int value)
    {
        GetNode<Label>("Label").Text = $"Counting {value}";
    }



.. rst-class:: classref-item-separator

----

.. _class_Tween_method_tween_property:

.. rst-class:: classref-method

:ref:`PropertyTweener<class_PropertyTweener>` **tween_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`NodePath<class_NodePath>`, final_val\: :ref:`Variant<class_Variant>`, duration\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Tween_method_tween_property>`

Створює та додає :ref:`PropertyTweener<class_PropertyTweener>`. Цей метод змінює значення властивості ``property`` об'єкта ``object`` між початковим значенням та ``final_val`` протягом проміжку часу, що дорівнює ``duration``, у секундах. Початкове значення за замовчуванням – це значення властивості на момент початку зміни значення :ref:`PropertyTweener<class_PropertyTweener>`.


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()
    tween.tween_property($Sprite, "position", Vector2(100, 200), 1.0)
    tween.tween_property($Sprite, "position", Vector2(200, 300), 1.0)

 .. code-tab:: csharp

    Tween tween = CreateTween();
    tween.TweenProperty(GetNode("Sprite"), "position", new Vector2(100.0f, 200.0f), 1.0f);
    tween.TweenProperty(GetNode("Sprite"), "position", new Vector2(200.0f, 300.0f), 1.0f);



перемістить спрайт у позицію (100, 200), а потім у (200, 300). Якщо ви використовуєте :ref:`PropertyTweener.from()<class_PropertyTweener_method_from>` або :ref:`PropertyTweener.from_current()<class_PropertyTweener_method_from_current>`, початкова позиція буде перезаписана заданим значенням. Дивіться інші методи в :ref:`PropertyTweener<class_PropertyTweener>`, щоб побачити, як можна додатково налаштувати твінінг.

\ **Примітка:** Ви можете знайти правильну назву властивості, навівши курсор на властивість в Інспекторі. Ви також можете безпосередньо надати компоненти властивості, використовуючи ``"property:component"`` (наприклад, ``position:x``), де це застосовуватиметься лише до цього конкретного компонента.

\ **Приклад:** Переміщення об'єкта двічі з однієї й тієї ж позиції з різними типами переходів:


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()
    tween.tween_property($Sprite, "position", Vector2.RIGHT * 300, 1.0).as_relative().set_trans(Tween.TRANS_SINE)
    tween.tween_property($Sprite, "position", Vector2.RIGHT * 300, 1.0).as_relative().from_current().set_trans(Tween.TRANS_EXPO)

 .. code-tab:: csharp

    Tween tween = CreateTween(); tween.TweenProperty(GetNode("Sprite"), "position", Vector2.Right * 300.0f, 1.0f).AsRelative().SetTrans(Tween.TransitionType.Sine);

    tween.TweenProperty(GetNode("Sprite"), "position", Vector2.Right * 300.0f, 1.0f).AsRelative().FromCurrent().SetTrans(Tween.TransitionType.Expo);



.. rst-class:: classref-item-separator

----

.. _class_Tween_method_tween_subtween:

.. rst-class:: classref-method

:ref:`SubtweenTweener<class_SubtweenTweener>` **tween_subtween**\ (\ subtween\: :ref:`Tween<class_Tween>`\ ) :ref:`🔗<class_Tween_method_tween_subtween>`

Створює та додає :ref:`SubtweenTweener<class_SubtweenTweener>`. Цей метод можна використовувати для вкладення ``subtween`` у цей **Tween**, дозволяючи створювати більш складні послідовності, які можна складати. 

::
 
    # Subtween обертатиме об’єкт. 
    var subtween = create_tween() 
    subtween.tween_property(self, "rotation_degrees", 45.0, 1.0) 
    subtween.tween_property(self, "rotation_degrees", 0.0, 1.0) 

    # Батьківський анімаційний проміжок виконає підпроміжок як один із своїх кроків. 
    var tween = create_tween() 
    tween.tween_property(self, "position:x", 500, 3.0) 
    tween.tween_subtween(subtween) 
    tween.tween_property(self, "position:x", 300, 2.0)  

\ **Примітка: ** Методи :ref:`pause()<class_Tween_method_pause>`, :ref:`stop()<class_Tween_method_stop>` і :ref:`set_loops()<class_Tween_method_set_loops>` можуть призвести до того, що батьківський **Tween** застрягне на кроці subtween; дивіться документацію для цих методів для отримання додаткової інформації. 

\ **Примітка.** Режими паузи та обробки, встановлені :ref:`set_pause_mode()<class_Tween_method_set_pause_mode>` і :ref:`set_process_mode()<class_Tween_method_set_process_mode>` на ``subtween``, будуть перевизначені налаштуваннями батьківського **Tween**.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
