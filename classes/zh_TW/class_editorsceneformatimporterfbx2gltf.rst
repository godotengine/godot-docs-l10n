:github_url: hide

.. _class_EditorSceneFormatImporterFBX2GLTF:

EditorSceneFormatImporterFBX2GLTF
=================================

**繼承：** :ref:`EditorSceneFormatImporter<class_EditorSceneFormatImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

``.fbx`` 場景檔案格式的匯入器。

.. rst-class:: classref-introduction-group

說明
----

Imports Autodesk FBX 3D scenes by way of converting them to glTF 2.0 using the FBX2glTF command line tool.

The location of the FBX2glTF binary is set via the :ref:`EditorSettings.filesystem/import/fbx/fbx2gltf_path<class_EditorSettings_property_filesystem/import/fbx/fbx2gltf_path>` editor setting.

This importer is only used if :ref:`ProjectSettings.filesystem/import/fbx2gltf/enabled<class_ProjectSettings_property_filesystem/import/fbx2gltf/enabled>` is set to ``true``.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
