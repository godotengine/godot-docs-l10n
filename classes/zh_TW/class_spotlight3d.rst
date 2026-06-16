:github_url: hide

.. _class_SpotLight3D:

SpotLight3D
===========

**繼承：** :ref:`Light3D<class_Light3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

聚光燈，如反射器聚光燈或燈籠。

.. rst-class:: classref-introduction-group

說明
----

A Spotlight is a type of :ref:`Light3D<class_Light3D>` node that emits lights in a specific direction, in the shape of a cone. The light is attenuated through the distance. This attenuation can be configured by changing the energy, radius and attenuation parameters of :ref:`Light3D<class_Light3D>`.

Light is emitted in the -Z direction of the node's global basis. For an unrotated light, this means that the light is emitted forwards, illuminating the front side of a 3D model (see :ref:`Vector3.FORWARD<class_Vector3_constant_FORWARD>` and :ref:`Vector3.MODEL_FRONT<class_Vector3_constant_MODEL_FRONT>`).

\ **Note:** When using the Mobile rendering method, only 8 spot lights can be displayed on each mesh resource. Attempting to display more than 8 spot lights on a single mesh resource will result in spot lights flickering in and out as the camera moves. When using the Compatibility rendering method, only 8 spot lights can be displayed on each mesh resource by default, but this can be increased by adjusting :ref:`ProjectSettings.rendering/limits/opengl/max_lights_per_object<class_ProjectSettings_property_rendering/limits/opengl/max_lights_per_object>`.

\ **Note:** When using the Mobile or Compatibility rendering methods, spot lights will only correctly affect meshes whose visibility AABB intersects with the light's AABB. If using a shader to deform the mesh in a way that makes it go outside its AABB, :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>` must be increased on the mesh. Otherwise, the light may not be visible on the mesh.

.. rst-class:: classref-introduction-group

教學
----

- `3D 燈光與陰影 <../tutorials/3d/lights_and_shadows.html#spot-light>`__

- :doc:`偽造全域光照 <../tutorials/3d/global_illumination/faking_global_illumination>`

- `第三人稱射擊（TPS）示範 <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | light_specular                                                                   | ``0.5`` (overrides :ref:`Light3D<class_Light3D_property_light_specular>`)     |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | shadow_bias                                                                      | ``0.03`` (overrides :ref:`Light3D<class_Light3D_property_shadow_bias>`)       |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | shadow_normal_bias                                                               | ``1.0`` (overrides :ref:`Light3D<class_Light3D_property_shadow_normal_bias>`) |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`spot_angle<class_SpotLight3D_property_spot_angle>`                         | ``45.0``                                                                      |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`spot_angle_attenuation<class_SpotLight3D_property_spot_angle_attenuation>` | ``1.0``                                                                       |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`spot_attenuation<class_SpotLight3D_property_spot_attenuation>`             | ``1.0``                                                                       |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`spot_range<class_SpotLight3D_property_spot_range>`                         | ``5.0``                                                                       |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_SpotLight3D_property_spot_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **spot_angle** = ``45.0`` :ref:`🔗<class_SpotLight3D_property_spot_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

The spotlight's angle in degrees. This is the angular radius, meaning the angle from the -Z axis, the cone's center, to the edge of the cone. The default angular radius of 45 degrees corresponds to a cone with an angular diameter of 90 degrees.

\ **Note:** :ref:`spot_angle<class_SpotLight3D_property_spot_angle>` is not affected by :ref:`Node3D.scale<class_Node3D_property_scale>` (the light's scale or its parent's scale).

.. rst-class:: classref-item-separator

----

.. _class_SpotLight3D_property_spot_angle_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **spot_angle_attenuation** = ``1.0`` :ref:`🔗<class_SpotLight3D_property_spot_angle_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

聚光燈的\ *角度*\ 衰減曲線。另見 :ref:`spot_attenuation<class_SpotLight3D_property_spot_attenuation>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SpotLight3D_property_spot_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **spot_attenuation** = ``1.0`` :ref:`🔗<class_SpotLight3D_property_spot_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Controls the distance attenuation function for spotlights.

A value of ``0.0`` will maintain a constant brightness through most of the range, but smoothly attenuate the light at the edge of the range. Use a value of ``2.0`` for physically accurate lights as it results in the proper inverse square attenutation.

\ **Note:** Setting attenuation to ``2.0`` or higher may result in distant objects receiving minimal light, even within range. For example, with a range of ``4096``, an object at ``100`` units is attenuated by a factor of ``0.0001``. With a default brightness of ``1``, the light would not be visible at that distance.

\ **Note:** Using negative or values higher than ``10.0`` may lead to unexpected results.

.. rst-class:: classref-item-separator

----

.. _class_SpotLight3D_property_spot_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **spot_range** = ``5.0`` :ref:`🔗<class_SpotLight3D_property_spot_range>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

聚光燈可以達到的最大範圍。請注意，根據使用的 :ref:`spot_attenuation<class_SpotLight3D_property_spot_attenuation>`\ ，有效照明區域可能看起來更小。無論 :ref:`spot_attenuation<class_SpotLight3D_property_spot_attenuation>` 為何值，光都不會到達此範圍之外的任何東西。

\ **注意：**\ :ref:`spot_angle<class_SpotLight3D_property_spot_angle>` 不受 :ref:`Node3D.scale<class_Node3D_property_scale>` 的影響（無論是該燈光的縮放還是其父節點的縮放）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
