:github_url: hide

.. _class_VisualShaderNodeTexture3D:

VisualShaderNodeTexture3D
=========================

**继承：** :ref:`VisualShaderNodeSample3D<class_VisualShaderNodeSample3D>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在可视化着色器图中，执行 3D 纹理查找。

.. rst-class:: classref-introduction-group

描述
----

对提供的纹理进行查找操作，支持从多个纹理源选择。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------+------------------------------------------------------------------+
   | :ref:`Texture3D<class_Texture3D>` | :ref:`texture<class_VisualShaderNodeTexture3D_property_texture>` |
   +-----------------------------------+------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNodeTexture3D_property_texture:

.. rst-class:: classref-property

:ref:`Texture3D<class_Texture3D>` **texture** :ref:`🔗<class_VisualShaderNodeTexture3D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture3D<class_Texture3D>`\ )
- :ref:`Texture3D<class_Texture3D>` **get_texture**\ (\ )

源纹理。在 :ref:`VisualShaderNodeSample3D.source<class_VisualShaderNodeSample3D_property_source>` 为 :ref:`VisualShaderNodeSample3D.SOURCE_TEXTURE<class_VisualShaderNodeSample3D_constant_SOURCE_TEXTURE>` 时使用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
