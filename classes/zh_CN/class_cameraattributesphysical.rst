:github_url: hide

.. _class_CameraAttributesPhysical:

CameraAttributesPhysical
========================

**继承：** :ref:`CameraAttributes<class_CameraAttributes>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

基于物理的相机设置。

.. rst-class:: classref-introduction-group

描述
----

**CameraAttributesPhysical** is used to set rendering settings based on a physically-based camera's settings. It is responsible for exposure, auto-exposure, and depth of field.

When used in a :ref:`WorldEnvironment<class_WorldEnvironment>` it provides default settings for exposure, auto-exposure, and depth of field that will be used by all cameras without their own :ref:`CameraAttributes<class_CameraAttributes>`, including the editor camera. When used in a :ref:`Camera3D<class_Camera3D>` it will override any :ref:`CameraAttributes<class_CameraAttributes>` set in the :ref:`WorldEnvironment<class_WorldEnvironment>` and will override the :ref:`Camera3D<class_Camera3D>`\ s :ref:`Camera3D.far<class_Camera3D_property_far>`, :ref:`Camera3D.near<class_Camera3D_property_near>`, :ref:`Camera3D.fov<class_Camera3D_property_fov>`, and :ref:`Camera3D.keep_aspect<class_Camera3D_property_keep_aspect>` properties. When used in :ref:`VoxelGI<class_VoxelGI>` or :ref:`LightmapGI<class_LightmapGI>`, only the exposure settings will be used.

The default settings are intended for use in an outdoor environment, tips for settings for use in an indoor environment can be found in each setting's documentation.

\ **Note:** Depth of field blur is only supported in the Forward+ and Mobile rendering methods, not Compatibility.

\ **Note:** Auto-exposure is only supported in the Forward+ rendering method, not Mobile or Compatibility.

.. rst-class:: classref-introduction-group

教程
----

- :doc:`物理灯光与相机单位 <../tutorials/3d/physical_light_and_camera_units>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`auto_exposure_max_exposure_value<class_CameraAttributesPhysical_property_auto_exposure_max_exposure_value>` | ``10.0``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`auto_exposure_min_exposure_value<class_CameraAttributesPhysical_property_auto_exposure_min_exposure_value>` | ``-8.0``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`exposure_aperture<class_CameraAttributesPhysical_property_exposure_aperture>`                               | ``16.0``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`exposure_shutter_speed<class_CameraAttributesPhysical_property_exposure_shutter_speed>`                     | ``100.0``  |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`frustum_far<class_CameraAttributesPhysical_property_frustum_far>`                                           | ``4000.0`` |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`frustum_focal_length<class_CameraAttributesPhysical_property_frustum_focal_length>`                         | ``35.0``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`frustum_focus_distance<class_CameraAttributesPhysical_property_frustum_focus_distance>`                     | ``10.0``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`frustum_near<class_CameraAttributesPhysical_property_frustum_near>`                                         | ``0.05``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_fov<class_CameraAttributesPhysical_method_get_fov>`\ (\ ) |const| |
   +---------------------------+-----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_CameraAttributesPhysical_property_auto_exposure_max_exposure_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_max_exposure_value** = ``10.0`` :ref:`🔗<class_CameraAttributesPhysical_property_auto_exposure_max_exposure_value>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_max_exposure_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_max_exposure_value**\ (\ )

