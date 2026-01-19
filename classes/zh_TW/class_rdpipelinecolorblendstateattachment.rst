:github_url: hide

.. _class_RDPipelineColorBlendStateAttachment:

RDPipelineColorBlendStateAttachment
===================================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

管線顏色混合狀態附件（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

說明
----

控制使用 :ref:`RenderingDevice<class_RenderingDevice>` 時如何在來源和目標片段之間進行混合。

以下是常見面向使用者的混合模式在 Godot 的 2D 算繪器中的實作方法，僅供參考：

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

\ **減：**\ 

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

\ **預乘 Alpha：**\ 

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

屬性
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

屬性說明
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

紅、綠、藍通道使用的混合模式。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_dst_alpha_blend_factor:

.. rst-class:: classref-property

:ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **dst_alpha_blend_factor** = ``0`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_dst_alpha_blend_factor>`

.. rst-class:: classref-property-setget

- |void| **set_dst_alpha_blend_factor**\ (\ value\: :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>`\ )
- :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **get_dst_alpha_blend_factor**\ (\ )

控制如何根據目標片段確定 Alpha 通道的混合係數。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_dst_color_blend_factor:

.. rst-class:: classref-property

:ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **dst_color_blend_factor** = ``0`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_dst_color_blend_factor>`

.. rst-class:: classref-property-setget

- |void| **set_dst_color_blend_factor**\ (\ value\: :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>`\ )
- :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **get_dst_color_blend_factor**\ (\ )

控制如何根據目標片段確定顏色通道的混合係數。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_enable_blend:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_blend** = ``false`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_enable_blend>`

.. rst-class:: classref-property-setget

- |void| **set_enable_blend**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_blend**\ (\ )

如果為 ``true``\ ，則會根據 :ref:`src_color_blend_factor<class_RDPipelineColorBlendStateAttachment_property_src_color_blend_factor>`\ 、\ :ref:`dst_color_blend_factor<class_RDPipelineColorBlendStateAttachment_property_dst_color_blend_factor>`\ 、\ :ref:`src_alpha_blend_factor<class_RDPipelineColorBlendStateAttachment_property_src_alpha_blend_factor>` 和 :ref:`dst_alpha_blend_factor<class_RDPipelineColorBlendStateAttachment_property_dst_alpha_blend_factor>` 中定義的係數對來源和目標進行混合。同時也會考慮 :ref:`color_blend_op<class_RDPipelineColorBlendStateAttachment_property_color_blend_op>` 和 :ref:`alpha_blend_op<class_RDPipelineColorBlendStateAttachment_property_alpha_blend_op>` 混合模式，\ :ref:`write_r<class_RDPipelineColorBlendStateAttachment_property_write_r>`\ 、\ :ref:`write_g<class_RDPipelineColorBlendStateAttachment_property_write_g>`\ 、\ :ref:`write_b<class_RDPipelineColorBlendStateAttachment_property_write_b>` 和 :ref:`write_a<class_RDPipelineColorBlendStateAttachment_property_write_a>` 則控制的是輸出。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_src_alpha_blend_factor:

.. rst-class:: classref-property

:ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **src_alpha_blend_factor** = ``0`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_src_alpha_blend_factor>`

.. rst-class:: classref-property-setget

- |void| **set_src_alpha_blend_factor**\ (\ value\: :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>`\ )
- :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **get_src_alpha_blend_factor**\ (\ )

控制如何根據來源片段確定 Alpha 通道的混合係數。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_src_color_blend_factor:

.. rst-class:: classref-property

:ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **src_color_blend_factor** = ``0`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_src_color_blend_factor>`

.. rst-class:: classref-property-setget

- |void| **set_src_color_blend_factor**\ (\ value\: :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>`\ )
- :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **get_src_color_blend_factor**\ (\ )

控制如何根據來源片段確定顏色通道的混合係數。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_write_a:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **write_a** = ``true`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_write_a>`

.. rst-class:: classref-property-setget

- |void| **set_write_a**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_write_a**\ (\ )

如果為 ``true``\ ，則將新的 Alpha 通道寫入最終結果。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_write_b:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **write_b** = ``true`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_write_b>`

.. rst-class:: classref-property-setget

- |void| **set_write_b**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_write_b**\ (\ )

如果為 ``true``\ ，則將新的藍色通道寫入最終結果。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_write_g:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **write_g** = ``true`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_write_g>`

.. rst-class:: classref-property-setget

- |void| **set_write_g**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_write_g**\ (\ )

如果為 ``true``\ ，則將新的綠色通道寫入最終結果。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_write_r:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **write_r** = ``true`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_write_r>`

.. rst-class:: classref-property-setget

- |void| **set_write_r**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_write_r**\ (\ )

如果為 ``true``\ ，則將新的紅色通道寫入最終結果。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_RDPipelineColorBlendStateAttachment_method_set_as_mix:

.. rst-class:: classref-method

|void| **set_as_mix**\ (\ ) :ref:`🔗<class_RDPipelineColorBlendStateAttachment_method_set_as_mix>`

使用普通（非預乘）Alpha 進行標準混合混合（mix blending）的簡便方法。這個方法會將 :ref:`enable_blend<class_RDPipelineColorBlendStateAttachment_property_enable_blend>` 設為 ``true``\ ，將 :ref:`src_color_blend_factor<class_RDPipelineColorBlendStateAttachment_property_src_color_blend_factor>` 設為 :ref:`RenderingDevice.BLEND_FACTOR_SRC_ALPHA<class_RenderingDevice_constant_BLEND_FACTOR_SRC_ALPHA>`\ ，將 :ref:`dst_color_blend_factor<class_RDPipelineColorBlendStateAttachment_property_dst_color_blend_factor>` 設為 :ref:`RenderingDevice.BLEND_FACTOR_ONE_MINUS_SRC_ALPHA<class_RenderingDevice_constant_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA>`\ ，將 :ref:`src_alpha_blend_factor<class_RDPipelineColorBlendStateAttachment_property_src_alpha_blend_factor>` 設為 :ref:`RenderingDevice.BLEND_FACTOR_SRC_ALPHA<class_RenderingDevice_constant_BLEND_FACTOR_SRC_ALPHA>`\ ，將 :ref:`dst_alpha_blend_factor<class_RDPipelineColorBlendStateAttachment_property_dst_alpha_blend_factor>` 設為 :ref:`RenderingDevice.BLEND_FACTOR_ONE_MINUS_SRC_ALPHA<class_RenderingDevice_constant_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
