:github_url: hide

.. _class_GLTFCamera:

GLTFCamera
==========

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表 glTF 相机。

.. rst-class:: classref-introduction-group

描述
----

代表基础 glTF 规格中定义的相机。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`运行时文件加载与保存 <../tutorials/io/runtime_file_loading_and_saving>`

- `glTF 相机的详细规格 <https://registry.khronos.org/glTF/specs/2.0/glTF-2.0.html#reference-camera>`__

- `glTF 相机规格和示例文件 <https://github.com/KhronosGroup/glTF-Tutorials/blob/master/gltfTutorial/gltfTutorial_015_SimpleCameras.md>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`depth_far<class_GLTFCamera_property_depth_far>`     | ``4000.0``    |
   +---------------------------+-----------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`depth_near<class_GLTFCamera_property_depth_near>`   | ``0.05``      |
   +---------------------------+-----------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`fov<class_GLTFCamera_property_fov>`                 | ``1.3089969`` |
   +---------------------------+-----------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`   | :ref:`perspective<class_GLTFCamera_property_perspective>` | ``true``      |
   +---------------------------+-----------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`size_mag<class_GLTFCamera_property_size_mag>`       | ``0.5``       |
   +---------------------------+-----------------------------------------------------------+---------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFCamera<class_GLTFCamera>` | :ref:`from_dictionary<class_GLTFCamera_method_from_dictionary>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFCamera<class_GLTFCamera>` | :ref:`from_node<class_GLTFCamera_method_from_node>`\ (\ camera_node\: :ref:`Camera3D<class_Camera3D>`\ ) |static|                |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`to_dictionary<class_GLTFCamera_method_to_dictionary>`\ (\ ) |const|                                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Camera3D<class_Camera3D>`     | :ref:`to_node<class_GLTFCamera_method_to_node>`\ (\ ) |const|                                                                    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_GLTFCamera_property_depth_far:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth_far** = ``4000.0`` :ref:`🔗<class_GLTFCamera_property_depth_far>`

.. rst-class:: classref-property-setget

- |void| **set_depth_far**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth_far**\ (\ )

该相机与远剔除边界的距离，相对于其本地 Z 轴，单位为米。映射到 glTF 的 ``zfar`` 属性。

.. rst-class:: classref-item-separator

----

.. _class_GLTFCamera_property_depth_near:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth_near** = ``0.05`` :ref:`🔗<class_GLTFCamera_property_depth_near>`

.. rst-class:: classref-property-setget

- |void| **set_depth_near**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth_near**\ (\ )

该相机与近剔除边界的距离，相对于其本地 Z 轴，单位为米。映射到 glTF 的 ``znear`` 属性。

.. rst-class:: classref-item-separator

----

.. _class_GLTFCamera_property_fov:

.. rst-class:: classref-property

:ref:`float<class_float>` **fov** = ``1.3089969`` :ref:`🔗<class_GLTFCamera_property_fov>`

.. rst-class:: classref-property-setget

- |void| **set_fov**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fov**\ (\ )

该相机的 FOV。这个类和 glTF 在定义相机 FOV 时使用的都是弧度，但 Godot 使用的是度。映射到 glTF 的 ``yfov`` 属性。只在透视相机中使用，即 :ref:`perspective<class_GLTFCamera_property_perspective>` 为 ``true`` 时。

.. rst-class:: classref-item-separator

----

.. _class_GLTFCamera_property_perspective:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **perspective** = ``true`` :ref:`🔗<class_GLTFCamera_property_perspective>`

.. rst-class:: classref-property-setget

- |void| **set_perspective**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_perspective**\ (\ )

如果为 ``true``\ ，则相机处于透视模式。否则相机处于正交模式。映射到 glTF 的相机 ``type`` 属性。详见 :ref:`Camera3D.projection<class_Camera3D_property_projection>` 及 glTF 规格。

.. rst-class:: classref-item-separator

----

.. _class_GLTFCamera_property_size_mag:

.. rst-class:: classref-property

:ref:`float<class_float>` **size_mag** = ``0.5`` :ref:`🔗<class_GLTFCamera_property_size_mag>`

.. rst-class:: classref-property-setget

- |void| **set_size_mag**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_size_mag**\ (\ )

该相机的大小。这个类和 glTF 在定义相机大小尺度时使用的都是半径的米数，但 Godot 使用的是直径的米数。映射到 glTF 的 ``ymag`` 属性。只在正交相机中使用，即 :ref:`perspective<class_GLTFCamera_property_perspective>` 为 ``false`` 时。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_GLTFCamera_method_from_dictionary:

.. rst-class:: classref-method

:ref:`GLTFCamera<class_GLTFCamera>` **from_dictionary**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| :ref:`🔗<class_GLTFCamera_method_from_dictionary>`

通过解析给定的 :ref:`Dictionary<class_Dictionary>` 新建 GLTFCamera 实例。

.. rst-class:: classref-item-separator

----

.. _class_GLTFCamera_method_from_node:

.. rst-class:: classref-method

:ref:`GLTFCamera<class_GLTFCamera>` **from_node**\ (\ camera_node\: :ref:`Camera3D<class_Camera3D>`\ ) |static| :ref:`🔗<class_GLTFCamera_method_from_node>`

从给定的 Godot :ref:`Camera3D<class_Camera3D>` 节点新建 GLTFCamera 实例。

.. rst-class:: classref-item-separator

----

.. _class_GLTFCamera_method_to_dictionary:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **to_dictionary**\ (\ ) |const| :ref:`🔗<class_GLTFCamera_method_to_dictionary>`

将这个 GLTFCamera 实例序列化为 :ref:`Dictionary<class_Dictionary>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GLTFCamera_method_to_node:

.. rst-class:: classref-method

:ref:`Camera3D<class_Camera3D>` **to_node**\ (\ ) |const| :ref:`🔗<class_GLTFCamera_method_to_node>`

将这个 GLTFCamera 实例转换为 Godot :ref:`Camera3D<class_Camera3D>` 节点。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
