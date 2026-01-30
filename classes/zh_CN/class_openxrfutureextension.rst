:github_url: hide

.. _class_OpenXRFutureExtension:

OpenXRFutureExtension
=====================

**继承：** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

OpenXR Future 扩展，允许使用异步 API。

.. rst-class:: classref-introduction-group

描述
----

这是 OpenXR 中支持的扩展，能够让其他 OpenXR 扩展启动异步函数，在函数完成后获取回调。不应在 GDScript 中使用，但可以在 GDExtension 中访问。

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

方法说明
--------

.. _class_OpenXRFutureExtension_method_cancel_future:

.. rst-class:: classref-method

|void| **cancel_future**\ (\ future\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRFutureExtension_method_cancel_future>`

取消正在进行中的 future。\ ``future`` 必须是此前启动异步函数 API 所返回的 ``XrFutureEXT`` 值。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFutureExtension_method_is_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_active**\ (\ ) |const| :ref:`🔗<class_OpenXRFutureExtension_method_is_active>`

如果 future 在所使用的 OpenXR 运行时中可用，则返回 ``true``\ 。该函数仅在 OpenXR 已被初始化后返回有效值。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFutureExtension_method_register_future:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **register_future**\ (\ future\: :ref:`int<class_int>`, on_success\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRFutureExtension_method_register_future>`

注册 OpenXR Future 对象，用于监视完成情况。\ ``future`` 必须是此前启动异步函数 API 所返回的 ``XrFutureEXT`` 值。

你还可以指定 ``on_success``\ ，会在 future 成功完成时调用。

你也可以用返回的 :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` 对象来 ``await`` 它的 :ref:`OpenXRFutureResult.completed<class_OpenXRFutureResult_signal_completed>` 信号。

::

    var future_result = OpenXRFutureExtension.register_future(future)
    await future_result.completed
    if future_result.get_status() == OpenXRFutureResult.RESULT_FINISHED:
        # 处理成功的情况
        pass

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
