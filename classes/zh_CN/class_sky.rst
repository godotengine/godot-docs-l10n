:github_url: hide

.. _class_Sky:

Sky
===

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

使用 :ref:`Material<class_Material>` 定义 3D 环境的背景。

.. rst-class:: classref-introduction-group

描述
----

**Sky** 类使用 :ref:`Material<class_Material>` 来渲染 3D 环境的背景及其通过更新反射/辐射率立方体贴图发出的光。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +--------------------------------------------+--------------------------------------------------------+-------+
   | :ref:`ProcessMode<enum_Sky_ProcessMode>`   | :ref:`process_mode<class_Sky_property_process_mode>`   | ``0`` |
   +--------------------------------------------+--------------------------------------------------------+-------+
   | :ref:`RadianceSize<enum_Sky_RadianceSize>` | :ref:`radiance_size<class_Sky_property_radiance_size>` | ``3`` |
   +--------------------------------------------+--------------------------------------------------------+-------+
   | :ref:`Material<class_Material>`            | :ref:`sky_material<class_Sky_property_sky_material>`   |       |
   +--------------------------------------------+--------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_Sky_RadianceSize:

.. rst-class:: classref-enumeration

enum **RadianceSize**: :ref:`🔗<enum_Sky_RadianceSize>`

.. _class_Sky_constant_RADIANCE_SIZE_32:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_32** = ``0``

辐射率纹理尺寸为 32×32 像素。

.. _class_Sky_constant_RADIANCE_SIZE_64:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_64** = ``1``

辐射率纹理尺寸为 64×64 像素。

.. _class_Sky_constant_RADIANCE_SIZE_128:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_128** = ``2``

辐射率纹理尺寸为128×128像素。

.. _class_Sky_constant_RADIANCE_SIZE_256:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_256** = ``3``

辐射率纹理尺寸为 256×256 像素。

.. _class_Sky_constant_RADIANCE_SIZE_512:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_512** = ``4``

辐射率纹理尺寸为 512×512 像素。

.. _class_Sky_constant_RADIANCE_SIZE_1024:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_1024** = ``5``

辐射率纹理尺寸为 1024×1024 像素。

.. _class_Sky_constant_RADIANCE_SIZE_2048:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_2048** = ``6``

辐射率纹理尺寸为 2048×2048 像素。

.. _class_Sky_constant_RADIANCE_SIZE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_MAX** = ``7``

代表 :ref:`RadianceSize<enum_Sky_RadianceSize>` 枚举的大小。

.. rst-class:: classref-item-separator

----

.. _enum_Sky_ProcessMode:

.. rst-class:: classref-enumeration

enum **ProcessMode**: :ref:`🔗<enum_Sky_ProcessMode>`

.. _class_Sky_constant_PROCESS_MODE_AUTOMATIC:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessMode<enum_Sky_ProcessMode>` **PROCESS_MODE_AUTOMATIC** = ``0``

根据天空着色器自动选择合适的处理模式。如果着色器使用 ``TIME`` 或 ``POSITION``\ ，这将使用 :ref:`PROCESS_MODE_REALTIME<class_Sky_constant_PROCESS_MODE_REALTIME>`\ 。如果着色器使用任何 ``LIGHT_*`` 变量或任何自定义 uniform，这将使用 :ref:`PROCESS_MODE_INCREMENTAL<class_Sky_constant_PROCESS_MODE_INCREMENTAL>`\ 。否则，这默认为 :ref:`PROCESS_MODE_QUALITY<class_Sky_constant_PROCESS_MODE_QUALITY>`\ 。

.. _class_Sky_constant_PROCESS_MODE_QUALITY:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessMode<enum_Sky_ProcessMode>` **PROCESS_MODE_QUALITY** = ``1``

使用高质量重要性采样处理辐射率贴图。得到的结果通常比 :ref:`PROCESS_MODE_REALTIME<class_Sky_constant_PROCESS_MODE_REALTIME>` 的质量更高，但需要花费更多的时间来生成。如果你计划在运行时修改天空，则不应使用。如果你发现反射不够模糊，出现了火花或者萤火虫，请尝试增大 :ref:`ProjectSettings.rendering/reflections/sky_reflections/ggx_samples<class_ProjectSettings_property_rendering/reflections/sky_reflections/ggx_samples>`\ 。

