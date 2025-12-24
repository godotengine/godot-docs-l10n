:github_url: hide

.. _class_VehicleWheel3D:

VehicleWheel3D
==============

**繼承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用於 :ref:`VehicleBody3D<class_VehicleBody3D>` 的 3D 物理體，能夠類比車輪的行為。

.. rst-class:: classref-introduction-group

說明
----

作為 :ref:`VehicleBody3D<class_VehicleBody3D>` 子節點使用的節點，能夠模擬車輛其中一個車輪的行為。這個節點還充當了碰撞器，能夠偵測車輪是否與某個表面接觸。

\ **注意：**\ 該類存在已知問題，並非旨在提供逼真的 3D 車輛物理效果。如果想要高級車輛物理，可能必須使用其他 :ref:`PhysicsBody3D<class_PhysicsBody3D>` 類來編寫自己的物理整合函式。

.. rst-class:: classref-introduction-group

教學
----

- `3D 貨車鎮演示 <https://godotengine.org/asset-library/asset/2752>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`brake<class_VehicleWheel3D_property_brake>`                               | ``0.0``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`damping_compression<class_VehicleWheel3D_property_damping_compression>`   | ``0.83``                                                                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`damping_relaxation<class_VehicleWheel3D_property_damping_relaxation>`     | ``0.88``                                                                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`engine_force<class_VehicleWheel3D_property_engine_force>`                 | ``0.0``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode                                                      | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`steering<class_VehicleWheel3D_property_steering>`                         | ``0.0``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`suspension_max_force<class_VehicleWheel3D_property_suspension_max_force>` | ``6000.0``                                                                    |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`suspension_stiffness<class_VehicleWheel3D_property_suspension_stiffness>` | ``5.88``                                                                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`suspension_travel<class_VehicleWheel3D_property_suspension_travel>`       | ``0.2``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`use_as_steering<class_VehicleWheel3D_property_use_as_steering>`           | ``false``                                                                     |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`use_as_traction<class_VehicleWheel3D_property_use_as_traction>`           | ``false``                                                                     |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`wheel_friction_slip<class_VehicleWheel3D_property_wheel_friction_slip>`   | ``10.5``                                                                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`wheel_radius<class_VehicleWheel3D_property_wheel_radius>`                 | ``0.5``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`wheel_rest_length<class_VehicleWheel3D_property_wheel_rest_length>`       | ``0.15``                                                                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`wheel_roll_influence<class_VehicleWheel3D_property_wheel_roll_influence>` | ``0.1``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`Node3D<class_Node3D>`   | :ref:`get_contact_body<class_VehicleWheel3D_method_get_contact_body>`\ (\ ) |const|     |
   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_contact_normal<class_VehicleWheel3D_method_get_contact_normal>`\ (\ ) |const| |
   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_contact_point<class_VehicleWheel3D_method_get_contact_point>`\ (\ ) |const|   |
   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_rpm<class_VehicleWheel3D_method_get_rpm>`\ (\ ) |const|                       |
   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_skidinfo<class_VehicleWheel3D_method_get_skidinfo>`\ (\ ) |const|             |
   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_in_contact<class_VehicleWheel3D_method_is_in_contact>`\ (\ ) |const|           |
   +-------------------------------+-----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VehicleWheel3D_property_brake:

.. rst-class:: classref-property

:ref:`float<class_float>` **brake** = ``0.0`` :ref:`🔗<class_VehicleWheel3D_property_brake>`

.. rst-class:: classref-property-setget

- |void| **set_brake**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_brake**\ (\ )

