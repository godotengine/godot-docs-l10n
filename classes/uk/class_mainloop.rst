:github_url: hide

.. _class_MainLoop:

MainLoop
========

**Успадковує:** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`SceneTree<class_SceneTree>`

Абстрактний базовий клас для основної петлі гри.

.. rst-class:: classref-introduction-group

Опис
--------

**MainLoop** — це абстрактний базовий клас для ігрового циклу проекту Godot. Його успадковує :ref:`SceneTree<class_SceneTree>`, який є реалізацією ігрового циклу за замовчуванням, що використовується в проектах Godot, хоча також можна написати та використовувати власний підклас **MainLoop** замість дерева сцени. 

Після запуску програми ОС повинна бути надана реалізація **MainLoop**; інакше програма завершить роботу. Це відбувається автоматично (і :ref:`SceneTree<class_SceneTree>` створюється), якщо **MainLoop** :ref:`Script<class_Script>` не надано з командного рядка (наприклад, ``godot -s my_loop.gd``) або налаштування проекту :ref:`ProjectSettings.application/run/main_loop_type<class_ProjectSettings_property_application/run/main_loop_type>` не перезаписано. 

Ось приклад сценарію, що реалізує простий **MainLoop**: 


.. tabs:: 

 .. code-tab:: gdscript
 
    class_name CustomMainLoop 
    extends MainLoop 

    var time_elapsed = 0 

    func _initialize(): 
        print("Ініціалізовано:") 
        print(" Час початку: %s" % str(time_elapsed)) 

    func _process(delta): 
        time_elapsed += delta 
        # Повернути true для завершення основного циклу. 
        return Input.get_mouse_button_mask() != 0 || Input.is_key_pressed(KEY_ESCAPE) 

    func _finalize(): 
        print("Завершено:") 
        print(" Час завершення: %s" % str(time_elapsed))  

 .. code-tab:: csharp
 
    using Godot; 

    [Global class] 
    public partial class CustomMainLoop : MainLoop 
    {
        private double _timeElapsed = 0; 

        public override void _Initialize() 
        { 
            GD.Print("Ініціалізовано:"); 
            GD.Print($" Час початку: {_timeElapsed}"); 
        } 

        public override bool _Process(double delta) 
        { 
            _timeElapsed += delta; 
            // Повертає true для завершення основного циклу. 
            return Input.GetMouseButtonMask() != 0 || Input.IsKeyPressed(Key.Escape); 
        } 

        private void _Finalize() 
        { 
            GD.Print("Завершено:"); 
            GD.Print($" Час завершення: {_timeElapsed}"); 
        } 
    } 



.. rst-class:: classref-reftable-group

Методи
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

Сигнали
--------------

.. _class_MainLoop_signal_on_request_permissions_result:

.. rst-class:: classref-signal

