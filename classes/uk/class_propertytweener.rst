:github_url: hide

.. _class_PropertyTweener:

PropertyTweener
===============

**Успадковує:** :ref:`Tweener<class_Tweener>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Інтерполює властивість об'єкта :ref:`Object<class_Object>` з плином часу.

.. rst-class:: classref-introduction-group

Опис
--------

**PropertyTweener** використовується для інтерполяції властивості в об’єкт. Перегляньте :ref:`Tween.tween_property()<class_Tween_method_tween_property>` для отримання додаткової інформації про використання. 

Твінер завершиться автоматично, якщо цільовий об’єкт буде звільнено. 

\ **Примітка:** :ref:`Tween.tween_property()<class_Tween_method_tween_property>` є єдиним правильним способом створення **PropertyTweener**. Будь-який **PropertyTweener**, створений вручну, не працюватиме належним чином.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PropertyTweener<class_PropertyTweener>` | :ref:`as_relative<class_PropertyTweener_method_as_relative>`\ (\ )                                                                                |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PropertyTweener<class_PropertyTweener>` | :ref:`from<class_PropertyTweener_method_from>`\ (\ value\: :ref:`Variant<class_Variant>`\ )                                                       |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PropertyTweener<class_PropertyTweener>` | :ref:`from_current<class_PropertyTweener_method_from_current>`\ (\ )                                                                              |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PropertyTweener<class_PropertyTweener>` | :ref:`set_custom_interpolator<class_PropertyTweener_method_set_custom_interpolator>`\ (\ interpolator_method\: :ref:`Callable<class_Callable>`\ ) |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PropertyTweener<class_PropertyTweener>` | :ref:`set_delay<class_PropertyTweener_method_set_delay>`\ (\ delay\: :ref:`float<class_float>`\ )                                                 |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PropertyTweener<class_PropertyTweener>` | :ref:`set_ease<class_PropertyTweener_method_set_ease>`\ (\ ease\: :ref:`EaseType<enum_Tween_EaseType>`\ )                                         |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PropertyTweener<class_PropertyTweener>` | :ref:`set_trans<class_PropertyTweener_method_set_trans>`\ (\ trans\: :ref:`TransitionType<enum_Tween_TransitionType>`\ )                          |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_PropertyTweener_method_as_relative:

.. rst-class:: classref-method

:ref:`PropertyTweener<class_PropertyTweener>` **as_relative**\ (\ ) :ref:`🔗<class_PropertyTweener_method_as_relative>`

Під час виклику кінцеве значення використовуватиметься як відносне. 

\ **Приклад:** Перемістіть вузол на ``100`` пікселів праворуч. 


.. tabs:: 

 .. code-tab:: gdscript
 
    var tween = get_tree().create_tween() 
    tween.tween_property(self, "position", Vector2.RIGHT * 100, 1).as_relative()  

 .. code-tab:: csharp
 
    Tween tween = GetTree().CreateTween(); 
    tween.TweenProperty(this, "position", Vector2.Right * 100.0f, 1.0f).AsRelative();  



.. rst-class:: classref-item-separator

----

.. _class_PropertyTweener_method_from:

.. rst-class:: classref-method

