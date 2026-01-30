:github_url: hide

.. _class_GLTFSpecGloss:

GLTFSpecGloss
=============

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

已归档的 glTF 扩展，用于镜面/光泽材质。

.. rst-class:: classref-introduction-group

描述
----

KHR_materials_pbrSpecularGlossiness 是一个已归档的 glTF 扩展。这意味着它已被弃用，不推荐用于新文件。但是，它仍然被支持用于加载旧文件。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`运行时文件加载与保存 <../tutorials/io/runtime_file_loading_and_saving>`

- `KHR_materials_pbrSpecularGlossiness glTF 扩展规范 <https://github.com/KhronosGroup/glTF/blob/main/extensions/2.0/Archived/KHR_materials_pbrSpecularGlossiness>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>` | :ref:`diffuse_factor<class_GLTFSpecGloss_property_diffuse_factor>`   | ``Color(1, 1, 1, 1)`` |
   +---------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`Image<class_Image>` | :ref:`diffuse_img<class_GLTFSpecGloss_property_diffuse_img>`         |                       |
   +---------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>` | :ref:`gloss_factor<class_GLTFSpecGloss_property_gloss_factor>`       | ``1.0``               |
   +---------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`Image<class_Image>` | :ref:`spec_gloss_img<class_GLTFSpecGloss_property_spec_gloss_img>`   |                       |
   +---------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>` | :ref:`specular_factor<class_GLTFSpecGloss_property_specular_factor>` | ``Color(1, 1, 1, 1)`` |
   +---------------------------+----------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_GLTFSpecGloss_property_diffuse_factor:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **diffuse_factor** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_GLTFSpecGloss_property_diffuse_factor>`

.. rst-class:: classref-property-setget

- |void| **set_diffuse_factor**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_diffuse_factor**\ (\ )

该材质反射漫反射系数。

.. rst-class:: classref-item-separator

----

.. _class_GLTFSpecGloss_property_diffuse_img:

.. rst-class:: classref-property

:ref:`Image<class_Image>` **diffuse_img** :ref:`🔗<class_GLTFSpecGloss_property_diffuse_img>`

.. rst-class:: classref-property-setget

- |void| **set_diffuse_img**\ (\ value\: :ref:`Image<class_Image>`\ )
- :ref:`Image<class_Image>` **get_diffuse_img**\ (\ )

漫反射纹理。

.. rst-class:: classref-item-separator

----

.. _class_GLTFSpecGloss_property_gloss_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **gloss_factor** = ``1.0`` :ref:`🔗<class_GLTFSpecGloss_property_gloss_factor>`

.. rst-class:: classref-property-setget

- |void| **set_gloss_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gloss_factor**\ (\ )

材质的光泽度或光滑度。

.. rst-class:: classref-item-separator

----

.. _class_GLTFSpecGloss_property_spec_gloss_img:

.. rst-class:: classref-property

:ref:`Image<class_Image>` **spec_gloss_img** :ref:`🔗<class_GLTFSpecGloss_property_spec_gloss_img>`

.. rst-class:: classref-property-setget

- |void| **set_spec_gloss_img**\ (\ value\: :ref:`Image<class_Image>`\ )
- :ref:`Image<class_Image>` **get_spec_gloss_img**\ (\ )

镜面光泽度纹理。

.. rst-class:: classref-item-separator

----

.. _class_GLTFSpecGloss_property_specular_factor:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **specular_factor** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_GLTFSpecGloss_property_specular_factor>`

.. rst-class:: classref-property-setget

- |void| **set_specular_factor**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_specular_factor**\ (\ )

材质的镜面反射 RGB 颜色。不使用 Alpha 通道。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
