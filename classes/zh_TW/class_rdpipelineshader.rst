:github_url: hide

.. _class_RDPipelineShader:

RDPipelineShader
================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

管線著色器（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

說明
----

封裝一個著色器資源，並允許在管線建立時應用特化常數。

該物件由 :ref:`RenderingDevice.raytracing_pipeline_create()<class_RenderingDevice_method_raytracing_pipeline_create>` 用於光線生成、未命中及命中著色器。管線會自動選擇所需的著色器階段。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +--------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------+
   | :ref:`RID<class_RID>`                                                                                        | :ref:`shader<class_RDPipelineShader_property_shader>`                                     | ``RID()`` |
   +--------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------+
   | :ref:`Array<class_Array>`\[:ref:`RDPipelineSpecializationConstant<class_RDPipelineSpecializationConstant>`\] | :ref:`specialization_constants<class_RDPipelineShader_property_specialization_constants>` | ``[]``    |
   +--------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_RDPipelineShader_property_shader:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **shader** = ``RID()`` :ref:`🔗<class_RDPipelineShader_property_shader>`

.. rst-class:: classref-property-setget

- |void| **set_shader**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_shader**\ (\ )

著色器資源。管線會自動選擇所需的著色器階段。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineShader_property_specialization_constants:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RDPipelineSpecializationConstant<class_RDPipelineSpecializationConstant>`\] **specialization_constants** = ``[]`` :ref:`🔗<class_RDPipelineShader_property_specialization_constants>`

.. rst-class:: classref-property-setget

- |void| **set_specialization_constants**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RDPipelineSpecializationConstant<class_RDPipelineSpecializationConstant>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RDPipelineSpecializationConstant<class_RDPipelineSpecializationConstant>`\] **get_specialization_constants**\ (\ )

在管線建立時，套用至所選著色器階段的特化常數。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
