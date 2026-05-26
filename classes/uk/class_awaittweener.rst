:github_url: hide

.. _class_AwaitTweener:

AwaitTweener
============

**Успадковує:** :ref:`Tweener<class_Tweener>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Awaits a specified signal.

.. rst-class:: classref-introduction-group

Опис
--------

**AwaitTweener** is used to await a specified signal, allowing asynchronous steps in :ref:`Tween<class_Tween>` animation. See :ref:`Tween.tween_await()<class_Tween_method_tween_await>` for more usage information.

The :ref:`Tweener.finished<class_Tweener_signal_finished>` signal is emitted when either the awaited signal is received, when timeout is reached, or when the target object is freed.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------------+------------------------------------------------------------------------------------------------------+
   | :ref:`AwaitTweener<class_AwaitTweener>` | :ref:`set_timeout<class_AwaitTweener_method_set_timeout>`\ (\ timeout\: :ref:`float<class_float>`\ ) |
   +-----------------------------------------+------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_AwaitTweener_method_set_timeout:

.. rst-class:: classref-method

:ref:`AwaitTweener<class_AwaitTweener>` **set_timeout**\ (\ timeout\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AwaitTweener_method_set_timeout>`

Sets the maximum time an **AwaitTweener** can wait for the signal. Can be used as a safeguard for signals that may never be emitted. If not specified, the tweener will wait indefinitely.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
