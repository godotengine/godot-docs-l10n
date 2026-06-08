:github_url: hide

.. _class_OpenXRFutureExtension:

OpenXRFutureExtension
=====================

**Успадковує:** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

Розширення OpenXR Future дозволяє використовувати асинхронні API.

.. rst-class:: classref-introduction-group

Опис
--------

Це розширення підтримки в OpenXR, яке дозволяє іншим розширенням OpenXR запускати асинхронні функції та отримувати зворотний виклик після завершення цієї функції. Воно не призначене для використання в GDScript, але до нього можна отримати доступ з GDExtension.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`cancel_future<class_OpenXRFutureExtension_method_cancel_future>`\ (\ future\: :ref:`int<class_int>`\ )                                                                |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_active<class_OpenXRFutureExtension_method_is_active>`\ (\ ) |const|                                                                                                |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` | :ref:`register_future<class_OpenXRFutureExtension_method_register_future>`\ (\ future\: :ref:`int<class_int>`, on_success\: :ref:`Callable<class_Callable>` = Callable()\ ) |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_OpenXRFutureExtension_method_cancel_future:

.. rst-class:: classref-method

|void| **cancel_future**\ (\ future\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRFutureExtension_method_cancel_future>`

Скасовує майбутнє, що виконується. ``future`` має бути значенням типу ``XrFutureEXT``, яке раніше поверталося API, що запустив асинхронну функцію.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFutureExtension_method_is_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_active**\ (\ ) |const| :ref:`🔗<class_OpenXRFutureExtension_method_is_active>`

Повертає ``true``, якщо ф'ючерси доступні у використовуваному середовищі виконання OpenXR. Ця функція поверне придатний для використання результат лише після ініціалізації OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFutureExtension_method_register_future:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **register_future**\ (\ future\: :ref:`int<class_int>`, on_success\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRFutureExtension_method_register_future>`

Зареєструйте об'єкт OpenXR Future, щоб ми могли стежити за завершенням. ``future`` має бути значенням ``XrFutureEXT``, яке раніше поверталося API, що запускав асинхронну функцію.

Ви можете додатково вказати ``on_success``, воно буде викликано після успішного завершення майбутнього.

Або ви можете використовувати повернутий об'єкт :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` для ``await`` його сигналу :ref:`OpenXRFutureResult.completed<class_OpenXRFutureResult_signal_completed>`.

::

    var future_result = OpenXRFutureExtension.register_future(future)
    await future_result.completed

    if future_result.get_status() == OpenXRFutureResult.RESULT_FINISHED:
    # Обробка вашого успіху пройдено

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
