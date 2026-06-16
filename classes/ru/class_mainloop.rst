:github_url: hide

.. _class_MainLoop:

MainLoop
========

**Наследует:** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`SceneTree<class_SceneTree>`

Абстрактный базовый класс для основного цикла игры.

.. rst-class:: classref-introduction-group

Описание
----------------

**MainLoop** — абстрактный базовый класс для игрового цикла проекта Godot. Он наследуется :ref:`SceneTree<class_SceneTree>`, который является реализацией игрового цикла по умолчанию, используемой в проектах Godot, хотя также возможно написать и использовать свой собственный подкласс **MainLoop** вместо дерева сцены.

При запуске приложения необходимо предоставить ОС реализацию **MainLoop**; в противном случае приложение завершит работу. Это происходит автоматически (и создается :ref:`SceneTree<class_SceneTree>`), если только **MainLoop** :ref:`Script<class_Script>` не предоставлен из командной строки (например, ``godot -s my_loop.gd``) или не перезаписана настройка проекта :ref:`ProjectSettings.application/run/main_loop_type<class_ProjectSettings_property_application/run/main_loop_type>`.

Вот пример скрипта, реализующего простой **MainLoop**:


.. tabs::

 .. code-tab:: gdscript

    class_name CustomMainLoop
    extends MainLoop

    var time_elapsed = 0

    func _initialize():
        print("Initialized:")
        print("  Starting time: %s" % str(time_elapsed))

    func _process(delta):
        time_elapsed += delta
        # Верните true, чтобы завершить основной цикл..
        return Input.get_mouse_button_mask() != 0 || Input.is_key_pressed(KEY_ESCAPE)

    func _finalize():
        print("Finalized:")
        print("  End time: %s" % str(time_elapsed))

 .. code-tab:: csharp

    using Godot;

    [GlobalClass]
    public partial class CustomMainLoop : MainLoop
    {
        private double _timeElapsed = 0;

        public override void _Initialize()
        {
            GD.Print("Initialized:");
            GD.Print($"  Starting Time: {_timeElapsed}");
        }

        public override bool _Process(double delta)
        {
            _timeElapsed += delta;
            // Верните true, чтобы завершить основной цикл..
            return Input.GetMouseButtonMask() != 0 || Input.IsKeyPressed(Key.Escape);
        }

        private void _Finalize()
        {
            GD.Print("Finalized:");
            GD.Print($"  End Time: {_timeElapsed}");
        }
    }



.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`_finalize<class_MainLoop_private_method__finalize>`\ (\ ) |virtual|                                                  |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`_initialize<class_MainLoop_private_method__initialize>`\ (\ ) |virtual|                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_physics_process<class_MainLoop_private_method__physics_process>`\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_process<class_MainLoop_private_method__process>`\ (\ delta\: :ref:`float<class_float>`\ ) |virtual|                 |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_MainLoop_signal_on_request_permissions_result:

.. rst-class:: classref-signal

