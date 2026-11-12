:github_url: hide

.. _class_PropertyTweener:

PropertyTweener
===============

**Hereda:** :ref:`Tweener<class_Tweener>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Interpola una propiedad de un :ref:`Object<class_Object>` a lo largo del tiempo.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**PropertyTweener** se usa para interpolar una propiedad en un objeto. Véase :ref:`Tween.tween_property()<class_Tween_method_tween_property>` para obtener más información de uso.

El tweener finalizará automáticamente si el objeto de destino es liberado.

\ **Nota:** :ref:`Tween.tween_property()<class_Tween_method_tween_property>` es la única forma correcta de crear **PropertyTweener**. Cualquier **PropertyTweener** creado manualmente no funcionará correctamente.

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Descripciones de Métodos
------------------------------------------------

.. _class_PropertyTweener_method_as_relative:

.. rst-class:: classref-method

:ref:`PropertyTweener<class_PropertyTweener>` **as_relative**\ (\ ) :ref:`🔗<class_PropertyTweener_method_as_relative>`

Cuando se llama, el valor final se usará como un valor relativo en su lugar.

\ **Ejemplo:** Mueve el nodo ``100`` píxeles a la derecha.


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

Sets a custom initial value to the **PropertyTweener**.

\ **Example:** Move the node from position ``(100, 100)`` to ``(200, 100)``.


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

Makes the **PropertyTweener** use the current property value (i.e. at the time of creating this **PropertyTweener**) as a starting point. This is equivalent of using :ref:`from()<class_PropertyTweener_method_from>` with the current value. These two calls will do the same:


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

Permite interpolar el valor mediante una función de suavizado personalizada. Se llamará al método ``interpolator_method`` proporcionado con un valor comprendido entre ``0.0`` y ``1.0`` y se espera que devuelva un valor dentro del mismo intervalo (se pueden utilizar valores fuera del intervalo para producir un efecto de sobrepaso). El valor devuelto por el método se utiliza entonces para interpolar entre el valor inicial y el valor final. Ten en cuenta que el parámetro que se pasa al método sigue estando sujeto al propio suavizado del tweener.


.. tabs::

 .. code-tab:: gdscript

    @export var curve: Curve

    func _ready():
        var tween = create_tween()
        # Interpola el valor mediante una curva personalizada.
        tween.tween_property(self, "position:x", 300, 1).as_relative().set_custom_interpolator(tween_curve)

    func tween_curve(v):
        return curve.sample_baked(v)

 .. code-tab:: csharp

    [Export]
    public Curve Curve { get; set; }

    public override void _Ready()
    {
        Tween tween = CreateTween();
        // Interpola el valor mediante una curva personalizada.
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

Establece el tiempo en segundos después del cual el **PropertyTweener** comenzará a interpolar. Por defecto no hay retardo.

.. rst-class:: classref-item-separator

----

.. _class_PropertyTweener_method_set_ease:

.. rst-class:: classref-method

:ref:`PropertyTweener<class_PropertyTweener>` **set_ease**\ (\ ease\: :ref:`EaseType<enum_Tween_EaseType>`\ ) :ref:`🔗<class_PropertyTweener_method_set_ease>`

Establece el tipo de suavizado que se utilizará de :ref:`EaseType<enum_Tween_EaseType>`. Si no se establece, se usa el suavizado predeterminado del :ref:`Tween<class_Tween>` que contiene este Tweener.

.. rst-class:: classref-item-separator

----

.. _class_PropertyTweener_method_set_trans:

.. rst-class:: classref-method

:ref:`PropertyTweener<class_PropertyTweener>` **set_trans**\ (\ trans\: :ref:`TransitionType<enum_Tween_TransitionType>`\ ) :ref:`🔗<class_PropertyTweener_method_set_trans>`

Establece el tipo de transición usada de :ref:`TransitionType<enum_Tween_TransitionType>`. Si no se establece, se usa la transición por defecto del :ref:`Tween<class_Tween>` que contiene este Tweener.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
