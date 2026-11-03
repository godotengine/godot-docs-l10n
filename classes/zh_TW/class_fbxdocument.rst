:github_url: hide

.. _class_FBXDocument:

FBXDocument
===========

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`GLTFDocument<class_GLTFDocument>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

處理 FBX 文件。

.. rst-class:: classref-introduction-group

說明
----

FBXDocument 處理 FBX 文件。它提供了從緩衝區或檔案追加資料、生成場景、以及注冊/取消注冊文件副檔名的方法。

從 Blender 匯出 FBX 時，請使用 “FBX 單位縮放” 選項。“FBX 單位縮放” 選項設定正確的縮放係數，並避免在重新匯入到 Blender 時（例如通過 glTF 匯出）進行手動調整。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
