:github_url: hide

.. _class_JavaClass:

JavaClass
=========

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表来自 Java 原生接口的类。

.. rst-class:: classref-introduction-group

描述
----

代表 Java 原生接口中的类，由 :ref:`JavaClassWrapper.wrap()<class_JavaClassWrapper_method_wrap>` 返回。

\ **注意：**\ 该类仅适用于 Android。该类在其他平台上不执行任何操作。

\ **注意：**\ 请勿与 :ref:`JavaScriptObject<class_JavaScriptObject>` 混淆。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`get_java_class_name<class_JavaClass_method_get_java_class_name>`\ (\ ) |const|                                       |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_java_method_list<class_JavaClass_method_get_java_method_list>`\ (\ ) |const|                                     |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JavaClass<class_JavaClass>`                                | :ref:`get_java_parent_class<class_JavaClass_method_get_java_parent_class>`\ (\ ) |const|                                   |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_java_method<class_JavaClass_method_has_java_method>`\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_JavaClass_method_get_java_class_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_java_class_name**\ (\ ) |const| :ref:`🔗<class_JavaClass_method_get_java_class_name>`

返回 Java 类名。

.. rst-class:: classref-item-separator

----

.. _class_JavaClass_method_get_java_method_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_java_method_list**\ (\ ) |const| :ref:`🔗<class_JavaClass_method_get_java_method_list>`

返回该对象的 Java 方法及签名，类型为元素为字典的数组，格式与 :ref:`Object.get_method_list()<class_Object_method_get_method_list>` 相同。

.. rst-class:: classref-item-separator

----

.. _class_JavaClass_method_get_java_parent_class:

.. rst-class:: classref-method

:ref:`JavaClass<class_JavaClass>` **get_java_parent_class**\ (\ ) |const| :ref:`🔗<class_JavaClass_method_get_java_parent_class>`

返回代表该类的 Java 父类的 **JavaClass**\ 。

.. rst-class:: classref-item-separator

----

.. _class_JavaClass_method_has_java_method:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_java_method**\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_JavaClass_method_has_java_method>`

如果给定的 ``method`` 名存在于对象的 Java 方法中，则返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
