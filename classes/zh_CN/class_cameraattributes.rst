:github_url: hide

.. _class_CameraAttributes:

CameraAttributes
================

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`CameraAttributesPhysical<class_CameraAttributesPhysical>`, :ref:`CameraAttributesPractical<class_CameraAttributesPractical>`

相机设置的父类。

.. rst-class:: classref-introduction-group

描述
----

控制相机的特定属性，如景深和曝光覆盖。

当在 :ref:`WorldEnvironment<class_WorldEnvironment>` 中使用时，它提供了曝光、自动曝光、以及景深的默认设置，这些设置将由所有没有自己的 **CameraAttributes** 的相机使用，包括编辑器相机。当在 :ref:`Camera3D<class_Camera3D>` 中使用时，它将覆盖 :ref:`WorldEnvironment<class_WorldEnvironment>` 中设置的任何 **CameraAttributes**\ 。当在 :ref:`VoxelGI<class_VoxelGI>` 或 :ref:`LightmapGI<class_LightmapGI>` 中使用时，将只会使用曝光设置。

另见 :ref:`Environment<class_Environment>` 了解一般的 3D 环境设置。

这是一个由 :ref:`CameraAttributesPhysical<class_CameraAttributesPhysical>` 和 :ref:`CameraAttributesPractical<class_CameraAttributesPractical>` 继承的纯虚类。

.. rst-class:: classref-reftable-group

属性
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

属性说明
--------

.. _class_CameraAttributes_property_auto_exposure_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **auto_exposure_enabled** = ``false`` :ref:`🔗<class_CameraAttributes_property_auto_exposure_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_auto_exposure_enabled**\ (\ )

如果为 ``true``\ ，启用场景渲染器的色调映射自动曝光模式。如果为 ``true``\ ，渲染器将自动确定曝光设置，以适应场景的照明和观察到的光线。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributes_property_auto_exposure_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_scale** = ``0.4`` :ref:`🔗<class_CameraAttributes_property_auto_exposure_scale>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_scale**\ (\ )

自动曝光效果的比例。影响自动曝光的强度。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributes_property_auto_exposure_speed:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_speed** = ``0.5`` :ref:`🔗<class_CameraAttributes_property_auto_exposure_speed>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_speed**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_speed**\ (\ )

自动曝光效果的速度。影响相机执行自动曝光所需的时间。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributes_property_exposure_multiplier:

.. rst-class:: classref-property

:ref:`float<class_float>` **exposure_multiplier** = ``1.0`` :ref:`🔗<class_CameraAttributes_property_exposure_multiplier>`

.. rst-class:: classref-property-setget

- |void| **set_exposure_multiplier**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_exposure_multiplier**\ (\ )

曝光量的乘数。较高的值会产生较亮的图像。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributes_property_exposure_sensitivity:

.. rst-class:: classref-property

:ref:`float<class_float>` **exposure_sensitivity** = ``100.0`` :ref:`🔗<class_CameraAttributes_property_exposure_sensitivity>`

.. rst-class:: classref-property-setget

- |void| **set_exposure_sensitivity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_exposure_sensitivity**\ (\ )

相机传感器的灵敏度，以 ISO 测量。灵敏度越高，图像越亮。

\ :ref:`auto_exposure_enabled<class_CameraAttributes_property_auto_exposure_enabled>` 为 ``true`` 时，可以用作曝光补偿的方法，将该值加倍会使曝光值增加 1 档（以 EV100 测量）。

\ **注意：**\ 仅在启用 :ref:`ProjectSettings.rendering/lights_and_shadows/use_physical_light_units<class_ProjectSettings_property_rendering/lights_and_shadows/use_physical_light_units>` 时可用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
