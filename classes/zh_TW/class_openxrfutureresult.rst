:github_url: hide

.. _class_OpenXRFutureResult:

OpenXRFutureResult
==================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Result object tracking the asynchronous result of an OpenXR Future object.

.. rst-class:: classref-introduction-group

說明
----

Result object tracking the asynchronous result of an OpenXR Future object, you can use this object to track the result status.

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

Emitted when the asynchronous function is finished or has been cancelled.

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

The asynchronous function is running.

.. _class_OpenXRFutureResult_constant_RESULT_FINISHED:

.. rst-class:: classref-enumeration-constant

:ref:`ResultStatus<enum_OpenXRFutureResult_ResultStatus>` **RESULT_FINISHED** = ``1``

The asynchronous function has finished.

.. _class_OpenXRFutureResult_constant_RESULT_CANCELLED:

.. rst-class:: classref-enumeration-constant

:ref:`ResultStatus<enum_OpenXRFutureResult_ResultStatus>` **RESULT_CANCELLED** = ``2``

The asynchronous function has been cancelled.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_OpenXRFutureResult_method_cancel_future:

.. rst-class:: classref-method

|void| **cancel_future**\ (\ ) :ref:`🔗<class_OpenXRFutureResult_method_cancel_future>`

Cancel this future, this will interrupt and stop the asynchronous function.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFutureResult_method_get_future:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_future**\ (\ ) |const| :ref:`🔗<class_OpenXRFutureResult_method_get_future>`

Return the ``XrFutureEXT`` value this result relates to.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFutureResult_method_get_result_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_result_value**\ (\ ) |const| :ref:`🔗<class_OpenXRFutureResult_method_get_result_value>`

Returns the result value of our asynchronous function (if set by the extension). The type of this result value depends on the function being called. Consult the documentation of the relevant function.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFutureResult_method_get_status:

.. rst-class:: classref-method

:ref:`ResultStatus<enum_OpenXRFutureResult_ResultStatus>` **get_status**\ (\ ) |const| :ref:`🔗<class_OpenXRFutureResult_method_get_status>`

Returns the status of this result.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFutureResult_method_set_result_value:

.. rst-class:: classref-method

|void| **set_result_value**\ (\ result_value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_OpenXRFutureResult_method_set_result_value>`

Stores the result value we expose to the user.

\ **Note:** This method should only be called by an OpenXR extension that implements an asynchronous function.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
