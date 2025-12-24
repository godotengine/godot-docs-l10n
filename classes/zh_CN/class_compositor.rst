:github_url: hide

.. _class_Compositor:

Compositor
==========

**实验性：** More customization of the rendering pipeline will be added in the future.

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

存储用于自定义视口渲染方式的属性。

.. rst-class:: classref-introduction-group

描述
----

合成器资源存储用于自定义 :ref:`Viewport<class_Viewport>` 渲染方式的属性。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`合成器 <../tutorials/rendering/compositor>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +------------------------------------------------------------------------------+-------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`\[:ref:`CompositorEffect<class_CompositorEffect>`\] | :ref:`compositor_effects<class_Compositor_property_compositor_effects>` | ``[]`` |
   +------------------------------------------------------------------------------+-------------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Compositor_property_compositor_effects:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`CompositorEffect<class_CompositorEffect>`\] **compositor_effects** = ``[]`` :ref:`🔗<class_Compositor_property_compositor_effects>`

.. rst-class:: classref-property-setget

- |void| **set_compositor_effects**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`CompositorEffect<class_CompositorEffect>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`CompositorEffect<class_CompositorEffect>`\] **get_compositor_effects**\ (\ )

使用该合成器的视口在进行渲染时应用的自定义 :ref:`CompositorEffect<class_CompositorEffect>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
