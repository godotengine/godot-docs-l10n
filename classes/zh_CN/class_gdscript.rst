:github_url: hide

.. _class_GDScript:

GDScript
========

**继承：** :ref:`Script<class_Script>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用 GDScript 编程语言实现的脚本。

.. rst-class:: classref-introduction-group

描述
----

用 GDScript 编程语言实现的脚本，使用 ``.gd`` 扩展名保存。该脚本扩展了将其实例化的所有对象的功能。

调用 :ref:`new()<class_GDScript_method_new>` 会创建该脚本的全新实例。如果现有对象的类与该脚本的基类相匹配，那么 :ref:`Object.set_script()<class_Object_method_set_script>` 就能够扩展该对象。

如果你想要查看 GDScript 的内置函数，请移步 :ref:`@GDScript<class_@GDScript>`\ 。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`GDScript 文档索引 <../tutorials/scripting/gdscript/index>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`new<class_GDScript_method_new>`\ (\ ...\ ) |vararg| |
   +-------------------------------+-----------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_GDScript_method_new:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **new**\ (\ ...\ ) |vararg| :ref:`🔗<class_GDScript_method_new>`

返回该脚本的一个新实例化对象。

::

    var MyClass = load("myclass.gd")
    var instance = MyClass.new()
    assert(instance.get_script() == MyClass) # 输出 true

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
