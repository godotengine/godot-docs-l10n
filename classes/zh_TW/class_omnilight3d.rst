:github_url: hide

.. meta::
	:keywords: point

.. _class_OmniLight3D:

OmniLight3D
===========

**繼承：** :ref:`Light3D<class_Light3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

全向光，如燈泡或蠟燭。

.. rst-class:: classref-introduction-group

說明
----

全向光是 :ref:`Light3D<class_Light3D>` 的一類，可以向所有方向發射光。光隨距離而衰減，該衰減可以通過修改其能量、半徑和衰減參數來配置。

\ **注意：**\ 使用移動算繪方式時，每個網格資源上只能顯示 8 個全向燈。嘗試在單個網格資源上顯示 8 個以上的全向燈，將導致全向燈隨著相機移動而閃爍。使用 Compatibility 算繪方式時，預設情況下每個網格資源上只能顯示 8 個全向燈，但可以通過調整 :ref:`ProjectSettings.rendering/limits/opengl/max_lights_per_object<class_ProjectSettings_property_rendering/limits/opengl/max_lights_per_object>` 來增加。

\ **注意：**\ 當使用 Mobile 或 Compatibility 算繪方法時，全向燈只會正確影響可見性 AABB 與該燈光的 AABB 相交的網格。如果使用了著色器將網格進行了變形，超出了 AABB 的範圍，則必須將該網格的 :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>` 增大。否則燈光在該網格上可能不可見。

.. rst-class:: classref-introduction-group

教學
----

- `3D 燈光與陰影 <../tutorials/3d/lights_and_shadows.html#omni-light>`__

- :doc:`偽造全域光照 <../tutorials/3d/global_illumination/faking_global_illumination>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                      | light_specular                                                       | ``0.5`` (overrides :ref:`Light3D<class_Light3D_property_light_specular>`)     |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                      | :ref:`omni_attenuation<class_OmniLight3D_property_omni_attenuation>` | ``1.0``                                                                       |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                      | :ref:`omni_range<class_OmniLight3D_property_omni_range>`             | ``5.0``                                                                       |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` | :ref:`omni_shadow_mode<class_OmniLight3D_property_omni_shadow_mode>` | ``1``                                                                         |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                      | shadow_normal_bias                                                   | ``1.0`` (overrides :ref:`Light3D<class_Light3D_property_shadow_normal_bias>`) |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_OmniLight3D_ShadowMode:

.. rst-class:: classref-enumeration

enum **ShadowMode**: :ref:`🔗<enum_OmniLight3D_ShadowMode>`

.. _class_OmniLight3D_constant_SHADOW_DUAL_PARABOLOID:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` **SHADOW_DUAL_PARABOLOID** = ``0``

將陰影算繪到雙抛物面紋理。比 :ref:`SHADOW_CUBE<class_OmniLight3D_constant_SHADOW_CUBE>` 更快，但品質較差。

.. _class_OmniLight3D_constant_SHADOW_CUBE:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` **SHADOW_CUBE** = ``1``

將陰影算繪至立方體貼圖。比 :ref:`SHADOW_DUAL_PARABOLOID<class_OmniLight3D_constant_SHADOW_DUAL_PARABOLOID>` 更慢，但品質更高。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_OmniLight3D_property_omni_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **omni_attenuation** = ``1.0`` :ref:`🔗<class_OmniLight3D_property_omni_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Controls the distance attenuation function for omnilights.

A value of ``0.0`` will maintain a constant brightness through most of the range, but smoothly attenuate the light at the edge of the range. Use a value of ``2.0`` for physically accurate lights as it results in the proper inverse square attenutation.

\ **Note:** Setting attenuation to ``2.0`` or higher may result in distant objects receiving minimal light, even within range. For example, with a range of ``4096``, an object at ``100`` units is attenuated by a factor of ``0.0001``. With a default brightness of ``1``, the light would not be visible at that distance.

\ **Note:** Using negative or values higher than ``10.0`` may lead to unexpected results.

.. rst-class:: classref-item-separator

----

.. _class_OmniLight3D_property_omni_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **omni_range** = ``5.0`` :ref:`🔗<class_OmniLight3D_property_omni_range>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

該燈光的半徑。請注意，根據使用的 :ref:`omni_attenuation<class_OmniLight3D_property_omni_attenuation>`\ ，有效照明區域可能看起來更小。無論使用 :ref:`omni_attenuation<class_OmniLight3D_property_omni_attenuation>` 為何值，光線永遠不會到達該半徑之外的任何地方。

\ **注意：**\ :ref:`omni_range<class_OmniLight3D_property_omni_range>` 不受 :ref:`Node3D.scale<class_Node3D_property_scale>`\ （無論是該燈光的縮放還是其父節點的縮放）的影響。

.. rst-class:: classref-item-separator

----

.. _class_OmniLight3D_property_omni_shadow_mode:

.. rst-class:: classref-property

:ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` **omni_shadow_mode** = ``1`` :ref:`🔗<class_OmniLight3D_property_omni_shadow_mode>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_mode**\ (\ value\: :ref:`ShadowMode<enum_OmniLight3D_ShadowMode>`\ )
- :ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` **get_shadow_mode**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
