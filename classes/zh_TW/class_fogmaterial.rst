:github_url: hide

.. _class_FogMaterial:

FogMaterial
===========

**繼承：** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

控制體積霧渲染方式的材質，分配到 :ref:`FogVolume<class_FogVolume>`\ 。

.. rst-class:: classref-introduction-group

說明
----

:ref:`FogVolume<class_FogVolume>` 使用的 :ref:`Material<class_Material>` 資源，用於繪製體積效果。

如果你需要更高階的效果，請使用自訂\ :doc:`霧著色器 <../tutorials/shaders/shader_reference/fog_shader>`\ 。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`albedo<class_FogMaterial_property_albedo>`                   | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`density<class_FogMaterial_property_density>`                 | ``1.0``               |
   +-----------------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`Texture3D<class_Texture3D>` | :ref:`density_texture<class_FogMaterial_property_density_texture>` |                       |
   +-----------------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`edge_fade<class_FogMaterial_property_edge_fade>`             | ``0.1``               |
   +-----------------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`emission<class_FogMaterial_property_emission>`               | ``Color(0, 0, 0, 1)`` |
   +-----------------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`height_falloff<class_FogMaterial_property_height_falloff>`   | ``0.0``               |
   +-----------------------------------+--------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_FogMaterial_property_albedo:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **albedo** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_FogMaterial_property_albedo>`

.. rst-class:: classref-property-setget

- |void| **set_albedo**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_albedo**\ (\ )

:ref:`FogVolume<class_FogVolume>` 的單次散射 :ref:`Color<class_Color>`\ 。在內部，\ :ref:`albedo<class_FogMaterial_property_albedo>` 被轉換為單次散射，它與其他 :ref:`FogVolume<class_FogVolume>` 和 :ref:`Environment.volumetric_fog_albedo<class_Environment_property_volumetric_fog_albedo>` 進行相加混合。

.. rst-class:: classref-item-separator

----

.. _class_FogMaterial_property_density:

.. rst-class:: classref-property

:ref:`float<class_float>` **density** = ``1.0`` :ref:`🔗<class_FogMaterial_property_density>`

.. rst-class:: classref-property-setget

- |void| **set_density**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_density**\ (\ )

:ref:`FogVolume<class_FogVolume>` 的密度。更密集的對象更不透明，但可能會受到看起來像條紋的欠取樣偽影的影響。負值可用於從其他 :ref:`FogVolume<class_FogVolume>` 或全域體積霧中減去霧。

\ **注意：**\ 由於精度有限，介於 ``-0.001`` 和 ``0.001``\ （不含）之間的 :ref:`density<class_FogMaterial_property_density>` 值相當於 ``0.0``\ 。這不適用於 :ref:`Environment.volumetric_fog_density<class_Environment_property_volumetric_fog_density>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_FogMaterial_property_density_texture:

.. rst-class:: classref-property

:ref:`Texture3D<class_Texture3D>` **density_texture** :ref:`🔗<class_FogMaterial_property_density_texture>`

.. rst-class:: classref-property-setget

- |void| **set_density_texture**\ (\ value\: :ref:`Texture3D<class_Texture3D>`\ )
- :ref:`Texture3D<class_Texture3D>` **get_density_texture**\ (\ )

用於縮放 :ref:`FogVolume<class_FogVolume>` 的 :ref:`density<class_FogMaterial_property_density>` 的 3D 紋理。這可用於改變 :ref:`FogVolume<class_FogVolume>` 內具有任何靜態模式的霧密度。對於動畫效果，請考慮使用一個自訂的\ :doc:`霧著色器 <../tutorials/shaders/shader_reference/fog_shader>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_FogMaterial_property_edge_fade:

.. rst-class:: classref-property

:ref:`float<class_float>` **edge_fade** = ``0.1`` :ref:`🔗<class_FogMaterial_property_edge_fade>`

.. rst-class:: classref-property-setget

- |void| **set_edge_fade**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_edge_fade**\ (\ )

:ref:`FogVolume<class_FogVolume>` 邊緣的硬度。較高的值將導致較軟的邊緣，而較低的值將導致較硬的邊緣。

.. rst-class:: classref-item-separator

----

.. _class_FogMaterial_property_emission:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **emission** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_FogMaterial_property_emission>`

.. rst-class:: classref-property-setget

- |void| **set_emission**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_emission**\ (\ )

該 :ref:`FogVolume<class_FogVolume>` 發出的光的 :ref:`Color<class_Color>`\ 。發出的光不會在其他物體上投射光或陰影，但可用於獨立於光源調變 :ref:`FogVolume<class_FogVolume>` 的 :ref:`Color<class_Color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_FogMaterial_property_height_falloff:

.. rst-class:: classref-property

:ref:`float<class_float>` **height_falloff** = ``0.0`` :ref:`🔗<class_FogMaterial_property_height_falloff>`

.. rst-class:: classref-property-setget

- |void| **set_height_falloff**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height_falloff**\ (\ )

基於高度的霧，隨著世界空間中高度的增加而降低密度的速度。高的衰減將產生急劇的過渡，而低的衰減將產生更平滑的過渡。\ ``0.0`` 的值會產生均勻密度的霧。高度閾值由關聯的 :ref:`FogVolume<class_FogVolume>` 的高度決定。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
