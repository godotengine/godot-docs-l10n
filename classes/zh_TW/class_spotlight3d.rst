:github_url: hide

.. _class_SpotLight3D:

SpotLight3D
===========

**繼承：** :ref:`Light3D<class_Light3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

聚光燈，如反射器聚光燈或燈籠。

.. rst-class:: classref-introduction-group

說明
----

聚光燈是一種 :ref:`Light3D<class_Light3D>` 節點，向指定的方向發出圓錐形的燈光。光線會隨距離增大而衰減。衰減可以通過修改 :ref:`Light3D<class_Light3D>` 的能量、半徑、衰減參數進行控制。

燈光的發射方向是該節點全域基的 -Z 方向。如果光源未旋轉，則燈光向前發射，照亮 3D 模型的正面（見 :ref:`Vector3.FORWARD<class_Vector3_constant_FORWARD>` 和 :ref:`Vector3.MODEL_FRONT<class_Vector3_constant_MODEL_FRONT>`\ ）。

\ **注意：**\ 使用 Mobile 渲染方法時，單個網格資源只能用到 8 盞聚光燈。嘗試對單個網格資源使用超過 8 盞聚光燈會導致聚光燈在相機移動時產生閃爍。使用 Compatibility 渲染方法時，單個網格資源預設只能用到 8 盞聚光燈，但可以通過調整 :ref:`ProjectSettings.rendering/limits/opengl/max_lights_per_object<class_ProjectSettings_property_rendering/limits/opengl/max_lights_per_object>` 增加。

\ **注意：**\ 使用 Mobile 或 Compatibility 渲染方法時，聚光燈只能影響可見 AABB 與燈光 AABB 相交的網格。如果使用了著色器將網格進行了變形，超出了 AABB 的範圍，則必須將該網格的 :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>` 增大。否則燈光在該網格上可能不可見。

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

聚光燈的夾角，單位為度。這是夾角的半徑，即從 -Z 軸錐形中心到錐形邊緣的角度。預設角度半徑為 45 度，對應的角度直徑為 90 度。

\ **注意：**\ :ref:`spot_angle<class_SpotLight3D_property_spot_angle>` 不受 :ref:`Node3D.scale<class_Node3D_property_scale>` 的影響（無論是燈光本身還是父級節點的縮放）。

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

控制聚光燈的距離衰減函式。

值為 ``0.0`` 將在大部分範圍內保持恆定亮度，但會平滑地衰減範圍邊緣的光線。對於物理上準確的燈光，請使用值 ``2.0``\ ，因為它會產生正確的平方反比衰減。

\ **注意：**\ 將衰減設定為 ``2.0`` 或更高可能會導致遠處的物體接收到最少的光線，即使在範圍內也是如此。例如，在 ``4096`` 的範圍內，\ ``100`` 單位處的物體會衰減 ``0.0001`` 倍。預設亮度為 ``1``\ ，光線在該距離處不可見。

\ **注意：**\ 使用負值或高於 ``10.0`` 的值可能會導致意外結果。

.. rst-class:: classref-item-separator

----

.. _class_SpotLight3D_property_spot_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **spot_range** = ``5.0`` :ref:`🔗<class_SpotLight3D_property_spot_range>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

聚光燈可以達到的最大範圍。請注意，根據使用的 :ref:`spot_attenuation<class_SpotLight3D_property_spot_attenuation>`\ ，有效照明區域可能看起來更小。無論 :ref:`spot_attenuation<class_SpotLight3D_property_spot_attenuation>` 為何值，光都不會到達此範圍之外的任何東西。

\ **注意：**\ :ref:`spot_range<class_SpotLight3D_property_spot_range>` 不受 :ref:`Node3D.scale<class_Node3D_property_scale>` 的影響（無論是該燈光的縮放還是其父節點的縮放）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
