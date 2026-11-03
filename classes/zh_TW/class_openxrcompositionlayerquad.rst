:github_url: hide

.. _class_OpenXRCompositionLayerQuad:

OpenXRCompositionLayerQuad
==========================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`OpenXRCompositionLayer<class_OpenXRCompositionLayer>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

以四邊形形式渲染的 OpenXR 合成層。

.. rst-class:: classref-introduction-group

說明
----

能夠在四邊形上渲染 :ref:`SubViewport<class_SubViewport>` 的 OpenXR 合成層。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`quad_size<class_OpenXRCompositionLayerQuad_property_quad_size>` | ``Vector2(1, 1)`` |
   +-------------------------------+-----------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_OpenXRCompositionLayerQuad_property_quad_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **quad_size** = ``Vector2(1, 1)`` :ref:`🔗<class_OpenXRCompositionLayerQuad_property_quad_size>`

.. rst-class:: classref-property-setget

- |void| **set_quad_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_quad_size**\ (\ )

四邊形的尺寸。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
