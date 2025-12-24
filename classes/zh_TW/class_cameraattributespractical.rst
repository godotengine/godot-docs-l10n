:github_url: hide

.. _class_CameraAttributesPractical:

CameraAttributesPractical
=========================

**繼承：** :ref:`CameraAttributes<class_CameraAttributes>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

相機設定，格式比較易用。

.. rst-class:: classref-introduction-group

說明
----

控制相機的特定屬性，如自動曝光、景深、以及曝光覆蓋。

當在 :ref:`WorldEnvironment<class_WorldEnvironment>` 中使用時，它提供了曝光、自動曝光、以及景深的預設設置，這些設定將由所有沒有自己的 :ref:`CameraAttributes<class_CameraAttributes>` 的相機使用，包括編輯器相機。當在 :ref:`Camera3D<class_Camera3D>` 中使用時，它將覆蓋 :ref:`WorldEnvironment<class_WorldEnvironment>` 中設定的任何 :ref:`CameraAttributes<class_CameraAttributes>`\ 。當在 :ref:`VoxelGI<class_VoxelGI>` 或 :ref:`LightmapGI<class_LightmapGI>` 中使用時，只會使用曝光設置。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`auto_exposure_max_sensitivity<class_CameraAttributesPractical_property_auto_exposure_max_sensitivity>` | ``800.0`` |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`auto_exposure_min_sensitivity<class_CameraAttributesPractical_property_auto_exposure_min_sensitivity>` | ``0.0``   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dof_blur_amount<class_CameraAttributesPractical_property_dof_blur_amount>`                             | ``0.1``   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dof_blur_far_distance<class_CameraAttributesPractical_property_dof_blur_far_distance>`                 | ``10.0``  |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`dof_blur_far_enabled<class_CameraAttributesPractical_property_dof_blur_far_enabled>`                   | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dof_blur_far_transition<class_CameraAttributesPractical_property_dof_blur_far_transition>`             | ``5.0``   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dof_blur_near_distance<class_CameraAttributesPractical_property_dof_blur_near_distance>`               | ``2.0``   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`dof_blur_near_enabled<class_CameraAttributesPractical_property_dof_blur_near_enabled>`                 | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dof_blur_near_transition<class_CameraAttributesPractical_property_dof_blur_near_transition>`           | ``1.0``   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_CameraAttributesPractical_property_auto_exposure_max_sensitivity:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_max_sensitivity** = ``800.0`` :ref:`🔗<class_CameraAttributesPractical_property_auto_exposure_max_sensitivity>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_max_sensitivity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_max_sensitivity**\ (\ )

計算自動曝光時使用的最大感光度（單位：ISO）。在計算場景平均亮度時，顏色值將至少被鉗制在這個值上。這限制了自動曝光在低於一定的亮度進行曝光時，導致場景將保持明亮的一個截止點。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_auto_exposure_min_sensitivity:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_min_sensitivity** = ``0.0`` :ref:`🔗<class_CameraAttributesPractical_property_auto_exposure_min_sensitivity>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_min_sensitivity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_min_sensitivity**\ (\ )

計算自動曝光時使用的最小感光度（單位：ISO）。在計算場景平均亮度時，顏色值將至少被鉗制在這個值上。這限制了自動曝光在超過一定的亮度進行曝光時，導致場景將保持黑暗的一個截止點。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_amount:

.. rst-class:: classref-property

:ref:`float<class_float>` **dof_blur_amount** = ``0.1`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_amount>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_amount**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dof_blur_amount**\ (\ )

Sets the maximum amount of blur. When using physically-based blur amounts, will instead act as a multiplier. High values lead to an increased amount of blurriness, but can be much more expensive to calculate. It is best to keep this as low as possible for a given art style.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_far_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **dof_blur_far_distance** = ``10.0`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_far_distance>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_far_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dof_blur_far_distance**\ (\ )

距離該 :ref:`Camera3D<class_Camera3D>` 比該值遠的對象將因景深效果而變得模糊。以米為單位進行測量。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_far_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **dof_blur_far_enabled** = ``false`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_far_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_far_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_dof_blur_far_enabled**\ (\ )

Enables depth of field blur for objects further than :ref:`dof_blur_far_distance<class_CameraAttributesPractical_property_dof_blur_far_distance>`. Strength of blur is controlled by :ref:`dof_blur_amount<class_CameraAttributesPractical_property_dof_blur_amount>` and modulated by :ref:`dof_blur_far_transition<class_CameraAttributesPractical_property_dof_blur_far_transition>`.

\ **Note:** Depth of field blur is only supported in the Forward+ and Mobile rendering methods, not Compatibility.

\ **Note:** Depth of field blur is not supported on viewports that have a transparent background (where :ref:`Viewport.transparent_bg<class_Viewport_property_transparent_bg>` is ``true``).

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_far_transition:

.. rst-class:: classref-property

:ref:`float<class_float>` **dof_blur_far_transition** = ``5.0`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_far_transition>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_far_transition**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dof_blur_far_transition**\ (\ )

當為正數時，距離超過該值（從 :ref:`dof_blur_far_distance<class_CameraAttributesPractical_property_dof_blur_far_distance>` 開始）時，模糊效果將從 0 縮放到 :ref:`dof_blur_amount<class_CameraAttributesPractical_property_dof_blur_amount>`\ 。當為負數時，使用基於物理的縮放，因此景深效果將在 :ref:`dof_blur_far_distance<class_CameraAttributesPractical_property_dof_blur_far_distance>` 處從 0 開始縮放，並且隨著物件遠離該 :ref:`Camera3D<class_Camera3D>`\ ，將以物理上準確的方式增加該效果。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_near_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **dof_blur_near_distance** = ``2.0`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_near_distance>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_near_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dof_blur_near_distance**\ (\ )

距離該 :ref:`Camera3D<class_Camera3D>` 比該值近的對象將因景深效果而變得模糊。以米為單位進行測量。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_near_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **dof_blur_near_enabled** = ``false`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_near_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_near_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_dof_blur_near_enabled**\ (\ )

為距離小於 :ref:`dof_blur_near_distance<class_CameraAttributesPractical_property_dof_blur_near_distance>` 的物件啟用景深模糊效果。模糊強度由 :ref:`dof_blur_amount<class_CameraAttributesPractical_property_dof_blur_amount>` 控制，並由 :ref:`dof_blur_near_transition<class_CameraAttributesPractical_property_dof_blur_near_transition>` 調節。

\ **注意：** 景深模糊僅在 Forward+ 和 Mobile 渲染方法中受支持，不支援相容模式。

\ **注意：** 景深模糊在具有透明背景的視口（\ :ref:`Viewport.transparent_bg<class_Viewport_property_transparent_bg>` 為 ``true``\ ）上不受支援。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_near_transition:

.. rst-class:: classref-property

:ref:`float<class_float>` **dof_blur_near_transition** = ``1.0`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_near_transition>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_near_transition**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dof_blur_near_transition**\ (\ )

當為正數時，距離超過該值且截止到 :ref:`dof_blur_near_distance<class_CameraAttributesPractical_property_dof_blur_near_distance>` 時，模糊效果將從 0 縮放到 :ref:`dof_blur_amount<class_CameraAttributesPractical_property_dof_blur_amount>`\ 。當為負數時，使用基於物理的縮放，因此景深效果將在 :ref:`dof_blur_near_distance<class_CameraAttributesPractical_property_dof_blur_near_distance>` 處從 0 開始縮放，並且隨著物件靠近該 :ref:`Camera3D<class_Camera3D>`\ ，將以物理上準確的方式增加該效果。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
