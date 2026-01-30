:github_url: hide

.. _class_GPUParticlesCollisionSDF3D:

GPUParticlesCollisionSDF3D
==========================

**繼承：** :ref:`GPUParticlesCollision3D<class_GPUParticlesCollision3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

烘焙的有符號距離場 3D 粒子吸引器，影響 :ref:`GPUParticles3D<class_GPUParticles3D>` 節點。

.. rst-class:: classref-introduction-group

說明
----

烘焙的有符號距離場 3D 粒子吸引器，影響 :ref:`GPUParticles3D<class_GPUParticles3D>` 節點。

有符號的距離場（SDF）允許有效地表示任何形狀的凸面和凹面物件的近似碰撞形狀。它比 :ref:`GPUParticlesCollisionHeightField3D<class_GPUParticlesCollisionHeightField3D>` 更靈活，但需要一個烘焙步驟。

\ **烘焙：**\ 可以通過在編輯器中選擇 **GPUParticlesCollisionSDF3D** 節點，然後點擊 3D 視口頂部的\ **烘焙 SDF**\ ，來烘焙有符號的距離場紋理。\ :ref:`size<class_GPUParticlesCollisionSDF3D_property_size>` 內的任何\ *可見* :ref:`MeshInstance3D<class_MeshInstance3D>`\ ，無論它們的 :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` 如何，都將被考慮用於烘焙。

\ **注意：**\ 烘焙 **GPUParticlesCollisionSDF3D** 的 :ref:`texture<class_GPUParticlesCollisionSDF3D_property_texture>` 只能在編輯器中進行，因為沒有公開的烘焙方法可用於匯出的遊戲專案中。但是，在匯出的遊戲項目中，仍然可以將預先烘焙的 :ref:`Texture3D<class_Texture3D>` 載入到 :ref:`texture<class_GPUParticlesCollisionSDF3D_property_texture>` 屬性中。

\ **注意：**\ 在 :ref:`GPUParticles3D<class_GPUParticles3D>` 的處理材質上，\ :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` 必須是 :ref:`ParticleProcessMaterial.COLLISION_RIGID<class_ParticleProcessMaterial_constant_COLLISION_RIGID>` 或 :ref:`ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT<class_ParticleProcessMaterial_constant_COLLISION_HIDE_ON_CONTACT>`\ ，才能使碰撞生效。

\ **注意：**\ 粒子碰撞只影響 :ref:`GPUParticles3D<class_GPUParticles3D>`\ ，不影響 :ref:`CPUParticles3D<class_CPUParticles3D>`\ 。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------+-------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                         | :ref:`bake_mask<class_GPUParticlesCollisionSDF3D_property_bake_mask>`   | ``4294967295``       |
   +---------------------------------------------------------------+-------------------------------------------------------------------------+----------------------+
   | :ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` | :ref:`resolution<class_GPUParticlesCollisionSDF3D_property_resolution>` | ``2``                |
   +---------------------------------------------------------------+-------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                                 | :ref:`size<class_GPUParticlesCollisionSDF3D_property_size>`             | ``Vector3(2, 2, 2)`` |
   +---------------------------------------------------------------+-------------------------------------------------------------------------+----------------------+
   | :ref:`Texture3D<class_Texture3D>`                             | :ref:`texture<class_GPUParticlesCollisionSDF3D_property_texture>`       |                      |
   +---------------------------------------------------------------+-------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                     | :ref:`thickness<class_GPUParticlesCollisionSDF3D_property_thickness>`   | ``1.0``              |
   +---------------------------------------------------------------+-------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_bake_mask_value<class_GPUParticlesCollisionSDF3D_method_get_bake_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_bake_mask_value<class_GPUParticlesCollisionSDF3D_method_set_bake_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_GPUParticlesCollisionSDF3D_Resolution:

.. rst-class:: classref-enumeration

enum **Resolution**: :ref:`🔗<enum_GPUParticlesCollisionSDF3D_Resolution>`

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_16:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_16** = ``0``

烘焙 16×16×16 的有符號距離場。這是最快的選項，但也是最不精確的。

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_32:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_32** = ``1``

烘焙 32×32×32 的有符號距離場。

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_64:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_64** = ``2``

烘焙 64×64×64 的有符號距離場。

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_128:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_128** = ``3``

