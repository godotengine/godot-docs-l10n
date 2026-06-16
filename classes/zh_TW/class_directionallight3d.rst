:github_url: hide

.. meta::
	:keywords: sun

.. _class_DirectionalLight3D:

DirectionalLight3D
==================

**繼承：** :ref:`Light3D<class_Light3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

來自遠處的平行光，如太陽光。

.. rst-class:: classref-introduction-group

說明
----

A directional light is a type of :ref:`Light3D<class_Light3D>` node that models an infinite number of parallel rays covering the entire scene. It is used for lights with strong intensity that are located far away from the scene to model sunlight or moonlight.

Light is emitted in the -Z direction of the node's global basis. For an unrotated light, this means that the light is emitted forwards, illuminating the front side of a 3D model (see :ref:`Vector3.FORWARD<class_Vector3_constant_FORWARD>` and :ref:`Vector3.MODEL_FRONT<class_Vector3_constant_MODEL_FRONT>`). The position of the node is ignored; only the basis is used to determine light direction.

.. rst-class:: classref-introduction-group

教學
----

- `3D 燈光與陰影 <../tutorials/3d/lights_and_shadows.html#directional-light>`__

- :doc:`偽造全域光照 <../tutorials/3d/global_illumination/faking_global_illumination>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                               | :ref:`directional_shadow_blend_splits<class_DirectionalLight3D_property_directional_shadow_blend_splits>` | ``false`` |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`directional_shadow_fade_start<class_DirectionalLight3D_property_directional_shadow_fade_start>`     | ``0.8``   |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>` | ``100.0`` |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>` | :ref:`directional_shadow_mode<class_DirectionalLight3D_property_directional_shadow_mode>`                 | ``2``     |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`directional_shadow_pancake_size<class_DirectionalLight3D_property_directional_shadow_pancake_size>` | ``20.0``  |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`directional_shadow_split_1<class_DirectionalLight3D_property_directional_shadow_split_1>`           | ``0.1``   |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`directional_shadow_split_2<class_DirectionalLight3D_property_directional_shadow_split_2>`           | ``0.2``   |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`directional_shadow_split_3<class_DirectionalLight3D_property_directional_shadow_split_3>`           | ``0.5``   |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`SkyMode<enum_DirectionalLight3D_SkyMode>`       | :ref:`sky_mode<class_DirectionalLight3D_property_sky_mode>`                                               | ``0``     |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_DirectionalLight3D_ShadowMode:

.. rst-class:: classref-enumeration

enum **ShadowMode**: :ref:`🔗<enum_DirectionalLight3D_ShadowMode>`

.. _class_DirectionalLight3D_constant_SHADOW_ORTHOGONAL:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>` **SHADOW_ORTHOGONAL** = ``0``

從正交的角度算繪整個場景的陰影圖。這是最快的定向陰影模式。可能會導致近距離物體的陰影更模糊。

.. _class_DirectionalLight3D_constant_SHADOW_PARALLEL_2_SPLITS:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>` **SHADOW_PARALLEL_2_SPLITS** = ``1``

將視錐體分成2個區域，每個區域都有自己的陰影貼圖。這種陰影模式是 :ref:`SHADOW_ORTHOGONAL<class_DirectionalLight3D_constant_SHADOW_ORTHOGONAL>` 和 :ref:`SHADOW_PARALLEL_4_SPLITS<class_DirectionalLight3D_constant_SHADOW_PARALLEL_4_SPLITS>` 在性能上的折衷。

.. _class_DirectionalLight3D_constant_SHADOW_PARALLEL_4_SPLITS:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>` **SHADOW_PARALLEL_4_SPLITS** = ``2``

將視錐體分成 4 個區域，每個區域都有自己的陰影貼圖。這是最慢的定向陰影模式。

.. rst-class:: classref-item-separator

----

.. _enum_DirectionalLight3D_SkyMode:

.. rst-class:: classref-enumeration

enum **SkyMode**: :ref:`🔗<enum_DirectionalLight3D_SkyMode>`

.. _class_DirectionalLight3D_constant_SKY_MODE_LIGHT_AND_SKY:

.. rst-class:: classref-enumeration-constant

:ref:`SkyMode<enum_DirectionalLight3D_SkyMode>` **SKY_MODE_LIGHT_AND_SKY** = ``0``

使燈光在場景照明和天空算繪中都可見。

.. _class_DirectionalLight3D_constant_SKY_MODE_LIGHT_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`SkyMode<enum_DirectionalLight3D_SkyMode>` **SKY_MODE_LIGHT_ONLY** = ``1``

使燈光僅在場景照明中可見（包括直接照明和全域照明）。使用此模式時，天空著色器看不到此燈光。

.. _class_DirectionalLight3D_constant_SKY_MODE_SKY_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`SkyMode<enum_DirectionalLight3D_SkyMode>` **SKY_MODE_SKY_ONLY** = ``2``

