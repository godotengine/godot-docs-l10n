:github_url: hide

.. _class_OpenXRFoveatedInsetViewport:

OpenXRFoveatedInsetViewport
===========================

**继承：** :ref:`SubViewport<class_SubViewport>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

This viewport is used for rendering our foveated inset.

.. rst-class:: classref-introduction-group

描述
----

This viewport is used for rendering our foveated inset. When foveated inset rendering is supported OpenXR will create and configure this viewport correctly and use its output. The viewport will be available after OpenXR reaches the "begun" state. You can access it by calling ``get_tree().get_root().get_node("OpenXRFoveatedInsetViewport")`` at this time.

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                          | process_priority          | ``99999`` (overrides :ref:`Node<class_Node_property_process_priority>`)                    |
   +------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`UpdateMode<enum_SubViewport_UpdateMode>` | render_target_update_mode | ``0`` (overrides :ref:`SubViewport<class_SubViewport_property_render_target_update_mode>`) |
   +------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------------------------------+
   | :ref:`XRCamera3D<class_XRCamera3D>` | :ref:`get_xr_camera3d<class_OpenXRFoveatedInsetViewport_method_get_xr_camera3d>`\ (\ ) |const| |
   +-------------------------------------+------------------------------------------------------------------------------------------------+
   | :ref:`XROrigin3D<class_XROrigin3D>` | :ref:`get_xr_origin3d<class_OpenXRFoveatedInsetViewport_method_get_xr_origin3d>`\ (\ ) |const| |
   +-------------------------------------+------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OpenXRFoveatedInsetViewport_method_get_xr_camera3d:

.. rst-class:: classref-method

:ref:`XRCamera3D<class_XRCamera3D>` **get_xr_camera3d**\ (\ ) |const| :ref:`🔗<class_OpenXRFoveatedInsetViewport_method_get_xr_camera3d>`

Returns the :ref:`XRCamera3D<class_XRCamera3D>` node used for rendering the foveated inset.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFoveatedInsetViewport_method_get_xr_origin3d:

.. rst-class:: classref-method

:ref:`XROrigin3D<class_XROrigin3D>` **get_xr_origin3d**\ (\ ) |const| :ref:`🔗<class_OpenXRFoveatedInsetViewport_method_get_xr_origin3d>`

Returns the :ref:`XROrigin3D<class_XROrigin3D>` node used for tracking the foveated inset. Our built-in logic handles positioning this node. It will copy the position and orientation of the :ref:`XROrigin3D<class_XROrigin3D>` node marked as current.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
