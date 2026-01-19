:github_url: hide

.. _class_JSONRPC:

JSONRPC
=======

**Успадковує:** :ref:`Object<class_Object>`

Допоможець для обробки словників, які виглядають як JSONRPC документи.

.. rst-class:: classref-introduction-group

Опис
--------

`JSON-RPC <https://www.jsonrpc.org/>`__ є стандартом, який обгортає метод виклику в об'єкті :ref:`JSON<class_JSON>`. Об'єкт має певну структуру і визначені, які метод називається, параметри до цієї функції і несе ідентифікатор для відстеження відповідей. Цей клас реалізує цей стандарт у верхній частині :ref:`Dictionary<class_Dictionary>`; вам доведеться конвертувати між :ref:`Dictionary<class_Dictionary>` та :ref:`JSON<class_JSON>` з іншими функціями.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`make_notification<class_JSONRPC_method_make_notification>`\ (\ method\: :ref:`String<class_String>`, params\: :ref:`Variant<class_Variant>`\ )                                               |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`make_request<class_JSONRPC_method_make_request>`\ (\ method\: :ref:`String<class_String>`, params\: :ref:`Variant<class_Variant>`, id\: :ref:`Variant<class_Variant>`\ )                     |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`make_response<class_JSONRPC_method_make_response>`\ (\ result\: :ref:`Variant<class_Variant>`, id\: :ref:`Variant<class_Variant>`\ )                                                         |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`make_response_error<class_JSONRPC_method_make_response_error>`\ (\ code\: :ref:`int<class_int>`, message\: :ref:`String<class_String>`, id\: :ref:`Variant<class_Variant>` = null\ ) |const| |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`process_action<class_JSONRPC_method_process_action>`\ (\ action\: :ref:`Variant<class_Variant>`, recurse\: :ref:`bool<class_bool>` = false\ )                                                |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`process_string<class_JSONRPC_method_process_string>`\ (\ action\: :ref:`String<class_String>`\ )                                                                                             |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_method<class_JSONRPC_method_set_method>`\ (\ name\: :ref:`String<class_String>`, callback\: :ref:`Callable<class_Callable>`\ )                                                           |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_JSONRPC_ErrorCode:

.. rst-class:: classref-enumeration

enum **ErrorCode**: :ref:`🔗<enum_JSONRPC_ErrorCode>`

.. _class_JSONRPC_constant_PARSE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorCode<enum_JSONRPC_ErrorCode>` **PARSE_ERROR** = ``-32700``

Запит не може бути приурочена, оскільки він не був дійсним за стандартом JSON (:ref:`JSON.parse()<class_JSON_method_parse>`).

.. _class_JSONRPC_constant_INVALID_REQUEST:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorCode<enum_JSONRPC_ErrorCode>` **INVALID_REQUEST** = ``-32600``

За запитом, але формат запиту не діє.

.. _class_JSONRPC_constant_METHOD_NOT_FOUND:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorCode<enum_JSONRPC_ErrorCode>` **METHOD_NOT_FOUND** = ``-32601``

За запитом метода, але не існує функції цього імені, що існували в субкласі JSONRPC.

.. _class_JSONRPC_constant_INVALID_PARAMS:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorCode<enum_JSONRPC_ErrorCode>` **INVALID_PARAMS** = ``-32602``

За запитом метода, але задані параметри методу не діє. Не використовується вбудованим JSONRPC.

.. _class_JSONRPC_constant_INTERNAL_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorCode<enum_JSONRPC_ErrorCode>` **INTERNAL_ERROR** = ``-32603``

Внутрішня помилка сталася при обробці запиту. Не використовується вбудованим JSONRPC.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_JSONRPC_method_make_notification:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **make_notification**\ (\ method\: :ref:`String<class_String>`, params\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_JSONRPC_method_make_notification>`

Повертає словник у формі сповіщення JSON-RPC. Сповіщення – це одноразові повідомлення, які не очікують відповіді.

- ``method``: Ім'я методу, що викликається.

- ``params``: Масив або словник параметрів, що передаються методу.

.. rst-class:: classref-item-separator

----

.. _class_JSONRPC_method_make_request:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **make_request**\ (\ method\: :ref:`String<class_String>`, params\: :ref:`Variant<class_Variant>`, id\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_JSONRPC_method_make_request>`

Повертає словник у формі JSON-RPC запиту. Запити надсилаються на сервер з очікуванням відповіді. Поле ID використовується сервером для визначення того, на який саме запит він відповідає.

- ``method``: Ім'я методу, що викликається.

- ``params``: Масив або словник параметрів, що передаються методу.

- ``id``: Унікально ідентифікує цей запит. Очікується, що сервер надішле відповідь з тим самим ідентифікатором.

.. rst-class:: classref-item-separator

----

.. _class_JSONRPC_method_make_response:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **make_response**\ (\ result\: :ref:`Variant<class_Variant>`, id\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_JSONRPC_method_make_response>`

Коли сервер отримав і обробляє запит, він очікується надсилати відповідь. Якщо ви не бажаєте відповіді, то вам потрібно надіслати повідомлення замість цього.

- ``result``: Повернення значення функції, яка була викликана.

- ``id``: Ідентифікатор запиту на цю відповідь.

.. rst-class:: classref-item-separator

----

.. _class_JSONRPC_method_make_response_error:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **make_response_error**\ (\ code\: :ref:`int<class_int>`, message\: :ref:`String<class_String>`, id\: :ref:`Variant<class_Variant>` = null\ ) |const| :ref:`🔗<class_JSONRPC_method_make_response_error>`

Створює відповідь, яка вказує на попередню відповідь

- ``code``: Код помилки, що відповідає за те, що таке помилка. Побачити ``повідомлення``\ 

- ``message``: Користувальницьке повідомлення про цю помилку.

- ``id``: Ця помилка є відповідь.

.. rst-class:: classref-item-separator

----

.. _class_JSONRPC_method_process_action:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **process_action**\ (\ action\: :ref:`Variant<class_Variant>`, recurse\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_JSONRPC_method_process_action>`

З урахуванням словника, який приймає форму запиту JSON-RPC: розпакувати запит і запустити його. Методи вирішуються, дивлячись на поле, що називається "метод" і шукаючи еквівалентно названу функцію в об'єкті JSONRPC. Якщо один знайдений метод називається.

Щоб додати нові підтримані методи, подовжуйте клас JSONRPC і зателефонуйте :ref:`_action()<class_JSONRPC_private_method__action>` на підкласі.

\ ``action``: Дія, яка буде працювати, як словник у вигляді запиту JSON-RPC або повідомлення.

.. rst-class:: classref-item-separator

----

.. _class_JSONRPC_method_process_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **process_string**\ (\ action\: :ref:`String<class_String>`\ ) :ref:`🔗<class_JSONRPC_method_process_string>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_JSONRPC_method_set_method:

.. rst-class:: classref-method

|void| **set_method**\ (\ name\: :ref:`String<class_String>`, callback\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_JSONRPC_method_set_method>`

Реєструє зворотний виклик для заданого імені методу.

- ``name``: Ім'я, яке клієнти можуть використовувати для доступу до зворотного виклику.

- ``callback``: Зворотний виклик, який оброблятиме вказаний метод.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
