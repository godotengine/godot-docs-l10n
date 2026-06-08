:github_url: hide

.. _class_SubtweenTweener:

SubtweenTweener
===============

**Успадковує:** :ref:`Tweener<class_Tweener>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Запускає :ref:`Tween<class_Tween>`, вкладений в інший :ref:`Tween<class_Tween>`.

.. rst-class:: classref-introduction-group

Опис
--------

**SubtweenTweener** використовується для виконання :ref:`Tween<class_Tween>` як одного кроку в послідовності, визначеній іншим :ref:`Tween<class_Tween>`. Перегляньте :ref:`Tween.tween_subtween()<class_Tween_method_tween_subtween>` для отримання додаткової інформації про використання. 

\ **Примітка: ** :ref:`Tween.tween_subtween()<class_Tween_method_tween_subtween>` є єдиним правильним способом створення **SubtweenTweener**. Будь-який **SubtweenTweener**, створений вручну, не працюватиме належним чином.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------------------+---------------------------------------------------------------------------------------------------+
   | :ref:`SubtweenTweener<class_SubtweenTweener>` | :ref:`set_delay<class_SubtweenTweener_method_set_delay>`\ (\ delay\: :ref:`float<class_float>`\ ) |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_SubtweenTweener_method_set_delay:

.. rst-class:: classref-method

:ref:`SubtweenTweener<class_SubtweenTweener>` **set_delay**\ (\ delay\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SubtweenTweener_method_set_delay>`

Встановлює час у секундах, після якого **SubtweenTweener** почне виконувати підпроміжок. За замовчуванням затримки немає.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
