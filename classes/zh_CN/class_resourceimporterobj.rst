:github_url: hide

.. _class_ResourceImporterOBJ:

ResourceImporterOBJ
===================

**继承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

将 OBJ 3D 模型导入为独立的 :ref:`Mesh<class_Mesh>` 或场景。

.. rst-class:: classref-introduction-group

描述
----

与 :ref:`ResourceImporterScene<class_ResourceImporterScene>` 不同，\ **ResourceImporterOBJ** 默认情况下会导入单个 :ref:`Mesh<class_Mesh>` 资源，而不是导入一个 :ref:`PackedScene<class_PackedScene>`\ 。这使得在需要直接 :ref:`Mesh<class_Mesh>` 资源的节点（例如 :ref:`GridMap<class_GridMap>`\ 、\ :ref:`GPUParticles3D<class_GPUParticles3D>` 或 :ref:`CPUParticles3D<class_CPUParticles3D>`\ ）中使用 :ref:`Mesh<class_Mesh>` 资源变得更加容易。请注意，无论源格式如何，仍然可以使用\ **高级导入设置**\ 对话框保存 3D 场景中的网格资源。

另请参见 :ref:`ResourceImporterScene<class_ResourceImporterScene>`\ ，它被用于更高级的 3D 格式，例如 glTF。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`导入 3D 场景 <../tutorials/assets_pipeline/importing_3d_scenes/index>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`force_disable_mesh_compression<class_ResourceImporterOBJ_property_force_disable_mesh_compression>`     | ``false``            |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`generate_lightmap_uv2<class_ResourceImporterOBJ_property_generate_lightmap_uv2>`                       | ``false``            |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`generate_lightmap_uv2_texel_size<class_ResourceImporterOBJ_property_generate_lightmap_uv2_texel_size>` | ``0.2``              |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`generate_lods<class_ResourceImporterOBJ_property_generate_lods>`                                       | ``true``             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`generate_shadow_mesh<class_ResourceImporterOBJ_property_generate_shadow_mesh>`                         | ``true``             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`generate_tangents<class_ResourceImporterOBJ_property_generate_tangents>`                               | ``true``             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`offset_mesh<class_ResourceImporterOBJ_property_offset_mesh>`                                           | ``Vector3(0, 0, 0)`` |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`scale_mesh<class_ResourceImporterOBJ_property_scale_mesh>`                                             | ``Vector3(1, 1, 1)`` |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_ResourceImporterOBJ_property_force_disable_mesh_compression:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force_disable_mesh_compression** = ``false`` :ref:`🔗<class_ResourceImporterOBJ_property_force_disable_mesh_compression>`

如果为 ``true``\ ，则不会使用网格压缩。如果你在网格法线或 UV 中发现块状伪影，或者如果你的网格在每个方向都大于几千米，请考虑启用。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_lightmap_uv2:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_lightmap_uv2** = ``false`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_lightmap_uv2>`

如果为 ``true``\ ，导入时会为烘焙 :ref:`LightmapGI<class_LightmapGI>` 生成 UV2。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_lightmap_uv2_texel_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **generate_lightmap_uv2_texel_size** = ``0.2`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_lightmap_uv2_texel_size>`

控制烘焙光照贴图上每个纹素的大小。较小的值会产生更精确的光照贴图，但代价是光照贴图尺寸更大，烘焙时间也更长。

\ **注意：**\ 仅当 :ref:`generate_lightmap_uv2<class_ResourceImporterOBJ_property_generate_lightmap_uv2>` 为 ``true`` 时有效。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_lods:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_lods** = ``true`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_lods>`

如果为 ``true``\ ，则生成网格的较低细节变体，这些变体将显示在远处以提高渲染性能。并非所有网格体都受益于 LOD，特别是如果它们从未从远处渲染。禁用该功能可以减少输出文件大小并加快导入速度。有关详细信息，请参阅 `网格细节级别（LOD） <../tutorials/3d/mesh_lod.html#doc-mesh-lod>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_shadow_mesh:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_shadow_mesh** = ``true`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_shadow_mesh>`

如果为 ``true``\ ，则在导入时启用阴影网格体的生成。这可以通过在可能的情况下将顶点焊接在一起来优化阴影渲染，且不会降低质量。这反过来又减少了渲染阴影所需的内存带宽。阴影网格生成当前不支持使用比源网格更低的细节级别（但阴影渲染将在相关时使用 LOD）。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_tangents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_tangents** = ``true`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_tangents>`

If ``true``, generate vertex tangents using `Mikktspace <http://www.mikktspace.com/>`__ if the source mesh doesn't have tangent data. When possible, it's recommended to let the 3D modeling software generate tangents on export instead of relying on this option. Tangents are required for correct display of normal and height maps, along with any material/shader features that require tangents.

If you don't need material features that require tangents, disabling this can reduce output file size and speed up importing if the source 3D file doesn't contain tangents.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_offset_mesh:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **offset_mesh** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_ResourceImporterOBJ_property_offset_mesh>`

将网格数据偏移指定值。这可被用于解决未对齐的网格，而无需修改源文件。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_scale_mesh:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **scale_mesh** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_ResourceImporterOBJ_property_scale_mesh>`

按指定值缩放网格数据。这可被用于解决缩放错误的网格，而无需修改源文件。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
