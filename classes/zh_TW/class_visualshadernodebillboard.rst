:github_url: hide

.. _class_VisualShaderNodeBillboard:

VisualShaderNodeBillboard
=========================

**繼承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在視覺化著色器圖中，用於控制物件如何面向相機的節點。

.. rst-class:: classref-introduction-group

說明
----

這個節點的輸出埠需要連接至 :ref:`VisualShaderNodeOutput<class_VisualShaderNodeOutput>` 的 ``Model View Matrix`` 埠。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +--------------------------------------------------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` | :ref:`billboard_type<class_VisualShaderNodeBillboard_property_billboard_type>` | ``1``     |
   +--------------------------------------------------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                            | :ref:`keep_scale<class_VisualShaderNodeBillboard_property_keep_scale>`         | ``false`` |
   +--------------------------------------------------------------------+--------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_VisualShaderNodeBillboard_BillboardType:

.. rst-class:: classref-enumeration

enum **BillboardType**: :ref:`🔗<enum_VisualShaderNodeBillboard_BillboardType>`

.. _class_VisualShaderNodeBillboard_constant_BILLBOARD_TYPE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **BILLBOARD_TYPE_DISABLED** = ``0``

公告板被停用，該節點不做任何事情。

.. _class_VisualShaderNodeBillboard_constant_BILLBOARD_TYPE_ENABLED:

.. rst-class:: classref-enumeration-constant

:ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **BILLBOARD_TYPE_ENABLED** = ``1``

啟用標準公告板演算法。

.. _class_VisualShaderNodeBillboard_constant_BILLBOARD_TYPE_FIXED_Y:

.. rst-class:: classref-enumeration-constant

:ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **BILLBOARD_TYPE_FIXED_Y** = ``2``

啟用圍繞 Y 軸旋轉的公告板演算法。

.. _class_VisualShaderNodeBillboard_constant_BILLBOARD_TYPE_PARTICLES:

.. rst-class:: classref-enumeration-constant

:ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **BILLBOARD_TYPE_PARTICLES** = ``3``

啟用針對粒子設計的公告板演算法。

.. _class_VisualShaderNodeBillboard_constant_BILLBOARD_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **BILLBOARD_TYPE_MAX** = ``4``

代表 :ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeBillboard_property_billboard_type:

.. rst-class:: classref-property

:ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **billboard_type** = ``1`` :ref:`🔗<class_VisualShaderNodeBillboard_property_billboard_type>`

.. rst-class:: classref-property-setget

- |void| **set_billboard_type**\ (\ value\: :ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>`\ )
- :ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **get_billboard_type**\ (\ )

控制物件如何面對相機。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeBillboard_property_keep_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **keep_scale** = ``false`` :ref:`🔗<class_VisualShaderNodeBillboard_property_keep_scale>`

.. rst-class:: classref-property-setget

- |void| **set_keep_scale_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_keep_scale_enabled**\ (\ )

如果為 ``true``\ ，則著色器將保持為網格設定的縮放。否則，進行公告板處理時將丟失縮放。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