.. _class_Sky_constant_PROCESS_MODE_INCREMENTAL:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessMode<enum_Sky_ProcessMode>` **PROCESS_MODE_INCREMENTAL** = ``2``

使用与 :ref:`PROCESS_MODE_QUALITY<class_Sky_constant_PROCESS_MODE_QUALITY>` 相同的高质量重要性采样来处理辐射率贴图，但更新会占用几帧。帧数由 :ref:`ProjectSettings.rendering/reflections/sky_reflections/roughness_layers<class_ProjectSettings_property_rendering/reflections/sky_reflections/roughness_layers>` 决定。当需要最高质量的辐射率贴图，但天空更新缓慢时，请使用该选项。

.. _class_Sky_constant_PROCESS_MODE_REALTIME:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessMode<enum_Sky_ProcessMode>` **PROCESS_MODE_REALTIME** = ``3``

使用快速过滤算法处理辐射率贴图。一般来说，这会导致质量较低，但运行时间会大大加快。如果需要更好的质量，但仍需要每帧更新天空，请考虑开启 :ref:`ProjectSettings.rendering/reflections/sky_reflections/fast_filter_high_quality<class_ProjectSettings_property_rendering/reflections/sky_reflections/fast_filter_high_quality>`\ 。

\ **注意：**\ 快速过滤算法被限制为 256x256 立方体贴图，因此必须将 :ref:`radiance_size<class_Sky_property_radiance_size>` 设置为 :ref:`RADIANCE_SIZE_256<class_Sky_constant_RADIANCE_SIZE_256>`\ 。否则会输出警告并忽略覆盖的辐射率大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Sky_property_process_mode:

.. rst-class:: classref-property

:ref:`ProcessMode<enum_Sky_ProcessMode>` **process_mode** = ``0`` :ref:`🔗<class_Sky_property_process_mode>`

.. rst-class:: classref-property-setget

- |void| **set_process_mode**\ (\ value\: :ref:`ProcessMode<enum_Sky_ProcessMode>`\ )
- :ref:`ProcessMode<enum_Sky_ProcessMode>` **get_process_mode**\ (\ )

设置从天空生成辐射率贴图的方法。辐射率贴图是一种立方体贴图，具有递增的模糊版本的天空，以对应于不同级别的粗糙度。辐射率贴图的计算成本很高。

.. rst-class:: classref-item-separator

----

.. _class_Sky_property_radiance_size:

.. rst-class:: classref-property

:ref:`RadianceSize<enum_Sky_RadianceSize>` **radiance_size** = ``3`` :ref:`🔗<class_Sky_property_radiance_size>`

.. rst-class:: classref-property-setget

- |void| **set_radiance_size**\ (\ value\: :ref:`RadianceSize<enum_Sky_RadianceSize>`\ )
- :ref:`RadianceSize<enum_Sky_RadianceSize>` **get_radiance_size**\ (\ )

该 **Sky** 的辐射率贴图大小。辐射率贴图尺寸越大，来自 **Sky** 的照明就越详细。

\ **注意：**\ 某些硬件在使用较高的辐射率大小，尤其是 :ref:`RADIANCE_SIZE_512<class_Sky_constant_RADIANCE_SIZE_512>` 及以上时，会遇到问题。请仅在高端硬件上使用如此高的值。

.. rst-class:: classref-item-separator

----

.. _class_Sky_property_sky_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **sky_material** :ref:`🔗<class_Sky_property_sky_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

用于绘制该背景的 :ref:`Material<class_Material>`\ 。可以是 :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>`\ 、\ :ref:`ProceduralSkyMaterial<class_ProceduralSkyMaterial>`\ 、\ :ref:`PhysicalSkyMaterial<class_PhysicalSkyMaterial>`\ ，如果你想使用自定义着色器也可以是 :ref:`ShaderMaterial<class_ShaderMaterial>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
