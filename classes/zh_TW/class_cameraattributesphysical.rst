:github_url: hide

.. _class_CameraAttributesPhysical:

CameraAttributesPhysical
========================

**繼承：** :ref:`CameraAttributes<class_CameraAttributes>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

基於物理的相機設定。

.. rst-class:: classref-introduction-group

說明
----

**CameraAttributesPhysical** 用於根據基於物理的相機的設定來設定算繪設定。它負責曝光、自動曝光、以及景深。

當在 :ref:`WorldEnvironment<class_WorldEnvironment>` 中使用時，它提供了曝光、自動曝光、以及景深的預設設置，這些設定將由所有沒有自己的 :ref:`CameraAttributes<class_CameraAttributes>` 的相機使用，包括編輯器相機。當在 :ref:`Camera3D<class_Camera3D>` 中使用時，它將覆蓋 :ref:`WorldEnvironment<class_WorldEnvironment>` 中設定的任何 :ref:`CameraAttributes<class_CameraAttributes>`\ ，並將覆蓋 :ref:`Camera3D<class_Camera3D>` 的 :ref:`Camera3D.far<class_Camera3D_property_far>`\ 、\ :ref:`Camera3D.near<class_Camera3D_property_near>`\ 、\ :ref:`Camera3D.fov<class_Camera3D_property_fov>`\ 、以及 :ref:`Camera3D.keep_aspect<class_Camera3D_property_keep_aspect>` 屬性。當在 :ref:`VoxelGI<class_VoxelGI>` 或 :ref:`LightmapGI<class_LightmapGI>` 中使用時，將只會使用曝光設定。

預設設定適用於室外環境，可在每個設定的文件中找到有關在室內環境中使用的設定的提示。

\ **注意：**\ 景深模糊只支援 Forward+ 和移動算繪方式，不支援相容模式。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`物理燈光與相機單位 <../tutorials/3d/physical_light_and_camera_units>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`auto_exposure_max_exposure_value<class_CameraAttributesPhysical_property_auto_exposure_max_exposure_value>` | ``10.0``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`auto_exposure_min_exposure_value<class_CameraAttributesPhysical_property_auto_exposure_min_exposure_value>` | ``-8.0``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`exposure_aperture<class_CameraAttributesPhysical_property_exposure_aperture>`                               | ``16.0``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`exposure_shutter_speed<class_CameraAttributesPhysical_property_exposure_shutter_speed>`                     | ``100.0``  |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`frustum_far<class_CameraAttributesPhysical_property_frustum_far>`                                           | ``4000.0`` |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`frustum_focal_length<class_CameraAttributesPhysical_property_frustum_focal_length>`                         | ``35.0``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`frustum_focus_distance<class_CameraAttributesPhysical_property_frustum_focus_distance>`                     | ``10.0``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`frustum_near<class_CameraAttributesPhysical_property_frustum_near>`                                         | ``0.05``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_fov<class_CameraAttributesPhysical_method_get_fov>`\ (\ ) |const| |
   +---------------------------+-----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_CameraAttributesPhysical_property_auto_exposure_max_exposure_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_max_exposure_value** = ``10.0`` :ref:`🔗<class_CameraAttributesPhysical_property_auto_exposure_max_exposure_value>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_max_exposure_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_max_exposure_value**\ (\ )

