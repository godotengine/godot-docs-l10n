:github_url: hide

.. _class_JavaScriptBridge:

JavaScriptBridge
================

**继承：** :ref:`Object<class_Object>`

单例，在 Web 导出中将引擎与浏览器的 JavaScript 上下文连接。

.. rst-class:: classref-introduction-group

描述
----

JavaScriptBridge 单例仅在 Web 导出中实现。它用于访问浏览器的 JavaScript 上下文。这允许与嵌入页面或调用第三方 JavaScript API 进行交互。

\ **注意：**\ 可以在构建时禁用该单例以提高安全性。默认情况下，启用 JavaScriptBridge 单例。官方导出模板也启用了 JavaScriptBridge 单例。有关详细信息，请参阅文档中的\ :doc:`《为 Web 平台编译》 <../engine_details/development/compiling/compiling_for_web>`\ 。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`JavaScriptBridge 单例 <../tutorials/platform/web/javascript_bridge>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JavaScriptObject<class_JavaScriptObject>` | :ref:`create_callback<class_JavaScriptBridge_method_create_callback>`\ (\ callable\: :ref:`Callable<class_Callable>`\ )                                                                                                                  |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                   | :ref:`create_object<class_JavaScriptBridge_method_create_object>`\ (\ object\: :ref:`String<class_String>`, ...\ ) |vararg|                                                                                                              |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`download_buffer<class_JavaScriptBridge_method_download_buffer>`\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`, name\: :ref:`String<class_String>`, mime\: :ref:`String<class_String>` = "application/octet-stream"\ ) |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                   | :ref:`eval<class_JavaScriptBridge_method_eval>`\ (\ code\: :ref:`String<class_String>`, use_global_execution_context\: :ref:`bool<class_bool>` = false\ )                                                                                |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`force_fs_sync<class_JavaScriptBridge_method_force_fs_sync>`\ (\ )                                                                                                                                                                  |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JavaScriptObject<class_JavaScriptObject>` | :ref:`get_interface<class_JavaScriptBridge_method_get_interface>`\ (\ interface\: :ref:`String<class_String>`\ )                                                                                                                         |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_js_buffer<class_JavaScriptBridge_method_is_js_buffer>`\ (\ javascript_object\: :ref:`JavaScriptObject<class_JavaScriptObject>`\ )                                                                                               |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`   | :ref:`js_buffer_to_packed_byte_array<class_JavaScriptBridge_method_js_buffer_to_packed_byte_array>`\ (\ javascript_buffer\: :ref:`JavaScriptObject<class_JavaScriptObject>`\ )                                                           |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`pwa_needs_update<class_JavaScriptBridge_method_pwa_needs_update>`\ (\ ) |const|                                                                                                                                                    |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`pwa_update<class_JavaScriptBridge_method_pwa_update>`\ (\ )                                                                                                                                                                        |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_JavaScriptBridge_signal_pwa_update_available:

.. rst-class:: classref-signal

**pwa_update_available**\ (\ ) :ref:`🔗<class_JavaScriptBridge_signal_pwa_update_available>`

在检测到该渐进式网络应用程序的更新，但因为存在活动的较早版本而等待激活时触发。要强制立即执行更新，请参阅 :ref:`pwa_update()<class_JavaScriptBridge_method_pwa_update>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_JavaScriptBridge_method_create_callback:

.. rst-class:: classref-method

:ref:`JavaScriptObject<class_JavaScriptObject>` **create_callback**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_JavaScriptBridge_method_create_callback>`

创建一个对 :ref:`Callable<class_Callable>` 的引用，JavaScript 可以用它作为回调。回调前必须保持引用，否则无法调用。用法见 :ref:`JavaScriptObject<class_JavaScriptObject>`\ 。

\ **注意：**\ 回调函数必须只能接受单一 :ref:`Array<class_Array>` 参数，是转换成数组后的 JavaScript `参数对象 <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/arguments>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_create_object:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **create_object**\ (\ object\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_JavaScriptBridge_method_create_object>`

使用 ``new`` 构造函数创建一个新的 JavaScript 对象。\ ``object`` 必须是 JavaScript ``window`` 的有效属性。有关用法，请参阅 :ref:`JavaScriptObject<class_JavaScriptObject>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_download_buffer:

.. rst-class:: classref-method

|void| **download_buffer**\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`, name\: :ref:`String<class_String>`, mime\: :ref:`String<class_String>` = "application/octet-stream"\ ) :ref:`🔗<class_JavaScriptBridge_method_download_buffer>`