计算自动曝光时使用的最大亮度（单位：EV100）。在计算场景平均亮度时，颜色值将至少被钳制在这个值上。这限制了自动曝光在低于一定的亮度进行曝光时，导致场景将保持明亮的一个截止点。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_auto_exposure_min_exposure_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_min_exposure_value** = ``-8.0`` :ref:`🔗<class_CameraAttributesPhysical_property_auto_exposure_min_exposure_value>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_min_exposure_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_min_exposure_value**\ (\ )

计算自动曝光时使用的最小亮度（单位为 EV100）。在计算场景平均亮度时，颜色值将至少被钳制在这个值上。这限制了自动曝光在超过一定的亮度进行曝光时，导致场景将保持黑暗的一个截止点。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_exposure_aperture:

.. rst-class:: classref-property

:ref:`float<class_float>` **exposure_aperture** = ``16.0`` :ref:`🔗<class_CameraAttributesPhysical_property_exposure_aperture>`

.. rst-class:: classref-property-setget

- |void| **set_aperture**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_aperture**\ (\ )

相机光圈的大小，以 f 档为单位进行测量。f 档是相机焦距与光圈直径之间的一个无单位比率。高光圈设置将产生一个更小的光圈，从而导致更暗的图像和更清晰的焦点。低光圈会产生一个大光圈，让更多的光线进入，从而产生一个更亮、更不聚焦的图像。默认值适用于白天的室外（即与默认 :ref:`DirectionalLight3D<class_DirectionalLight3D>` 一起使用），对于室内照明，2 到 4 之间的值更合适。

仅在启用 :ref:`ProjectSettings.rendering/lights_and_shadows/use_physical_light_units<class_ProjectSettings_property_rendering/lights_and_shadows/use_physical_light_units>` 时可用。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_exposure_shutter_speed:

.. rst-class:: classref-property

:ref:`float<class_float>` **exposure_shutter_speed** = ``100.0`` :ref:`🔗<class_CameraAttributesPhysical_property_exposure_shutter_speed>`

.. rst-class:: classref-property-setget

- |void| **set_shutter_speed**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_shutter_speed**\ (\ )

快门打开和关闭的时间，计算方式为 ``1 / shutter_speed`` 秒。较高的值将允许较少的光线（导致图像较暗），而较低的值将允许更多的光线（导致图像较亮）。

仅当启用 :ref:`ProjectSettings.rendering/lights_and_shadows/use_physical_light_units<class_ProjectSettings_property_rendering/lights_and_shadows/use_physical_light_units>` 时可用。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_frustum_far:

.. rst-class:: classref-property

:ref:`float<class_float>` **frustum_far** = ``4000.0`` :ref:`🔗<class_CameraAttributesPhysical_property_frustum_far>`

.. rst-class:: classref-property-setget

- |void| **set_far**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_far**\ (\ )

覆盖 :ref:`Camera3D.far<class_Camera3D_property_far>` 的值。在内部计算景深时使用。当被附加到 :ref:`Camera3D<class_Camera3D>` 作为其 :ref:`Camera3D.attributes<class_Camera3D_property_attributes>` 时，它将覆盖 :ref:`Camera3D.fov<class_Camera3D_property_fov>` 属性。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_frustum_focal_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **frustum_focal_length** = ``35.0`` :ref:`🔗<class_CameraAttributesPhysical_property_frustum_focal_length>`

.. rst-class:: classref-property-setget

- |void| **set_focal_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_focal_length**\ (\ )

相机镜头和相机光圈之间的距离，单位：毫米。控制视野和景深。较大的焦距会导致较小的视野和较窄的景深，这意味着更少的对象将在焦点中。较小的焦距会导致更宽的视野和更大的景深，这意味着更多的物体将在焦点中。当被附加到 :ref:`Camera3D<class_Camera3D>` 作为其 :ref:`Camera3D.attributes<class_Camera3D_property_attributes>` 时，它将覆盖 :ref:`Camera3D.fov<class_Camera3D_property_fov>` 属性和 :ref:`Camera3D.keep_aspect<class_Camera3D_property_keep_aspect>` 属性。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_frustum_focus_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **frustum_focus_distance** = ``10.0`` :ref:`🔗<class_CameraAttributesPhysical_property_frustum_focus_distance>`

.. rst-class:: classref-property-setget

- |void| **set_focus_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_focus_distance**\ (\ )

将在焦点中的物体与相机的距离，以米为单位进行测量。在内部，这将被钳制为至少比 :ref:`frustum_focal_length<class_CameraAttributesPhysical_property_frustum_focal_length>` 大 1 毫米。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_frustum_near:

.. rst-class:: classref-property

:ref:`float<class_float>` **frustum_near** = ``0.05`` :ref:`🔗<class_CameraAttributesPhysical_property_frustum_near>`

.. rst-class:: classref-property-setget

- |void| **set_near**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_near**\ (\ )

覆盖 :ref:`Camera3D.near<class_Camera3D_property_near>` 的值。在内部计算景深时使用。当被附加到 :ref:`Camera3D<class_Camera3D>` 作为其 :ref:`Camera3D.attributes<class_Camera3D_property_attributes>` 时，它将覆盖 :ref:`Camera3D.near<class_Camera3D_property_near>` 属性。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_CameraAttributesPhysical_method_get_fov:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_fov**\ (\ ) |const| :ref:`🔗<class_CameraAttributesPhysical_method_get_fov>`

返回对应于 :ref:`frustum_focal_length<class_CameraAttributesPhysical_property_frustum_focal_length>` 的垂直视野。每当 :ref:`frustum_focal_length<class_CameraAttributesPhysical_property_frustum_focal_length>` 发生变化时，该值都会在内部计算。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