**on_request_permissions_result**\ (\ permission\: :ref:`String<class_String>`, granted\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_MainLoop_signal_on_request_permissions_result>`

Увімкніть, коли користувач реагує на запит на дозвіл.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константи
------------------

.. _class_MainLoop_constant_NOTIFICATION_OS_MEMORY_WARNING:

.. rst-class:: classref-constant

**NOTIFICATION_OS_MEMORY_WARNING** = ``2009`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_OS_MEMORY_WARNING>`

Повідомлення отримано від ОС при перевищенні його виділеної пам'яті.

Специфікація на платформу iOS.

.. _class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_TRANSLATION_CHANGED** = ``2010`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>`

Повідомлення, отримане при зміні перекладу. Може бути запущений користувачем, що змінює локальне місце. Може використовуватися для відповіді на мовні зміни, наприклад, для зміни рядків UI на літа. Корисно при роботі з вбудованим перекладом, як :ref:`Object.tr()<class_Object_method_tr>`.

.. _class_MainLoop_constant_NOTIFICATION_WM_ABOUT:

.. rst-class:: classref-constant

**NOTIFICATION_WM_ABOUT** = ``2011`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_WM_ABOUT>`

Повідомлення отримано від ОС при надсиланні запиту на "Про" інформацію.

Специфікація на платформу macOS.

.. _class_MainLoop_constant_NOTIFICATION_CRASH:

.. rst-class:: classref-constant

**NOTIFICATION_CRASH** = ``2012`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_CRASH>`

Увімкнення отримано з аварійного керма Godot, коли двигун знаходиться на збій.

Реалізовано на настільних платформах, якщо увімкнено аварійний обробник.

.. _class_MainLoop_constant_NOTIFICATION_OS_IME_UPDATE:

.. rst-class:: classref-constant

**NOTIFICATION_OS_IME_UPDATE** = ``2013`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_OS_IME_UPDATE>`

Сповіщення, отримане від ОС, коли відбувається оновлення механізму вводу (наприклад, зміна позиції курсора IME або рядка композиції).

Реалізовано на настільних та веб-платформах.

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_RESUMED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_RESUMED** = ``2014`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_RESUMED>`

Повідомлення отримано від ОС при відновленні програми.

Специфіка для платформ Android та iOS.

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_PAUSED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_PAUSED** = ``2015`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_PAUSED>`

Повідомлення, отримане від ОС, коли заявка призупинена.

Специфічні для платформ Android та iOS.

\ **Примітка:** На iOS, у вас є лише приблизно 5 секунд, щоб закінчити завдання, розпочате цей сигнал. Якщо ви переживаєте цей розподіл, iOS вб'є додаток, а не призупинити його.

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_FOCUS_IN:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_FOCUS_IN** = ``2016`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_FOCUS_IN>`

Повідомлення отримано від ОС, коли додаток зосереджено, тобто при зміні фокусу з робочого столу OS або додатку сторонніх до будь-якого відкритого вікна екземпляра Godot.

Реалізовано на настільних і мобільних платформах.

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_FOCUS_OUT:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_FOCUS_OUT** = ``2017`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_FOCUS_OUT>`

Повідомлення отримано від ОС при дефокусованій програмі, тобто при зміні фокусу з будь-якого відкритого вікна екземпляра Godot на робочий стіл або додатку сторонніх осіб.

Реалізовано на настільних і мобільних платформах.

.. _class_MainLoop_constant_NOTIFICATION_TEXT_SERVER_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_TEXT_SERVER_CHANGED** = ``2018`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_TEXT_SERVER_CHANGED>`

Повідомлення, отримано при зміні текстового сервера.

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_PIP_MODE_ENTERED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_PIP_MODE_ENTERED** = ``2019`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_PIP_MODE_ENTERED>`

Notification received when the application enters picture-in-picture mode.

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_PIP_MODE_EXITED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_PIP_MODE_EXITED** = ``2020`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_PIP_MODE_EXITED>`

Notification received when the application exits picture-in-picture mode.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_MainLoop_private_method__finalize:

.. rst-class:: classref-method

|void| **_finalize**\ (\ ) |virtual| :ref:`🔗<class_MainLoop_private_method__finalize>`

Зателефонуйте до виходу програми.

.. rst-class:: classref-item-separator

----

.. _class_MainLoop_private_method__initialize:

.. rst-class:: classref-method

|void| **_initialize**\ (\ ) |virtual| :ref:`🔗<class_MainLoop_private_method__initialize>`

Викликається після ініціалізації.

.. rst-class:: classref-item-separator

----

.. _class_MainLoop_private_method__physics_process:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_physics_process**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_MainLoop_private_method__physics_process>`

Викликається кожний фізичний такт. ``delta`` — це логічний час між фізичними тактами в секундах, який дорівнює :ref:`Engine.time_scale<class_Engine_property_time_scale>` / :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`. Еквівалентний :ref:`Node._physics_process()<class_Node_private_method__physics_process>`.

Якщо реалізовано, метод повинен повертати булеве значення. ``true`` завершує головний цикл, а ``false`` дозволяє йому перейти до наступного кроку.

\ **Примітка:** :ref:`_physics_process()<class_MainLoop_private_method__physics_process>` може бути викликаний до :ref:`Engine.max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` разів за (неактивний) кадр. Цей ліміт кроків може бути досягнутий, коли движок страждає від проблем з продуктивністю.

\ **Примітка:** Накопичений ``delta`` може відрізнятися від реальних секунд.

.. rst-class:: classref-item-separator

----

.. _class_MainLoop_private_method__process:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_process**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_MainLoop_private_method__process>`

Викликається на кожному кадрі в режимі очікування, перед рендерингом і після обробки фізичних тиків. ``delta`` — це час між кадрами в секундах. Еквівалентно :ref:`Node._process()<class_Node_private_method__process>`.

Якщо реалізовано, метод повинен повертати булеве значення. ``true`` завершує головний цикл, а ``false`` дозволяє йому перейти до наступного кадру.

\ **Примітка:** Коли движок працює з перебоями і частота кадрів знижується, ``delta`` збільшується. Коли ``delta`` збільшується, його максимальне значення обмежується :ref:`Engine.time_scale<class_Engine_property_time_scale>` \* :ref:`Engine.max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` / :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`. Як результат, накопичений ``delta`` може не відповідати реальному часу.

\ **Примітка:** Коли ``--fixed-fps`` увімкнено або движок працює в режимі Movie Maker (див. :ref:`MovieWriter<class_MovieWriter>`), процес ``delta`` завжди буде однаковим для кожного кадру, незалежно від того, скільки часу знадобилося для його рендерингу.

\ **Примітка:** Дельта кадру може бути оброблена :ref:`OS.delta_smoothing<class_OS_property_delta_smoothing>`, якщо це ввімкнено для проекту.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
