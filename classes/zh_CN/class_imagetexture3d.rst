:github_url: hide

.. _class_ImageTexture3D:

ImageTexture3D
==============

**继承：** :ref:`Texture3D<class_Texture3D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

具有 3 个维度的纹理。

.. rst-class:: classref-introduction-group

描述
----

**ImageTexture3D** 是一种具有宽度、高度和深度的三维 :ref:`ImageTexture<class_ImageTexture>`\ 。另见 :ref:`ImageTextureLayered<class_ImageTextureLayered>`\ 。

3D 纹理通常用于存储 :ref:`FogMaterial<class_FogMaterial>` 的密度图、\ :ref:`Environment<class_Environment>` 的色彩校正 LUT、\ :ref:`GPUParticlesAttractorVectorField3D<class_GPUParticlesAttractorVectorField3D>` 的矢量场和 :ref:`GPUParticlesCollisionSDF3D<class_GPUParticlesCollisionSDF3D>` 的碰撞图。3D 纹理也可用于自定义着色器。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`create<class_ImageTexture3D_method_create>`\ (\ format\: :ref:`Format<enum_Image_Format>`, width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, depth\: :ref:`int<class_int>`, use_mipmaps\: :ref:`bool<class_bool>`, data\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ ) |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`update<class_ImageTexture3D_method_update>`\ (\ data\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ )                                                                                                                                                                                 |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ImageTexture3D_method_create:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create**\ (\ format\: :ref:`Format<enum_Image_Format>`, width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, depth\: :ref:`int<class_int>`, use_mipmaps\: :ref:`bool<class_bool>`, data\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ ) :ref:`🔗<class_ImageTexture3D_method_create>`

创建格式为 ``format``\ 、宽度为 ``width``\ 、高度为 ``height``\ 、色深为 ``depth`` 的 **ImageTexture3D**\ 。如果 ``use_mipmaps`` 为 ``true``\ ，则为该 **ImageTexture3D** 生成 Mipmap。

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture3D_method_update:

.. rst-class:: classref-method

|void| **update**\ (\ data\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ ) :ref:`🔗<class_ImageTexture3D_method_update>`

将纹理的现有数据替换为 ``data`` 中指定的图层。\ ``data`` 的大小必须与用于 :ref:`create()<class_ImageTexture3D_method_create>` 的参数一致。换句话说，不能通过调用 :ref:`update()<class_ImageTexture3D_method_update>` 来调整纹理的大小或改变其格式。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
