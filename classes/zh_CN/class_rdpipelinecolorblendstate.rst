:github_url: hide

.. _class_RDPipelineColorBlendState:

RDPipelineColorBlendState
=========================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

管线颜色混合状态（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

描述
----

这个对象由 :ref:`RenderingDevice<class_RenderingDevice>` 使用。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +--------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`Array<class_Array>`\[:ref:`RDPipelineColorBlendStateAttachment<class_RDPipelineColorBlendStateAttachment>`\] | :ref:`attachments<class_RDPipelineColorBlendState_property_attachments>`         | ``[]``                |
   +--------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                                                                                          | :ref:`blend_constant<class_RDPipelineColorBlendState_property_blend_constant>`   | ``Color(0, 0, 0, 1)`` |
   +--------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                                                                            | :ref:`enable_logic_op<class_RDPipelineColorBlendState_property_enable_logic_op>` | ``false``             |
   +--------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`LogicOperation<enum_RenderingDevice_LogicOperation>`                                                         | :ref:`logic_op<class_RDPipelineColorBlendState_property_logic_op>`               | ``0``                 |
   +--------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_RDPipelineColorBlendState_property_attachments:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RDPipelineColorBlendStateAttachment<class_RDPipelineColorBlendStateAttachment>`\] **attachments** = ``[]`` :ref:`🔗<class_RDPipelineColorBlendState_property_attachments>`

.. rst-class:: classref-property-setget

- |void| **set_attachments**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RDPipelineColorBlendStateAttachment<class_RDPipelineColorBlendStateAttachment>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RDPipelineColorBlendStateAttachment<class_RDPipelineColorBlendStateAttachment>`\] **get_attachments**\ (\ )

要混合的附件。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendState_property_blend_constant:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **blend_constant** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_RDPipelineColorBlendState_property_blend_constant>`

.. rst-class:: classref-property-setget

- |void| **set_blend_constant**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_blend_constant**\ (\ )

要进行混合的颜色常量。另见 :ref:`RenderingDevice.draw_list_set_blend_constants()<class_RenderingDevice_method_draw_list_set_blend_constants>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendState_property_enable_logic_op:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_logic_op** = ``false`` :ref:`🔗<class_RDPipelineColorBlendState_property_enable_logic_op>`

.. rst-class:: classref-property-setget

- |void| **set_enable_logic_op**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_logic_op**\ (\ )

如果为 ``true``\ ，则执行 :ref:`logic_op<class_RDPipelineColorBlendState_property_logic_op>` 中定义的逻辑运算。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendState_property_logic_op:

.. rst-class:: classref-property

:ref:`LogicOperation<enum_RenderingDevice_LogicOperation>` **logic_op** = ``0`` :ref:`🔗<class_RDPipelineColorBlendState_property_logic_op>`

.. rst-class:: classref-property-setget

- |void| **set_logic_op**\ (\ value\: :ref:`LogicOperation<enum_RenderingDevice_LogicOperation>`\ )
- :ref:`LogicOperation<enum_RenderingDevice_LogicOperation>` **get_logic_op**\ (\ )

混合时执行的逻辑运算。仅在 :ref:`enable_logic_op<class_RDPipelineColorBlendState_property_enable_logic_op>` 为 ``true`` 时有效。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
