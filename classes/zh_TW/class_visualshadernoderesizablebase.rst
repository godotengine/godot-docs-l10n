:github_url: hide

.. _class_VisualShaderNodeResizableBase:

VisualShaderNodeResizableBase
=============================

**繼承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`VisualShaderNodeCurveTexture<class_VisualShaderNodeCurveTexture>`, :ref:`VisualShaderNodeCurveXYZTexture<class_VisualShaderNodeCurveXYZTexture>`, :ref:`VisualShaderNodeFrame<class_VisualShaderNodeFrame>`, :ref:`VisualShaderNodeGroupBase<class_VisualShaderNodeGroupBase>`

視覺化著色器圖中，可調整大小的節點的基底類別。

.. rst-class:: classref-introduction-group

說明
----

可調整大小的節點上有一個控制柄，使用者能夠根據需要調整其大小。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------+----------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`size<class_VisualShaderNodeResizableBase_property_size>` | ``Vector2(0, 0)`` |
   +-------------------------------+----------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeResizableBase_property_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **size** = ``Vector2(0, 0)`` :ref:`🔗<class_VisualShaderNodeResizableBase_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_size**\ (\ )

視覺化著色器圖中，該節點的大小。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