:ref:`PropertyTweener<class_PropertyTweener>` **from**\ (\ value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_PropertyTweener_method_from>`

Встановлює спеціальне початкове значення для **PropertyTweener**. 

\ **Приклад:** Перемістіть вузол із позиції ``(100, 100)`` до ``(200, 100)``. 


.. tabs:: 

 .. code-tab:: gdscript
 
    var tween = get_tree().create_tween() 
    tween.tween_property(self, "position", Vector2(200, 100), 1).from(Vector2(100, 100))  

 .. code-tab:: csharp
 
    Tween tween = GetTree().CreateTween(); 
    tween.TweenProperty(self, "position", new Vector2(200.0f, 100.0f), 1.0f).From(new Vector2(100.0f, 100.0f));  



.. rst-class:: classref-item-separator

----

.. _class_PropertyTweener_method_from_current:

.. rst-class:: classref-method

:ref:`PropertyTweener<class_PropertyTweener>` **from_current**\ (\ ) :ref:`🔗<class_PropertyTweener_method_from_current>`

Змушує **PropertyTweener** використовувати поточне значення властивості (тобто на момент створення цього **PropertyTweener**) як початкову точку. Це еквівалентно використанню :ref:`from()<class_PropertyTweener_method_from>` із поточним значенням. Ці два виклики зроблять те саме: 


.. tabs:: 

 .. code-tab:: gdscript
 
    tween.tween_property(self, "position", Vector2(200, 100), 1).from(position) 
    tween.tween_property(self, "position", Vector2(200, 100), 1).from_current()  

 .. code-tab:: csharp
 
    tween.TweenProperty(this, "position", new Vector2(200.0f, 100.0f), 1.0f).From(Position); 
    tween.TweenProperty(this, "position", new Vector2(200.0f, 100.0f), 1.0f).FromCurrent();  



.. rst-class:: classref-item-separator

----

.. _class_PropertyTweener_method_set_custom_interpolator:

.. rst-class:: classref-method

:ref:`PropertyTweener<class_PropertyTweener>` **set_custom_interpolator**\ (\ interpolator_method\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_PropertyTweener_method_set_custom_interpolator>`

Дозволяє інтерполювати значення за допомогою спеціальної функції спрощення. Наданий ``interpolator_method`` буде викликано зі значенням у діапазоні від ``0.0`` до ``1.0`` і, як очікується, поверне значення в тому самому діапазоні (значення за межами діапазону можна використовувати для перевищення). Повернене значення методу потім використовується для інтерполяції між початковим і кінцевим значенням. Зауважте, що параметр, переданий у метод, все ще підлягає власному ослабленню твінера. 


.. tabs:: 

 .. code-tab:: gdscript
 
    @export var curve: Curve 

    func _ready(): 
        var tween = create_tween() 
        # Інтерполювати значення за допомогою спеціальної кривої. 
        tween.tween_property(self, "position:x", 300, 1).as_relative().set_custom_interpolator(tween_curve) 

    func tween_curve(v): 
        повернути curve.sample_baked(v)  

 .. code-tab:: csharp
 
    [Export] 
    public Curve Curve { get; set; } 

    public override void _Ready() 
    {
        Анімація анімації = CreateTween(); 
        // Інтерполяція значення за допомогою спеціальної кривої. 
        Callable tweenCurveCallable = Callable.From<float, float>(TweenCurve); 
        tween.TweenProperty(this, "position:x", 300.0f, 1.0f).AsRelative().SetCustomInterpolator(tweenCurveCallable); 
    }

    private float TweenCurve(float value) 
    {
        return Curve.SampleBaked(value); 
    } 



.. rst-class:: classref-item-separator

----

.. _class_PropertyTweener_method_set_delay:

.. rst-class:: classref-method

:ref:`PropertyTweener<class_PropertyTweener>` **set_delay**\ (\ delay\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PropertyTweener_method_set_delay>`

Налаштовує час за секундами, після чого буде переповнено **PropertyTweener**. За замовчуванням немає затримки.

.. rst-class:: classref-item-separator

----

.. _class_PropertyTweener_method_set_ease:

.. rst-class:: classref-method

:ref:`PropertyTweener<class_PropertyTweener>` **set_ease**\ (\ ease\: :ref:`EaseType<enum_Tween_EaseType>`\ ) :ref:`🔗<class_PropertyTweener_method_set_ease>`

Встановлює тип використовуваного зондування з Tween. EaseType. Якщо не встановлено, що зменшення за замовчуванням використовується з :ref:`Tween<class_Tween>`, який містить цей Tweener.

.. rst-class:: classref-item-separator

----

.. _class_PropertyTweener_method_set_trans:

.. rst-class:: classref-method

:ref:`PropertyTweener<class_PropertyTweener>` **set_trans**\ (\ trans\: :ref:`TransitionType<enum_Tween_TransitionType>`\ ) :ref:`🔗<class_PropertyTweener_method_set_trans>`

Встановлює тип використовуваного переходу з :ref:`TransitionType<enum_Tween_TransitionType>`. Якщо не встановлено, перехід за замовчуванням використовується з :ref:`Tween<class_Tween>`, який містить цей Tweener.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
