:github_url: hide

.. _class_WeakRef:

WeakRef
=======

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

存放 :ref:`Object<class_Object>`\ 。如果该对象为 :ref:`RefCounted<class_RefCounted>`\ ，则不会影响其引用计数。

.. rst-class:: classref-introduction-group

描述
----

弱引用可以存放 :ref:`RefCounted<class_RefCounted>`\ ，但不会影响其引用计数。可以使用 :ref:`@GlobalScope.weakref()<class_@GlobalScope_method_weakref>` 创建 :ref:`Object<class_Object>` 的弱引用。如果该对象不是引用，弱引用仍然有效，只是对这个对象没有任何影响。弱引用在多个类的变量相互引用的情况下很有用。如果没有弱引用，使用这些类可能会导致内存泄漏，因为这两个引用会阻止彼此被释放。将部分变量设置为弱引用可以防止这种循环依赖，让引用能够被释放。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_ref<class_WeakRef_method_get_ref>`\ (\ ) |const| |
   +-------------------------------+------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_WeakRef_method_get_ref:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_ref**\ (\ ) |const| :ref:`🔗<class_WeakRef_method_get_ref>`

返回这个弱引用所引用的 :ref:`Object<class_Object>`\ 。如果该对象不复存在，则返回 ``null``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
