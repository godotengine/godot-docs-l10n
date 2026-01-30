:github_url: hide

.. _class_FogVolume:

FogVolume
=========

**繼承：** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

從世界環境貢獻預設體積霧的區域。

.. rst-class:: classref-introduction-group

說明
----

**FogVolume** 用於將局部霧新增到全域體積霧效果中。如果使用具有負 :ref:`FogMaterial.density<class_FogMaterial_property_density>` 的 :ref:`FogMaterial<class_FogMaterial>`\ ，\ **FogVolume** 也可以從特定區域移除體積霧。

\ **FogVolume** 的性能與它在螢幕上的相對大小以及它所附加的 :ref:`FogMaterial<class_FogMaterial>` 的複雜性直接相關。最好盡可能保持 **FogVolume** 相對較小且簡單。

\ **注意：**\ **FogVolume** 只有在 :ref:`Environment.volumetric_fog_enabled<class_Environment_property_volumetric_fog_enabled>` 為 ``true`` 時才會有可見效果。如果不希望霧全域可見（而只是在 **FogVolume** 節點內），請將 :ref:`Environment.volumetric_fog_density<class_Environment_property_volumetric_fog_density>` 設定為 ``0.0``\ 。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`體積霧和霧體積 <../tutorials/3d/volumetric_fog>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------+----------------------+
   | :ref:`Material<class_Material>`                            | :ref:`material<class_FogVolume_property_material>` |                      |
   +------------------------------------------------------------+----------------------------------------------------+----------------------+
   | :ref:`FogVolumeShape<enum_RenderingServer_FogVolumeShape>` | :ref:`shape<class_FogVolume_property_shape>`       | ``3``                |
   +------------------------------------------------------------+----------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                              | :ref:`size<class_FogVolume_property_size>`         | ``Vector3(2, 2, 2)`` |
   +------------------------------------------------------------+----------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_FogVolume_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_FogVolume_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

**FogVolume** 使用的 :ref:`Material<class_Material>`\ 。可以是一個內建的 :ref:`FogMaterial<class_FogMaterial>` 或一個自訂的 :ref:`ShaderMaterial<class_ShaderMaterial>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_FogVolume_property_shape:

.. rst-class:: classref-property

:ref:`FogVolumeShape<enum_RenderingServer_FogVolumeShape>` **shape** = ``3`` :ref:`🔗<class_FogVolume_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`FogVolumeShape<enum_RenderingServer_FogVolumeShape>`\ )
- :ref:`FogVolumeShape<enum_RenderingServer_FogVolumeShape>` **get_shape**\ (\ )

**FogVolume** 的形狀。這可以被設定為 :ref:`RenderingServer.FOG_VOLUME_SHAPE_ELLIPSOID<class_RenderingServer_constant_FOG_VOLUME_SHAPE_ELLIPSOID>`\ 、\ :ref:`RenderingServer.FOG_VOLUME_SHAPE_CONE<class_RenderingServer_constant_FOG_VOLUME_SHAPE_CONE>`\ 、\ :ref:`RenderingServer.FOG_VOLUME_SHAPE_CYLINDER<class_RenderingServer_constant_FOG_VOLUME_SHAPE_CYLINDER>`\ 、\ :ref:`RenderingServer.FOG_VOLUME_SHAPE_BOX<class_RenderingServer_constant_FOG_VOLUME_SHAPE_BOX>` 或 :ref:`RenderingServer.FOG_VOLUME_SHAPE_WORLD<class_RenderingServer_constant_FOG_VOLUME_SHAPE_WORLD>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_FogVolume_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(2, 2, 2)`` :ref:`🔗<class_FogVolume_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

當 :ref:`shape<class_FogVolume_property_shape>` 為 :ref:`RenderingServer.FOG_VOLUME_SHAPE_ELLIPSOID<class_RenderingServer_constant_FOG_VOLUME_SHAPE_ELLIPSOID>`\ 、\ :ref:`RenderingServer.FOG_VOLUME_SHAPE_CONE<class_RenderingServer_constant_FOG_VOLUME_SHAPE_CONE>`\ 、\ :ref:`RenderingServer.FOG_VOLUME_SHAPE_CYLINDER<class_RenderingServer_constant_FOG_VOLUME_SHAPE_CYLINDER>` 或 :ref:`RenderingServer.FOG_VOLUME_SHAPE_BOX<class_RenderingServer_constant_FOG_VOLUME_SHAPE_BOX>`\ 時，該 **FogVolume** 的大小。

\ **注意：**\ 當相機移動或旋轉時，薄霧體積可能會出現閃爍。這可以通過增加 :ref:`ProjectSettings.rendering/environment/volumetric_fog/volume_depth<class_ProjectSettings_property_rendering/environment/volumetric_fog/volume_depth>`\ （以性能為代價）或減少 :ref:`Environment.volumetric_fog_length<class_Environment_property_volumetric_fog_length>`\ （無性能成本，但以降低霧的範圍為代價）來緩解。或者，\ **FogVolume** 可以做得更厚，並在 :ref:`material<class_FogVolume_property_material>` 中使用較低的密度。

\ **注意：**\ 如果 :ref:`shape<class_FogVolume_property_shape>` 為 :ref:`RenderingServer.FOG_VOLUME_SHAPE_CONE<class_RenderingServer_constant_FOG_VOLUME_SHAPE_CONE>` 或 :ref:`RenderingServer.FOG_VOLUME_SHAPE_CYLINDER<class_RenderingServer_constant_FOG_VOLUME_SHAPE_CYLINDER>`\ ，圓錐體/圓柱體將被調整以適應該大小。不支援通過 :ref:`size<class_FogVolume_property_size>` 屬性對圓錐體/圓柱體形狀進行非均勻縮放，但可以改為縮放該 **FogVolume** 節點。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
