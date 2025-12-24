:github_url: hide

.. _class_FogMaterial:

FogMaterial
===========

**继承：** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

控制体积雾渲染方式的材质，可被分配给 :ref:`FogVolume<class_FogVolume>`\ 。

.. rst-class:: classref-introduction-group

描述
----

:ref:`FogVolume<class_FogVolume>` 使用的 :ref:`Material<class_Material>` 资源，用于绘制体积效果。

如果你需要更高阶的效果，请使用自定义\ :doc:`雾着色器 <../tutorials/shaders/shader_reference/fog_shader>`\ 。

.. rst-class:: classref-reftable-group

属性
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

属性说明
--------

.. _class_FogMaterial_property_albedo:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **albedo** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_FogMaterial_property_albedo>`

.. rst-class:: classref-property-setget

- |void| **set_albedo**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_albedo**\ (\ )

:ref:`FogVolume<class_FogVolume>` 的单次散射 :ref:`Color<class_Color>`\ 。在内部，\ :ref:`albedo<class_FogMaterial_property_albedo>` 被转换为单次散射，它与其他 :ref:`FogVolume<class_FogVolume>` 和 :ref:`Environment.volumetric_fog_albedo<class_Environment_property_volumetric_fog_albedo>` 进行相加混合。

.. rst-class:: classref-item-separator

----

.. _class_FogMaterial_property_density:

.. rst-class:: classref-property

:ref:`float<class_float>` **density** = ``1.0`` :ref:`🔗<class_FogMaterial_property_density>`

.. rst-class:: classref-property-setget

- |void| **set_density**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_density**\ (\ )

:ref:`FogVolume<class_FogVolume>` 的密度。更密集的对象更不透明，但可能会受到看起来像条纹的欠采样伪影的影响。负值可用于从其他 :ref:`FogVolume<class_FogVolume>` 或全局体积雾中减去雾。

\ **注意：**\ 由于精度有限，介于 ``-0.001`` 和 ``0.001``\ （不含）之间的 :ref:`density<class_FogMaterial_property_density>` 值相当于 ``0.0``\ 。这不适用于 :ref:`Environment.volumetric_fog_density<class_Environment_property_volumetric_fog_density>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_FogMaterial_property_density_texture:

.. rst-class:: classref-property

:ref:`Texture3D<class_Texture3D>` **density_texture** :ref:`🔗<class_FogMaterial_property_density_texture>`

.. rst-class:: classref-property-setget

- |void| **set_density_texture**\ (\ value\: :ref:`Texture3D<class_Texture3D>`\ )
- :ref:`Texture3D<class_Texture3D>` **get_density_texture**\ (\ )

用于缩放 :ref:`FogVolume<class_FogVolume>` 的 :ref:`density<class_FogMaterial_property_density>` 的 3D 纹理。这可用于改变 :ref:`FogVolume<class_FogVolume>` 内具有任何静态模式的雾密度。对于动画效果，请考虑使用一个自定义的\ :doc:`雾着色器 <../tutorials/shaders/shader_reference/fog_shader>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_FogMaterial_property_edge_fade:

.. rst-class:: classref-property

:ref:`float<class_float>` **edge_fade** = ``0.1`` :ref:`🔗<class_FogMaterial_property_edge_fade>`

.. rst-class:: classref-property-setget

- |void| **set_edge_fade**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_edge_fade**\ (\ )

:ref:`FogVolume<class_FogVolume>` 边缘的硬度。较高的值将导致较软的边缘，而较低的值将导致较硬的边缘。

.. rst-class:: classref-item-separator

----

.. _class_FogMaterial_property_emission:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **emission** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_FogMaterial_property_emission>`

.. rst-class:: classref-property-setget

- |void| **set_emission**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_emission**\ (\ )

该 :ref:`FogVolume<class_FogVolume>` 发出的光的 :ref:`Color<class_Color>`\ 。发出的光不会在其他物体上投射光或阴影，但可用于独立于光源调制 :ref:`FogVolume<class_FogVolume>` 的 :ref:`Color<class_Color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_FogMaterial_property_height_falloff:

.. rst-class:: classref-property

:ref:`float<class_float>` **height_falloff** = ``0.0`` :ref:`🔗<class_FogMaterial_property_height_falloff>`

.. rst-class:: classref-property-setget

- |void| **set_height_falloff**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height_falloff**\ (\ )

基于高度的雾，随着世界空间中高度的增加而降低密度的速度。高的衰减将产生急剧的过渡，而低的衰减将产生更平滑的过渡。\ ``0.0`` 的值会产生均匀密度的雾。高度阈值由关联的 :ref:`FogVolume<class_FogVolume>` 的高度决定。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
