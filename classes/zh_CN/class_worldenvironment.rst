:github_url: hide

.. meta::
	:keywords: background, sky

.. _class_WorldEnvironment:

WorldEnvironment
================

**继承：** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

整个场景的默认环境属性，后期处理效果、照明和背景设置。

.. rst-class:: classref-introduction-group

描述
----

**WorldEnvironment** 节点用于为场景配置默认的 :ref:`Environment<class_Environment>`\ 。

\ **WorldEnvironment** 中定义的参数可以被设置为当前的 :ref:`Camera3D<class_Camera3D>` 上所设置的 :ref:`Environment<class_Environment>` 资源覆盖。此外，在一个给定场景中，同一时间只能实例化一个 **WorldEnvironment**\ 。

\ **WorldEnvironment** 允许用户指定默认的照明参数（例如环境照明）、各种后处理效果（例如 SSAO、DOF、色调映射）、以及如何绘制背景（例如纯色、天空盒）。通常，添加这些是为了提高场景的真实感/色彩平衡。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`环境和后期处理 <../tutorials/3d/environment_and_post_processing>`

- `3D 材质测试演示 <https://godotengine.org/asset-library/asset/2742>`__

- `第三人称射击（TPS）演示 <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------------------+-----------------------------------------------------------------------------+
   | :ref:`CameraAttributes<class_CameraAttributes>` | :ref:`camera_attributes<class_WorldEnvironment_property_camera_attributes>` |
   +-------------------------------------------------+-----------------------------------------------------------------------------+
   | :ref:`Compositor<class_Compositor>`             | :ref:`compositor<class_WorldEnvironment_property_compositor>`               |
   +-------------------------------------------------+-----------------------------------------------------------------------------+
   | :ref:`Environment<class_Environment>`           | :ref:`environment<class_WorldEnvironment_property_environment>`             |
   +-------------------------------------------------+-----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_WorldEnvironment_property_camera_attributes:

.. rst-class:: classref-property

:ref:`CameraAttributes<class_CameraAttributes>` **camera_attributes** :ref:`🔗<class_WorldEnvironment_property_camera_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_camera_attributes**\ (\ value\: :ref:`CameraAttributes<class_CameraAttributes>`\ )
- :ref:`CameraAttributes<class_CameraAttributes>` **get_camera_attributes**\ (\ )

:ref:`Camera3D<class_Camera3D>` 上未设置时 :ref:`CameraAttributes<class_CameraAttributes>` 时默认使用的资源。

.. rst-class:: classref-item-separator

----

.. _class_WorldEnvironment_property_compositor:

.. rst-class:: classref-property

:ref:`Compositor<class_Compositor>` **compositor** :ref:`🔗<class_WorldEnvironment_property_compositor>`

.. rst-class:: classref-property-setget

- |void| **set_compositor**\ (\ value\: :ref:`Compositor<class_Compositor>`\ )
- :ref:`Compositor<class_Compositor>` **get_compositor**\ (\ )

:ref:`Camera3D<class_Camera3D>` 上未设置时要使用的默认 :ref:`Compositor<class_Compositor>` 资源。

.. rst-class:: classref-item-separator

----

.. _class_WorldEnvironment_property_environment:

.. rst-class:: classref-property

:ref:`Environment<class_Environment>` **environment** :ref:`🔗<class_WorldEnvironment_property_environment>`

.. rst-class:: classref-property-setget

- |void| **set_environment**\ (\ value\: :ref:`Environment<class_Environment>`\ )
- :ref:`Environment<class_Environment>` **get_environment**\ (\ )

此 **WorldEnvironment** 世界环境所使用的 :ref:`Environment<class_Environment>` 环境资源，定义默认属性。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