**on_request_permissions_result**\ (\ permission\: :ref:`String<class_String>`, granted\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_MainLoop_signal_on_request_permissions_result>`

Выдается, когда пользователь отвечает на запрос разрешения.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константы
------------------

.. _class_MainLoop_constant_NOTIFICATION_OS_MEMORY_WARNING:

.. rst-class:: classref-constant

**NOTIFICATION_OS_MEMORY_WARNING** = ``2009`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_OS_MEMORY_WARNING>`

Уведомление, полученное от ОС, когда приложение превышает выделенную ему память.

Специально для платформы iOS.

.. _class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_TRANSLATION_CHANGED** = ``2010`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>`

Уведомление получено, когда переводы могли измениться. Может быть вызвано изменением пользователем локали. Может использоваться для реагирования на изменения языка, например, для изменения строк пользовательского интерфейса на лету. Полезно при работе со встроенной поддержкой перевода, например :ref:`Object.tr()<class_Object_method_tr>`.

.. _class_MainLoop_constant_NOTIFICATION_WM_ABOUT:

.. rst-class:: classref-constant

**NOTIFICATION_WM_ABOUT** = ``2011`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_WM_ABOUT>`

Уведомление, полученное от ОС при отправке запроса на информацию «О программе».

Специально для платформы macOS.

.. _class_MainLoop_constant_NOTIFICATION_CRASH:

.. rst-class:: classref-constant

**NOTIFICATION_CRASH** = ``2012`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_CRASH>`

Уведомление получено от обработчика сбоев Godot, когда движок собирается рухнуть.

Реализовано на настольных платформах, если обработчик сбоев включен.

.. _class_MainLoop_constant_NOTIFICATION_OS_IME_UPDATE:

.. rst-class:: classref-constant

**NOTIFICATION_OS_IME_UPDATE** = ``2013`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_OS_IME_UPDATE>`

Уведомление от операционной системы при обновлении механизма ввода (например, при изменении положения курсора IME или строки ввода).

Реализовано на настольных и веб-платформах.

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_RESUMED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_RESUMED** = ``2014`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_RESUMED>`

Уведомление, полученное от ОС при возобновлении работы приложения.

Специально для платформ Android и iOS.

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_PAUSED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_PAUSED** = ``2015`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_PAUSED>`

Уведомление, полученное от ОС, когда приложение приостановлено.

Специально для платформ Android и iOS.

\ **Примечание:** В iOS у вас есть всего около 5 секунд, чтобы завершить задачу, запущенную этим сигналом. Если вы превысите это время, iOS завершит приложение вместо того, чтобы приостановить его.

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_FOCUS_IN:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_FOCUS_IN** = ``2016`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_FOCUS_IN>`

Уведомление, полученное от ОС, когда приложение находится в фокусе, т. е. при изменении фокуса с рабочего стола ОС или стороннего приложения на любое открытое окно экземпляра Godot.

Реализовано на настольных и мобильных платформах.

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_FOCUS_OUT:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_FOCUS_OUT** = ``2017`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_FOCUS_OUT>`

Уведомление, полученное от ОС, когда приложение расфокусировано, т. е. при изменении фокуса с любого открытого окна экземпляра Godot на рабочий стол ОС или стороннее приложение.

Реализовано на настольных и мобильных платформах.

.. _class_MainLoop_constant_NOTIFICATION_TEXT_SERVER_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_TEXT_SERVER_CHANGED** = ``2018`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_TEXT_SERVER_CHANGED>`

Получено уведомление при смене текстового сервера.

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_PIP_MODE_ENTERED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_PIP_MODE_ENTERED** = ``2019`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_PIP_MODE_ENTERED>`

Уведомление приходит, когда приложение переходит в режим "картинка в картинке".

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_PIP_MODE_EXITED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_PIP_MODE_EXITED** = ``2020`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_PIP_MODE_EXITED>`

Уведомление приходит при выходе приложения из режима "картинка в картинке".

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_MainLoop_private_method__finalize:

.. rst-class:: classref-method

|void| **_finalize**\ (\ ) |virtual| :ref:`🔗<class_MainLoop_private_method__finalize>`

Вызывается перед завершением работы программы.

.. rst-class:: classref-item-separator

----

.. _class_MainLoop_private_method__initialize:

.. rst-class:: classref-method

|void| **_initialize**\ (\ ) |virtual| :ref:`🔗<class_MainLoop_private_method__initialize>`

Вызывается один раз во время инициализации.

.. rst-class:: classref-item-separator

----

.. _class_MainLoop_private_method__physics_process:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_physics_process**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_MainLoop_private_method__physics_process>`

Вызывается каждый физический тик. ``delta`` — это логическое время между физическими тиками в секундах, равное :ref:`Engine.time_scale<class_Engine_property_time_scale>` / :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`. Эквивалентно :ref:`Node._physics_process()<class_Node_private_method__physics_process>`.

Если метод реализован, он должен возвращать логическое значение. ``true`` завершает основной цикл, а ``false`` позволяет перейти к следующему шагу.

\ **Примечание:** :ref:`_physics_process()<class_MainLoop_private_method__physics_process>` может быть вызван до :ref:`Engine.max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` раз за (неактивный) кадр. Это ограничение по шагам может быть достигнуто, когда движок испытывает проблемы с производительностью.

\ **Примечание:** Накопленное значение ``delta`` может отличаться от реального количества секунд.

.. rst-class:: classref-item-separator

----

.. _class_MainLoop_private_method__process:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_process**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_MainLoop_private_method__process>`

Вызывается в каждом бездействующем кадре, перед рендерингом и после обработки физических тактов. ``delta`` — это время между кадрами в секундах. Эквивалентно :ref:`Node._process()<class_Node_private_method__process>`.

Если метод реализован, он должен возвращать логическое значение. ``true`` завершает основной цикл, а ``false`` позволяет перейти к следующему кадру.

\ **Примечание:** Когда движок испытывает трудности и частота кадров снижается, ``delta`` увеличивается. При увеличении ``delta`` он ограничен максимальным значением :ref:`Engine.time_scale<class_Engine_property_time_scale>` \* :ref:`Engine.max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` / :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`. В результате накопленное значение ``delta`` может не отражать реальное время.

\ **Примечание:** Если ``--fixed-fps`` включен или движок работает в режиме Movie Maker (см. :ref:`MovieWriter<class_MovieWriter>`), параметр ``delta`` всегда будет одинаковым для каждого кадра, независимо от времени рендеринга.

\ **Примечание:** Дельта-кадр может быть обработана :ref:`OS.delta_smoothing<class_OS_property_delta_smoothing>`, если эта функция включена в проекте.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
