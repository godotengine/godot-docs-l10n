:github_url: hide

.. _class_VisualShaderNodeCubemap:

VisualShaderNodeCubemap
=======================

**继承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在可视化着色器图中使用的一种 :ref:`Cubemap<class_Cubemap>` 采样节点。

.. rst-class:: classref-introduction-group

描述
----

在着色器语言中被转换成 ``texture(cubemap, vec3)``\ 。返回一个颜色向量和 Alpha 通道的标量。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+
   | :ref:`TextureLayered<class_TextureLayered>`                  | :ref:`cube_map<class_VisualShaderNodeCubemap_property_cube_map>`         |       |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+
   | :ref:`Source<enum_VisualShaderNodeCubemap_Source>`           | :ref:`source<class_VisualShaderNodeCubemap_property_source>`             | ``0`` |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+
   | :ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` | :ref:`texture_type<class_VisualShaderNodeCubemap_property_texture_type>` | ``0`` |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_VisualShaderNodeCubemap_Source:

.. rst-class:: classref-enumeration

enum **Source**: :ref:`🔗<enum_VisualShaderNodeCubemap_Source>`

.. _class_VisualShaderNodeCubemap_constant_SOURCE_TEXTURE:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeCubemap_Source>` **SOURCE_TEXTURE** = ``0``

使用 :ref:`cube_map<class_VisualShaderNodeCubemap_property_cube_map>` 设置的 :ref:`Cubemap<class_Cubemap>`\ 。如果设置为 :ref:`source<class_VisualShaderNodeCubemap_property_source>`\ ，则会忽略 ``samplerCube`` 端口。

.. _class_VisualShaderNodeCubemap_constant_SOURCE_PORT:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeCubemap_Source>` **SOURCE_PORT** = ``1``

使用通过 ``samplerCube`` 端口传递的 :ref:`Cubemap<class_Cubemap>` 采样器引用。如果设置为 :ref:`source<class_VisualShaderNodeCubemap_property_source>`\ ，则会忽略 :ref:`cube_map<class_VisualShaderNodeCubemap_property_cube_map>` 纹理。

.. _class_VisualShaderNodeCubemap_constant_SOURCE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeCubemap_Source>` **SOURCE_MAX** = ``2``

代表 :ref:`Source<enum_VisualShaderNodeCubemap_Source>` 枚举的大小。

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeCubemap_TextureType:

.. rst-class:: classref-enumeration

enum **TextureType**: :ref:`🔗<enum_VisualShaderNodeCubemap_TextureType>`

.. _class_VisualShaderNodeCubemap_constant_TYPE_DATA:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` **TYPE_DATA** = ``0``

在uniform声明中未添加提示。

.. _class_VisualShaderNodeCubemap_constant_TYPE_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` **TYPE_COLOR** = ``1``

将 ``source_color`` 作为提示添加到 uniform 声明中，以便将非线性 sRGB 编码正确转换为线性编码。

.. _class_VisualShaderNodeCubemap_constant_TYPE_NORMAL_MAP:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` **TYPE_NORMAL_MAP** = ``2``

将 ``hint_normal`` 作为提示添加到 uniform 声明中，该声明在内部将纹理转换为法线贴图。

.. _class_VisualShaderNodeCubemap_constant_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` **TYPE_MAX** = ``3``

代表 :ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNodeCubemap_property_cube_map:

.. rst-class:: classref-property

:ref:`TextureLayered<class_TextureLayered>` **cube_map** :ref:`🔗<class_VisualShaderNodeCubemap_property_cube_map>`

.. rst-class:: classref-property-setget

- |void| **set_cube_map**\ (\ value\: :ref:`TextureLayered<class_TextureLayered>`\ )
- :ref:`TextureLayered<class_TextureLayered>` **get_cube_map**\ (\ )

当使用 :ref:`SOURCE_TEXTURE<class_VisualShaderNodeCubemap_constant_SOURCE_TEXTURE>` 作为 :ref:`source<class_VisualShaderNodeCubemap_property_source>` 时，要采样的 :ref:`Cubemap<class_Cubemap>` 纹理。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCubemap_property_source:

.. rst-class:: classref-property

:ref:`Source<enum_VisualShaderNodeCubemap_Source>` **source** = ``0`` :ref:`🔗<class_VisualShaderNodeCubemap_property_source>`

.. rst-class:: classref-property-setget

- |void| **set_source**\ (\ value\: :ref:`Source<enum_VisualShaderNodeCubemap_Source>`\ )
- :ref:`Source<enum_VisualShaderNodeCubemap_Source>` **get_source**\ (\ )

定义采样应该使用哪个源。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCubemap_property_texture_type:

.. rst-class:: classref-property

:ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` **texture_type** = ``0`` :ref:`🔗<class_VisualShaderNodeCubemap_property_texture_type>`

.. rst-class:: classref-property-setget

- |void| **set_texture_type**\ (\ value\: :ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>`\ )
- :ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` **get_texture_type**\ (\ )

定义源纹理提供的数据类型。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
