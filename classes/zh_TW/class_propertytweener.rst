:github_url: hide

.. _class_PropertyTweener:

PropertyTweener
===============

**繼承：** :ref:`Tweener<class_Tweener>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

隨時間對 :ref:`Object<class_Object>` 的屬性進行插值。

.. rst-class:: classref-introduction-group

說明
----

**PropertyTweener** 用於為物件的屬性進行插值。詳見 :ref:`Tween.tween_property()<class_Tween_method_tween_property>`\ 。

目標物件被釋放時，補間器會自動結束。

\ **注意：**\ :ref:`Tween.tween_property()<class_Tween_method_tween_property>` 是建立 **PropertyTweener** 的唯一正確方法。任何手動建立的 **PropertyTweener** 都將無法正常執行。

.. rst-class:: classref-reftable-group

方法
----

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

方法說明
--------

.. _class_PropertyTweener_method_as_relative:

.. rst-class:: classref-method

:ref:`PropertyTweener<class_PropertyTweener>` **as_relative**\ (\ ) :ref:`🔗<class_PropertyTweener_method_as_relative>`

呼叫後會將最終值用作相對值。

\ **範例：**\ 將節點向右移動 ``100`` 像素。


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

為 **PropertyTweener** 設定自訂初始值。

\ **範例：**\ 將節點從 ``(100, 100)`` 移動到 ``(200, 100)``\ 。


.. tabs::

 .. code-tab:: gdscript

    var tween = get_tree().create_tween()
    tween.tween_property(self, "position", Vector2(200, 100), 1).from(Vector2(100, 100))

 .. code-tab:: csharp

    Tween tween = GetTree().CreateTween();
    tween.TweenProperty(this, "position", new Vector2(200.0f, 100.0f), 1.0f).From(new Vector2(100.0f, 100.0f));



.. rst-class:: classref-item-separator

----

.. _class_PropertyTweener_method_from_current:

.. rst-class:: classref-method

:ref:`PropertyTweener<class_PropertyTweener>` **from_current**\ (\ ) :ref:`🔗<class_PropertyTweener_method_from_current>`

讓 **PropertyTweener** 使用屬性的目前值（即建立 **PropertyTweener** 時）作為起點。等價於使用目前值呼叫 :ref:`from()<class_PropertyTweener_method_from>`\ 。下列兩種呼叫效果相同：


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

使用自訂緩動函式進行插值。會使用 ``0.0`` 到 ``1.0`` 之間的值來呼叫 ``interpolator_method``\ ，提供的這個方法的回傳值應該也在這個範圍內（可以用超出範圍的值表示越過目標）。後續會再使用這個方法的回傳值進行起始值和目標值之間的插值。請注意，傳給這個方法的參數仍然會受到補間器本身緩動功能的影響。


.. tabs::

 .. code-tab:: gdscript

    @export var curve: Curve

    func _ready():
        var tween = create_tween()
        # 使用自訂曲線進行插值。
        tween.tween_property(self, "position:x", 300, 1).as_relative().set_custom_interpolator(tween_curve)

    func tween_curve(v):
        return curve.sample_baked(v)

 .. code-tab:: csharp

    [Export]
    public Curve Curve { get; set; }

    public override void _Ready()
    {
        Tween tween = CreateTween();
        // 使用自訂曲線進行插值。
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

設定該 **PropertyTweener** 開始插值的時間，單位為秒。預設無延遲。

.. rst-class:: classref-item-separator

----

.. _class_PropertyTweener_method_set_ease:

.. rst-class:: classref-method

:ref:`PropertyTweener<class_PropertyTweener>` **set_ease**\ (\ ease\: :ref:`EaseType<enum_Tween_EaseType>`\ ) :ref:`🔗<class_PropertyTweener_method_set_ease>`

設定所使用的緩動型別 :ref:`EaseType<enum_Tween_EaseType>`\ 。如果沒有設定，則使用包含這個 Tweener 的 :ref:`Tween<class_Tween>` 的預設緩動型別。

.. rst-class:: classref-item-separator

----

.. _class_PropertyTweener_method_set_trans:

.. rst-class:: classref-method

:ref:`PropertyTweener<class_PropertyTweener>` **set_trans**\ (\ trans\: :ref:`TransitionType<enum_Tween_TransitionType>`\ ) :ref:`🔗<class_PropertyTweener_method_set_trans>`

設定所使用的過渡型別 :ref:`TransitionType<enum_Tween_TransitionType>`\ 。如果沒有設定，則使用包含這個 Tweener 的 :ref:`Tween<class_Tween>` 的預設過渡型別。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
