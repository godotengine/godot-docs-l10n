:github_url: hide

.. _class_LightmapProbe:

LightmapProbe
=============

**繼承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

表示使用 :ref:`LightmapGI<class_LightmapGI>` 進行動態物體照明的單個手動放置的探查。

.. rst-class:: classref-introduction-group

說明
----

**LightmapProbe** represents the position of a single manually placed probe for dynamic object lighting with :ref:`LightmapGI<class_LightmapGI>`. Lightmap probes affect the lighting of :ref:`GeometryInstance3D<class_GeometryInstance3D>`-derived nodes that have their :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` set to :ref:`GeometryInstance3D.GI_MODE_DYNAMIC<class_GeometryInstance3D_constant_GI_MODE_DYNAMIC>`.

Typically, :ref:`LightmapGI<class_LightmapGI>` probes are placed automatically by setting :ref:`LightmapGI.generate_probes_subdiv<class_LightmapGI_property_generate_probes_subdiv>` to a value other than :ref:`LightmapGI.GENERATE_PROBES_DISABLED<class_LightmapGI_constant_GENERATE_PROBES_DISABLED>`. By creating **LightmapProbe** nodes before baking lightmaps, you can add more probes in specific areas for greater detail, or disable automatic generation and rely only on manually placed probes instead.

\ **Note:** **LightmapProbe** nodes that are placed after baking lightmaps are ignored by dynamic objects. You must bake lightmaps again after creating or modifying **LightmapProbe**\ s for the probes to be effective.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
