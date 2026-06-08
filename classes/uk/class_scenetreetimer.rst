:github_url: hide

.. _class_SceneTreeTimer:

SceneTreeTimer
==============

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Одноразовий таймер.

.. rst-class:: classref-introduction-group

Опис
--------

Одноразовий таймер, керований деревом сцени, який видає :ref:`timeout<class_SceneTreeTimer_signal_timeout>` після завершення. Дивіться також :ref:`SceneTree.create_timer()<class_SceneTree_method_create_timer>`. 

На відміну від :ref:`Timer<class_Timer>`, він не вимагає створення екземпляра вузла. Зазвичай використовується для створення одноразового таймера затримки, як у наступному прикладі: 


.. tabs:: 

 .. code-tab:: gdscript
 
    func some_function(): 
        print("Таймер запущено.") 
        awaitget_tree().create_timer(1.0).timeout 
        print("Таймер закінчився.")  

 .. code-tab:: csharp
 
    public async Task SomeFunction() 
    {
        GD.Print("Таймер запущено."); 
        await ToSignal(GetTree().CreateTimer(1.0f), SceneTreeTimer.SignalName.Timeout); 
        GD.Print("Таймер закінчився."); 
    } 

 

Таймер буде розіменовано після закінчення часу. Щоб зберегти таймер, ви можете зберегти посилання на нього. Див. :ref:`RefCounted<class_RefCounted>`. 

\ **Примітка:** Таймер обробляється після всіх вузлів у поточному кадрі, тобто метод :ref:`Node._process()<class_Node_private_method__process>` вузла буде викликано перед таймером (або :ref:`Node._physics_process()<class_Node_private_method__physics_process>`, якщо для ``process_in_physics`` у :ref:`SceneTree.create_timer()<class_SceneTree_method_create_timer>` встановлено значення ``true``).

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`time_left<class_SceneTreeTimer_property_time_left>` |
   +---------------------------+-----------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_SceneTreeTimer_signal_timeout:

.. rst-class:: classref-signal

**timeout**\ (\ ) :ref:`🔗<class_SceneTreeTimer_signal_timeout>`

Увімкніть, коли таймер досягає 0.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_SceneTreeTimer_property_time_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_left** :ref:`🔗<class_SceneTreeTimer_property_time_left>`

.. rst-class:: classref-property-setget

- |void| **set_time_left**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_time_left**\ (\ )

Час, що залишився (в секундах).

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
