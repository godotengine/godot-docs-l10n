:github_url: hide

.. _class_OpenXRAndroidThreadSettingsExtension:

OpenXRAndroidThreadSettingsExtension
====================================

**繼承：** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

Wraps the `XR_KHR_android_thread_settings <https://registry.khronos.org/OpenXR/specs/1.1/html/xrspec.html#XR_KHR_android_thread_settings>`__ extension.

.. rst-class:: classref-introduction-group

說明
----

For XR to be comfortable, it is important for applications to deliver frames quickly and consistently. In order to make sure the important application threads get their full share of time, these threads must be identified to the system, which will adjust their scheduling priority accordingly.

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

列舉
----

.. _enum_OpenXRAndroidThreadSettingsExtension_ThreadType:

.. rst-class:: classref-enumeration

enum **ThreadType**: :ref:`🔗<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>`

.. _class_OpenXRAndroidThreadSettingsExtension_constant_THREAD_TYPE_APPLICATION_MAIN:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadType<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>` **THREAD_TYPE_APPLICATION_MAIN** = ``0``

Hints to the XR runtime that the thread is doing time critical CPU tasks.

.. _class_OpenXRAndroidThreadSettingsExtension_constant_THREAD_TYPE_APPLICATION_WORKER:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadType<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>` **THREAD_TYPE_APPLICATION_WORKER** = ``1``

Hints to the XR runtime that the thread is doing background CPU tasks.

.. _class_OpenXRAndroidThreadSettingsExtension_constant_THREAD_TYPE_RENDERER_MAIN:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadType<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>` **THREAD_TYPE_RENDERER_MAIN** = ``2``

Hints to the XR runtime that the thread is doing time critical graphics device tasks.

.. _class_OpenXRAndroidThreadSettingsExtension_constant_THREAD_TYPE_RENDERER_WORKER:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadType<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>` **THREAD_TYPE_RENDERER_WORKER** = ``3``

Hints to the XR runtime that the thread is doing background graphics device tasks.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_OpenXRAndroidThreadSettingsExtension_method_set_application_thread_type:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **set_application_thread_type**\ (\ thread_type\: :ref:`ThreadType<enum_OpenXRAndroidThreadSettingsExtension_ThreadType>`, thread_id\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_OpenXRAndroidThreadSettingsExtension_method_set_application_thread_type>`

Sets the thread type of the given thread, so that the XR runtime can adjust its scheduling priority accordingly.

\ ``thread_id`` refers to the OS thread id (ie from ``gettid()``). When ``thread_id`` is ``0``, it will set the thread type of the current thread.

\ **NOTE:** The id returned by :ref:`Thread.get_id()<class_Thread_method_get_id>` is incompatible with ``thread_id``.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