通過施加制動力使車輪減速。車輪只有在與表面接觸時才會減速。使車輛充分減速所需的力，取決於車輛的 :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>`\ 。對於品質被設定為 1000 的車輛，嘗試使用 25 - 30 範圍內的值進行緊急制動。

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_damping_compression:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping_compression** = ``0.83`` :ref:`🔗<class_VehicleWheel3D_property_damping_compression>`

.. rst-class:: classref-property-setget

- |void| **set_damping_compression**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_damping_compression**\ (\ )

The damping applied to the suspension spring when being compressed, meaning when the wheel is moving up relative to the vehicle. It is measured in Newton-seconds per millimeter (N⋅s/mm), or megagrams per second (Mg/s). This value should be between 0.0 (no damping) and 1.0, but may be more. A value of 0.0 means the car will keep bouncing as the spring keeps its energy. A good value for this is around 0.3 for a normal car, 0.5 for a race car.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_damping_relaxation:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping_relaxation** = ``0.88`` :ref:`🔗<class_VehicleWheel3D_property_damping_relaxation>`

.. rst-class:: classref-property-setget

- |void| **set_damping_relaxation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_damping_relaxation**\ (\ )

The damping applied to the suspension spring when rebounding or extending, meaning when the wheel is moving down relative to the vehicle. It is measured in Newton-seconds per millimeter (N⋅s/mm), or megagrams per second (Mg/s). This value should be between 0.0 (no damping) and 1.0, but may be more. This value should always be slightly higher than the :ref:`damping_compression<class_VehicleWheel3D_property_damping_compression>` property. For a :ref:`damping_compression<class_VehicleWheel3D_property_damping_compression>` value of 0.3, try a relaxation value of 0.5.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_engine_force:

.. rst-class:: classref-property

:ref:`float<class_float>` **engine_force** = ``0.0`` :ref:`🔗<class_VehicleWheel3D_property_engine_force>`

.. rst-class:: classref-property-setget

- |void| **set_engine_force**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_engine_force**\ (\ )

通過施加引擎力使車輪加速。車輪只有在與表面接觸時才會加速。車輛的 :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>` 對車輛的加速度有影響。對於品質被設定為 1000 的車輛，請嘗試使用 25 - 50 範圍內的加速度值。

\ **注意：**\ 模擬沒有考慮齒輪的影響，如果想要類比齒輪，需要為其新增邏輯。

負值將導致車輪倒轉。

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_steering:

.. rst-class:: classref-property

:ref:`float<class_float>` **steering** = ``0.0`` :ref:`🔗<class_VehicleWheel3D_property_steering>`

.. rst-class:: classref-property-setget

- |void| **set_steering**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_steering**\ (\ )

車輪的轉向角，單位：弧度。將該屬性設定為非零值將導致車輛在移動時轉向。

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_suspension_max_force:

.. rst-class:: classref-property

:ref:`float<class_float>` **suspension_max_force** = ``6000.0`` :ref:`🔗<class_VehicleWheel3D_property_suspension_max_force>`

.. rst-class:: classref-property-setget

- |void| **set_suspension_max_force**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_suspension_max_force**\ (\ )

彈簧所能承受的最大力。該值應高於 :ref:`VehicleBody3D<class_VehicleBody3D>` 的 :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>` 的四分之一，否則該彈簧無法承載車輛的重量。大約 3 到 4 倍這個數字的值通常會獲得良好的結果。

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_suspension_stiffness:

.. rst-class:: classref-property

:ref:`float<class_float>` **suspension_stiffness** = ``5.88`` :ref:`🔗<class_VehicleWheel3D_property_suspension_stiffness>`

.. rst-class:: classref-property-setget

- |void| **set_suspension_stiffness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_suspension_stiffness**\ (\ )

The stiffness of the suspension, measured in Newtons per millimeter (N/mm), or megagrams per second squared (Mg/s²). Use a value lower than 50 for an off-road car, a value between 50 and 100 for a race car and try something around 200 for something like a Formula 1 car.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_suspension_travel:

.. rst-class:: classref-property

:ref:`float<class_float>` **suspension_travel** = ``0.2`` :ref:`🔗<class_VehicleWheel3D_property_suspension_travel>`

.. rst-class:: classref-property-setget

- |void| **set_suspension_travel**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_suspension_travel**\ (\ )

這是懸架可以移動的距離。由於Godot 的單位相當於米，所以保持這個設定相對較低。根據汽車的型別，試試 0.1 和 0.3 之間的值。

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_use_as_steering:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_as_steering** = ``false`` :ref:`🔗<class_VehicleWheel3D_property_use_as_steering>`

.. rst-class:: classref-property-setget

- |void| **set_use_as_steering**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_used_as_steering**\ (\ )

如果為 ``true``\ ，當汽車轉向時這個輪子會轉動。該值與 :ref:`VehicleBody3D.steering<class_VehicleBody3D_property_steering>` 結合使用，如果使用的是各個車輪的 :ref:`steering<class_VehicleWheel3D_property_steering>` 值，則該值將被忽略。

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_use_as_traction:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_as_traction** = ``false`` :ref:`🔗<class_VehicleWheel3D_property_use_as_traction>`

.. rst-class:: classref-property-setget

- |void| **set_use_as_traction**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_used_as_traction**\ (\ )

如果為 ``true``\ ，該車輪會將引擎力傳遞到地面以推動車輛前進。該值與 :ref:`VehicleBody3D.engine_force<class_VehicleBody3D_property_engine_force>` 結合使用，如果使用的是各個車輪的 :ref:`engine_force<class_VehicleWheel3D_property_engine_force>` 值，則該值將被忽略。

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_wheel_friction_slip:

.. rst-class:: classref-property

:ref:`float<class_float>` **wheel_friction_slip** = ``10.5`` :ref:`🔗<class_VehicleWheel3D_property_wheel_friction_slip>`

.. rst-class:: classref-property-setget

- |void| **set_friction_slip**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_friction_slip**\ (\ )

這決定了這個輪子的抓地力有多大。它與車輪所接觸的表面的摩擦力設定相結合。0.0 意味著沒有抓地力，1.0 是正常抓地力。對於漂移車的設定，嘗試將後輪的抓地力設定得比前輪略低，或者使用較低的數值來模擬輪胎的磨損。

在開始時最好將其設定為 1.0。

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_wheel_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **wheel_radius** = ``0.5`` :ref:`🔗<class_VehicleWheel3D_property_wheel_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

