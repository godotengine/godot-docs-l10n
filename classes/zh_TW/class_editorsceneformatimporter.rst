:github_url: hide

.. _class_EditorSceneFormatImporter:

EditorSceneFormatImporter
=========================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`EditorSceneFormatImporterBlend<class_EditorSceneFormatImporterBlend>`, :ref:`EditorSceneFormatImporterFBX2GLTF<class_EditorSceneFormatImporterFBX2GLTF>`, :ref:`EditorSceneFormatImporterGLTF<class_EditorSceneFormatImporterGLTF>`, :ref:`EditorSceneFormatImporterUFBX<class_EditorSceneFormatImporterUFBX>`

從協力廠商的 3D 檔案中匯入場景。

.. rst-class:: classref-introduction-group

說明
----

**EditorSceneFormatImporter** 允許為協力廠商 3D 格式定義匯入器腳本。

要使用 **EditorSceneFormatImporter**\ ，請先使用 :ref:`EditorPlugin.add_scene_format_importer_plugin()<class_EditorPlugin_method_add_scene_format_importer_plugin>` 方法註冊它。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_extensions<class_EditorSceneFormatImporter_private_method__get_extensions>`\ (\ ) |virtual| |required| |const|                                                                                                                                                                                                                                                                                          |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`_get_import_options<class_EditorSceneFormatImporter_private_method__get_import_options>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual|                                                                                                                                                                                                                                                                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                     | :ref:`_get_option_visibility<class_EditorSceneFormatImporter_private_method__get_option_visibility>`\ (\ path\: :ref:`String<class_String>`, for_animation\: :ref:`bool<class_bool>`, option\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                                                                    |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`                       | :ref:`_import_scene<class_EditorSceneFormatImporter_private_method__import_scene>`\ (\ path\: :ref:`String<class_String>`, flags\: :ref:`int<class_int>`, options\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |required|                                                                                                                                                                                    |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_import_option<class_EditorSceneFormatImporter_method_add_import_option>`\ (\ name\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                                                                                                                                                                                |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_import_option_advanced<class_EditorSceneFormatImporter_method_add_import_option_advanced>`\ (\ type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, name\: :ref:`String<class_String>`, default_value\: :ref:`Variant<class_Variant>`, hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>` = 0, hint_string\: :ref:`String<class_String>` = "", usage_flags\: :ref:`int<class_int>` = 6\ ) |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_EditorSceneFormatImporter_ImportFlags:

.. rst-class:: classref-enumeration

flags **ImportFlags**: :ref:`🔗<enum_EditorSceneFormatImporter_ImportFlags>`

.. _class_EditorSceneFormatImporter_constant_IMPORT_SCENE:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_SCENE** = ``1``

未使用的標誌（啟用它沒有任何效果）。

.. _class_EditorSceneFormatImporter_constant_IMPORT_ANIMATION:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_ANIMATION** = ``2``

從 3D 場景中匯入動畫。當將場景作為 :ref:`AnimationLibrary<class_AnimationLibrary>`\ （動畫庫）進行匯入時，此選項會始終處於啟用狀態。

.. _class_EditorSceneFormatImporter_constant_IMPORT_FAIL_ON_MISSING_DEPENDENCIES:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_FAIL_ON_MISSING_DEPENDENCIES** = ``4``

未使用的標誌（啟用它沒有任何效果）。

.. _class_EditorSceneFormatImporter_constant_IMPORT_GENERATE_TANGENT_ARRAYS:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_GENERATE_TANGENT_ARRAYS** = ``8``

如果設為 ``true``\ ，當輸入的網格體（meshes）沒有切線資料時，將使用 `Mikktspace <http://www.mikktspace.com/>`__ 算法來生成頂點切線。如果條件允許，更推薦讓 3D 建模軟體在匯出模型時直接生成切線，而不是相依性這個選項。法線貼圖（normal maps）和高度貼圖（height maps），以及任何需要切線的材質或著色器（shader）功能，都必須要有切線資料才能正確顯示。

如果你不需要那些相依性切線的材質功能，停用此選項可以在源 3D 檔案不包含切線的情況下，減小輸出檔案的大小，並加快匯入速度。

.. _class_EditorSceneFormatImporter_constant_IMPORT_USE_NAMED_SKIN_BINDS:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_USE_NAMED_SKIN_BINDS** = ``16``

如果勾選此項，動畫將使用帶名稱的 :ref:`Skin<class_Skin>`\ （皮膚）資源。\ :ref:`MeshInstance3D<class_MeshInstance3D>`\ （網格實例 3D）節點在這裡包含 3 個關鍵屬性：一個指向 :ref:`Skeleton3D<class_Skeleton3D>`\ （骨骼 3D）節點的骨架 :ref:`NodePath<class_NodePath>`\ （節點路徑，通常是 ``..``\ ）、一個網格（mesh），以及一個皮膚（skin）。

- :ref:`Skeleton3D<class_Skeleton3D>` 節點包含一個骨骼清單，其中記錄了骨骼的名稱、姿態（pose）和靜止狀態（rest），以及父級骨骼的資訊。

- 網格（mesh）包含了顯示模型所需的所有原始頂點資料。就網格本身而言，它知道頂點是如何進行權重繪製（weight-painted）的，並且使用了一些通常從 3D 建模軟體匯入的內部編號。

- 皮膚（skin）包含了將這個網格綁定到該 :ref:`Skeleton3D<class_Skeleton3D>` 上所需的必要資訊。對於 3D 建模軟體選定的每一個內部骨骼 ID，它都包含兩項內容。首先，是一個被稱為“綁定姿態矩陣”、“反向綁定矩陣”或簡稱 IBM 的矩陣。其次，\ :ref:`Skin<class_Skin>` 還包含每根骨骼的名稱（如果啟用了此標誌），或者包含該骨骼在 :ref:`Skeleton3D<class_Skeleton3D>` 清單中的索引（如果停用了此標誌）。

綜合這些資訊，就足以告訴 Godot 如何利用 :ref:`Skeleton3D<class_Skeleton3D>` 節點中的骨骼姿態，來渲染每個 :ref:`MeshInstance3D<class_MeshInstance3D>`\ 。請注意，每個 :ref:`MeshInstance3D<class_MeshInstance3D>` 可以共享綁定資訊（這在從 Blender 匯出的模型中很常見），或者每個 :ref:`MeshInstance3D<class_MeshInstance3D>` 也可以使用獨立的 :ref:`Skin<class_Skin>` 物件（這在從 Maya 等其他工具匯出的模型中很常見）。

.. _class_EditorSceneFormatImporter_constant_IMPORT_DISCARD_MESHES_AND_MATERIALS:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_DISCARD_MESHES_AND_MATERIALS** = ``32``

在匯入時忽略網格（Meshes）和材質（Materials）。當將場景作為 :ref:`AnimationLibrary<class_AnimationLibrary>`\ （動畫庫）進行匯入時，此選項會始終處於啟用狀態。

.. _class_EditorSceneFormatImporter_constant_IMPORT_FORCE_DISABLE_MESH_COMPRESSION:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_EditorSceneFormatImporter_ImportFlags>` **IMPORT_FORCE_DISABLE_MESH_COMPRESSION** = ``64``

如果為 ``true``\ ，則不會使用網格壓縮。如果你在網格法線或 UV 中發現塊狀偽影，或者如果你的網格在每個方向都大於幾千米，請考慮啟用。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_EditorSceneFormatImporter_private_method__get_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_extensions**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorSceneFormatImporter_private_method__get_extensions>`

回傳該場景匯入器支援的檔案副檔名。

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_private_method__get_import_options:

.. rst-class:: classref-method

|void| **_get_import_options**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_EditorSceneFormatImporter_private_method__get_import_options>`

覆蓋後可以新增通用匯入選項。這些選項將出現在編輯器的主匯入面板中。請通過 :ref:`add_import_option()<class_EditorSceneFormatImporter_method_add_import_option>` 和 :ref:`add_import_option_advanced()<class_EditorSceneFormatImporter_method_add_import_option_advanced>` 新增選項。

\ **注意：**\ 所有 **EditorSceneFormatImporter** 和 :ref:`EditorScenePostImportPlugin<class_EditorScenePostImportPlugin>` 實例都會為所有檔案新增選項。\ ``path`` 非空時，最好檢查檔案的副檔名。

使用者編輯專案設定時 ``path`` 將為空。建議在 ``path`` 為空時新增所有選項，以便使用者自訂匯入預設值。

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_private_method__get_option_visibility:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_option_visibility**\ (\ path\: :ref:`String<class_String>`, for_animation\: :ref:`bool<class_bool>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorSceneFormatImporter_private_method__get_option_visibility>`

顯示給定的選項應回傳 ``true``\ ，隱藏給定的選項應回傳 ``false``\ ，忽略應回傳 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_private_method__import_scene:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **_import_scene**\ (\ path\: :ref:`String<class_String>`, flags\: :ref:`int<class_int>`, options\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |required| :ref:`🔗<class_EditorSceneFormatImporter_private_method__import_scene>`

在此處執行批量場景匯入邏輯，例如使用 :ref:`GLTFDocument<class_GLTFDocument>` 和 :ref:`FBXDocument<class_FBXDocument>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_method_add_import_option:

.. rst-class:: classref-method

|void| **add_import_option**\ (\ name\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorSceneFormatImporter_method_add_import_option>`

新增特定的匯入選項（僅限名稱和預設值）。該函式只能在 :ref:`_get_import_options()<class_EditorSceneFormatImporter_private_method__get_import_options>` 中呼叫。

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_method_add_import_option_advanced:

.. rst-class:: classref-method

|void| **add_import_option_advanced**\ (\ type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, name\: :ref:`String<class_String>`, default_value\: :ref:`Variant<class_Variant>`, hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>` = 0, hint_string\: :ref:`String<class_String>` = "", usage_flags\: :ref:`int<class_int>` = 6\ ) :ref:`🔗<class_EditorSceneFormatImporter_method_add_import_option_advanced>`

新增特定的匯入選項。該函式只能在 :ref:`_get_import_options()<class_EditorSceneFormatImporter_private_method__get_import_options>` 中呼叫。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
