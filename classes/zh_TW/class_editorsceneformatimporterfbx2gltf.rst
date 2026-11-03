:github_url: hide

.. _class_EditorSceneFormatImporterFBX2GLTF:

EditorSceneFormatImporterFBX2GLTF
=================================

**繼承：** :ref:`EditorSceneFormatImporter<class_EditorSceneFormatImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

``.fbx`` 場景檔案格式的匯入器。

.. rst-class:: classref-introduction-group

說明
----

通過使用 FBX2glTF 命令行工具將 Autodesk FBX 3D 場景轉換為 glTF 2.0 來匯入它們。

FBX2glTF 可執行檔的位置通過 :ref:`EditorSettings.filesystem/import/fbx/fbx2gltf_path<class_EditorSettings_property_filesystem/import/fbx/fbx2gltf_path>` 編輯器設定進行設定。

僅當 :ref:`ProjectSettings.filesystem/import/fbx2gltf/enabled<class_ProjectSettings_property_filesystem/import/fbx2gltf/enabled>` 設定為 ``true`` 時，才使用該匯入器。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
