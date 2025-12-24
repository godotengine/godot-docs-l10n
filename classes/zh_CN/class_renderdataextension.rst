:github_url: hide

.. _class_RenderDataExtension:

RenderDataExtension
===================

**继承：** :ref:`RenderData<class_RenderData>` **<** :ref:`Object<class_Object>`

该类允许在 GDExtension 中实现 RenderData。

.. rst-class:: classref-introduction-group

描述
----

该类允许在 GDExtension 中实现 RenderData。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`_get_camera_attributes<class_RenderDataExtension_private_method__get_camera_attributes>`\ (\ ) |virtual| |const|       |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`_get_environment<class_RenderDataExtension_private_method__get_environment>`\ (\ ) |virtual| |const|                   |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RenderSceneBuffers<class_RenderSceneBuffers>` | :ref:`_get_render_scene_buffers<class_RenderDataExtension_private_method__get_render_scene_buffers>`\ (\ ) |virtual| |const| |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RenderSceneData<class_RenderSceneData>`       | :ref:`_get_render_scene_data<class_RenderDataExtension_private_method__get_render_scene_data>`\ (\ ) |virtual| |const|       |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_RenderDataExtension_private_method__get_camera_attributes:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_camera_attributes**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderDataExtension_private_method__get_camera_attributes>`

在 GDExtension 中实现它以返回实现的相机属性对象的 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RenderDataExtension_private_method__get_environment:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_environment**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderDataExtension_private_method__get_environment>`

在 GDExtension 中实现它以返回实现的环境对象的 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RenderDataExtension_private_method__get_render_scene_buffers:

.. rst-class:: classref-method

:ref:`RenderSceneBuffers<class_RenderSceneBuffers>` **_get_render_scene_buffers**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderDataExtension_private_method__get_render_scene_buffers>`

在 GDExtension 中实现它以返回实现的 :ref:`RenderSceneBuffers<class_RenderSceneBuffers>` 对象。

.. rst-class:: classref-item-separator

----

.. _class_RenderDataExtension_private_method__get_render_scene_data:

.. rst-class:: classref-method

:ref:`RenderSceneData<class_RenderSceneData>` **_get_render_scene_data**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderDataExtension_private_method__get_render_scene_data>`

在 GDExtension 中实现它以返回实现的 :ref:`RenderSceneDataExtension<class_RenderSceneDataExtension>` 对象。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