計算自動曝光時使用的最大亮度（單位：EV100）。在計算場景平均亮度時，顏色值將至少被鉗制在這個值上。這限制了自動曝光在低於一定的亮度進行曝光時，導致場景將保持明亮的一個截止點。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_auto_exposure_min_exposure_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_min_exposure_value** = ``-8.0`` :ref:`🔗<class_CameraAttributesPhysical_property_auto_exposure_min_exposure_value>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_min_exposure_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_min_exposure_value**\ (\ )

The minimum luminance (in EV100) used when calculating auto exposure. When calculating scene average luminance, color values will be clamped to at least this value. This limits the auto-exposure from exposing above a certain brightness, resulting in a cut off point where the scene will remain dark.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_exposure_aperture:

.. rst-class:: classref-property

:ref:`float<class_float>` **exposure_aperture** = ``16.0`` :ref:`🔗<class_CameraAttributesPhysical_property_exposure_aperture>`

.. rst-class:: classref-property-setget

- |void| **set_aperture**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_aperture**\ (\ )

相機光圈的大小，以 f 檔為單位進行測量。f 檔是相機焦距與光圈直徑之間的一個無單位比率。高光圈設定將產生一個更小的光圈，從而導致更暗的圖像和更清晰的焦點。低光圈會產生一個大光圈，讓更多的光線進入，從而產生一個更亮、更不聚焦的圖像。默認值適用於白天的室外（即與預設 :ref:`DirectionalLight3D<class_DirectionalLight3D>` 一起使用），對於室內照明，2 到 4 之間的值更合適。

僅在啟用 :ref:`ProjectSettings.rendering/lights_and_shadows/use_physical_light_units<class_ProjectSettings_property_rendering/lights_and_shadows/use_physical_light_units>` 時可用。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_exposure_shutter_speed:

.. rst-class:: classref-property

:ref:`float<class_float>` **exposure_shutter_speed** = ``100.0`` :ref:`🔗<class_CameraAttributesPhysical_property_exposure_shutter_speed>`

.. rst-class:: classref-property-setget

- |void| **set_shutter_speed**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_shutter_speed**\ (\ )

Time for shutter to open and close, evaluated as ``1 / shutter_speed`` seconds. A higher value will allow less light (leading to a darker image), while a lower value will allow more light (leading to a brighter image).

Only available when :ref:`ProjectSettings.rendering/lights_and_shadows/use_physical_light_units<class_ProjectSettings_property_rendering/lights_and_shadows/use_physical_light_units>` is enabled.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_frustum_far:

.. rst-class:: classref-property

:ref:`float<class_float>` **frustum_far** = ``4000.0`` :ref:`🔗<class_CameraAttributesPhysical_property_frustum_far>`

.. rst-class:: classref-property-setget

- |void| **set_far**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_far**\ (\ )

覆蓋 :ref:`Camera3D.far<class_Camera3D_property_far>` 的值。在內部計算景深時使用。當被附加到 :ref:`Camera3D<class_Camera3D>` 作為其 :ref:`Camera3D.attributes<class_Camera3D_property_attributes>` 時，它將覆蓋 :ref:`Camera3D.fov<class_Camera3D_property_fov>` 屬性。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_frustum_focal_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **frustum_focal_length** = ``35.0`` :ref:`🔗<class_CameraAttributesPhysical_property_frustum_focal_length>`

.. rst-class:: classref-property-setget

- |void| **set_focal_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_focal_length**\ (\ )

相機鏡頭和相機光圈之間的距離，單位：毫米。控制視野和景深。較大的焦距會導致較小的視野和較窄的景深，這意味著更少的對象將在焦點中。較小的焦距會導致更寬的視野和更大的景深，這意味著更多的物體將在焦點中。當被附加到 :ref:`Camera3D<class_Camera3D>` 作為其 :ref:`Camera3D.attributes<class_Camera3D_property_attributes>` 時，它將覆蓋 :ref:`Camera3D.fov<class_Camera3D_property_fov>` 屬性和 :ref:`Camera3D.keep_aspect<class_Camera3D_property_keep_aspect>` 屬性。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_frustum_focus_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **frustum_focus_distance** = ``10.0`` :ref:`🔗<class_CameraAttributesPhysical_property_frustum_focus_distance>`

.. rst-class:: classref-property-setget

- |void| **set_focus_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_focus_distance**\ (\ )

將在焦點中的物體與相機的距離，以米為單位進行測量。在內部，這將被鉗制為至少比 :ref:`frustum_focal_length<class_CameraAttributesPhysical_property_frustum_focal_length>` 大 1 毫米。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_frustum_near:

.. rst-class:: classref-property

:ref:`float<class_float>` **frustum_near** = ``0.05`` :ref:`🔗<class_CameraAttributesPhysical_property_frustum_near>`

.. rst-class:: classref-property-setget

- |void| **set_near**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_near**\ (\ )

覆蓋 :ref:`Camera3D.near<class_Camera3D_property_near>` 的值。在內部計算景深時使用。當被附加到 :ref:`Camera3D<class_Camera3D>` 作為其 :ref:`Camera3D.attributes<class_Camera3D_property_attributes>` 時，它將覆蓋 :ref:`Camera3D.near<class_Camera3D_property_near>` 屬性。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_CameraAttributesPhysical_method_get_fov:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_fov**\ (\ ) |const| :ref:`🔗<class_CameraAttributesPhysical_method_get_fov>`

返回對應於 :ref:`frustum_focal_length<class_CameraAttributesPhysical_property_frustum_focal_length>` 的垂直視野。每當 :ref:`frustum_focal_length<class_CameraAttributesPhysical_property_frustum_focal_length>` 發生變化時，該值都會在內部計算。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
