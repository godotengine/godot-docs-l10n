:github_url: hide

.. _class_OpenXRCompositionLayerEquirect:

OpenXRCompositionLayerEquirect
==============================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`OpenXRCompositionLayer<class_OpenXRCompositionLayer>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

An OpenXR composition layer that is rendered as an internal slice of a sphere.

.. rst-class:: classref-introduction-group

說明
----

An OpenXR composition layer that allows rendering a :ref:`SubViewport<class_SubViewport>` on an internal slice of a sphere.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`central_horizontal_angle<class_OpenXRCompositionLayerEquirect_property_central_horizontal_angle>` | ``1.5707964`` |
   +---------------------------+---------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`     | :ref:`fallback_segments<class_OpenXRCompositionLayerEquirect_property_fallback_segments>`               | ``10``        |
   +---------------------------+---------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`lower_vertical_angle<class_OpenXRCompositionLayerEquirect_property_lower_vertical_angle>`         | ``0.7853982`` |
   +---------------------------+---------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`radius<class_OpenXRCompositionLayerEquirect_property_radius>`                                     | ``1.0``       |
   +---------------------------+---------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`upper_vertical_angle<class_OpenXRCompositionLayerEquirect_property_upper_vertical_angle>`         | ``0.7853982`` |
   +---------------------------+---------------------------------------------------------------------------------------------------------+---------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_OpenXRCompositionLayerEquirect_property_central_horizontal_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **central_horizontal_angle** = ``1.5707964`` :ref:`🔗<class_OpenXRCompositionLayerEquirect_property_central_horizontal_angle>`

.. rst-class:: classref-property-setget

- |void| **set_central_horizontal_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_central_horizontal_angle**\ (\ )

The central horizontal angle of the sphere. Used to set the width.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayerEquirect_property_fallback_segments:

.. rst-class:: classref-property

:ref:`int<class_int>` **fallback_segments** = ``10`` :ref:`🔗<class_OpenXRCompositionLayerEquirect_property_fallback_segments>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_segments**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fallback_segments**\ (\ )

The number of segments to use in the fallback mesh.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayerEquirect_property_lower_vertical_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **lower_vertical_angle** = ``0.7853982`` :ref:`🔗<class_OpenXRCompositionLayerEquirect_property_lower_vertical_angle>`

.. rst-class:: classref-property-setget

- |void| **set_lower_vertical_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lower_vertical_angle**\ (\ )

The lower vertical angle of the sphere. Used (together with :ref:`upper_vertical_angle<class_OpenXRCompositionLayerEquirect_property_upper_vertical_angle>`) to set the height.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayerEquirect_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``1.0`` :ref:`🔗<class_OpenXRCompositionLayerEquirect_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

The radius of the sphere.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayerEquirect_property_upper_vertical_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **upper_vertical_angle** = ``0.7853982`` :ref:`🔗<class_OpenXRCompositionLayerEquirect_property_upper_vertical_angle>`

.. rst-class:: classref-property-setget

- |void| **set_upper_vertical_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_upper_vertical_angle**\ (\ )

The upper vertical angle of the sphere. Used (together with :ref:`lower_vertical_angle<class_OpenXRCompositionLayerEquirect_property_lower_vertical_angle>`) to set the height.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
