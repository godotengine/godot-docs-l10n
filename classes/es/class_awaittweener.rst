:github_url: hide

.. _class_AwaitTweener:

AwaitTweener
============

**Hereda:** :ref:`Tweener<class_Tweener>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Awaits a specified signal.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**AwaitTweener** is used to await a specified signal, allowing asynchronous steps in :ref:`Tween<class_Tween>` animation. See :ref:`Tween.tween_await()<class_Tween_method_tween_await>` for more usage information.

The :ref:`Tweener.finished<class_Tweener_signal_finished>` signal is emitted when either the awaited signal is received, when timeout is reached, or when the target object is freed.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------+------------------------------------------------------------------------------------------------------+
   | :ref:`AwaitTweener<class_AwaitTweener>` | :ref:`set_timeout<class_AwaitTweener_method_set_timeout>`\ (\ timeout\: :ref:`float<class_float>`\ ) |
   +-----------------------------------------+------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AwaitTweener_method_set_timeout:

.. rst-class:: classref-method

:ref:`AwaitTweener<class_AwaitTweener>` **set_timeout**\ (\ timeout\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AwaitTweener_method_set_timeout>`

Sets the maximum time an **AwaitTweener** can wait for the signal. Can be used as a safeguard for signals that may never be emitted. If not specified, the tweener will wait indefinitely.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
