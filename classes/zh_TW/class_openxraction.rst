:github_url: hide

.. _class_OpenXRAction:

OpenXRAction
============

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

OpenXR 動作。

.. rst-class:: classref-introduction-group

說明
----

This resource defines an OpenXR action. Actions can be used both for inputs (buttons, joysticks, triggers, etc.) and outputs (haptics).

OpenXR performs automatic conversion between action type and input type whenever possible. An analog trigger bound to a boolean action will thus return ``false`` if the trigger is depressed and ``true`` if pressed fully.

Actions are not directly bound to specific devices, instead OpenXR recognizes a limited number of top level paths that identify devices by usage. We can restrict which devices an action can be bound to by these top level paths. For instance an action that should only be used for hand held controllers can have the top level paths "/user/hand/left" and "/user/hand/right" associated with them. See the `reserved path section in the OpenXR specification <https://www.khronos.org/registry/OpenXR/specs/1.0/html/xrspec.html#semantic-path-reserved>`__ for more info on the top level paths.

Note that the name of the resource is used to register the action with.

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
