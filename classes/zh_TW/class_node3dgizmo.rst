:github_url: hide

.. _class_Node3DGizmo:

Node3DGizmo
===========

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`

用於提供 :ref:`Node3D<class_Node3D>` 編輯器輔助工具（Gizmo）的抽象類別。

.. rst-class:: classref-introduction-group

說明
----

這個抽象類別用來協助連接 :ref:`Node3D<class_Node3D>` 場景與編輯器專用的 :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` 類別。

\ **Node3DGizmo** 本身沒有公開的 API，請參考 :ref:`Node3D.add_gizmo()<class_Node3D_method_add_gizmo>` 並傳入 :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` 實例。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
