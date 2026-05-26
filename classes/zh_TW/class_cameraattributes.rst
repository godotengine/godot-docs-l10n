:github_url: hide

.. _class_CameraAttributes:

CameraAttributes
================

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`CameraAttributesPhysical<class_CameraAttributesPhysical>`, :ref:`CameraAttributesPractical<class_CameraAttributesPractical>`

相機設定的父類。

.. rst-class:: classref-introduction-group

說明
----

控制相機的特定屬性，如景深和曝光覆蓋。

當在 :ref:`WorldEnvironment<class_WorldEnvironment>` 中使用時，它提供了曝光、自動曝光、以及景深的預設設置，這些設定將由所有沒有自己的 **CameraAttributes** 的相機使用，包括編輯器相機。當在 :ref:`Camera3D<class_Camera3D>` 中使用時，它將覆蓋 :ref:`WorldEnvironment<class_WorldEnvironment>` 中設定的任何 **CameraAttributes**\ 。當在 :ref:`VoxelGI<class_VoxelGI>` 或 :ref:`LightmapGI<class_LightmapGI>` 中使用時，將只會使用曝光設置。

另請參閱 :ref:`Environment<class_Environment>` 瞭解一般的 3D 環境設定。

這是一個由 :ref:`CameraAttributesPhysical<class_CameraAttributesPhysical>` 和 :ref:`CameraAttributesPractical<class_CameraAttributesPractical>` 繼承的純虛類。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`auto_exposure_enabled<class_CameraAttributes_property_auto_exposure_enabled>` | ``false`` |
   +---------------------------+-------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`auto_exposure_scale<class_CameraAttributes_property_auto_exposure_scale>`     | ``0.4``   |
   +---------------------------+-------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`auto_exposure_speed<class_CameraAttributes_property_auto_exposure_speed>`     | ``0.5``   |
   +---------------------------+-------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`exposure_multiplier<class_CameraAttributes_property_exposure_multiplier>`     | ``1.0``   |
   +---------------------------+-------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`exposure_sensitivity<class_CameraAttributes_property_exposure_sensitivity>`   | ``100.0`` |
   +---------------------------+-------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_CameraAttributes_property_auto_exposure_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **auto_exposure_enabled** = ``false`` :ref:`🔗<class_CameraAttributes_property_auto_exposure_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_auto_exposure_enabled**\ (\ )

If ``true``, enables the tonemapping auto exposure mode of the scene renderer. If ``true``, the renderer will automatically determine the exposure setting to adapt to the scene's illumination and the observed light.

\ **Note:** Auto-exposure is only supported in the Forward+ rendering method, not Mobile or Compatibility.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributes_property_auto_exposure_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_scale** = ``0.4`` :ref:`🔗<class_CameraAttributes_property_auto_exposure_scale>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_scale**\ (\ )

自動曝光效果的比例。影響自動曝光的強度。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributes_property_auto_exposure_speed:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_speed** = ``0.5`` :ref:`🔗<class_CameraAttributes_property_auto_exposure_speed>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_speed**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_speed**\ (\ )

自動曝光效果的速度。影響相機執行自動曝光所需的時間。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributes_property_exposure_multiplier:

.. rst-class:: classref-property

:ref:`float<class_float>` **exposure_multiplier** = ``1.0`` :ref:`🔗<class_CameraAttributes_property_exposure_multiplier>`

.. rst-class:: classref-property-setget

- |void| **set_exposure_multiplier**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_exposure_multiplier**\ (\ )

曝光量的乘數。較高的值會產生較亮的圖像。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributes_property_exposure_sensitivity:

.. rst-class:: classref-property

:ref:`float<class_float>` **exposure_sensitivity** = ``100.0`` :ref:`🔗<class_CameraAttributes_property_exposure_sensitivity>`

.. rst-class:: classref-property-setget

- |void| **set_exposure_sensitivity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_exposure_sensitivity**\ (\ )

Sensitivity of camera sensors, measured in ISO. A higher sensitivity results in a brighter image.

If :ref:`auto_exposure_enabled<class_CameraAttributes_property_auto_exposure_enabled>` is ``true``, this can be used as a method of exposure compensation, doubling the value will increase the exposure value (measured in EV100) by 1 stop.

\ **Note:** Only available when :ref:`ProjectSettings.rendering/lights_and_shadows/use_physical_light_units<class_ProjectSettings_property_rendering/lights_and_shadows/use_physical_light_units>` is enabled.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
