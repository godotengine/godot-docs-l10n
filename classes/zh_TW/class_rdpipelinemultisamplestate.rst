:github_url: hide

.. _class_RDPipelineMultisampleState:

RDPipelineMultisampleState
==========================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

管線的多重取樣狀態（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

說明
----

**RDPipelineMultisampleState** 控制的是在使用 :ref:`RenderingDevice<class_RenderingDevice>` 進行渲染時，如何進行多重取樣和超取樣反鋸齒。

.. rst-class:: classref-reftable-group

屬性
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

屬性說明
--------

.. _class_RDPipelineMultisampleState_property_enable_alpha_to_coverage:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_alpha_to_coverage** = ``false`` :ref:`🔗<class_RDPipelineMultisampleState_property_enable_alpha_to_coverage>`

.. rst-class:: classref-property-setget

- |void| **set_enable_alpha_to_coverage**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_alpha_to_coverage**\ (\ )

如果為 ``true``\ ，則啟用 Alpha 為覆蓋面。此時會根據片段的第一個顏色輸出的 Alpha 分量生成臨時的覆蓋值。這樣就能夠讓 Alpha 透明使用多重取樣反鋸齒。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineMultisampleState_property_enable_alpha_to_one:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_alpha_to_one** = ``false`` :ref:`🔗<class_RDPipelineMultisampleState_property_enable_alpha_to_one>`

.. rst-class:: classref-property-setget

- |void| **set_enable_alpha_to_one**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_alpha_to_one**\ (\ )

如果為 ``true``\ ，則會將 Alpha 強制為 ``0.0`` 或 ``1.0``\ 。這樣就能夠讓 Alpha 透明反鋸齒後的邊緣更銳利。僅在 :ref:`enable_alpha_to_coverage<class_RDPipelineMultisampleState_property_enable_alpha_to_coverage>` 為 ``true`` 時有效。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineMultisampleState_property_enable_sample_shading:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_sample_shading** = ``false`` :ref:`🔗<class_RDPipelineMultisampleState_property_enable_sample_shading>`

.. rst-class:: classref-property-setget

- |void| **set_enable_sample_shading**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_sample_shading**\ (\ )

如果為 ``true``\ ，則會啟用逐樣本著色，使用 SSAA 代替 MSAA。這樣能夠提供更高品質的反鋸齒，支援透明邊緣（Alpha 裁剪）。效能消耗很高。另見 :ref:`min_sample_shading<class_RDPipelineMultisampleState_property_min_sample_shading>`\ 。詳見\ `逐樣本著色 Vulkan 文件 <https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#primsrast-sampleshading>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineMultisampleState_property_min_sample_shading:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_sample_shading** = ``0.0`` :ref:`🔗<class_RDPipelineMultisampleState_property_min_sample_shading>`

.. rst-class:: classref-property-setget

- |void| **set_min_sample_shading**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_sample_shading**\ (\ )

:ref:`sample_count<class_RDPipelineMultisampleState_property_sample_count>` 的乘數，決定每個片段執行多少次取樣。必須在 ``0.0`` 和 ``1.0`` 之間（含端點）。僅在 :ref:`enable_sample_shading<class_RDPipelineMultisampleState_property_enable_sample_shading>` 為 ``true`` 時有效。如果 :ref:`min_sample_shading<class_RDPipelineMultisampleState_property_min_sample_shading>` 為 ``1.0``\ ，則片段呼叫必須僅從覆蓋索引樣本中讀取。如果 :ref:`enable_sample_shading<class_RDPipelineMultisampleState_property_enable_sample_shading>` *不是* ``1.0``\ ，則不能對平鋪影像進行存取。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineMultisampleState_property_sample_count:

.. rst-class:: classref-property

:ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **sample_count** = ``0`` :ref:`🔗<class_RDPipelineMultisampleState_property_sample_count>`

.. rst-class:: classref-property-setget

- |void| **set_sample_count**\ (\ value\: :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>`\ )
- :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **get_sample_count**\ (\ )

要進行 MSAA 取樣的數量（如果 :ref:`enable_sample_shading<class_RDPipelineMultisampleState_property_enable_sample_shading>` 為 ``true`` 則為 SSAA 取樣）。值越高，反鋸齒效果越好，但會以效能為代價。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineMultisampleState_property_sample_masks:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`int<class_int>`\] **sample_masks** = ``[]`` :ref:`🔗<class_RDPipelineMultisampleState_property_sample_masks>`

.. rst-class:: classref-property-setget

- |void| **set_sample_masks**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`int<class_int>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`int<class_int>`\] **get_sample_masks**\ (\ )

樣本遮罩。詳情見 `Vulkan 的樣本遮罩文件 <https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#fragops-samplemask>`__\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
