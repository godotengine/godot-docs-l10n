:github_url: hide

.. _class_OpenXRCompositionLayerCylinder:

OpenXRCompositionLayerCylinder
==============================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`OpenXRCompositionLayer<class_OpenXRCompositionLayer>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

作為圓柱體內部切片進行渲染的 OpenXR 合成層。

.. rst-class:: classref-introduction-group

說明
----

OpenXR 合成層，允許在圓柱體的內部切片上渲染 :ref:`SubViewport<class_SubViewport>`\ 。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`aspect_ratio<class_OpenXRCompositionLayerCylinder_property_aspect_ratio>`           | ``1.0``       |
   +---------------------------+-------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`central_angle<class_OpenXRCompositionLayerCylinder_property_central_angle>`         | ``1.5707964`` |
   +---------------------------+-------------------------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`     | :ref:`fallback_segments<class_OpenXRCompositionLayerCylinder_property_fallback_segments>` | ``10``        |
   +---------------------------+-------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`radius<class_OpenXRCompositionLayerCylinder_property_radius>`                       | ``1.0``       |
   +---------------------------+-------------------------------------------------------------------------------------------+---------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_OpenXRCompositionLayerCylinder_property_aspect_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **aspect_ratio** = ``1.0`` :ref:`🔗<class_OpenXRCompositionLayerCylinder_property_aspect_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_aspect_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_aspect_ratio**\ (\ )

切片的長寬比。用於設定相對於寬度的高度。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayerCylinder_property_central_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **central_angle** = ``1.5707964`` :ref:`🔗<class_OpenXRCompositionLayerCylinder_property_central_angle>`

.. rst-class:: classref-property-setget

- |void| **set_central_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_central_angle**\ (\ )

圓柱體的中心角。用於設定寬度。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayerCylinder_property_fallback_segments:

.. rst-class:: classref-property

:ref:`int<class_int>` **fallback_segments** = ``10`` :ref:`🔗<class_OpenXRCompositionLayerCylinder_property_fallback_segments>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_segments**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fallback_segments**\ (\ )

回退網格所使用的段數。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayerCylinder_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``1.0`` :ref:`🔗<class_OpenXRCompositionLayerCylinder_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

圓柱體的半徑。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
