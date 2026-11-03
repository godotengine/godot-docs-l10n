:github_url: hide

.. _class_OpenXRAction:

OpenXRAction
============

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

OpenXR 動作。

.. rst-class:: classref-introduction-group

說明
----

該資源定義了一個 OpenXR 動作。動作可用於輸入（按鈕、操縱桿、觸發器等）和輸出（觸覺）。

只要有可能，OpenXR 就會在動作型別和輸入型別之間執行自動轉換。因此，如果觸發器被按下，則綁定到一個布林動作的模擬觸發器將回傳 ``false``\ ，如果完全按下則回傳 ``true``\ 。

動作並不被直接綁定到特定裝置，相反，OpenXR 識別了有限數量的頂級路徑，這些路徑按用途識別裝置。我們可以通過這些頂級路徑來限制一個動作可以被綁定到哪些裝置上。例如，一個只套用至手持控制器的動作，可以具有與其關聯的頂級路徑“/user/hand/left”和“/user/hand/right”。有關頂級路徑的詳細資訊，請參閱 OpenXR 規範中的\ `保留路徑部分 <https://www.khronos.org/registry/OpenXR/specs/1.0/html/xrspec.html#semantic-path-reserved>`__\ 。

注意，資源的名字是用來注冊動作的。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------+-------------------------+
   | :ref:`ActionType<enum_OpenXRAction_ActionType>`   | :ref:`action_type<class_OpenXRAction_property_action_type>`       | ``1``                   |
   +---------------------------------------------------+-------------------------------------------------------------------+-------------------------+
   | :ref:`String<class_String>`                       | :ref:`localized_name<class_OpenXRAction_property_localized_name>` | ``""``                  |
   +---------------------------------------------------+-------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`toplevel_paths<class_OpenXRAction_property_toplevel_paths>` | ``PackedStringArray()`` |
   +---------------------------------------------------+-------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_OpenXRAction_ActionType:

.. rst-class:: classref-enumeration

enum **ActionType**: :ref:`🔗<enum_OpenXRAction_ActionType>`

.. _class_OpenXRAction_constant_OPENXR_ACTION_BOOL:

.. rst-class:: classref-enumeration-constant

:ref:`ActionType<enum_OpenXRAction_ActionType>` **OPENXR_ACTION_BOOL** = ``0``

該動作提供布林值。

.. _class_OpenXRAction_constant_OPENXR_ACTION_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`ActionType<enum_OpenXRAction_ActionType>` **OPENXR_ACTION_FLOAT** = ``1``

該動作提供 ``0.0`` 和 ``1.0`` 之間的浮點值，用於扳機等模擬輸入。

.. _class_OpenXRAction_constant_OPENXR_ACTION_VECTOR2:

.. rst-class:: classref-enumeration-constant

:ref:`ActionType<enum_OpenXRAction_ActionType>` **OPENXR_ACTION_VECTOR2** = ``2``

該動作提供 :ref:`Vector2<class_Vector2>` 值，可以和嵌入式控制板與操縱桿綁定。

.. _class_OpenXRAction_constant_OPENXR_ACTION_POSE:

.. rst-class:: classref-enumeration-constant

:ref:`ActionType<enum_OpenXRAction_ActionType>` **OPENXR_ACTION_POSE** = ``3``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_OpenXRAction_property_action_type:

.. rst-class:: classref-property

:ref:`ActionType<enum_OpenXRAction_ActionType>` **action_type** = ``1`` :ref:`🔗<class_OpenXRAction_property_action_type>`

.. rst-class:: classref-property-setget

- |void| **set_action_type**\ (\ value\: :ref:`ActionType<enum_OpenXRAction_ActionType>`\ )
- :ref:`ActionType<enum_OpenXRAction_ActionType>` **get_action_type**\ (\ )

動作的型別。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRAction_property_localized_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **localized_name** = ``""`` :ref:`🔗<class_OpenXRAction_property_localized_name>`

.. rst-class:: classref-property-setget

- |void| **set_localized_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_localized_name**\ (\ )

該動作的當地語系化描述。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRAction_property_toplevel_paths:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **toplevel_paths** = ``PackedStringArray()`` :ref:`🔗<class_OpenXRAction_property_toplevel_paths>`

.. rst-class:: classref-property-setget

- |void| **set_toplevel_paths**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_toplevel_paths**\ (\ )

該動作所能綁定到的頂級路徑的合集。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
