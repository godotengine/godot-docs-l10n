:github_url: hide

.. _class_JNISingleton:

JNISingleton
============

**继承：** :ref:`Object<class_Object>`

将引擎与 Android 插件连接起来以与原生 Android 代码交互的单例。

.. rst-class:: classref-introduction-group

描述
----

JNISingleton 仅在 Android 导出中实现。它用于从用 Java 或 Kotlin 编写的 Android 插件调用方法、连接信号。方法和信号可以被调用并连接到 JNISingleton，就好像它是一个 Node 一样。有关更多信息，请参阅 `Java 本地接口 - 维基百科 <https://zh.wikipedia.org/zh-cn/Java%E6%9C%AC%E5%9C%B0%E6%8E%A5%E5%8F%A3>`__\ 。

.. rst-class:: classref-introduction-group

教程
----

- `创建 Android 插件 <../tutorials/platform/android/android_plugin.html#doc-android-plugin>`__

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`has_java_method<class_JNISingleton_method_has_java_method>`\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| |
   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_JNISingleton_method_has_java_method:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_java_method**\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_JNISingleton_method_has_java_method>`

Returns ``true`` if the given ``method`` name exists in the JNISingleton's Java methods.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
