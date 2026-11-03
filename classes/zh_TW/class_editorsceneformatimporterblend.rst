:github_url: hide

.. _class_EditorSceneFormatImporterBlend:

EditorSceneFormatImporterBlend
==============================

**繼承：** :ref:`EditorSceneFormatImporter<class_EditorSceneFormatImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Blender 的 ``.blend`` 場景檔案格式的匯入器。

.. rst-class:: classref-introduction-group

說明
----

通過 glTF 2.0 3D 匯入管道匯入使用 ``.blend`` 檔案格式的 Blender 場景。該匯入器要求使用者安裝 Blender，以便將場景匯出為 glTF 2.0。

Blender 可執行檔的位置是通過 :ref:`EditorSettings.filesystem/import/blender/blender_path<class_EditorSettings_property_filesystem/import/blender/blender_path>` 來設定的。

該匯入器僅在啟用 :ref:`ProjectSettings.filesystem/import/blender/enabled<class_ProjectSettings_property_filesystem/import/blender/enabled>` 時使用，否則不會匯入專案資料夾中存在的 ``.blend`` 檔案。

Blend 匯入需要 Blender 3.0。

在內部，EditorSceneFormatImporterBlend 使用 Blender glTF“使用原始”模式來參照外部紋理。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
