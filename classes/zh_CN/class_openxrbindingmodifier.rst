:github_url: hide

.. _class_OpenXRBindingModifier:

OpenXRBindingModifier
=====================

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`OpenXRActionBindingModifier<class_OpenXRActionBindingModifier>`, :ref:`OpenXRIPBindingModifier<class_OpenXRIPBindingModifier>`

绑定修改器基类。

.. rst-class:: classref-introduction-group

描述
----

绑定修改器基类。子类会实现各种修改器，改变 OpenXR 运行时对输入的处理方式。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`_get_description<class_OpenXRBindingModifier_private_method__get_description>`\ (\ ) |virtual| |required| |const| |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`_get_ip_modification<class_OpenXRBindingModifier_private_method__get_ip_modification>`\ (\ ) |virtual| |required| |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OpenXRBindingModifier_private_method__get_description:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_description**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_OpenXRBindingModifier_private_method__get_description>`

返回该类的描述，会显示在绑定修改器编辑器的标题栏。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRBindingModifier_private_method__get_ip_modification:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **_get_ip_modification**\ (\ ) |virtual| |required| :ref:`🔗<class_OpenXRBindingModifier_private_method__get_ip_modification>`

返回在提交该修改器所涉及的交互绑定时发送给 OpenXR 的数据。

\ **注意：**\ 这必须是与 ``XrBindingModificationBaseHeaderKHR`` 结构兼容的数据。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
