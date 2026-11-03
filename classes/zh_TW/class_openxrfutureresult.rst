:github_url: hide

.. _class_OpenXRFutureResult:

OpenXRFutureResult
==================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

結果物件，用於追蹤 OpenXR Future 物件的非同步結果。

.. rst-class:: classref-introduction-group

說明
----

結果物件，用於追蹤 OpenXR Future 物件的非同步結果，你可以用這個物件來追蹤結果的狀態。

.. rst-class:: classref-reftable-group

方法
----

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

訊號
----

.. _class_OpenXRFutureResult_signal_completed:

.. rst-class:: classref-signal

**completed**\ (\ result\: :ref:`OpenXRFutureResult<class_OpenXRFutureResult>`\ ) :ref:`🔗<class_OpenXRFutureResult_signal_completed>`

當非同步函式完成或取消時發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_OpenXRFutureResult_ResultStatus:

.. rst-class:: classref-enumeration

enum **ResultStatus**: :ref:`🔗<enum_OpenXRFutureResult_ResultStatus>`

.. _class_OpenXRFutureResult_constant_RESULT_RUNNING:

.. rst-class:: classref-enumeration-constant

:ref:`ResultStatus<enum_OpenXRFutureResult_ResultStatus>` **RESULT_RUNNING** = ``0``

非同步函式正在執行。

.. _class_OpenXRFutureResult_constant_RESULT_FINISHED:

.. rst-class:: classref-enumeration-constant

:ref:`ResultStatus<enum_OpenXRFutureResult_ResultStatus>` **RESULT_FINISHED** = ``1``

非同步函式已完成。

.. _class_OpenXRFutureResult_constant_RESULT_CANCELLED:

.. rst-class:: classref-enumeration-constant

:ref:`ResultStatus<enum_OpenXRFutureResult_ResultStatus>` **RESULT_CANCELLED** = ``2``

非同步函式已取消。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_OpenXRFutureResult_method_cancel_future:

.. rst-class:: classref-method

|void| **cancel_future**\ (\ ) :ref:`🔗<class_OpenXRFutureResult_method_cancel_future>`

取消該 future 物件，會打斷並停止非同步函式。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFutureResult_method_get_future:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_future**\ (\ ) |const| :ref:`🔗<class_OpenXRFutureResult_method_get_future>`

回傳與該結果相關的 ``XrFutureEXT`` 值。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFutureResult_method_get_result_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_result_value**\ (\ ) |const| :ref:`🔗<class_OpenXRFutureResult_method_get_result_value>`

回傳非同步函式的結果值（如果由擴充設定）。結果值的型別取決於所呼叫的函式。請查閱相關函式的文件。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFutureResult_method_get_status:

.. rst-class:: classref-method

:ref:`ResultStatus<enum_OpenXRFutureResult_ResultStatus>` **get_status**\ (\ ) |const| :ref:`🔗<class_OpenXRFutureResult_method_get_status>`

回傳結果的狀態。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFutureResult_method_set_result_value:

.. rst-class:: classref-method

|void| **set_result_value**\ (\ result_value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_OpenXRFutureResult_method_set_result_value>`

儲存我們向使用者公開的結果值。

\ **注意：**\ 該方法僅應由實作非同步函式的 OpenXR 擴充呼叫。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
