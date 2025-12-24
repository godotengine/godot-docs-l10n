:github_url: hide

.. _class_GLTFTexture:

GLTFTexture
===========

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

GLTFTexture 代表 glTF 文件中的纹理。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`运行时文件加载与保存 <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`sampler<class_GLTFTexture_property_sampler>`     | ``-1`` |
   +-----------------------+--------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`src_image<class_GLTFTexture_property_src_image>` | ``-1`` |
   +-----------------------+--------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_GLTFTexture_property_sampler:

.. rst-class:: classref-property

:ref:`int<class_int>` **sampler** = ``-1`` :ref:`🔗<class_GLTFTexture_property_sampler>`

.. rst-class:: classref-property-setget

- |void| **set_sampler**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sampler**\ (\ )

纹理采样器的 ID，在对图像进行采样时使用。如果为 -1，则使用默认的纹理采样器（线性过滤，并在两个轴上重复环绕）。

.. rst-class:: classref-item-separator

----

.. _class_GLTFTexture_property_src_image:

.. rst-class:: classref-property

:ref:`int<class_int>` **src_image** = ``-1`` :ref:`🔗<class_GLTFTexture_property_src_image>`

.. rst-class:: classref-property-setget

- |void| **set_src_image**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_src_image**\ (\ )

与该纹理关联的图像索引，见 :ref:`GLTFState.get_images()<class_GLTFState_method_get_images>`\ 。如果为 -1，则该纹理未与图像相关联。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
