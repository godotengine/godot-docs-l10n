:github_url: hide

.. _class_RDPipelineColorBlendState:

RDPipelineColorBlendState
=========================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

管線顏色混合狀態（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

說明
----

這個物件由 :ref:`RenderingDevice<class_RenderingDevice>` 使用。

.. rst-class:: classref-reftable-group

屬性
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

屬性說明
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

要進行混合的顏色常數。另見 :ref:`RenderingDevice.draw_list_set_blend_constants()<class_RenderingDevice_method_draw_list_set_blend_constants>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendState_property_enable_logic_op:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_logic_op** = ``false`` :ref:`🔗<class_RDPipelineColorBlendState_property_enable_logic_op>`

.. rst-class:: classref-property-setget

- |void| **set_enable_logic_op**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_logic_op**\ (\ )

如果為 ``true``\ ，則執行 :ref:`logic_op<class_RDPipelineColorBlendState_property_logic_op>` 中定義的邏輯運算。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendState_property_logic_op:

.. rst-class:: classref-property

:ref:`LogicOperation<enum_RenderingDevice_LogicOperation>` **logic_op** = ``0`` :ref:`🔗<class_RDPipelineColorBlendState_property_logic_op>`

.. rst-class:: classref-property-setget

- |void| **set_logic_op**\ (\ value\: :ref:`LogicOperation<enum_RenderingDevice_LogicOperation>`\ )
- :ref:`LogicOperation<enum_RenderingDevice_LogicOperation>` **get_logic_op**\ (\ )

混合時執行的邏輯運算。僅在 :ref:`enable_logic_op<class_RDPipelineColorBlendState_property_enable_logic_op>` 為 ``true`` 時有效。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
