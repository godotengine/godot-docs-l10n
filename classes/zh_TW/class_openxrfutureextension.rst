:github_url: hide

.. _class_OpenXRFutureExtension:

OpenXRFutureExtension
=====================

**繼承：** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

The OpenXR Future extension allows for asynchronous APIs to be used.

.. rst-class:: classref-introduction-group

說明
----

This is a support extension in OpenXR that allows other OpenXR extensions to start asynchronous functions and get a callback after this function finishes. It is not intended for consumption within GDScript but can be accessed from GDExtension.

.. rst-class:: classref-reftable-group

方法
----

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

方法說明
--------

.. _class_OpenXRFutureExtension_method_cancel_future:

.. rst-class:: classref-method

|void| **cancel_future**\ (\ future\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRFutureExtension_method_cancel_future>`

Cancels an in-progress future. ``future`` must be an ``XrFutureEXT`` value previously returned by an API that started an asynchronous function.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFutureExtension_method_is_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_active**\ (\ ) |const| :ref:`🔗<class_OpenXRFutureExtension_method_is_active>`

Returns ``true`` if futures are available in the OpenXR runtime used. This function will only return a usable result after OpenXR has been initialized.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFutureExtension_method_register_future:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **register_future**\ (\ future\: :ref:`int<class_int>`, on_success\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRFutureExtension_method_register_future>`

Register an OpenXR Future object so we monitor for completion. ``future`` must be an ``XrFutureEXT`` value previously returned by an API that started an asynchronous function.

You can optionally specify ``on_success``, it will be invoked on successful completion of the future.

Or you can use the returned :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` object to ``await`` its :ref:`OpenXRFutureResult.completed<class_OpenXRFutureResult_signal_completed>` signal.

::

    var future_result = OpenXRFutureExtension.register_future(future)
    await future_result.completed
    if future_result.get_status() == OpenXRFutureResult.RESULT_FINISHED:
        # Handle your success
        pass

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
