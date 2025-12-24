:github_url: hide

.. _class_RDPipelineColorBlendStateAttachment:

RDPipelineColorBlendStateAttachment
===================================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

管线颜色混合状态附件（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

描述
----

控制使用 :ref:`RenderingDevice<class_RenderingDevice>` 时如何在来源和目标片段之间进行混合。

以下是常见面向用户的混合模式在 Godot 的 2D 渲染器中的实现方法，仅供参考：

\ **混合：**\ 

::

    var attachment = RDPipelineColorBlendStateAttachment.new()
    attachment.enable_blend = true
    attachment.color_blend_op = RenderingDevice.BLEND_OP_ADD
    attachment.src_color_blend_factor = RenderingDevice.BLEND_FACTOR_SRC_ALPHA
    attachment.dst_color_blend_factor = RenderingDevice.BLEND_FACTOR_ONE_MINUS_SRC_ALPHA
    attachment.alpha_blend_op = RenderingDevice.BLEND_OP_ADD
    attachment.src_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_ONE
    attachment.dst_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_ONE_MINUS_SRC_ALPHA

\ **加：**\ 

::

    var attachment = RDPipelineColorBlendStateAttachment.new()
    attachment.enable_blend = true
    attachment.alpha_blend_op = RenderingDevice.BLEND_OP_ADD
    attachment.color_blend_op = RenderingDevice.BLEND_OP_ADD
    attachment.src_color_blend_factor = RenderingDevice.BLEND_FACTOR_SRC_ALPHA
    attachment.dst_color_blend_factor = RenderingDevice.BLEND_FACTOR_ONE
    attachment.src_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_SRC_ALPHA
    attachment.dst_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_ONE

\ **减：**\ 

::

    var attachment = RDPipelineColorBlendStateAttachment.new()
    attachment.enable_blend = true
    attachment.alpha_blend_op = RenderingDevice.BLEND_OP_REVERSE_SUBTRACT
    attachment.color_blend_op = RenderingDevice.BLEND_OP_REVERSE_SUBTRACT
    attachment.src_color_blend_factor = RenderingDevice.BLEND_FACTOR_SRC_ALPHA
    attachment.dst_color_blend_factor = RenderingDevice.BLEND_FACTOR_ONE
    attachment.src_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_SRC_ALPHA
    attachment.dst_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_ONE

\ **乘：**\ 

::

    var attachment = RDPipelineColorBlendStateAttachment.new()
    attachment.enable_blend = true
    attachment.alpha_blend_op = RenderingDevice.BLEND_OP_ADD
    attachment.color_blend_op = RenderingDevice.BLEND_OP_ADD
    attachment.src_color_blend_factor = RenderingDevice.BLEND_FACTOR_DST_COLOR
    attachment.dst_color_blend_factor = RenderingDevice.BLEND_FACTOR_ZERO
    attachment.src_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_DST_ALPHA
    attachment.dst_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_ZERO

\ **预乘 Alpha：**\ 

