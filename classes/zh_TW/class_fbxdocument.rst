:github_url: hide

.. _class_FBXDocument:

FBXDocument
===========

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`GLTFDocument<class_GLTFDocument>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Handles FBX documents.

.. rst-class:: classref-introduction-group

說明
----

The FBXDocument handles FBX documents. It provides methods to append data from buffers or files, generate scenes, and register/unregister document extensions.

When exporting FBX from Blender, use the "FBX Units Scale" option. The "FBX Units Scale" option sets the correct scale factor and avoids manual adjustments when re-importing into Blender, such as through glTF export.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
