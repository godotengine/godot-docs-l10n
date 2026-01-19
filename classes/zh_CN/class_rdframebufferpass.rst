:github_url: hide

.. _class_RDFramebufferPass:

RDFramebufferPass
=================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

帧缓冲区阶段的附件描述（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

描述
----

该类包含帧缓冲区通道的附件描述列表。每个点都有一个指向先前提供的纹理附件列表的索引。

多通道帧缓冲区，可以优化移动设备中的某些配置；在桌面设备上，它们几乎没有优势。

这个对象由 :ref:`RenderingDevice<class_RenderingDevice>` 使用。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`color_attachments<class_RDFramebufferPass_property_color_attachments>`       | ``PackedInt32Array()`` |
   +-------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`int<class_int>`                           | :ref:`depth_attachment<class_RDFramebufferPass_property_depth_attachment>`         | ``-1``                 |
   +-------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`input_attachments<class_RDFramebufferPass_property_input_attachments>`       | ``PackedInt32Array()`` |
   +-------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`preserve_attachments<class_RDFramebufferPass_property_preserve_attachments>` | ``PackedInt32Array()`` |
   +-------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`resolve_attachments<class_RDFramebufferPass_property_resolve_attachments>`   | ``PackedInt32Array()`` |
   +-------------------------------------------------+------------------------------------------------------------------------------------+------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常量
----

.. _class_RDFramebufferPass_constant_ATTACHMENT_UNUSED:

.. rst-class:: classref-constant

**ATTACHMENT_UNUSED** = ``-1`` :ref:`🔗<class_RDFramebufferPass_constant_ATTACHMENT_UNUSED>`

附件未使用。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_RDFramebufferPass_property_color_attachments:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **color_attachments** = ``PackedInt32Array()`` :ref:`🔗<class_RDFramebufferPass_property_color_attachments>`

.. rst-class:: classref-property-setget

- |void| **set_color_attachments**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_color_attachments**\ (\ )

从 0 开始按顺序为附件着色。如果该附件未被着色器使用，则传递 ATTACHMENT_UNUSED 以跳过。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDFramebufferPass_property_depth_attachment:

.. rst-class:: classref-property

:ref:`int<class_int>` **depth_attachment** = ``-1`` :ref:`🔗<class_RDFramebufferPass_property_depth_attachment>`

.. rst-class:: classref-property-setget

- |void| **set_depth_attachment**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_depth_attachment**\ (\ )

深度附件。如果该通道不需要深度缓冲区，则应使用 ATTACHMENT_UNUSED。

.. rst-class:: classref-item-separator

----

.. _class_RDFramebufferPass_property_input_attachments:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **input_attachments** = ``PackedInt32Array()`` :ref:`🔗<class_RDFramebufferPass_property_input_attachments>`

.. rst-class:: classref-property-setget

- |void| **set_input_attachments**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_input_attachments**\ (\ )

用于多通道帧缓冲区（不止一个渲染通道）。将一个附件转换为一个输入。确保还在 :ref:`RDUniform<class_RDUniform>` 中为 uniform 集正确提供它。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDFramebufferPass_property_preserve_attachments:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **preserve_attachments** = ``PackedInt32Array()`` :ref:`🔗<class_RDFramebufferPass_property_preserve_attachments>`

.. rst-class:: classref-property-setget

- |void| **set_preserve_attachments**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_preserve_attachments**\ (\ )

要在该阶段中保留的附件（否则它们将被删除）。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDFramebufferPass_property_resolve_attachments:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **resolve_attachments** = ``PackedInt32Array()`` :ref:`🔗<class_RDFramebufferPass_property_resolve_attachments>`

.. rst-class:: classref-property-setget

- |void| **set_resolve_attachments**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_resolve_attachments**\ (\ )

如果颜色附件是多重采样的，则可以提供非多重采样的解析附件。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
