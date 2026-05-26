:github_url: hide

.. _class_JSONRPC:

JSONRPC
=======

**Наследует:** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`GDScriptLanguageProtocol<class_GDScriptLanguageProtocol>`

Помощник для работы со словарями, которые выглядят как документы JSONRPC.

.. rst-class:: classref-introduction-group

Описание
----------------

`JSON-RPC <https://www.jsonrpc.org/>`__ — это стандарт, который оборачивает вызов метода в объект :ref:`JSON<class_JSON>`. Объект имеет определенную структуру и определяет, какой метод вызывается, параметры этой функции и несет идентификатор для отслеживания ответов. Этот класс реализует этот стандарт поверх :ref:`Dictionary<class_Dictionary>`; вам придется преобразовывать между :ref:`Dictionary<class_Dictionary>` и :ref:`JSON<class_JSON>` с помощью других функций.

.. rst-class:: classref-reftable-group

Методы
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

Перечисления
------------------------

.. _enum_JSONRPC_ErrorCode:

.. rst-class:: classref-enumeration

enum **ErrorCode**: :ref:`🔗<enum_JSONRPC_ErrorCode>`

.. _class_JSONRPC_constant_PARSE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorCode<enum_JSONRPC_ErrorCode>` **PARSE_ERROR** = ``-32700``

Запрос не может быть проанализирован, так как он не соответствует стандарту JSON (:ref:`JSON.parse()<class_JSON_method_parse>` не выполнен).

.. _class_JSONRPC_constant_INVALID_REQUEST:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorCode<enum_JSONRPC_ErrorCode>` **INVALID_REQUEST** = ``-32600``

Был запрошен вызов метода, но формат запроса недопустим.

.. _class_JSONRPC_constant_METHOD_NOT_FOUND:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorCode<enum_JSONRPC_ErrorCode>` **METHOD_NOT_FOUND** = ``-32601``

Был запрошен вызов метода, но в подклассе JSONRPC не существует функции с таким именем.

.. _class_JSONRPC_constant_INVALID_PARAMS:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorCode<enum_JSONRPC_ErrorCode>` **INVALID_PARAMS** = ``-32602``

Вызов метода был запрошен, но заданные параметры метода недействительны. Не используется встроенным JSONRPC.

.. _class_JSONRPC_constant_INTERNAL_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorCode<enum_JSONRPC_ErrorCode>` **INTERNAL_ERROR** = ``-32603``

Произошла внутренняя ошибка при обработке запроса. Не используется встроенным JSONRPC.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_JSONRPC_method_make_notification:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **make_notification**\ (\ method\: :ref:`String<class_String>`, params\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_JSONRPC_method_make_notification>`

Возвращает словарь в форме уведомления JSON-RPC. Уведомления — это одноразовые сообщения, не ожидающие ответа.

- ``method``: Имя вызываемого метода.

- ``params``: Массив или словарь параметров, передаваемых методу.

.. rst-class:: classref-item-separator

----

.. _class_JSONRPC_method_make_request:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **make_request**\ (\ method\: :ref:`String<class_String>`, params\: :ref:`Variant<class_Variant>`, id\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_JSONRPC_method_make_request>`

Возвращает словарь в форме запроса JSON-RPC. Запросы отправляются на сервер с ожиданием ответа. Поле ID используется сервером для указания, на какой именно запрос он отвечает.

- ``method``: Имя вызываемого метода.

- ``params``: Массив или словарь параметров, передаваемых методу.

- ``id``: Уникально идентифицирует этот запрос. Ожидается, что сервер отправит ответ с тем же ID.

.. rst-class:: classref-item-separator

----

.. _class_JSONRPC_method_make_response:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **make_response**\ (\ result\: :ref:`Variant<class_Variant>`, id\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_JSONRPC_method_make_response>`

Когда сервер получил и обработал запрос, ожидается отправка ответа. Если вы не хотели ответа, то вместо этого вам нужно было отправить уведомление.

- ``result``: возвращаемое значение вызванной функции.

- ``id``: идентификатор запроса, на который нацелен этот ответ.

.. rst-class:: classref-item-separator

----

.. _class_JSONRPC_method_make_response_error:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **make_response_error**\ (\ code\: :ref:`int<class_int>`, message\: :ref:`String<class_String>`, id\: :ref:`Variant<class_Variant>` = null\ ) |const| :ref:`🔗<class_JSONRPC_method_make_response_error>`

Создает ответ, который указывает, что предыдущий ответ по какой-то причине не удался.

- ``code``: Код ошибки, соответствующий типу ошибки. См. константы :ref:`ErrorCode<enum_JSONRPC_ErrorCode>`.

- ``message``: Пользовательское сообщение об этой ошибке.

- ``id``: Запрос, на который эта ошибка является ответом.

.. rst-class:: classref-item-separator

----

.. _class_JSONRPC_method_process_action:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **process_action**\ (\ action\: :ref:`Variant<class_Variant>`, recurse\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_JSONRPC_method_process_action>`

Дан словарь, который принимает форму запроса JSON-RPC: распакуйте запрос и запустите его. Методы разрешаются путем просмотра поля с именем «method» и поиска эквивалентно названной функции в объекте JSONRPC. Если она найдена, этот метод вызывается.

Чтобы добавить новые поддерживаемые методы, расширьте класс JSONRPC и вызовите :ref:`process_action()<class_JSONRPC_method_process_action>` в вашем подклассе.

\ ``action``: действие, которое должно быть запущено, как словарь в форме запроса или уведомления JSON-RPC.

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

Регистрирует функцию обратного вызова для указанного имени метода.

- ``name``: Имя, которое клиенты могут использовать для доступа к функции обратного вызова.

- ``callback``: Функция обратного вызова, которая будет обрабатывать указанный метод.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
