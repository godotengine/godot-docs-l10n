:github_url: hide

.. _class_VoxelGI:

VoxelGI
=======

**繼承：** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

即時全域光照（GI）探測。

.. rst-class:: classref-introduction-group

說明
----

**VoxelGI** 用於為場景提供高品質的即時的間接光照和反射。它們預先計算發光物體的效果和靜態幾何體的效果，以即時模擬複雜光線的行為。\ **VoxelGI** 需要經過烘焙才能產生可見的效果。然而，一旦烘焙，動態物件將接收來自它們的光。此外，燈光可以是完全動態的，也可以是烘焙的。

\ **注意：**\ **VoxelGI** 只支援 Forward+ 算繪方式，不支援 Mobile 或 Compatibility。

\ **程式生成：**\ **VoxelGI** 可以在匯出的專案中烘焙，這使得它適用於程式生成或用戶建構的關卡，只要所有幾何體都預先生成即可。對於在遊戲過程中隨時生成幾何圖形的遊戲，SDFGI 更合適（參見 :ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`\ ）。

\ **性能：**\ **VoxelGI** 對 GPU 要求比較高，不適合集成顯卡等低端硬體（可以考慮改用 :ref:`LightmapGI<class_LightmapGI>`\ ）。要提高性能，請在專案設定中，調整 :ref:`ProjectSettings.rendering/global_illumination/voxel_gi/quality<class_ProjectSettings_property_rendering/global_illumination/voxel_gi/quality>`\ ，並啟用 :ref:`ProjectSettings.rendering/global_illumination/gi/use_half_resolution<class_ProjectSettings_property_rendering/global_illumination/gi/use_half_resolution>`\ 。要為低端硬體提供後備方案，請考慮在專案的選項功能表中，添加一個選項，以禁用 **VoxelGI**\ 。\ **VoxelGI** 節點可以通過隱藏而禁用。

\ **注意：**\ 網格應該有足夠厚的壁（避免單面牆）以避免漏光。對於內部關卡，請將關卡幾何體封裝在一個足夠大的盒子中，並橋接迴圈邊以閉合網格。為了進一步防止漏光，還可以策略性地放置臨時 :ref:`MeshInstance3D<class_MeshInstance3D>` 節點，並將其 :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` 設定為 :ref:`GeometryInstance3D.GI_MODE_STATIC<class_GeometryInstance3D_constant_GI_MODE_STATIC>`\ 。然後可以在烘焙 **VoxelGI** 節點後，隱藏這些臨時節點。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用體素全域光照 <../tutorials/3d/global_illumination/using_voxel_gi>`

- `第三人稱射擊（TPS）示範 <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+
   | :ref:`CameraAttributes<class_CameraAttributes>` | :ref:`camera_attributes<class_VoxelGI_property_camera_attributes>` |                         |
   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+
   | :ref:`VoxelGIData<class_VoxelGIData>`           | :ref:`data<class_VoxelGI_property_data>`                           |                         |
   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`size<class_VoxelGI_property_size>`                           | ``Vector3(20, 20, 20)`` |
   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+
   | :ref:`Subdiv<enum_VoxelGI_Subdiv>`              | :ref:`subdiv<class_VoxelGI_property_subdiv>`                       | ``1``                   |
   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`bake<class_VoxelGI_method_bake>`\ (\ from_node\: :ref:`Node<class_Node>` = null, create_visual_debug\: :ref:`bool<class_bool>` = false\ ) |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`debug_bake<class_VoxelGI_method_debug_bake>`\ (\ )                                                                                        |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_VoxelGI_Subdiv:

.. rst-class:: classref-enumeration

enum **Subdiv**: :ref:`🔗<enum_VoxelGI_Subdiv>`

.. _class_VoxelGI_constant_SUBDIV_64:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_64** = ``0``

使用 64 分區，這是最低的品質設定，但也是最快的。如果你能使用它，特別是在低端硬體上使用它。

.. _class_VoxelGI_constant_SUBDIV_128:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_128** = ``1``

使用 128 個分區。這是預設的品質設定。

.. _class_VoxelGI_constant_SUBDIV_256:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_256** = ``2``

使用 256 個分區。

.. _class_VoxelGI_constant_SUBDIV_512:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_512** = ``3``

使用 512 個分區。這是最高的品質設定，但也是最慢的。在低端硬體上，這可能會導致 GPU 停頓。

.. _class_VoxelGI_constant_SUBDIV_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_MAX** = ``4``

代表 :ref:`Subdiv<enum_VoxelGI_Subdiv>` 舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VoxelGI_property_camera_attributes:

.. rst-class:: classref-property

