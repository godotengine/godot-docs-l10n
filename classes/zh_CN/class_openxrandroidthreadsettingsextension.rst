:github_url: hide

.. _class_OpenXRAndroidThreadSettingsExtension:

OpenXRAndroidThreadSettingsExtension
====================================

**继承：** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

封装了 `XR_KHR_android_thread_settings <https://registry.khronos.org/OpenXR/specs/1.1/html/xrspec.html#XR_KHR_android_thread_settings>`__ 扩展。

.. rst-class:: classref-introduction-group

描述
----

为了让扩展现实（XR）体验更加舒适，应用程序必须快速且稳定地渲染画面。为了确保重要的应用程序线程能够获得足够的运行时间，必须将这些线程告知系统，系统会相应地调整它们的调度优先级。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`set_application_thread_type<class_OpenXRAndroidThreadSettingsExtension_method_set_application_thread_type>`\ (\ thread_type\: :ref:`ThreadType<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>`, thread_id\: :ref:`int<class_int>` = 0\ ) |
   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_OpenXRAndroidThreadSettingsExtension_ThreadType:

.. rst-class:: classref-enumeration

enum **ThreadType**: :ref:`🔗<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>`

.. _class_OpenXRAndroidThreadSettingsExtension_constant_THREAD_TYPE_APPLICATION_MAIN:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadType<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>` **THREAD_TYPE_APPLICATION_MAIN** = ``0``

给 XR 运行时的提示，表明该线程正在执行时间敏感的 CPU 任务。

.. _class_OpenXRAndroidThreadSettingsExtension_constant_THREAD_TYPE_APPLICATION_WORKER:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadType<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>` **THREAD_TYPE_APPLICATION_WORKER** = ``1``

给 XR 运行时的提示，表明该线程正在执行后台 CPU 任务。

.. _class_OpenXRAndroidThreadSettingsExtension_constant_THREAD_TYPE_RENDERER_MAIN:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadType<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>` **THREAD_TYPE_RENDERER_MAIN** = ``2``

给 XR 运行时的提示，表明该线程正在执行时间敏感的图形设备任务。

.. _class_OpenXRAndroidThreadSettingsExtension_constant_THREAD_TYPE_RENDERER_WORKER:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadType<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>` **THREAD_TYPE_RENDERER_WORKER** = ``3``

给 XR 运行时的提示，表明该线程正在执行后台图形设备任务。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OpenXRAndroidThreadSettingsExtension_method_set_application_thread_type:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **set_application_thread_type**\ (\ thread_type\: :ref:`ThreadType<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>`, thread_id\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_OpenXRAndroidThreadSettingsExtension_method_set_application_thread_type>`

设置给定线程的线程类型，以便 XR 运行时可以相应地调整其调度优先级。

\ ``thread_id`` 指的是操作系统线程 ID（例如，来自 ``gettid()``\ ）。当 ``thread_id`` 为 ``0`` 时，它将设置当前线程的线程类型。

\ **注意：**\ :ref:`Thread.get_id()<class_Thread_method_get_id>` 返回的 ID 与 ``thread_id`` 不兼容。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
