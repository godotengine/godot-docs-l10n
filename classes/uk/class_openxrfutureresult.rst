:github_url: hide

.. _class_OpenXRFutureResult:

OpenXRFutureResult
==================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Об'єкт Result, що відстежує асинхронний результат об'єкта OpenXR Future.

.. rst-class:: classref-introduction-group

Опис
--------

Об'єкт Result відстежує асинхронний результат об'єкта OpenXR Future, ви можете використовувати цей об'єкт для відстеження стану результату.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`cancel_future<class_OpenXRFutureResult_method_cancel_future>`\ (\ )                                                     |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`get_future<class_OpenXRFutureResult_method_get_future>`\ (\ ) |const|                                                   |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                             | :ref:`get_result_value<class_OpenXRFutureResult_method_get_result_value>`\ (\ ) |const|                                       |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ResultStatus<enum_OpenXRFutureResult_ResultStatus>` | :ref:`get_status<class_OpenXRFutureResult_method_get_status>`\ (\ ) |const|                                                   |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_result_value<class_OpenXRFutureResult_method_set_result_value>`\ (\ result_value\: :ref:`Variant<class_Variant>`\ ) |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_OpenXRFutureResult_signal_completed:

.. rst-class:: classref-signal

**completed**\ (\ result\: :ref:`OpenXRFutureResult<class_OpenXRFutureResult>`\ ) :ref:`🔗<class_OpenXRFutureResult_signal_completed>`

Видається, коли асинхронна функція завершена або скасована.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_OpenXRFutureResult_ResultStatus:

.. rst-class:: classref-enumeration

enum **ResultStatus**: :ref:`🔗<enum_OpenXRFutureResult_ResultStatus>`

.. _class_OpenXRFutureResult_constant_RESULT_RUNNING:

.. rst-class:: classref-enumeration-constant

:ref:`ResultStatus<enum_OpenXRFutureResult_ResultStatus>` **RESULT_RUNNING** = ``0``

Асинхронна функція виконується.

.. _class_OpenXRFutureResult_constant_RESULT_FINISHED:

.. rst-class:: classref-enumeration-constant

:ref:`ResultStatus<enum_OpenXRFutureResult_ResultStatus>` **RESULT_FINISHED** = ``1``

Асинхронна функція завершена.

.. _class_OpenXRFutureResult_constant_RESULT_CANCELLED:

.. rst-class:: classref-enumeration-constant

:ref:`ResultStatus<enum_OpenXRFutureResult_ResultStatus>` **RESULT_CANCELLED** = ``2``

Асинхронну функцію скасовано.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_OpenXRFutureResult_method_cancel_future:

.. rst-class:: classref-method

|void| **cancel_future**\ (\ ) :ref:`🔗<class_OpenXRFutureResult_method_cancel_future>`

Скасуйте це майбутнє, це перерве та зупинить асинхронну функцію.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFutureResult_method_get_future:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_future**\ (\ ) |const| :ref:`🔗<class_OpenXRFutureResult_method_get_future>`

Повернути значення ``XrFutureEXT``, до якого відноситься цей результат.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFutureResult_method_get_result_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_result_value**\ (\ ) |const| :ref:`🔗<class_OpenXRFutureResult_method_get_result_value>`

Повертає результуюче значення нашої асинхронної функції (якщо встановлено розширенням). Тип цього результуючого значення залежить від функції, що викликається. Зверніться до документації відповідної функції.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFutureResult_method_get_status:

.. rst-class:: classref-method

:ref:`ResultStatus<enum_OpenXRFutureResult_ResultStatus>` **get_status**\ (\ ) |const| :ref:`🔗<class_OpenXRFutureResult_method_get_status>`

Повертає статус цього результату.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFutureResult_method_set_result_value:

.. rst-class:: classref-method

|void| **set_result_value**\ (\ result_value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_OpenXRFutureResult_method_set_result_value>`

Зберігає значення результату, яке ми надаємо користувачеві.

\ **Примітка:** Цей метод має викликатися лише розширенням OpenXR, яке реалізує асинхронну функцію.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
