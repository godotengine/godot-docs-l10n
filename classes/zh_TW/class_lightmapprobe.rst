:github_url: hide

.. _class_LightmapProbe:

LightmapProbe
=============

**繼承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

表示使用 :ref:`LightmapGI<class_LightmapGI>` 進行動態物體照明的單個手動放置的探查。

.. rst-class:: classref-introduction-group

說明
----

**LightmapProbe** 表示單個手動放置探針的位置，用於使用 :ref:`LightmapGI<class_LightmapGI>` 進行動態物體照明。光照貼圖探針會影響某些 :ref:`GeometryInstance3D<class_GeometryInstance3D>` 派生節點的照明，這些節點的 :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` 被設定為 :ref:`GeometryInstance3D.GI_MODE_DYNAMIC<class_GeometryInstance3D_constant_GI_MODE_DYNAMIC>`\ 。

通常，通過將 :ref:`LightmapGI.generate_probes_subdiv<class_LightmapGI_property_generate_probes_subdiv>` 設定為 :ref:`LightmapGI.GENERATE_PROBES_DISABLED<class_LightmapGI_constant_GENERATE_PROBES_DISABLED>` 以外的值，來自動放置 :ref:`LightmapGI<class_LightmapGI>` 探針。通過在烘焙光照貼圖之前建立 **LightmapProbe** 節點，你可以在特定區域，新增更多探針以獲得更多細節，或者停用自動生成、並僅相依性手動放置的探針。

\ **注意：**\ 烘焙光照貼圖後放置的 **LightmapProbe** 節點會被動態物件忽略。必須在建立或修改 **LightmapProbe** 後再次烘焙光照貼圖，以使探針生效。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
