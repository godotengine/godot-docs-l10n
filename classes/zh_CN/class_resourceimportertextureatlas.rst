:github_url: hide

.. _class_ResourceImporterTextureAtlas:

ResourceImporterTextureAtlas
============================

**继承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

将 PNG 图像中的纹理集合导入到优化的 :ref:`AtlasTexture<class_AtlasTexture>` 中以进行 2D 渲染。

.. rst-class:: classref-introduction-group

描述
----

这会将 PNG 图像中的纹理集合导入到 :ref:`AtlasTexture<class_AtlasTexture>` 或 2D :ref:`ArrayMesh<class_ArrayMesh>` 中。从精灵表导入 2D 动画时，这可被用于节省内存。纹理图集仅支持在 2D 中渲染，不支持 3D。另请参见 :ref:`ResourceImporterTexture<class_ResourceImporterTexture>` 和 :ref:`ResourceImporterLayeredTexture<class_ResourceImporterLayeredTexture>`\ 。

\ **注意：**\ **ResourceImporterTextureAtlas** 不处理导入 :ref:`TileSetAtlasSource<class_TileSetAtlasSource>`\ ，它是使用 :ref:`TileSet<class_TileSet>` 编辑器创建的。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>` | :ref:`atlas_file<class_ResourceImporterTextureAtlas_property_atlas_file>`                                       | ``""``    |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`crop_to_region<class_ResourceImporterTextureAtlas_property_crop_to_region>`                               | ``false`` |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`import_mode<class_ResourceImporterTextureAtlas_property_import_mode>`                                     | ``0``     |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`trim_alpha_border_from_region<class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region>` | ``true``  |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_ResourceImporterTextureAtlas_property_atlas_file:

.. rst-class:: classref-property

:ref:`String<class_String>` **atlas_file** = ``""`` :ref:`🔗<class_ResourceImporterTextureAtlas_property_atlas_file>`

图集精灵表的路径。该属性\ *必须*\ 被设置为 PNG 图像的有效路径。否则，图集将无法导入。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTextureAtlas_property_crop_to_region:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **crop_to_region** = ``false`` :ref:`🔗<class_ResourceImporterTextureAtlas_property_crop_to_region>`

如果为 ``true``\ ，则丢弃图集中的空白区域。这仅影响最终的精灵定位，而不影响存储。另请参见 :ref:`trim_alpha_border_from_region<class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region>`\ 。

\ **注意：**\ 仅当 :ref:`import_mode<class_ResourceImporterTextureAtlas_property_import_mode>` 为\ **区块**\ 时有效。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTextureAtlas_property_import_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **import_mode** = ``0`` :ref:`🔗<class_ResourceImporterTextureAtlas_property_import_mode>`

**区块：**\ 将图集导入到 :ref:`AtlasTexture<class_AtlasTexture>` 资源中，该资源被渲染为矩形。这渲染速度很快，但如果 :ref:`trim_alpha_border_from_region<class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region>` 无法有效修剪透明区域，则仍然必须渲染透明区域。 在屏幕上渲染大型精灵时，这会降低性能。

\ **网格：**\ 将图集导入为 :ref:`ArrayMesh<class_ArrayMesh>` 资源，保持原始位图可见（但被渲染为多边形）。这可被用于在渲染大型透明精灵时降低填充率，但代价是如果精灵中几乎没有透明区域，则渲染速度会变慢。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **trim_alpha_border_from_region** = ``true`` :ref:`🔗<class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region>`

如果为 ``true``\ ，则使用裁剪矩形（从不旋转）修剪区块以排除完全透明的像素。这可以被用来节省内存。另请参见 :ref:`crop_to_region<class_ResourceImporterTextureAtlas_property_crop_to_region>`\ 。

\ **注意：**\ 仅当 :ref:`import_mode<class_ResourceImporterTextureAtlas_property_import_mode>` 为\ **区块**\ 时有效。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
