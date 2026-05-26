:github_url: hide

.. _class_VisualShaderNodeTexture:

VisualShaderNodeTexture
=======================

**继承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在可视化着色器图中，执行 2D 纹理查找。

.. rst-class:: classref-introduction-group

描述
----

对提供的纹理进行查找操作，支持从多个纹理源选择。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+
   | :ref:`Source<enum_VisualShaderNodeTexture_Source>`           | :ref:`source<class_VisualShaderNodeTexture_property_source>`             | ``0`` |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>`                            | :ref:`texture<class_VisualShaderNodeTexture_property_texture>`           |       |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+
   | :ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>` | :ref:`texture_type<class_VisualShaderNodeTexture_property_texture_type>` | ``0`` |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_VisualShaderNodeTexture_Source:

.. rst-class:: classref-enumeration

enum **Source**: :ref:`🔗<enum_VisualShaderNodeTexture_Source>`

.. _class_VisualShaderNodeTexture_constant_SOURCE_TEXTURE:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_TEXTURE** = ``0``

使用给定的纹理作为此函数的参数。

.. _class_VisualShaderNodeTexture_constant_SOURCE_SCREEN:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_SCREEN** = ``1``

使用当前视口的纹理作为源。

.. _class_VisualShaderNodeTexture_constant_SOURCE_2D_TEXTURE:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_2D_TEXTURE** = ``2``

使用该着色器内置纹理中的纹理（例如 :ref:`Sprite2D<class_Sprite2D>` 的纹理）。

.. _class_VisualShaderNodeTexture_constant_SOURCE_2D_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_2D_NORMAL** = ``3``

使用该着色器内置的法线贴图的纹理。

.. _class_VisualShaderNodeTexture_constant_SOURCE_DEPTH:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_DEPTH** = ``4``

使用在深度预处理过程中捕获的深度纹理。只有在使用深度预处理时才可用（即在空间着色器和 forward_plus 或 gl_compatibility 渲染器中）。

.. _class_VisualShaderNodeTexture_constant_SOURCE_PORT:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_PORT** = ``5``

将输入端口中提供的纹理用于此函数。

.. _class_VisualShaderNodeTexture_constant_SOURCE_3D_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_3D_NORMAL** = ``6``

使用在深度预处理过程中捕获的法线缓冲区。只有在法线粗糙度缓冲区可用时才可用（即在空间着色器和 forward_plus 渲染器中）。

.. _class_VisualShaderNodeTexture_constant_SOURCE_ROUGHNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_ROUGHNESS** = ``7``

使用在深度预处理过程中捕获的粗糙度缓冲区。仅当法线粗糙度缓冲区可用时才可用（即在空间着色器和 forward_plus 渲染器中）。

.. _class_VisualShaderNodeTexture_constant_SOURCE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_MAX** = ``8``

代表 :ref:`Source<enum_VisualShaderNodeTexture_Source>` 枚举的大小。

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeTexture_TextureType:

.. rst-class:: classref-enumeration

enum **TextureType**: :ref:`🔗<enum_VisualShaderNodeTexture_TextureType>`

.. _class_VisualShaderNodeTexture_constant_TYPE_DATA:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>` **TYPE_DATA** = ``0``

在uniform声明中未添加提示。

.. _class_VisualShaderNodeTexture_constant_TYPE_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>` **TYPE_COLOR** = ``1``

将 ``source_color`` 作为提示添加到 uniform 声明中，以便将非线性 sRGB 编码正确转换为线性编码。

.. _class_VisualShaderNodeTexture_constant_TYPE_NORMAL_MAP:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>` **TYPE_NORMAL_MAP** = ``2``

将 ``hint_normal`` 作为提示添加到 uniform 声明中，该声明在内部将纹理转换为法线贴图。

.. _class_VisualShaderNodeTexture_constant_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>` **TYPE_MAX** = ``3``

代表 :ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNodeTexture_property_source:

.. rst-class:: classref-property

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **source** = ``0`` :ref:`🔗<class_VisualShaderNodeTexture_property_source>`

.. rst-class:: classref-property-setget

- |void| **set_source**\ (\ value\: :ref:`Source<enum_VisualShaderNodeTexture_Source>`\ )
- :ref:`Source<enum_VisualShaderNodeTexture_Source>` **get_source**\ (\ )

决定要查询的源。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeTexture_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_VisualShaderNodeTexture_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

源纹理，如果需要的话，用于选定的\ :ref:`source<class_VisualShaderNodeTexture_property_source>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeTexture_property_texture_type:

.. rst-class:: classref-property

:ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>` **texture_type** = ``0`` :ref:`🔗<class_VisualShaderNodeTexture_property_texture_type>`

.. rst-class:: classref-property-setget

- |void| **set_texture_type**\ (\ value\: :ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>`\ )
- :ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>` **get_texture_type**\ (\ )

如果 :ref:`source<class_VisualShaderNodeTexture_property_source>` 为 :ref:`SOURCE_TEXTURE<class_VisualShaderNodeTexture_constant_SOURCE_TEXTURE>`\ ，则指定纹理的类型。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
