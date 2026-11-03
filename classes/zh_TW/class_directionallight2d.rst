:github_url: hide

.. meta::
	:keywords: sun

.. _class_DirectionalLight2D:

DirectionalLight2D
==================

**繼承：** :ref:`Light2D<class_Light2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

來自遠處的 2D 平行光。

.. rst-class:: classref-introduction-group

說明
----

平行光是一種 :ref:`Light2D<class_Light2D>` 節點，模擬覆蓋整個場景的無數平行光線。可用於遠離場景的強光（例如：模擬日光或月光）。

光線沿節點全域基的 +Y 方向發射。對於未旋轉的燈光，這意味著光線向下發射。節點的位置會被忽略；只有基被用於確定光線方向

\ **注意：**\ **DirectionalLight2D** 不支援燈光剔除遮罩（但支援陰影剔除遮罩）。它會忽略 2D 節點的 :ref:`CanvasItem.light_mask<class_CanvasItem_property_light_mask>`\ ，始終點亮 2D 節點。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`2D 燈光和陰影 <../tutorials/2d/2d_lights_and_shadows>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>` | :ref:`height<class_DirectionalLight2D_property_height>`             | ``0.0``     |
   +---------------------------+---------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>` | :ref:`max_distance<class_DirectionalLight2D_property_max_distance>` | ``10000.0`` |
   +---------------------------+---------------------------------------------------------------------+-------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_DirectionalLight2D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``0.0`` :ref:`🔗<class_DirectionalLight2D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

燈光的高度。用於 2D 法線貼圖。範圍從 0（平行於平面）到 1（垂直於平面）。

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight2D_property_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_distance** = ``10000.0`` :ref:`🔗<class_DirectionalLight2D_property_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_distance**\ (\ )

物件在其陰影被剔除前與相機中心的最大距離（單位：圖元）。降低這個值可以防止位於相機外部的物件投射陰影（同時還可以提高效能）。\ :ref:`Camera2D.zoom<class_Camera2D_property_zoom>` 不被 :ref:`max_distance<class_DirectionalLight2D_property_max_distance>` 考慮在內，這意味著在較高的縮放值下，當縮放到一個給定的點時，陰影會更快地淡出。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