輪子的半徑，單位是米。

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_wheel_rest_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **wheel_rest_length** = ``0.15`` :ref:`🔗<class_VehicleWheel3D_property_wheel_rest_length>`

.. rst-class:: classref-property-setget

- |void| **set_suspension_rest_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_suspension_rest_length**\ (\ )

這是輪子從原點下降的距離，以米為單位。不要把這個設定為 0.0，然後把車輪移到位置上，而是把車輪的原點（Godot 中的小工具）移到車輪觸底時的位置，然後使用剩餘長度將輪子向下移動到汽車靜止時它應該所處位置。

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_wheel_roll_influence:

.. rst-class:: classref-property

:ref:`float<class_float>` **wheel_roll_influence** = ``0.1`` :ref:`🔗<class_VehicleWheel3D_property_wheel_roll_influence>`

.. rst-class:: classref-property-setget

- |void| **set_roll_influence**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_roll_influence**\ (\ )

This value affects the roll of your vehicle. If set to 1.0 for all wheels, your vehicle will resist body roll, while a value of 0.0 will be prone to rolling over.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_VehicleWheel3D_method_get_contact_body:

.. rst-class:: classref-method

:ref:`Node3D<class_Node3D>` **get_contact_body**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_get_contact_body>`

如果接觸的實體節點在樹中有效，則返回接觸的實體節點，如 :ref:`Node3D<class_Node3D>`\ 。目前，不支持 :ref:`GridMap<class_GridMap>`\ ，因此該節點將始終為 :ref:`PhysicsBody3D<class_PhysicsBody3D>` 型別。

如果車輪沒有與表面接觸，或者接觸的實體不是 :ref:`PhysicsBody3D<class_PhysicsBody3D>`\ ，則返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_method_get_contact_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_contact_normal**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_get_contact_normal>`

Returns the normal of the suspension's collision in world space if the wheel is in contact. If the wheel isn't in contact with anything, returns a vector pointing directly along the suspension axis toward the vehicle in world space.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_method_get_contact_point:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_contact_point**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_get_contact_point>`

Returns the point of the suspension's collision in world space if the wheel is in contact. If the wheel isn't in contact with anything, returns the maximum point of the wheel's ray cast in world space, which is defined by ``wheel_rest_length + wheel_radius``.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_method_get_rpm:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_rpm**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_get_rpm>`

返回輪子的旋轉速度，單位為每分鐘轉數。

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_method_get_skidinfo:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_skidinfo**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_get_skidinfo>`

返回一個介於 0.0 和 1.0 之間的值，表示這個輪子是否打滑。0.0 表示打滑（車輪失去了抓地力，例如冰雪地形），1.0 表示不打滑（車輪有充分的抓地力，例如乾燥的瀝青路）。

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_method_is_in_contact:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_in_contact**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_is_in_contact>`

如果輪子與表面接觸，返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
