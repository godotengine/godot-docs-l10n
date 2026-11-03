:github_url: hide

.. _class_LightOccluder2D:

LightOccluder2D
===============

**繼承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

遮擋由 Light2D 投射的光線，投射陰影。

.. rst-class:: classref-introduction-group

說明
----

遮擋 Light2D 投射的燈光，投射陰影。為了計算陰影，必須為 LightOccluder2D 提供 :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`\ 。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`2D 燈光和陰影 <../tutorials/2d/2d_lights_and_shadows>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`OccluderPolygon2D<class_OccluderPolygon2D>` | :ref:`occluder<class_LightOccluder2D_property_occluder>`                       |          |
   +---------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`                             | :ref:`occluder_light_mask<class_LightOccluder2D_property_occluder_light_mask>` | ``1``    |
   +---------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`                           | :ref:`sdf_collision<class_LightOccluder2D_property_sdf_collision>`             | ``true`` |
   +---------------------------------------------------+--------------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_LightOccluder2D_property_occluder:

.. rst-class:: classref-property

:ref:`OccluderPolygon2D<class_OccluderPolygon2D>` **occluder** :ref:`🔗<class_LightOccluder2D_property_occluder>`

.. rst-class:: classref-property-setget

- |void| **set_occluder_polygon**\ (\ value\: :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`\ )
- :ref:`OccluderPolygon2D<class_OccluderPolygon2D>` **get_occluder_polygon**\ (\ )

用於計算陰影的 :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_LightOccluder2D_property_occluder_light_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **occluder_light_mask** = ``1`` :ref:`🔗<class_LightOccluder2D_property_occluder_light_mask>`

.. rst-class:: classref-property-setget

- |void| **set_occluder_light_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_occluder_light_mask**\ (\ )

LightOccluder2D 的遮擋器光照遮罩。LightOccluder2D 將僅從具有相同光照遮罩的 Light2D 投射陰影。

.. rst-class:: classref-item-separator

----

.. _class_LightOccluder2D_property_sdf_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sdf_collision** = ``true`` :ref:`🔗<class_LightOccluder2D_property_sdf_collision>`

.. rst-class:: classref-property-setget

- |void| **set_as_sdf_collision**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_set_as_sdf_collision**\ (\ )

如果啟用，該遮擋器將成為即時生成的帶符號距離場的一部分，可被用於自訂著色器中。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