提示用户下载一个包含指定 ``buffer`` 的文件。该文件将具有给定的 ``name`` 和 ``mime`` 类型。

\ **注意：**\ 浏览器可能会覆盖根据文件 ``name`` 的扩展名提供的 `MIME 类型 <https://en.wikipedia.org/wiki/Media_type>`__\ 。

\ **注意：**\ 如果 :ref:`download_buffer()<class_JavaScriptBridge_method_download_buffer>` 不是从用户交互（例如按钮点击）中调用的，浏览器可能会阻止下载。

\ **注意：**\ 如果快速连续发出多个下载请求，浏览器可能会要求用户同意或阻止下载。

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_eval:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **eval**\ (\ code\: :ref:`String<class_String>`, use_global_execution_context\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_JavaScriptBridge_method_eval>`

在浏览器窗口中将字符串 ``code`` 作为 JavaScript 代码执行。这是对实际的全局 JavaScript 函数 ``eval()`` 的调用。

如果 ``use_global_execution_context`` 为 ``true``\ ，则代码将在全局执行上下文中被求值。否则，它将在引擎运行时环境中的函数的执行上下文中进行求值。

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_force_fs_sync:

.. rst-class:: classref-method

|void| **force_fs_sync**\ (\ ) :ref:`🔗<class_JavaScriptBridge_method_force_fs_sync>`

强制同步持久化文件系统（当启用时）。

\ **注意：**\ 这仅对不能使用 :ref:`FileAccess<class_FileAccess>` 写入文件的模块或扩展有用。

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_get_interface:

.. rst-class:: classref-method

:ref:`JavaScriptObject<class_JavaScriptObject>` **get_interface**\ (\ interface\: :ref:`String<class_String>`\ ) :ref:`🔗<class_JavaScriptBridge_method_get_interface>`

返回一个可以被脚本使用的 JavaScript 对象的接口。\ ``interface`` 必须是 JavaScript ``window`` 的有效属性。回调必须接受单个 :ref:`Array<class_Array>` 参数，它将包含 JavaScript ``arguments``\ 。有关用法，请参阅 :ref:`JavaScriptObject<class_JavaScriptObject>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_is_js_buffer:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_js_buffer**\ (\ javascript_object\: :ref:`JavaScriptObject<class_JavaScriptObject>`\ ) :ref:`🔗<class_JavaScriptBridge_method_is_js_buffer>`

如果给定的 ``javascript_object`` 是 `ArrayBuffer <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer>`__\ 、\ `DataView <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView>`__ 或任意一种 `typed array objects <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray>`__\ ，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_js_buffer_to_packed_byte_array:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **js_buffer_to_packed_byte_array**\ (\ javascript_buffer\: :ref:`JavaScriptObject<class_JavaScriptObject>`\ ) :ref:`🔗<class_JavaScriptBridge_method_js_buffer_to_packed_byte_array>`

以 :ref:`PackedByteArray<class_PackedByteArray>` 的形式返回 ``javascript_buffer`` 中内容的副本。另见 :ref:`is_js_buffer()<class_JavaScriptBridge_method_is_js_buffer>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_pwa_needs_update:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **pwa_needs_update**\ (\ ) |const| :ref:`🔗<class_JavaScriptBridge_method_pwa_needs_update>`

如果该渐进式网络应用程序有新版本等待激活，则返回 ``true``\ 。

\ **注意：**\ 只在导出为渐进式网络应用程序（Progressive Web App）时相关。

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_pwa_update:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **pwa_update**\ (\ ) :ref:`🔗<class_JavaScriptBridge_method_pwa_update>`

执行该渐进式网络应用程序的在线更新。强制安装新版本并重新载入该页面。

\ **注意：**\ 你的应用程序将\ **在所有浏览器标签页中重新载入**\ 。

\ **注意：**\ 只在导出为渐进式网络应用程序（Progressive Web App）且 :ref:`pwa_needs_update()<class_JavaScriptBridge_method_pwa_needs_update>` 返回 ``true`` 时相关。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
