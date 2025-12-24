:github_url: hide

.. _class_RDPipelineMultisampleState:

RDPipelineMultisampleState
==========================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

管线的多重采样状态（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

描述
----

**RDPipelineMultisampleState** 控制的是在使用 :ref:`RenderingDevice<class_RenderingDevice>` 进行渲染时，如何进行多重采样和超采样抗锯齿。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                    | :ref:`enable_alpha_to_coverage<class_RDPipelineMultisampleState_property_enable_alpha_to_coverage>` | ``false`` |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                    | :ref:`enable_alpha_to_one<class_RDPipelineMultisampleState_property_enable_alpha_to_one>`           | ``false`` |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                    | :ref:`enable_sample_shading<class_RDPipelineMultisampleState_property_enable_sample_shading>`       | ``false`` |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                  | :ref:`min_sample_shading<class_RDPipelineMultisampleState_property_min_sample_shading>`             | ``0.0``   |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` | :ref:`sample_count<class_RDPipelineMultisampleState_property_sample_count>`                         | ``0``     |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Array<class_Array>`\[:ref:`int<class_int>`\]         | :ref:`sample_masks<class_RDPipelineMultisampleState_property_sample_masks>`                         | ``[]``    |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_RDPipelineMultisampleState_property_enable_alpha_to_coverage:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_alpha_to_coverage** = ``false`` :ref:`🔗<class_RDPipelineMultisampleState_property_enable_alpha_to_coverage>`

.. rst-class:: classref-property-setget

- |void| **set_enable_alpha_to_coverage**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_alpha_to_coverage**\ (\ )

如果为 ``true``\ ，则启用 Alpha 为覆盖面。此时会根据片段的第一个颜色输出的 Alpha 分量生成临时的覆盖值。这样就能够让 Alpha 透明使用多重采样抗锯齿。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineMultisampleState_property_enable_alpha_to_one:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_alpha_to_one** = ``false`` :ref:`🔗<class_RDPipelineMultisampleState_property_enable_alpha_to_one>`

.. rst-class:: classref-property-setget

- |void| **set_enable_alpha_to_one**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_alpha_to_one**\ (\ )

如果为 ``true``\ ，则会将 Alpha 强制为 ``0.0`` 或 ``1.0``\ 。这样就能够让 Alpha 透明抗锯齿后的边缘更锐利。仅在 :ref:`enable_alpha_to_coverage<class_RDPipelineMultisampleState_property_enable_alpha_to_coverage>` 为 ``true`` 时有效。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineMultisampleState_property_enable_sample_shading:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_sample_shading** = ``false`` :ref:`🔗<class_RDPipelineMultisampleState_property_enable_sample_shading>`

.. rst-class:: classref-property-setget

- |void| **set_enable_sample_shading**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_sample_shading**\ (\ )

如果为 ``true``\ ，则会启用逐样本着色，使用 SSAA 代替 MSAA。这样能够提供更高质量的抗锯齿，支持透明边缘（Alpha 裁剪）。性能消耗很高。另见 :ref:`min_sample_shading<class_RDPipelineMultisampleState_property_min_sample_shading>`\ 。详见\ `逐样本着色 Vulkan 文档 <https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#primsrast-sampleshading>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineMultisampleState_property_min_sample_shading:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_sample_shading** = ``0.0`` :ref:`🔗<class_RDPipelineMultisampleState_property_min_sample_shading>`

.. rst-class:: classref-property-setget

- |void| **set_min_sample_shading**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_sample_shading**\ (\ )

:ref:`sample_count<class_RDPipelineMultisampleState_property_sample_count>` 的乘数，决定每个片段执行多少次采样。必须在 ``0.0`` 和 ``1.0`` 之间（含端点）。仅在 :ref:`enable_sample_shading<class_RDPipelineMultisampleState_property_enable_sample_shading>` 为 ``true`` 时有效。如果 :ref:`min_sample_shading<class_RDPipelineMultisampleState_property_min_sample_shading>` 为 ``1.0``\ ，则片段调用必须仅从覆盖索引样本中读取。如果 :ref:`enable_sample_shading<class_RDPipelineMultisampleState_property_enable_sample_shading>` *不是* ``1.0``\ ，则不能对平铺图像进行访问。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineMultisampleState_property_sample_count:

.. rst-class:: classref-property

:ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **sample_count** = ``0`` :ref:`🔗<class_RDPipelineMultisampleState_property_sample_count>`

.. rst-class:: classref-property-setget

- |void| **set_sample_count**\ (\ value\: :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>`\ )
- :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **get_sample_count**\ (\ )

要进行 MSAA 采样的数量（如果 :ref:`enable_sample_shading<class_RDPipelineMultisampleState_property_enable_sample_shading>` 为 ``true`` 则为 SSAA 采样）。值越高，抗锯齿效果越好，但会以性能为代价。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineMultisampleState_property_sample_masks:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`int<class_int>`\] **sample_masks** = ``[]`` :ref:`🔗<class_RDPipelineMultisampleState_property_sample_masks>`

.. rst-class:: classref-property-setget

- |void| **set_sample_masks**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`int<class_int>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`int<class_int>`\] **get_sample_masks**\ (\ )

样本掩码。详见 `Vulkan 的样本掩码文档 <https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#fragops-samplemask>`__\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
