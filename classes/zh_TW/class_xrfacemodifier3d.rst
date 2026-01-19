:github_url: hide

.. _class_XRFaceModifier3D:

XRFaceModifier3D
================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

A node for driving standard face meshes from :ref:`XRFaceTracker<class_XRFaceTracker>` weights.

.. rst-class:: classref-introduction-group

說明
----

This node applies weights from an :ref:`XRFaceTracker<class_XRFaceTracker>` to a mesh with supporting face blend shapes.

The `Unified Expressions <https://docs.vrcft.io/docs/tutorial-avatars/tutorial-avatars-extras/unified-blendshapes>`__ blend shapes are supported, as well as ARKit and SRanipal blend shapes.

The node attempts to identify blend shapes based on name matching. Blend shapes should match the names listed in the `Unified Expressions Compatibility <https://docs.vrcft.io/docs/tutorial-avatars/tutorial-avatars-extras/compatibility/overview>`__ chart.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`XR 文件索引 <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------+---------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`face_tracker<class_XRFaceModifier3D_property_face_tracker>` | ``&"/user/face_tracker"`` |
   +-------------------------------------+-------------------------------------------------------------------+---------------------------+
   | :ref:`NodePath<class_NodePath>`     | :ref:`target<class_XRFaceModifier3D_property_target>`             | ``NodePath("")``          |
   +-------------------------------------+-------------------------------------------------------------------+---------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_XRFaceModifier3D_property_face_tracker:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **face_tracker** = ``&"/user/face_tracker"`` :ref:`🔗<class_XRFaceModifier3D_property_face_tracker>`

.. rst-class:: classref-property-setget

- |void| **set_face_tracker**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_face_tracker**\ (\ )

The :ref:`XRFaceTracker<class_XRFaceTracker>` path.

.. rst-class:: classref-item-separator

----

.. _class_XRFaceModifier3D_property_target:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target** = ``NodePath("")`` :ref:`🔗<class_XRFaceModifier3D_property_target>`

.. rst-class:: classref-property-setget

- |void| **set_target**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target**\ (\ )

The :ref:`NodePath<class_NodePath>` of the face :ref:`MeshInstance3D<class_MeshInstance3D>`.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