:ref:`CameraAttributes<class_CameraAttributes>` **camera_attributes** :ref:`🔗<class_VoxelGI_property_camera_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_camera_attributes**\ (\ value\: :ref:`CameraAttributes<class_CameraAttributes>`\ )
- :ref:`CameraAttributes<class_CameraAttributes>` **get_camera_attributes**\ (\ )

指定烘焙所使用的曝光級別的 :ref:`CameraAttributes<class_CameraAttributes>` 資源。自動曝光和非曝光屬性會被忽略。曝光設定應當用於降低烘焙時的動態範圍。如果曝光過高，\ **VoxelGI** 會產生色帶問題，也可能出現過曝問題。

.. rst-class:: classref-item-separator

----

.. _class_VoxelGI_property_data:

.. rst-class:: classref-property

:ref:`VoxelGIData<class_VoxelGIData>` **data** :ref:`🔗<class_VoxelGI_property_data>`

.. rst-class:: classref-property-setget

- |void| **set_probe_data**\ (\ value\: :ref:`VoxelGIData<class_VoxelGIData>`\ )
- :ref:`VoxelGIData<class_VoxelGIData>` **get_probe_data**\ (\ )

為該 **VoxelGI** 存放資料的 :ref:`VoxelGIData<class_VoxelGIData>` 資源。

.. rst-class:: classref-item-separator

----

.. _class_VoxelGI_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(20, 20, 20)`` :ref:`🔗<class_VoxelGI_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

The size of the area covered by the **VoxelGI**. This must be ``1.0`` or greater on each axis.

\ **Note:** If you make the size larger without increasing the number of subdivisions with :ref:`subdiv<class_VoxelGI_property_subdiv>`, the size of each cell will increase and result in less detailed lighting.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGI_property_subdiv:

.. rst-class:: classref-property

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **subdiv** = ``1`` :ref:`🔗<class_VoxelGI_property_subdiv>`

.. rst-class:: classref-property-setget

- |void| **set_subdiv**\ (\ value\: :ref:`Subdiv<enum_VoxelGI_Subdiv>`\ )
- :ref:`Subdiv<enum_VoxelGI_Subdiv>` **get_subdiv**\ (\ )

對 **VoxelGI** 操作的柵格進行細分的次數。數位越大，細節越精細，因此視覺品質越高，而數位越小則性能越好。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_VoxelGI_method_bake:

.. rst-class:: classref-method

|void| **bake**\ (\ from_node\: :ref:`Node<class_Node>` = null, create_visual_debug\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_VoxelGI_method_bake>`

烘焙來自所有標記為 :ref:`GeometryInstance3D.GI_MODE_STATIC<class_GeometryInstance3D_constant_GI_MODE_STATIC>` 的 :ref:`GeometryInstance3D<class_GeometryInstance3D>` 以及標記為 :ref:`Light3D.BAKE_STATIC<class_Light3D_constant_BAKE_STATIC>` 或 :ref:`Light3D.BAKE_DYNAMIC<class_Light3D_constant_BAKE_DYNAMIC>` 的 :ref:`Light3D<class_Light3D>` 的效果。如果 ``create_visual_debug`` 為 ``true``\ ，則烘焙光照後會生成一個 :ref:`MultiMesh<class_MultiMesh>`\ ，用立方體代表各個實體儲存格，每個立方體都使用對應儲存格的反照率顏色著色。這樣就對 **VoxelGI** 的數據進行了視覺化，可以用來除錯可能發生的問題。

\ **注意：**\ 編輯器和匯出後的專案中都可以使用 :ref:`bake()<class_VoxelGI_method_bake>`\ 。因此可用於程式式生成或使用者建構的關卡。對於大多數場景，烘焙 **VoxelGI** 節點一般需要 5 到 20 秒。降低 :ref:`subdiv<class_VoxelGI_property_subdiv>` 可以加速烘焙。

\ **注意：**\ :ref:`GeometryInstance3D<class_GeometryInstance3D>` 和 :ref:`Light3D<class_Light3D>` 節點必須在呼叫 :ref:`bake()<class_VoxelGI_method_bake>` 前完全就緒。如果這些節點是程式式生成的，而烘焙後的 **VoxelGI** 中缺失部分網格和燈光，請使用 ``call_deferred("bake")``\ ，不要直接呼叫 :ref:`bake()<class_VoxelGI_method_bake>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VoxelGI_method_debug_bake:

.. rst-class:: classref-method

|void| **debug_bake**\ (\ ) :ref:`🔗<class_VoxelGI_method_debug_bake>`

在啟用 ``create_visual_debug`` 的情況下呼叫 :ref:`bake()<class_VoxelGI_method_bake>` 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
