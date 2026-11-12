:github_url: hide

.. _class_MethodTweener:

MethodTweener
=============

**Hereda:** :ref:`Tweener<class_Tweener>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Interpola un valor abstracto y lo proporciona a un método llamado a lo largo del tiempo.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**MethodTweener** es similar a una combinación de :ref:`CallbackTweener<class_CallbackTweener>` y :ref:`PropertyTweener<class_PropertyTweener>`. Llama a un método proporcionando un valor interpolado como parámetro. Vea :ref:`Tween.tween_method()<class_Tween_method_tween_method>` para más información de uso.

El tweener finalizará automáticamente si el objeto destino del callback es liberado.

\ **Nota:** :ref:`Tween.tween_method()<class_Tween_method_tween_method>` es la única forma correcta de crear **MethodTweener**. Cualquier **MethodTweener** creado manualmente no funcionará correctamente.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MethodTweener<class_MethodTweener>` | :ref:`set_delay<class_MethodTweener_method_set_delay>`\ (\ delay\: :ref:`float<class_float>`\ )                        |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MethodTweener<class_MethodTweener>` | :ref:`set_ease<class_MethodTweener_method_set_ease>`\ (\ ease\: :ref:`EaseType<enum_Tween_EaseType>`\ )                |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MethodTweener<class_MethodTweener>` | :ref:`set_trans<class_MethodTweener_method_set_trans>`\ (\ trans\: :ref:`TransitionType<enum_Tween_TransitionType>`\ ) |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_MethodTweener_method_set_delay:

.. rst-class:: classref-method

:ref:`MethodTweener<class_MethodTweener>` **set_delay**\ (\ delay\: :ref:`float<class_float>`\ ) :ref:`🔗<class_MethodTweener_method_set_delay>`

Establece el tiempo en segundos después del cual el **MethodTweener** comenzará a interpolar. Por defecto, no hay retardo.

.. rst-class:: classref-item-separator

----

.. _class_MethodTweener_method_set_ease:

.. rst-class:: classref-method

:ref:`MethodTweener<class_MethodTweener>` **set_ease**\ (\ ease\: :ref:`EaseType<enum_Tween_EaseType>`\ ) :ref:`🔗<class_MethodTweener_method_set_ease>`

Establece el tipo de suavizado que se utilizará de :ref:`EaseType<enum_Tween_EaseType>`. Si no se establece, se usa el suavizado predeterminado del :ref:`Tween<class_Tween>` que contiene este Tweener.

.. rst-class:: classref-item-separator

----

.. _class_MethodTweener_method_set_trans:

.. rst-class:: classref-method

:ref:`MethodTweener<class_MethodTweener>` **set_trans**\ (\ trans\: :ref:`TransitionType<enum_Tween_TransitionType>`\ ) :ref:`🔗<class_MethodTweener_method_set_trans>`

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
