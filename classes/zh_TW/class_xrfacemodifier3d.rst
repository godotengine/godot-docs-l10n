:github_url: hide

.. _class_XRFaceModifier3D:

XRFaceModifier3D
================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用於從 :ref:`XRFaceTracker<class_XRFaceTracker>` 權重驅動標準面部網格的節點。

.. rst-class:: classref-introduction-group

說明
----

該節點將 :ref:`XRFaceTracker<class_XRFaceTracker>` 的權重套用至具有支援面部混合形狀的網格。

支援\ `統一表情 <https://docs.vrcft.io/docs/tutorial-avatars/tutorial-avatars-extras/unified-blendshapes>`__\ 混合形狀，以及 ARKit 和 SRanipal 混合形狀。

該節點嘗試根據名稱匹配來識別混合形狀。混合形狀應與\ `統一表情相容性 <https://docs.vrcft.io/docs/tutorial-avatars/tutorial-avatars-extras/compatibility/overview>`__\ 圖表中列出的名稱匹配。

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

:ref:`XRFaceTracker<class_XRFaceTracker>` 路徑。

.. rst-class:: classref-item-separator

----

.. _class_XRFaceModifier3D_property_target:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target** = ``NodePath("")`` :ref:`🔗<class_XRFaceModifier3D_property_target>`

.. rst-class:: classref-property-setget

- |void| **set_target**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target**\ (\ )

面部 :ref:`MeshInstance3D<class_MeshInstance3D>` 的 :ref:`NodePath<class_NodePath>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