::

    var attachment = RDPipelineColorBlendStateAttachment.new()
    attachment.enable_blend = true
    attachment.alpha_blend_op = RenderingDevice.BLEND_OP_ADD
    attachment.color_blend_op = RenderingDevice.BLEND_OP_ADD
    attachment.src_color_blend_factor = RenderingDevice.BLEND_FACTOR_ONE
    attachment.dst_color_blend_factor = RenderingDevice.BLEND_FACTOR_ONE_MINUS_SRC_ALPHA
    attachment.src_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_ONE
    attachment.dst_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_ONE_MINUS_SRC_ALPHA

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`BlendOperation<enum_RenderingDevice_BlendOperation>` | :ref:`alpha_blend_op<class_RDPipelineColorBlendStateAttachment_property_alpha_blend_op>`                 | ``0``     |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`BlendOperation<enum_RenderingDevice_BlendOperation>` | :ref:`color_blend_op<class_RDPipelineColorBlendStateAttachment_property_color_blend_op>`                 | ``0``     |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>`       | :ref:`dst_alpha_blend_factor<class_RDPipelineColorBlendStateAttachment_property_dst_alpha_blend_factor>` | ``0``     |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>`       | :ref:`dst_color_blend_factor<class_RDPipelineColorBlendStateAttachment_property_dst_color_blend_factor>` | ``0``     |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                    | :ref:`enable_blend<class_RDPipelineColorBlendStateAttachment_property_enable_blend>`                     | ``false`` |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>`       | :ref:`src_alpha_blend_factor<class_RDPipelineColorBlendStateAttachment_property_src_alpha_blend_factor>` | ``0``     |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>`       | :ref:`src_color_blend_factor<class_RDPipelineColorBlendStateAttachment_property_src_color_blend_factor>` | ``0``     |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                    | :ref:`write_a<class_RDPipelineColorBlendStateAttachment_property_write_a>`                               | ``true``  |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                    | :ref:`write_b<class_RDPipelineColorBlendStateAttachment_property_write_b>`                               | ``true``  |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                    | :ref:`write_g<class_RDPipelineColorBlendStateAttachment_property_write_g>`                               | ``true``  |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                    | :ref:`write_r<class_RDPipelineColorBlendStateAttachment_property_write_r>`                               | ``true``  |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+--------------------------------------------------------------------------------------+
   | |void| | :ref:`set_as_mix<class_RDPipelineColorBlendStateAttachment_method_set_as_mix>`\ (\ ) |
   +--------+--------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_RDPipelineColorBlendStateAttachment_property_alpha_blend_op:

.. rst-class:: classref-property

:ref:`BlendOperation<enum_RenderingDevice_BlendOperation>` **alpha_blend_op** = ``0`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_alpha_blend_op>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_blend_op**\ (\ value\: :ref:`BlendOperation<enum_RenderingDevice_BlendOperation>`\ )
- :ref:`BlendOperation<enum_RenderingDevice_BlendOperation>` **get_alpha_blend_op**\ (\ )

Alpha 通道使用的混合模式。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_color_blend_op:

.. rst-class:: classref-property

:ref:`BlendOperation<enum_RenderingDevice_BlendOperation>` **color_blend_op** = ``0`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_color_blend_op>`

.. rst-class:: classref-property-setget

- |void| **set_color_blend_op**\ (\ value\: :ref:`BlendOperation<enum_RenderingDevice_BlendOperation>`\ )
- :ref:`BlendOperation<enum_RenderingDevice_BlendOperation>` **get_color_blend_op**\ (\ )

红、绿、蓝通道使用的混合模式。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_dst_alpha_blend_factor:

.. rst-class:: classref-property

:ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **dst_alpha_blend_factor** = ``0`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_dst_alpha_blend_factor>`

.. rst-class:: classref-property-setget

- |void| **set_dst_alpha_blend_factor**\ (\ value\: :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>`\ )
- :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **get_dst_alpha_blend_factor**\ (\ )

控制如何根据目标片段确定 Alpha 通道的混合系数。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_dst_color_blend_factor:

.. rst-class:: classref-property

:ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **dst_color_blend_factor** = ``0`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_dst_color_blend_factor>`

.. rst-class:: classref-property-setget

- |void| **set_dst_color_blend_factor**\ (\ value\: :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>`\ )
- :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **get_dst_color_blend_factor**\ (\ )

控制如何根据目标片段确定颜色通道的混合系数。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_enable_blend:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_blend** = ``false`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_enable_blend>`

.. rst-class:: classref-property-setget

- |void| **set_enable_blend**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_blend**\ (\ )

如果为 ``true``\ ，则会根据 :ref:`src_color_blend_factor<class_RDPipelineColorBlendStateAttachment_property_src_color_blend_factor>`\ 、\ :ref:`dst_color_blend_factor<class_RDPipelineColorBlendStateAttachment_property_dst_color_blend_factor>`\ 、\ :ref:`src_alpha_blend_factor<class_RDPipelineColorBlendStateAttachment_property_src_alpha_blend_factor>` 和 :ref:`dst_alpha_blend_factor<class_RDPipelineColorBlendStateAttachment_property_dst_alpha_blend_factor>` 中定义的系数对来源和目标进行混合。同时也会考虑 :ref:`color_blend_op<class_RDPipelineColorBlendStateAttachment_property_color_blend_op>` 和 :ref:`alpha_blend_op<class_RDPipelineColorBlendStateAttachment_property_alpha_blend_op>` 混合模式，\ :ref:`write_r<class_RDPipelineColorBlendStateAttachment_property_write_r>`\ 、\ :ref:`write_g<class_RDPipelineColorBlendStateAttachment_property_write_g>`\ 、\ :ref:`write_b<class_RDPipelineColorBlendStateAttachment_property_write_b>` 和 :ref:`write_a<class_RDPipelineColorBlendStateAttachment_property_write_a>` 则控制的是输出。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_src_alpha_blend_factor:

.. rst-class:: classref-property

:ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **src_alpha_blend_factor** = ``0`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_src_alpha_blend_factor>`

.. rst-class:: classref-property-setget

- |void| **set_src_alpha_blend_factor**\ (\ value\: :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>`\ )
- :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **get_src_alpha_blend_factor**\ (\ )

