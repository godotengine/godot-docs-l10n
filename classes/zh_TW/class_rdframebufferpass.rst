:github_url: hide

.. _class_RDFramebufferPass:

RDFramebufferPass
=================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

框架緩衝區階段的附件描述（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

說明
----

該類包含框架緩衝區通道的附件描述列表。每個點都有一個指向先前提供的紋理附件列表的索引。

多通道框架緩衝區，可以最佳化移動裝置中的某些配置；在桌面裝置上，它們幾乎沒有優勢。

這個物件由 :ref:`RenderingDevice<class_RenderingDevice>` 使用。

.. rst-class:: classref-reftable-group

屬性
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

常數
----

.. _class_RDFramebufferPass_constant_ATTACHMENT_UNUSED:

.. rst-class:: classref-constant

**ATTACHMENT_UNUSED** = ``-1`` :ref:`🔗<class_RDFramebufferPass_constant_ATTACHMENT_UNUSED>`

附件未使用。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_RDFramebufferPass_property_color_attachments:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **color_attachments** = ``PackedInt32Array()`` :ref:`🔗<class_RDFramebufferPass_property_color_attachments>`

.. rst-class:: classref-property-setget

- |void| **set_color_attachments**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_color_attachments**\ (\ )

從 0 開始按順序為附件著色。如果該附件未被著色器使用，則傳遞 ATTACHMENT_UNUSED 以跳過。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDFramebufferPass_property_depth_attachment:

.. rst-class:: classref-property

:ref:`int<class_int>` **depth_attachment** = ``-1`` :ref:`🔗<class_RDFramebufferPass_property_depth_attachment>`

.. rst-class:: classref-property-setget

- |void| **set_depth_attachment**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_depth_attachment**\ (\ )

深度附件。如果該通道不需要深度緩衝區，則應使用 ATTACHMENT_UNUSED。

.. rst-class:: classref-item-separator

----

.. _class_RDFramebufferPass_property_input_attachments:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **input_attachments** = ``PackedInt32Array()`` :ref:`🔗<class_RDFramebufferPass_property_input_attachments>`

.. rst-class:: classref-property-setget

- |void| **set_input_attachments**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_input_attachments**\ (\ )

用於多通道框架緩衝區（不止一個渲染通道）。將一個附件轉換為一個輸入。確保還在 :ref:`RDUniform<class_RDUniform>` 中為 uniform 集正確提供它。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDFramebufferPass_property_preserve_attachments:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **preserve_attachments** = ``PackedInt32Array()`` :ref:`🔗<class_RDFramebufferPass_property_preserve_attachments>`

.. rst-class:: classref-property-setget

- |void| **set_preserve_attachments**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_preserve_attachments**\ (\ )

要在該階段中保留的附件（否則它們將被刪除）。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDFramebufferPass_property_resolve_attachments:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **resolve_attachments** = ``PackedInt32Array()`` :ref:`🔗<class_RDFramebufferPass_property_resolve_attachments>`

.. rst-class:: classref-property-setget

- |void| **set_resolve_attachments**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_resolve_attachments**\ (\ )

如果顏色附件是多重取樣的，則可以提供非多重取樣的解析附件。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
