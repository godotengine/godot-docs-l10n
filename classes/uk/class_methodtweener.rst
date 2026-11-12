:github_url: hide

.. _class_MethodTweener:

MethodTweener
=============

**Успадковує:** :ref:`Tweener<class_Tweener>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Вдосконалює абстрактне значення та подає його до методу, що називається часом.

.. rst-class:: classref-introduction-group

Опис
--------

**MethodTweener** схожий на поєднання :ref:`CallbackTweener<class_CallbackTweener>` і :ref:`PropertyTweener<class_PropertyTweener>`. Викликає метод, що забезпечує міжпольове значення як параметр. Див. :ref:`Tween.tween_method()<class_Tween_method_tween_method>` для отримання додаткової інформації про використання.

Твінер автоматично завершиться, якщо об'єкт зворотного зв'язку звільняється.

\ **Примітка:** :ref:`Tween.tween_method()<class_Tween_method_tween_method>` є єдиним правильним способом створення **MethodTweener**. Будь-який **MethodTweener** створений вручну не буде функціонувати правильно.

.. rst-class:: classref-reftable-group

Методи
------------

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

Описи методів
--------------------------

.. _class_MethodTweener_method_set_delay:

.. rst-class:: classref-method

:ref:`MethodTweener<class_MethodTweener>` **set_delay**\ (\ delay\: :ref:`float<class_float>`\ ) :ref:`🔗<class_MethodTweener_method_set_delay>`

Встановлює час за секундами, після чого буде переповнено **MethodTweener**. За замовчуванням немає затримки.

.. rst-class:: classref-item-separator

----

.. _class_MethodTweener_method_set_ease:

.. rst-class:: classref-method

:ref:`MethodTweener<class_MethodTweener>` **set_ease**\ (\ ease\: :ref:`EaseType<enum_Tween_EaseType>`\ ) :ref:`🔗<class_MethodTweener_method_set_ease>`

Встановлює тип використовуваного зондування з :ref:`EaseType<enum_Tween_EaseType>`. Якщо не встановлено, що зменшення за замовчуванням використовується з :ref:`Tween<class_Tween>`, який містить цей Tweener.

.. rst-class:: classref-item-separator

----

.. _class_MethodTweener_method_set_trans:

.. rst-class:: classref-method

:ref:`MethodTweener<class_MethodTweener>` **set_trans**\ (\ trans\: :ref:`TransitionType<enum_Tween_TransitionType>`\ ) :ref:`🔗<class_MethodTweener_method_set_trans>`

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
