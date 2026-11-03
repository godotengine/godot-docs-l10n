:github_url: hide

.. _class_AreaLight3D:

AreaLight3D
===========

**繼承：** :ref:`Light3D<class_Light3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

面光源，如霓虹燈管或螢幕。

.. rst-class:: classref-introduction-group

說明
----

面光源是一種 :ref:`Light3D<class_Light3D>` 節點，它會在二維區域（矩形區域）上發射光線。光線會隨著距離衰減。可以通過更改能量、\ :ref:`area_attenuation<class_AreaLight3D_property_area_attenuation>` 和 :ref:`area_range<class_AreaLight3D_property_area_range>` 來設定這種衰減。

光線沿該節點全域基的 -Z 方向發射。對於未旋轉的光源，這意味著光線向前發射，照亮 3D 模型的正面（參見 :ref:`Vector3.FORWARD<class_Vector3_constant_FORWARD>` 和 :ref:`Vector3.MODEL_FRONT<class_Vector3_constant_MODEL_FRONT>`\ ）。

面光源可以使用 PCSS 投射柔和陰影，可以通過調整大小參數來控制陰影效果。陰影貼圖從光源中心繪製。

\ **注意：**\ 面光源在行動平台和相容渲染器中的支援有限。在行動平台渲染器中，半影的大小不會像 PCSS 那樣變化。在相容渲染器中，面光源無法投射陰影。

\ **警告：**\ 如果投射陰影的物體細分層級不足，且距離面光源非常近，則面光源投射的陰影可能看起來不正確。這與 :ref:`OmniLight3D<class_OmniLight3D>` 的雙拋物面陰影模式的限制相同。

\ **效能：**\ 與全向光和聚光燈相比，面光源對 GPU 的要求更高。在 Forward+ 中，一旦視錐體中存在一個面光源，\ *所有*\ 渲染物件都會產生額外的 GPU 成本（由於集群照明的特性）。建議僅在電影級畫面或面向高端裝置時使用。

.. rst-class:: classref-introduction-group

教學
----

- `3D 燈光與陰影 <../tutorials/3d/lights_and_shadows.html#area-light>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | :ref:`area_attenuation<class_AreaLight3D_property_area_attenuation>`           | ``1.0``                                                                       |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`area_normalize_energy<class_AreaLight3D_property_area_normalize_energy>` | ``true``                                                                      |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | :ref:`area_range<class_AreaLight3D_property_area_range>`                       | ``5.0``                                                                       |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`     | :ref:`area_size<class_AreaLight3D_property_area_size>`                         | ``Vector2(1, 1)``                                                             |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`area_texture<class_AreaLight3D_property_area_texture>`                   |                                                                               |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | light_size                                                                     | ``0.5`` (overrides :ref:`Light3D<class_Light3D_property_light_size>`)         |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | shadow_normal_bias                                                             | ``1.0`` (overrides :ref:`Light3D<class_Light3D_property_shadow_normal_bias>`) |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AreaLight3D_property_area_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **area_attenuation** = ``1.0`` :ref:`🔗<class_AreaLight3D_property_area_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

控制面光源的距離衰減函式。

值為 ``0.0`` 將在大部分範圍內保持恆定亮度，但將平滑地衰減範圍邊緣的光線。對於物理上準確的燈光，請使用值 ``2.0``\ ，因為它會產生正確的平方反比衰減。

\ **注意：**\ 將衰減設定為 ``2.0`` 或更高可能會導致遠處的物體接收到的光線最少，即使在範圍內也是如此。例如，在 ``4096`` 的範圍內，\ ``100`` 單位處的物體會衰減 ``0.0001`` 倍。預設亮度為 ``1``\ ，光線在該距離處不可見。

\ **注意：**\ 使用負值或高於 ``10.0`` 的值可能會導致意外結果。

.. rst-class:: classref-item-separator

----

.. _class_AreaLight3D_property_area_normalize_energy:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **area_normalize_energy** = ``true`` :ref:`🔗<class_AreaLight3D_property_area_normalize_energy>`

.. rst-class:: classref-property-setget

- |void| **set_area_normalize_energy**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_area_normalizing_energy**\ (\ )

定義燈光的能量是否會按其表面積進行正規化（即除以表面積）。如果設為 ``true``\ ，改變燈光的大小不會影響其總能量輸出，也不會劇烈改變場景的整體亮度。

.. rst-class:: classref-item-separator

----

.. _class_AreaLight3D_property_area_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **area_range** = ``5.0`` :ref:`🔗<class_AreaLight3D_property_area_range>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

該區域在米為單位下的範圍。它決定了從該區域的任意一點出發，還能發射光線的最大距離。

.. rst-class:: classref-item-separator

----

.. _class_AreaLight3D_property_area_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **area_size** = ``Vector2(1, 1)`` :ref:`🔗<class_AreaLight3D_property_area_size>`

.. rst-class:: classref-property-setget

- |void| **set_area_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_area_size**\ (\ )

該面的範圍（寬度和高度），單位為米。

.. rst-class:: classref-item-separator

----

.. _class_AreaLight3D_property_area_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **area_texture** :ref:`🔗<class_AreaLight3D_property_area_texture>`

.. rst-class:: classref-property-setget

- |void| **set_area_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_area_texture**\ (\ )

一個可選的紋理，用於作為光源。在執行時（Runtime）更改紋理可能會影響效能，因為引擎需要將其繪製到面光源圖集（area light atlas）中，並生成帶有濾波的 Mipmap。

如果沒有指定紋理，面光源將在其表面發射均勻的光線。

\ **注意：** 面光來源紋理僅在 Forward+ 和 Mobile 渲染模式下受支援，在 Compatibility（相容）模式下不受支援。為了減少在執行時切換紋理帶來的效能開銷，請確保面光來源紋理的每個維度（寬度和高度）都是 128 像素的倍數，或者是 2 的冪次方。這樣可以省去一個縮放（scaling）步驟，從而加快紋理的切換速度。為了達到最佳效果，紋理不一定非得是正方形的。最佳紋理尺寸的範例包括 32x64、128x128 和 256x384。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
