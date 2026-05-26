:github_url: hide

.. _class_JSONRPC:

JSONRPC
=======

**繼承：** :ref:`Object<class_Object>`

**被繼承：** :ref:`GDScriptLanguageProtocol<class_GDScriptLanguageProtocol>`

用於處理看起來像 JSONRPC 文件的字典的輔助類。

.. rst-class:: classref-introduction-group

說明
----

`JSON-RPC <https://www.jsonrpc.org/>`__ 是一項標準，它將方法呼叫包裝在一個 :ref:`JSON<class_JSON>` 對象中。該物件有一個特定的結構，並標識出哪個方法被呼叫，該函式的參數，並攜帶一個 ID 來追蹤響應。這個類在 :ref:`Dictionary<class_Dictionary>` 之上實作了該標準；你必須用其他函式在 :ref:`Dictionary<class_Dictionary>` 和 :ref:`JSON<class_JSON>` 之間進行轉換。

.. rst-class:: classref-reftable-group

方法
----

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

列舉
----

.. _enum_JSONRPC_ErrorCode:

.. rst-class:: classref-enumeration

enum **ErrorCode**: :ref:`🔗<enum_JSONRPC_ErrorCode>`

.. _class_JSONRPC_constant_PARSE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorCode<enum_JSONRPC_ErrorCode>` **PARSE_ERROR** = ``-32700``

The request could not be parsed as it was not valid by JSON standard (:ref:`JSON.parse()<class_JSON_method_parse>` failed).

.. _class_JSONRPC_constant_INVALID_REQUEST:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorCode<enum_JSONRPC_ErrorCode>` **INVALID_REQUEST** = ``-32600``

A method call was requested but the request's format is not valid.

.. _class_JSONRPC_constant_METHOD_NOT_FOUND:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorCode<enum_JSONRPC_ErrorCode>` **METHOD_NOT_FOUND** = ``-32601``

請求了方法呼叫，但 JSONRPC 子類別中不存在該名稱的函式。

.. _class_JSONRPC_constant_INVALID_PARAMS:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorCode<enum_JSONRPC_ErrorCode>` **INVALID_PARAMS** = ``-32602``

A method call was requested but the given method parameters are not valid. Not used by the built-in JSONRPC.

.. _class_JSONRPC_constant_INTERNAL_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorCode<enum_JSONRPC_ErrorCode>` **INTERNAL_ERROR** = ``-32603``

An internal error occurred while processing the request. Not used by the built-in JSONRPC.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_JSONRPC_method_make_notification:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **make_notification**\ (\ method\: :ref:`String<class_String>`, params\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_JSONRPC_method_make_notification>`

返回 JSON-RPC 通知形式的字典。通知是一次性的資訊，不需要有回應。

- ``method``\ ：被呼叫的方法的名稱。

- ``params``\ ：傳遞給該被呼叫的方法的參數的陣列或字典。

.. rst-class:: classref-item-separator

----

.. _class_JSONRPC_method_make_request:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **make_request**\ (\ method\: :ref:`String<class_String>`, params\: :ref:`Variant<class_Variant>`, id\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_JSONRPC_method_make_request>`

以 JSON-RPC 請求的形式返回字典。請求被發送到伺服器並期望得到回應。ID 欄位用於伺服器指定它正在回應的確切請求。

- ``method``\ ：被呼叫的方法的名稱。

- ``params``\ ：傳遞給該被呼叫的方法的參數的陣列或字典。

- ``id``\ ：唯一標識該請求。伺服器應發送具有相同 ID 的回應。

.. rst-class:: classref-item-separator

----

.. _class_JSONRPC_method_make_response:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **make_response**\ (\ result\: :ref:`Variant<class_Variant>`, id\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_JSONRPC_method_make_response>`

當伺服器接收並處理了請求時，它應該發送回應。如果不想要回應，則需要發送通知。

- ``result``\ ：被呼叫的函式的返回值。

- ``id``\ ：該回應針對的請求的 ID。

.. rst-class:: classref-item-separator

----

.. _class_JSONRPC_method_make_response_error:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **make_response_error**\ (\ code\: :ref:`int<class_int>`, message\: :ref:`String<class_String>`, id\: :ref:`Variant<class_Variant>` = null\ ) |const| :ref:`🔗<class_JSONRPC_method_make_response_error>`

建立回應，指示先前的回復以某種方式失敗。

- ``code``\ ：這是哪種錯誤對應的錯誤程式碼。請參閱 :ref:`ErrorCode<enum_JSONRPC_ErrorCode>` 常數。

- ``message``\ ：關於該錯誤的自訂消息。

- ``id``\ ：該錯誤作為回應對應的請求。

.. rst-class:: classref-item-separator

----

.. _class_JSONRPC_method_process_action:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **process_action**\ (\ action\: :ref:`Variant<class_Variant>`, recurse\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_JSONRPC_method_process_action>`

給定採用 JSON-RPC 請求形式的字典：解壓請求並運作它。通過查看名為“method”的字段，並在 JSONRPC 物件中搜尋等效命名的函式來解析方法。如果找到，則呼叫該方法。

要新增新的受支援方法，請擴充 JSONRPC 類並在你的子類別上呼叫 :ref:`process_action()<class_JSONRPC_method_process_action>`\ 。

\ ``action``\ ：要運作的動作，作為 JSON-RPC 請求或通知形式的字典。

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

Registers a callback for the given method name.

- ``name``: The name that clients can use to access the callback.

- ``callback``: The callback which will handle the specified method.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
