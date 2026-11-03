:github_url: hide

.. _class_RDHitGroup:

RDHitGroup
==========

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

命中組（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

說明
----

定義一個用於 :ref:`RenderingDevice.raytracing_pipeline_create()<class_RenderingDevice_method_raytracing_pipeline_create>` 的 命中組（Hit Group）。

當光線與幾何體相交時，命中組會組合執行相應的著色器。它可能包含一個 最近命中（closest-hit） 著色器、任意命中（any-hit） 著色器和 相交（intersection） 著色器。

在使用 :ref:`RenderingDevice.hit_sbt_range_update()<class_RenderingDevice_method_hit_sbt_range_update>` 填充命中著色器綁定表（Hit Shader Binding Tables）時，通過索引參照命中組。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`RDPipelineShader<class_RDPipelineShader>` | :ref:`any_hit_shader<class_RDHitGroup_property_any_hit_shader>`           |
   +-------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`RDPipelineShader<class_RDPipelineShader>` | :ref:`closest_hit_shader<class_RDHitGroup_property_closest_hit_shader>`   |
   +-------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`RDPipelineShader<class_RDPipelineShader>` | :ref:`intersection_shader<class_RDHitGroup_property_intersection_shader>` |
   +-------------------------------------------------+---------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_RDHitGroup_property_any_hit_shader:

.. rst-class:: classref-property

:ref:`RDPipelineShader<class_RDPipelineShader>` **any_hit_shader** :ref:`🔗<class_RDHitGroup_property_any_hit_shader>`

.. rst-class:: classref-property-setget

- |void| **set_any_hit_shader**\ (\ value\: :ref:`RDPipelineShader<class_RDPipelineShader>`\ )
- :ref:`RDPipelineShader<class_RDPipelineShader>` **get_any_hit_shader**\ (\ )

該命中組的“任意命中”（Any-hit）著色器。針對每一個潛在的相交點執行。可以為 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_RDHitGroup_property_closest_hit_shader:

.. rst-class:: classref-property

:ref:`RDPipelineShader<class_RDPipelineShader>` **closest_hit_shader** :ref:`🔗<class_RDHitGroup_property_closest_hit_shader>`

.. rst-class:: classref-property-setget

- |void| **set_closest_hit_shader**\ (\ value\: :ref:`RDPipelineShader<class_RDPipelineShader>`\ )
- :ref:`RDPipelineShader<class_RDPipelineShader>` **get_closest_hit_shader**\ (\ )

該命中組的“最近命中”（Closest-hit）著色器。僅針對距離光線起點最近的那個交點執行。可以為 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_RDHitGroup_property_intersection_shader:

.. rst-class:: classref-property

:ref:`RDPipelineShader<class_RDPipelineShader>` **intersection_shader** :ref:`🔗<class_RDHitGroup_property_intersection_shader>`

.. rst-class:: classref-property-setget

- |void| **set_intersection_shader**\ (\ value\: :ref:`RDPipelineShader<class_RDPipelineShader>`\ )
- :ref:`RDPipelineShader<class_RDPipelineShader>` **get_intersection_shader**\ (\ )

該命中組的“相交”（Intersection）著色器。針對非三角形幾何體為必需項。若用於三角形幾何體，則必須設為 ``null``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
