:github_url: hide

.. _class_RenderSceneData:

RenderSceneData
===============

**继承：** :ref:`Object<class_Object>`

**派生：** :ref:`RenderSceneDataExtension<class_RenderSceneDataExtension>`, :ref:`RenderSceneDataRD<class_RenderSceneDataRD>`

抽象渲染数据对象，保存与渲染视口的单个帧相关的场景数据。

.. rst-class:: classref-introduction-group

描述
----

抽象场景数据对象，在渲染单个视口期间存在。

\ **注意：**\ 这是一个内部渲染服务器对象，不要从脚本中实例化它。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>`   | :ref:`get_cam_projection<class_RenderSceneData_method_get_cam_projection>`\ (\ ) |const|                                 |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`get_cam_transform<class_RenderSceneData_method_get_cam_transform>`\ (\ ) |const|                                   |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                 | :ref:`get_uniform_buffer<class_RenderSceneData_method_get_uniform_buffer>`\ (\ ) |const|                                 |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_view_count<class_RenderSceneData_method_get_view_count>`\ (\ ) |const|                                         |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`get_view_eye_offset<class_RenderSceneData_method_get_view_eye_offset>`\ (\ view\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>`   | :ref:`get_view_projection<class_RenderSceneData_method_get_view_projection>`\ (\ view\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_RenderSceneData_method_get_cam_projection:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **get_cam_projection**\ (\ ) |const| :ref:`🔗<class_RenderSceneData_method_get_cam_projection>`

返回用于渲染该帧的相机投影。

\ **注意：**\ 如果渲染多个视图，则这将返回一个组合的投影。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneData_method_get_cam_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_cam_transform**\ (\ ) |const| :ref:`🔗<class_RenderSceneData_method_get_cam_transform>`

返回用于渲染该帧的相机变换。

\ **注意：**\ 如果渲染多个视图，则这将返回一个居中的变换。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneData_method_get_uniform_buffer:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_uniform_buffer**\ (\ ) |const| :ref:`🔗<class_RenderSceneData_method_get_uniform_buffer>`

返回包含场景数据作为 UBO 的 uniform 缓冲区的 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneData_method_get_view_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_view_count**\ (\ ) |const| :ref:`🔗<class_RenderSceneData_method_get_view_count>`

返回渲染的视图数。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneData_method_get_view_eye_offset:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_view_eye_offset**\ (\ view\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_RenderSceneData_method_get_view_eye_offset>`

返回用于渲染该帧的每个视图的眼睛偏移量。这是我们的相机变换和眼睛变换之间的偏移。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneData_method_get_view_projection:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **get_view_projection**\ (\ view\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_RenderSceneData_method_get_view_projection>`

返回用于渲染该帧的每个视图的视图投影。

\ **注意：**\ 如果渲染单个视图，则返回相机投影。如果渲染多个视图，则这将返回给定视图的投影，包括眼睛偏移。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