烘焙 128×128×128 的有符號距離場。

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_256:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_256** = ``4``

烘焙 256×256×256 的有符號距離場。

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_512:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_512** = ``5``

烘焙 512×512×512 的有符號距離場。這是最慢的選項，但也是最精確的。

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_MAX** = ``6``

代表 :ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_GPUParticlesCollisionSDF3D_property_bake_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **bake_mask** = ``4294967295`` :ref:`🔗<class_GPUParticlesCollisionSDF3D_property_bake_mask>`

.. rst-class:: classref-property-setget

- |void| **set_bake_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bake_mask**\ (\ )

烘焙粒子碰撞 SDF 時要考慮的可視層。只有其 :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>` 與該 :ref:`bake_mask<class_GPUParticlesCollisionSDF3D_property_bake_mask>` 配對的 :ref:`MeshInstance3D<class_MeshInstance3D>`\ ，才會被包含在生成的粒子碰撞 SDF 中。預設情況下，粒子碰撞 SDF 烘焙會考慮所有物件。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionSDF3D_property_resolution:

.. rst-class:: classref-property

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **resolution** = ``2`` :ref:`🔗<class_GPUParticlesCollisionSDF3D_property_resolution>`

.. rst-class:: classref-property-setget

- |void| **set_resolution**\ (\ value\: :ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>`\ )
- :ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **get_resolution**\ (\ )

用於有符號距離場 :ref:`texture<class_GPUParticlesCollisionSDF3D_property_texture>` 的烘焙解析度。必須再次烘焙紋理，才能使 :ref:`resolution<class_GPUParticlesCollisionSDF3D_property_resolution>` 屬性的更改生效。更高的解析度具有更高的性能成本，並且需要更多的時間來烘焙。更高的解析度還會產生更大的烘焙紋理，從而增加 VRAM 和儲存的空間需求。要提高性能並減少烘焙時間，請為表示碰撞的對象使用盡可能低的解析度。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionSDF3D_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(2, 2, 2)`` :ref:`🔗<class_GPUParticlesCollisionSDF3D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

碰撞 SDF 的大小，單位為 3D 單位。為了提高 SDF 品質，應在能覆蓋需要的場景部分的同時，將 :ref:`size<class_GPUParticlesCollisionSDF3D_property_size>` 設定得盡可能小。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionSDF3D_property_texture:

.. rst-class:: classref-property

:ref:`Texture3D<class_Texture3D>` **texture** :ref:`🔗<class_GPUParticlesCollisionSDF3D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture3D<class_Texture3D>`\ )
- :ref:`Texture3D<class_Texture3D>` **get_texture**\ (\ )

代表有符號距離場的 3D 紋理。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionSDF3D_property_thickness:

.. rst-class:: classref-property

:ref:`float<class_float>` **thickness** = ``1.0`` :ref:`🔗<class_GPUParticlesCollisionSDF3D_property_thickness>`

.. rst-class:: classref-property-setget

- |void| **set_thickness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_thickness**\ (\ )

碰撞形狀的厚度。與其他粒子碰撞器不同，\ **GPUParticlesCollisionSDF3D** 實際上內部是空心的。可以增加 :ref:`thickness<class_GPUParticlesCollisionSDF3D_property_thickness>`\ ，以防止粒子在高速運動、或者當 **GPUParticlesCollisionSDF3D** 移動時，穿過碰撞形狀。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_GPUParticlesCollisionSDF3D_method_get_bake_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_bake_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GPUParticlesCollisionSDF3D_method_get_bake_mask_value>`

返回是否啟用了 :ref:`bake_mask<class_GPUParticlesCollisionSDF3D_property_bake_mask>` 的指定層，該層由給定的一個介於 1 和 32 之間的 ``layer_number`` 指定。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionSDF3D_method_set_bake_mask_value:

.. rst-class:: classref-method

|void| **set_bake_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_GPUParticlesCollisionSDF3D_method_set_bake_mask_value>`

基於 ``value``\ ，啟用或禁用 :ref:`bake_mask<class_GPUParticlesCollisionSDF3D_property_bake_mask>` 中的指定層，該層由給定的一個介於 1 和 32 之間的 ``layer_number`` 指定。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
