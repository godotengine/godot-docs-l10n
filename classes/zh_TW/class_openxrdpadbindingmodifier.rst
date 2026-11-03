:github_url: hide

.. _class_OpenXRDpadBindingModifier:

OpenXRDpadBindingModifier
=========================

**繼承：** :ref:`OpenXRIPBindingModifier<class_OpenXRIPBindingModifier>` **<** :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

十字鍵綁定修改器會將軸輸入轉換為十字鍵輸出。

.. rst-class:: classref-introduction-group

說明
----

十字鍵綁定修改器會將軸輸入轉換為十字鍵輸出，模擬十字鍵。互動設定中會新增十字鍵每個方向對應的輸入路徑，與動作綁定後就會啟用十字鍵模擬。\ **不應該**\ 在同一個控制項的同一動作集中將十字鍵輸入與普通輸入結合使用，這會導致在綁定提交給 OpenXR 時回傳錯誤。

詳見 `XR_EXT_dpad_binding <https://registry.khronos.org/OpenXR/specs/1.1/html/xrspec.html#XR_EXT_dpad_binding>`__\ 。

\ **注意：**\ 如果啟用了十字鍵綁定修改器擴充，所有十字鍵綁定路徑都將在動作映射中可用。將修改器新增到互動設定可以進一步自訂行為。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------------------+----------------------------------------------------------------------------------------+---------------+
   | :ref:`OpenXRActionSet<class_OpenXRActionSet>`   | :ref:`action_set<class_OpenXRDpadBindingModifier_property_action_set>`                 |               |
   +-------------------------------------------------+----------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                       | :ref:`center_region<class_OpenXRDpadBindingModifier_property_center_region>`           | ``0.1``       |
   +-------------------------------------------------+----------------------------------------------------------------------------------------+---------------+
   | :ref:`String<class_String>`                     | :ref:`input_path<class_OpenXRDpadBindingModifier_property_input_path>`                 | ``""``        |
   +-------------------------------------------------+----------------------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_sticky<class_OpenXRDpadBindingModifier_property_is_sticky>`                   | ``false``     |
   +-------------------------------------------------+----------------------------------------------------------------------------------------+---------------+
   | :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` | :ref:`off_haptic<class_OpenXRDpadBindingModifier_property_off_haptic>`                 |               |
   +-------------------------------------------------+----------------------------------------------------------------------------------------+---------------+
   | :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` | :ref:`on_haptic<class_OpenXRDpadBindingModifier_property_on_haptic>`                   |               |
   +-------------------------------------------------+----------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                       | :ref:`threshold<class_OpenXRDpadBindingModifier_property_threshold>`                   | ``0.6``       |
   +-------------------------------------------------+----------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                       | :ref:`threshold_released<class_OpenXRDpadBindingModifier_property_threshold_released>` | ``0.4``       |
   +-------------------------------------------------+----------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                       | :ref:`wedge_angle<class_OpenXRDpadBindingModifier_property_wedge_angle>`               | ``1.5707964`` |
   +-------------------------------------------------+----------------------------------------------------------------------------------------+---------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_OpenXRDpadBindingModifier_property_action_set:

.. rst-class:: classref-property

:ref:`OpenXRActionSet<class_OpenXRActionSet>` **action_set** :ref:`🔗<class_OpenXRDpadBindingModifier_property_action_set>`

.. rst-class:: classref-property-setget

- |void| **set_action_set**\ (\ value\: :ref:`OpenXRActionSet<class_OpenXRActionSet>`\ )
- :ref:`OpenXRActionSet<class_OpenXRActionSet>` **get_action_set**\ (\ )

十字鍵綁定修改器啟用的動作集。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_center_region:

.. rst-class:: classref-property

:ref:`float<class_float>` **center_region** = ``0.1`` :ref:`🔗<class_OpenXRDpadBindingModifier_property_center_region>`

.. rst-class:: classref-property-setget

- |void| **set_center_region**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_center_region**\ (\ )

中心區域，十字鍵的中央位置在該區域中回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_input_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **input_path** = ``""`` :ref:`🔗<class_OpenXRDpadBindingModifier_property_input_path>`

.. rst-class:: classref-property-setget

- |void| **set_input_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_input_path**\ (\ )

十字鍵綁定修改器的輸入路徑。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_is_sticky:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **is_sticky** = ``false`` :ref:`🔗<class_OpenXRDpadBindingModifier_property_is_sticky>`

.. rst-class:: classref-property-setget

- |void| **set_is_sticky**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_is_sticky**\ (\ )

如果為 ``false``\ ，則搖桿進入新的十字鍵區域時變為 ``true``\ 。

如果為 ``true``\ ，則搖桿保留在活動的十字鍵區域中時，即使與另一個區域重疊也仍然為 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_off_haptic:

.. rst-class:: classref-property

:ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **off_haptic** :ref:`🔗<class_OpenXRDpadBindingModifier_property_off_haptic>`

.. rst-class:: classref-property-setget

- |void| **set_off_haptic**\ (\ value\: :ref:`OpenXRHapticBase<class_OpenXRHapticBase>`\ )
- :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **get_off_haptic**\ (\ )

使用者松開輸入時發出的觸覺脈衝。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_on_haptic:

.. rst-class:: classref-property

:ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **on_haptic** :ref:`🔗<class_OpenXRDpadBindingModifier_property_on_haptic>`

.. rst-class:: classref-property-setget

- |void| **set_on_haptic**\ (\ value\: :ref:`OpenXRHapticBase<class_OpenXRHapticBase>`\ )
- :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **get_on_haptic**\ (\ )

使用者按下輸入時發出的觸覺脈衝。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **threshold** = ``0.6`` :ref:`🔗<class_OpenXRDpadBindingModifier_property_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_threshold**\ (\ )

輸入值等於或大於該值時，十字鍵在該方向上變為 ``true``\ 。它會保持為 ``true``\ ，直到輸入值低於 :ref:`threshold_released<class_OpenXRDpadBindingModifier_property_threshold_released>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_threshold_released:

.. rst-class:: classref-property

:ref:`float<class_float>` **threshold_released** = ``0.4`` :ref:`🔗<class_OpenXRDpadBindingModifier_property_threshold_released>`

.. rst-class:: classref-property-setget

- |void| **set_threshold_released**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_threshold_released**\ (\ )

輸入值低於此值時，輸出變為 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_wedge_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **wedge_angle** = ``1.5707964`` :ref:`🔗<class_OpenXRDpadBindingModifier_property_wedge_angle>`

.. rst-class:: classref-property-setget

- |void| **set_wedge_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wedge_angle**\ (\ )

每個楔形的角度，用於標識模擬十字鍵的四個方向。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