使燈光僅對天空著色器可見。使用此模式時，燈光不會將燈光投射到場景中（通過直接照明或通過全域照明），但可以通過天空著色器存取。例如，當你想要控制天空效果而不照亮場景時（例如，在夜間迴圈期間），這可能很有用。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_DirectionalLight3D_property_directional_shadow_blend_splits:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **directional_shadow_blend_splits** = ``false`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_blend_splits>`

.. rst-class:: classref-property-setget

- |void| **set_blend_splits**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_blend_splits_enabled**\ (\ )

如果為 ``true``\ ，會犧牲陰影的細節，換取分割區域之間更平滑的過渡。啟用陰影混合分割同時也會帶來一些性能消耗。當 :ref:`directional_shadow_mode<class_DirectionalLight3D_property_directional_shadow_mode>` 為 :ref:`SHADOW_ORTHOGONAL<class_DirectionalLight3D_constant_SHADOW_ORTHOGONAL>` 時會被忽略。

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_fade_start:

.. rst-class:: classref-property

:ref:`float<class_float>` **directional_shadow_fade_start** = ``0.8`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_fade_start>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

陰影開始消失時，\ :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>` 的比例。在 :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>` 處，陰影會消失。預設值是平滑淡化和遠處陰影可見性之間的平衡。如果相機移動較快且 :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>` 較低，請考慮將 :ref:`directional_shadow_fade_start<class_DirectionalLight3D_property_directional_shadow_fade_start>` 降低到 ``0.8`` 以下，以使陰影過渡不那麼明顯。另一方面，如果調整了 :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>` 來覆蓋整個場景，可以將 :ref:`directional_shadow_fade_start<class_DirectionalLight3D_property_directional_shadow_fade_start>` 設定為 ``1.0``\ ，以防止陰影在遠處逐漸淡化（它將會突然切斷 ）。

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **directional_shadow_max_distance** = ``100.0`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

陰影分割的最大距離。將這個值增大會讓定向陰影在更遠處可見，代價是整體的陰影細節降低和性能（因為算繪定向陰影時需要包含更多的物體）。

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_mode:

.. rst-class:: classref-property

:ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>` **directional_shadow_mode** = ``2`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_mode>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_mode**\ (\ value\: :ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>`\ )
- :ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>` **get_shadow_mode**\ (\ )

The light's shadow rendering algorithm.

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_pancake_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **directional_shadow_pancake_size** = ``20.0`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_pancake_size>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

設定定向陰影斑點的大小。 斑點偏移了陰影的相機視錐體的起點，為陰影提供更高的有效深度解析度。但是，較大的斑點尺寸會導致靠近視錐體邊緣的大型物體的陰影出現偽影。減少斑點的大小會有所幫助。將大小設定為 ``0`` 會關閉斑點效果。

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_split_1:

.. rst-class:: classref-property

:ref:`float<class_float>` **directional_shadow_split_1** = ``0.1`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_split_1>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

相機到陰影分割 1 的距離。相對於 :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>`\ 。只有當 :ref:`directional_shadow_mode<class_DirectionalLight3D_property_directional_shadow_mode>` 為 :ref:`SHADOW_PARALLEL_2_SPLITS<class_DirectionalLight3D_constant_SHADOW_PARALLEL_2_SPLITS>` 或 :ref:`SHADOW_PARALLEL_4_SPLITS<class_DirectionalLight3D_constant_SHADOW_PARALLEL_4_SPLITS>` 時才使用。

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_split_2:

.. rst-class:: classref-property

:ref:`float<class_float>` **directional_shadow_split_2** = ``0.2`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_split_2>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

從陰影分割 1 到陰影分割 2 的距離。相對於 :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>`\ 。僅在 :ref:`directional_shadow_mode<class_DirectionalLight3D_property_directional_shadow_mode>` 為 :ref:`SHADOW_PARALLEL_4_SPLITS<class_DirectionalLight3D_constant_SHADOW_PARALLEL_4_SPLITS>` 時使用。

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_split_3:

.. rst-class:: classref-property

:ref:`float<class_float>` **directional_shadow_split_3** = ``0.5`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_split_3>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

從陰影分割 2 到陰影分割 3 的距離。相對於 :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>`\ 。只有當 :ref:`directional_shadow_mode<class_DirectionalLight3D_property_directional_shadow_mode>` 為 :ref:`SHADOW_PARALLEL_4_SPLITS<class_DirectionalLight3D_constant_SHADOW_PARALLEL_4_SPLITS>` 時才使用。

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_sky_mode:

.. rst-class:: classref-property

:ref:`SkyMode<enum_DirectionalLight3D_SkyMode>` **sky_mode** = ``0`` :ref:`🔗<class_DirectionalLight3D_property_sky_mode>`

.. rst-class:: classref-property-setget

- |void| **set_sky_mode**\ (\ value\: :ref:`SkyMode<enum_DirectionalLight3D_SkyMode>`\ )
- :ref:`SkyMode<enum_DirectionalLight3D_SkyMode>` **get_sky_mode**\ (\ )

Whether this **DirectionalLight3D** is visible in the sky, in the scene, or both in the sky and in the scene.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