控制如何根据来源片段确定 Alpha 通道的混合系数。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_src_color_blend_factor:

.. rst-class:: classref-property

:ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **src_color_blend_factor** = ``0`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_src_color_blend_factor>`

.. rst-class:: classref-property-setget

- |void| **set_src_color_blend_factor**\ (\ value\: :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>`\ )
- :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **get_src_color_blend_factor**\ (\ )

控制如何根据来源片段确定颜色通道的混合系数。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_write_a:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **write_a** = ``true`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_write_a>`

.. rst-class:: classref-property-setget

- |void| **set_write_a**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_write_a**\ (\ )

如果为 ``true``\ ，则将新的 Alpha 通道写入最终结果。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_write_b:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **write_b** = ``true`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_write_b>`

.. rst-class:: classref-property-setget

- |void| **set_write_b**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_write_b**\ (\ )

如果为 ``true``\ ，则将新的蓝色通道写入最终结果。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_write_g:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **write_g** = ``true`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_write_g>`

.. rst-class:: classref-property-setget

- |void| **set_write_g**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_write_g**\ (\ )

如果为 ``true``\ ，则将新的绿色通道写入最终结果。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_write_r:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **write_r** = ``true`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_write_r>`

.. rst-class:: classref-property-setget

- |void| **set_write_r**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_write_r**\ (\ )

如果为 ``true``\ ，则将新的红色通道写入最终结果。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_RDPipelineColorBlendStateAttachment_method_set_as_mix:

.. rst-class:: classref-method

|void| **set_as_mix**\ (\ ) :ref:`🔗<class_RDPipelineColorBlendStateAttachment_method_set_as_mix>`

使用普通（非预乘）Alpha 进行标准混合混合（mix blending）的简便方法。这个方法会将 :ref:`enable_blend<class_RDPipelineColorBlendStateAttachment_property_enable_blend>` 设为 ``true``\ ，将 :ref:`src_color_blend_factor<class_RDPipelineColorBlendStateAttachment_property_src_color_blend_factor>` 设为 :ref:`RenderingDevice.BLEND_FACTOR_SRC_ALPHA<class_RenderingDevice_constant_BLEND_FACTOR_SRC_ALPHA>`\ ，将 :ref:`dst_color_blend_factor<class_RDPipelineColorBlendStateAttachment_property_dst_color_blend_factor>` 设为 :ref:`RenderingDevice.BLEND_FACTOR_ONE_MINUS_SRC_ALPHA<class_RenderingDevice_constant_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA>`\ ，将 :ref:`src_alpha_blend_factor<class_RDPipelineColorBlendStateAttachment_property_src_alpha_blend_factor>` 设为 :ref:`RenderingDevice.BLEND_FACTOR_SRC_ALPHA<class_RenderingDevice_constant_BLEND_FACTOR_SRC_ALPHA>`\ ，将 :ref:`dst_alpha_blend_factor<class_RDPipelineColorBlendStateAttachment_property_dst_alpha_blend_factor>` 设为 :ref:`RenderingDevice.BLEND_FACTOR_ONE_MINUS_SRC_ALPHA<class_RenderingDevice_constant_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
