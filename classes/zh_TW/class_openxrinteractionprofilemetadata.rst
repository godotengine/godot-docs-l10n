:github_url: hide

.. _class_OpenXRInteractionProfileMetadata:

OpenXRInteractionProfileMetadata
================================

**繼承：** :ref:`Object<class_Object>`

在 OpenXR 中註冊支援的裝置的元類別。

.. rst-class:: classref-introduction-group

說明
----

這類允許OpenXR 核心和擴充註冊與受支援的互動裝置（例如控制器、追蹤器、觸覺裝置等）相關的元資料。它主要由動作地圖編輯器使用，並用於在適用時透過刪除依賴於擴充的條目來清理任何操作對應。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_interaction_profile<class_OpenXRInteractionProfileMetadata_method_register_interaction_profile>`\ (\ display_name\: :ref:`String<class_String>`, openxr_path\: :ref:`String<class_String>`, openxr_extension_names\: :ref:`String<class_String>`\ )                                                                                                                                        |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_io_path<class_OpenXRInteractionProfileMetadata_method_register_io_path>`\ (\ interaction_profile\: :ref:`String<class_String>`, display_name\: :ref:`String<class_String>`, toplevel_path\: :ref:`String<class_String>`, openxr_path\: :ref:`String<class_String>`, openxr_extension_names\: :ref:`String<class_String>`, action_type\: :ref:`ActionType<enum_OpenXRAction_ActionType>`\ ) |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_path_rename<class_OpenXRInteractionProfileMetadata_method_register_path_rename>`\ (\ old_name\: :ref:`String<class_String>`, new_name\: :ref:`String<class_String>`\ )                                                                                                                                                                                                                     |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_profile_rename<class_OpenXRInteractionProfileMetadata_method_register_profile_rename>`\ (\ old_name\: :ref:`String<class_String>`, new_name\: :ref:`String<class_String>`\ )                                                                                                                                                                                                               |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_top_level_path<class_OpenXRInteractionProfileMetadata_method_register_top_level_path>`\ (\ display_name\: :ref:`String<class_String>`, openxr_path\: :ref:`String<class_String>`, openxr_extension_names\: :ref:`String<class_String>`\ )                                                                                                                                                  |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_OpenXRInteractionProfileMetadata_method_register_interaction_profile:

.. rst-class:: classref-method

|void| **register_interaction_profile**\ (\ display_name\: :ref:`String<class_String>`, openxr_path\: :ref:`String<class_String>`, openxr_extension_names\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OpenXRInteractionProfileMetadata_method_register_interaction_profile>`

Registers an interaction profile using its OpenXR designation (e.g. ``/interaction_profiles/khr/simple_controller`` is the profile for OpenXR's simple controller profile).

\ ``display_name`` is the description shown to the user. ``openxr_path`` is the interaction profile path being registered. ``openxr_extension_names`` optionally restricts this profile to the given extension being enabled/available. If the extension is not available, the profile and all related entries used in an action map are filtered out.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfileMetadata_method_register_io_path:

.. rst-class:: classref-method

|void| **register_io_path**\ (\ interaction_profile\: :ref:`String<class_String>`, display_name\: :ref:`String<class_String>`, toplevel_path\: :ref:`String<class_String>`, openxr_path\: :ref:`String<class_String>`, openxr_extension_names\: :ref:`String<class_String>`, action_type\: :ref:`ActionType<enum_OpenXRAction_ActionType>`\ ) :ref:`🔗<class_OpenXRInteractionProfileMetadata_method_register_io_path>`

Registers an input/output path for the given ``interaction_profile``. The profile should previously have been registered using :ref:`register_interaction_profile()<class_OpenXRInteractionProfileMetadata_method_register_interaction_profile>`. ``display_name`` is the description shown to the user. ``toplevel_path`` specifies the bind path this input/output can be bound to (e.g. ``/user/hand/left`` or ``/user/hand/right``). ``openxr_path`` is the action input/output being registered (e.g. ``/user/hand/left/input/aim/pose``). ``openxr_extension_names`` restricts this input/output to an enabled/available extension, this doesn't need to repeat the extension on the profile but relates to overlapping extension (e.g. ``XR_EXT_palm_pose`` that introduces ``…/input/palm_ext/pose`` input paths). ``action_type`` defines the type of input or output provided by OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfileMetadata_method_register_path_rename:

.. rst-class:: classref-method

|void| **register_path_rename**\ (\ old_name\: :ref:`String<class_String>`, new_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OpenXRInteractionProfileMetadata_method_register_path_rename>`

Allows for renaming old input/output paths to new paths in order to load and process older action maps.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfileMetadata_method_register_profile_rename:

.. rst-class:: classref-method

|void| **register_profile_rename**\ (\ old_name\: :ref:`String<class_String>`, new_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OpenXRInteractionProfileMetadata_method_register_profile_rename>`

Allows for renaming old interaction profile paths to new paths in order to load and process older action maps.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfileMetadata_method_register_top_level_path:

.. rst-class:: classref-method

|void| **register_top_level_path**\ (\ display_name\: :ref:`String<class_String>`, openxr_path\: :ref:`String<class_String>`, openxr_extension_names\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OpenXRInteractionProfileMetadata_method_register_top_level_path>`

Registers a top level path to which profiles can be bound. For instance ``/user/hand/left`` refers to the bind point for the player's left hand. Extensions can register additional top level paths, for instance a haptic vest extension might register ``/user/body/vest``.

\ ``display_name`` is the name shown to the user. ``openxr_path`` is the top level path being registered. ``openxr_extension_names`` is optional and ensures the top level path is only used if the specified extension is available/enabled.

When a top level path ends up being bound by OpenXR, an :ref:`XRPositionalTracker<class_XRPositionalTracker>` is instantiated to manage the state of the device.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
