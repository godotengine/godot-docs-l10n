:github_url: hide

.. _class_CameraAttributesPractical:

CameraAttributesPractical
=========================

**继承：** :ref:`CameraAttributes<class_CameraAttributes>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

相机设置，格式比较易用。

.. rst-class:: classref-introduction-group

描述
----

控制相机的特定属性，如自动曝光、景深、以及曝光覆盖。

当在 :ref:`WorldEnvironment<class_WorldEnvironment>` 中使用时，它提供了曝光、自动曝光、以及景深的默认设置，这些设置将由所有没有自己的 :ref:`CameraAttributes<class_CameraAttributes>` 的相机使用，包括编辑器相机。当在 :ref:`Camera3D<class_Camera3D>` 中使用时，它将覆盖 :ref:`WorldEnvironment<class_WorldEnvironment>` 中设置的任何 :ref:`CameraAttributes<class_CameraAttributes>`\ 。当在 :ref:`VoxelGI<class_VoxelGI>` 或 :ref:`LightmapGI<class_LightmapGI>` 中使用时，只会使用曝光设置。

\ **注意：**\ 景深模糊仅在 Forward+ 和 Mobile 渲染方法中受支持，Compatibility 中不受支持。

\ **注意：**\ 自动曝光仅在 Forward+ 渲染方法中受支持，在 Mobile 或 Compatibility 中不受支持。

.. rst-class:: classref-reftable-group

属性
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

属性说明
--------

.. _class_CameraAttributesPractical_property_auto_exposure_max_sensitivity:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_max_sensitivity** = ``800.0`` :ref:`🔗<class_CameraAttributesPractical_property_auto_exposure_max_sensitivity>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_max_sensitivity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_max_sensitivity**\ (\ )

计算自动曝光时使用的最大感光度（单位：ISO）。在计算场景平均亮度时，颜色值将至少被钳制在这个值上。这限制了自动曝光在低于一定的亮度进行曝光时，导致场景将保持明亮的一个截止点。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_auto_exposure_min_sensitivity:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_min_sensitivity** = ``0.0`` :ref:`🔗<class_CameraAttributesPractical_property_auto_exposure_min_sensitivity>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_min_sensitivity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_min_sensitivity**\ (\ )

计算自动曝光时使用的最小感光度（单位：ISO）。在计算场景平均亮度时，颜色值将至少被钳制在这个值上。这限制了自动曝光在超过一定的亮度进行曝光时，导致场景将保持黑暗的一个截止点。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_amount:

.. rst-class:: classref-property

:ref:`float<class_float>` **dof_blur_amount** = ``0.1`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_amount>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_amount**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dof_blur_amount**\ (\ )

设置最大模糊量。当使用基于物理的模糊量时，将改为充当一个乘数。高值会导致模糊度增加，但计算起来会更昂贵。对于一个给定的艺术风格，最好将该值保持得尽可能低。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_far_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **dof_blur_far_distance** = ``10.0`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_far_distance>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_far_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dof_blur_far_distance**\ (\ )

距离该 :ref:`Camera3D<class_Camera3D>` 比该值远的对象将因景深效果而变得模糊。以米为单位进行测量。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_far_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **dof_blur_far_enabled** = ``false`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_far_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_far_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_dof_blur_far_enabled**\ (\ )

为比 :ref:`dof_blur_far_distance<class_CameraAttributesPractical_property_dof_blur_far_distance>` 更远的对象启用景深模糊。模糊强度由 :ref:`dof_blur_amount<class_CameraAttributesPractical_property_dof_blur_amount>` 控制并由 :ref:`dof_blur_far_transition<class_CameraAttributesPractical_property_dof_blur_far_transition>` 调制。

\ **注意：**\ 景深模糊只支持 Forward+ 和移动渲染方式，不支持兼容模式。

\ **注意：** 当视口背景为透明（即 :ref:`Viewport.transparent_bg<class_Viewport_property_transparent_bg>` 为 ``true``\ ）时，不支持景深模糊效果。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_far_transition:

.. rst-class:: classref-property

:ref:`float<class_float>` **dof_blur_far_transition** = ``5.0`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_far_transition>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_far_transition**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dof_blur_far_transition**\ (\ )

当为正数时，距离超过该值（从 :ref:`dof_blur_far_distance<class_CameraAttributesPractical_property_dof_blur_far_distance>` 开始）时，模糊效果将从 0 缩放到 :ref:`dof_blur_amount<class_CameraAttributesPractical_property_dof_blur_amount>`\ 。当为负数时，使用基于物理的缩放，因此景深效果将在 :ref:`dof_blur_far_distance<class_CameraAttributesPractical_property_dof_blur_far_distance>` 处从 0 开始缩放，并且随着对象远离该 :ref:`Camera3D<class_Camera3D>`\ ，将以物理上准确的方式增加该效果。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_near_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **dof_blur_near_distance** = ``2.0`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_near_distance>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_near_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dof_blur_near_distance**\ (\ )

距离该 :ref:`Camera3D<class_Camera3D>` 比该值近的对象将因景深效果而变得模糊。以米为单位进行测量。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_near_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **dof_blur_near_enabled** = ``false`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_near_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_near_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_dof_blur_near_enabled**\ (\ )

为比 :ref:`dof_blur_near_distance<class_CameraAttributesPractical_property_dof_blur_near_distance>` 更近的对象启用景深模糊。模糊强度由 :ref:`dof_blur_amount<class_CameraAttributesPractical_property_dof_blur_amount>` 控制并由 :ref:`dof_blur_near_transition<class_CameraAttributesPractical_property_dof_blur_near_transition>` 调制。

\ **注意：**\ 景深模糊只支持 Forward+ 和移动渲染方式，不支持兼容模式。

\ **注意：** 当视口背景为透明（即 :ref:`Viewport.transparent_bg<class_Viewport_property_transparent_bg>` 为 ``true``\ ）时，不支持景深模糊效果。

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_near_transition:

.. rst-class:: classref-property

:ref:`float<class_float>` **dof_blur_near_transition** = ``1.0`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_near_transition>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_near_transition**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dof_blur_near_transition**\ (\ )

当为正数时，距离超过该值且截止到 :ref:`dof_blur_near_distance<class_CameraAttributesPractical_property_dof_blur_near_distance>` 时，模糊效果将从 0 缩放到 :ref:`dof_blur_amount<class_CameraAttributesPractical_property_dof_blur_amount>`\ 。当为负数时，使用基于物理的缩放，因此景深效果将在 :ref:`dof_blur_near_distance<class_CameraAttributesPractical_property_dof_blur_near_distance>` 处从 0 开始缩放，并且随着对象靠近该 :ref:`Camera3D<class_Camera3D>`\ ，将以物理上准确的方式增加该效果。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
