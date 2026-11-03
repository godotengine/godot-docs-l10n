:github_url: hide

.. _class_NodePath:

NodePath
========

一個預先解析的場景樹路徑。

.. rst-class:: classref-introduction-group

說明
----

**NodePath** 這個內建 :ref:`Variant<class_Variant>` 類型用來表示節點階層中指向某節點或屬性的路徑。它設計成能有效率地傳遞給許多內建方法（例如 :ref:`Node.get_node()<class_Node_method_get_node>`\ 、\ :ref:`Object.set_indexed()<class_Object_method_set_indexed>`\ 、\ :ref:`Tween.tween_property()<class_Tween_method_tween_property>` 等），而不需直接依賴所指向的節點或屬性。

節點路徑以由斜線（\ ``/``\ ）分隔的節點名稱，以及冒號（\ ``:``\ ）分隔的屬性名稱（也稱為「子名稱」）組成的 :ref:`String<class_String>` 來表示。類似檔案系統路徑，特殊節點名稱 ``".."`` 和 ``"."`` 分別代表父節點和目前節點。

以下範例為相對於目前節點的路徑：

::

    ^"A"     # 指向直接子節點 A。
    ^"A/B"   # 指向 A 的子節點 B。
    ^"."     # 指向目前節點。
    ^".."    # 指向父節點。
    ^"../C"  # 指向兄弟節點 C。
    ^"../.." # 指向祖父節點。

開頭有斜線則代表絕對路徑，從 :ref:`SceneTree<class_SceneTree>` 開始：

::

    ^"/root"            # 指向 SceneTree 的根視窗。
    ^"/root/Title"      # 可能指向主場景的根節點 "Title"。
    ^"/root/Global"     # 可能指向自動載入的節點或場景 "Global"。

節點路徑也可以指向屬性：

::

    ^":position"           # 指向此物件的位置屬性。
    ^":position:x"         # 指向此物件位置屬性的 x 軸。
    ^"Camera3D:rotation:y" # 指向子節點 Camera3D 及其 y 軸旋轉。
    ^"/root:size:x"        # 指向根視窗的寬度。

在某些情況下，指向物件屬性時可以省略開頭的 ``:``\ ，例如 :ref:`Object.set_indexed()<class_Object_method_set_indexed>` 與 :ref:`Tween.tween_property()<class_Tween_method_tween_property>`\ ，這些方法會呼叫 :ref:`get_as_property_path()<class_NodePath_method_get_as_property_path>`\ 。不過，一般建議保留 ``:`` 前綴。

節點路徑無法檢查自身是否有效，也可能指向不存在的節點或屬性，其意義完全取決於使用時的情境。

通常你不需特別處理 **NodePath** 類型，因為字串會在需要時自動轉換成此類型。不過在某些情境下自行設定節點路徑很方便，例如匯出的 **NodePath** 屬性讓你可以輕鬆在目前編輯的場景中選擇任一節點。當你在場景樹編輯器移動、重新命名或刪除節點時，這些路徑也會自動更新。另見 :ref:`@GDScript.@export_node_path<class_@GDScript_annotation_@export_node_path>`\ 。

另可參考 :ref:`StringName<class_StringName>`\ ，這是一種設計用來最佳化字串操作的類型。

\ **注意：** 在布林判斷式中，若 **NodePath** 為空（\ ``NodePath("")``\ ），值為 ``false``\ ，否則一律為 ``true``\ 。

.. note::

	使用 C# 操作此 API 時有顯著差異，詳見 :ref:`doc_c_sharp_differences`。

.. rst-class:: classref-introduction-group

教學
----

- `2D 角色扮演遊戲範例 <https://godotengine.org/asset-library/asset/2729>`__

.. rst-class:: classref-reftable-group

建構子
------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`NodePath<class_NodePath_constructor_NodePath>`\ (\ )                                         |
   +---------------------------------+----------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`NodePath<class_NodePath_constructor_NodePath>`\ (\ from\: :ref:`NodePath<class_NodePath>`\ ) |
   +---------------------------------+----------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`NodePath<class_NodePath_constructor_NodePath>`\ (\ from\: :ref:`String<class_String>`\ )     |
   +---------------------------------+----------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`     | :ref:`get_as_property_path<class_NodePath_method_get_as_property_path>`\ (\ ) |const|                                            |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_concatenated_names<class_NodePath_method_get_concatenated_names>`\ (\ ) |const|                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_concatenated_subnames<class_NodePath_method_get_concatenated_subnames>`\ (\ ) |const|                                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_name<class_NodePath_method_get_name>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                       |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_name_count<class_NodePath_method_get_name_count>`\ (\ ) |const|                                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_subname<class_NodePath_method_get_subname>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                 |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_subname_count<class_NodePath_method_get_subname_count>`\ (\ ) |const|                                                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`hash<class_NodePath_method_hash>`\ (\ ) |const|                                                                            |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_absolute<class_NodePath_method_is_absolute>`\ (\ ) |const|                                                              |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_empty<class_NodePath_method_is_empty>`\ (\ ) |const|                                                                    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`     | :ref:`slice<class_NodePath_method_slice>`\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

運算子
------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_NodePath_operator_neq_NodePath>`\ (\ right\: :ref:`NodePath<class_NodePath>`\ ) |
   +-------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_NodePath_operator_eq_NodePath>`\ (\ right\: :ref:`NodePath<class_NodePath>`\ )  |
   +-------------------------+---------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

建構子說明
----------

.. _class_NodePath_constructor_NodePath:

.. rst-class:: classref-constructor

:ref:`NodePath<class_NodePath>` **NodePath**\ (\ ) :ref:`🔗<class_NodePath_constructor_NodePath>`

建立一個空的 **NodePath**\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`NodePath<class_NodePath>` **NodePath**\ (\ from\: :ref:`NodePath<class_NodePath>`\ )

建立給定 **NodePath** 的複本。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`NodePath<class_NodePath>` **NodePath**\ (\ from\: :ref:`String<class_String>`\ )

從 :ref:`String<class_String>` 建立一個 **NodePath**\ 。如果字串開頭有斜線則為絕對路徑（見 :ref:`is_absolute()<class_NodePath_method_is_absolute>`\ ）。

在路徑後方可選擇性地加上「子名稱」（subnames），用來指向屬性，也可多層巢狀。

以下這些字串都是有效的節點路徑：

::

    # 指向 Sprite2D 節點。
    "Level/RigidBody2D/Sprite2D"

    # 指向 Sprite2D 節點及其 "texture" 資源。
    # get_node() 會取得 Sprite2D，get_node_and_resource() 會同時取得 Sprite2D 節點與 "texture" 資源。
    "Level/RigidBody2D/Sprite2D:texture"

    # 指向 Sprite2D 節點及其 "position" 屬性。
    "Level/RigidBody2D/Sprite2D:position"

    # 指向 Sprite2D 節點 "position" 屬性的 "x" 分量。
    "Level/RigidBody2D/Sprite2D:position:x"

    # 絕對路徑（自 SceneTree 起始）指向 RigidBody2D 節點。
    "/root/Level/RigidBody2D"

\ **注意：** 在 GDScript 中，也可以透過在常數字串前加 ``^`` 來轉為節點路徑，\ ``^"path/to/node"`` 等同於 ``NodePath("path/to/node")``\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_NodePath_method_get_as_property_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_as_property_path**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_as_property_path>`

返回一個以冒號字元（\ ``:``\ ）開頭的節點路徑拷貝，將其轉換為沒有節點名稱的純屬性路徑（相對於目前節點）。


.. tabs::

 .. code-tab:: gdscript

    # node_path 指向名為 "position" 的子節點的 "x" 屬性。
    var node_path = ^"position:x"

    # property_path 指向目前節點的 "position" 屬性的 "x"。
    var property_path = node_path.get_as_property_path()
    print(property_path) # 輸出 ":position:x"

 .. code-tab:: csharp

    // nodePath 指向名為 "position" 的子節點的 "x" 屬性。
    var nodePath = new NodePath("position:x");

    // propertyPath 指向目前節點的 "position" 屬性的 "x"。
    NodePath propertyPath = nodePath.GetAsPropertyPath();
    GD.Print(propertyPath); // 輸出 ":position:x"



.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_concatenated_names:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_concatenated_names**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_concatenated_names>`

將所有節點名稱以斜線字元（\ ``/``\ ）串接為單一 :ref:`StringName<class_StringName>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_concatenated_subnames:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_concatenated_subnames**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_concatenated_subnames>`

將所有屬性子名稱以冒號字元（\ ``:``\ ）串接為單一 :ref:`StringName<class_StringName>`\ 。


.. tabs::

 .. code-tab:: gdscript

    var node_path = ^"Sprite2D:texture:resource_name"
    print(node_path.get_concatenated_subnames()) # 輸出 "texture:resource_name"

 .. code-tab:: csharp

    var nodePath = new NodePath("Sprite2D:texture:resource_name");
    GD.Print(nodePath.GetConcatenatedSubnames()); // 輸出 "texture:resource_name"



.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_name**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NodePath_method_get_name>`

返回第 ``idx``\ （從 0 開始）個節點名稱。如果 ``idx`` 超出範圍，會產生錯誤。另見 :ref:`get_subname_count()<class_NodePath_method_get_subname_count>` 與 :ref:`get_name_count()<class_NodePath_method_get_name_count>`\ 。


.. tabs::

 .. code-tab:: gdscript

    var sprite_path = NodePath("../RigidBody2D/Sprite2D")
    print(sprite_path.get_name(0)) # 輸出 ".."
    print(sprite_path.get_name(1)) # 輸出 "RigidBody2D"
    print(sprite_path.get_name(2)) # 輸出 "Sprite2D"

 .. code-tab:: csharp

    var spritePath = new NodePath("../RigidBody2D/Sprite2D");
    GD.Print(spritePath.GetName(0)); // 輸出 ".."
    GD.Print(spritePath.GetName(1)); // 輸出 "RigidBody2D"
    GD.Print(spritePath.GetName(2)); // 輸出 "Sprite2D"



.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_name_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_name_count**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_name_count>`

返回路徑中的節點名稱數量，不包含屬性子名稱。

例如，\ ``"../RigidBody2D/Sprite2D:texture"`` 中有 3 個節點名稱。

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_subname:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_subname**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NodePath_method_get_subname>`

返回第 ``idx``\ （從 0 開始）個屬性名稱（子名稱）。如果 ``idx`` 超出範圍，會產生錯誤。另見 :ref:`get_subname_count()<class_NodePath_method_get_subname_count>`\ 。


.. tabs::

 .. code-tab:: gdscript

    var path_to_name = NodePath("Sprite2D:texture:resource_name")
    print(path_to_name.get_subname(0)) # 輸出 "texture"
    print(path_to_name.get_subname(1)) # 輸出 "resource_name"

 .. code-tab:: csharp

    var pathToName = new NodePath("Sprite2D:texture:resource_name");
    GD.Print(pathToName.GetSubname(0)); // 輸出 "texture"
    GD.Print(pathToName.GetSubname(1)); // 輸出 "resource_name"



.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_subname_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_subname_count**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_subname_count>`

返回路徑中的屬性名稱（「子名稱」）數量。每個子名稱都位於節點路徑的冒號字元（\ ``:``\ ）之後。

例如，\ ``"Level/RigidBody2D/Sprite2D:texture:resource_name"`` 中有 2 個子名稱。

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_hash:

.. rst-class:: classref-method

:ref:`int<class_int>` **hash**\ (\ ) |const| :ref:`🔗<class_NodePath_method_hash>`

返回代表節點路徑內容的 32 位元雜湊值。

\ **注意：** 由於雜湊碰撞，相同雜湊值的節點路徑\ *不一定*\ 相同，但不同雜湊值的節點路徑一定不同。

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_is_absolute:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_absolute**\ (\ ) |const| :ref:`🔗<class_NodePath_method_is_absolute>`

如果節點路徑是絕對路徑（以斜線字元 ``/`` 開頭，且總是從 :ref:`SceneTree<class_SceneTree>` 起始），則返回 ``true``\ 。這類路徑可用於從根節點可靠地存取其他節點（例如若存在名為 "Global" 的自動載入項，則 ``"/root/Global"``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_NodePath_method_is_empty>`

如果節點路徑是由空字串（\ ``""``\ ）建立，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_slice:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| :ref:`🔗<class_NodePath_method_slice>`

傳回 **NodePath** 從 ``begin``\ （包含）到 ``end``\ （不包含）的切片，結果為新的 **NodePath**\ 。

\ ``begin`` 和 ``end`` 的絕對值會限制在 :ref:`get_name_count()<class_NodePath_method_get_name_count>` 與 :ref:`get_subname_count()<class_NodePath_method_get_subname_count>` 的總和範圍內，因此 ``end`` 的預設值會讓切片到路徑結尾（如 ``path.slice(1)`` 相當於 ``path.slice(1, path.get_name_count() + path.get_subname_count())``\ ）。

如果 ``begin`` 或 ``end`` 為負值，則代表從 **NodePath** 結尾往前數（如 ``path.slice(0, -2)`` 相當於 ``path.slice(0, path.get_name_count() + path.get_subname_count() - 2)``\ ）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

運算子說明
----------

.. _class_NodePath_operator_neq_NodePath:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_NodePath_operator_neq_NodePath>`

如果兩個節點路徑不相等，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_NodePath_operator_eq_NodePath:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_NodePath_operator_eq_NodePath>`

如果兩個節點路徑相等，也就是節點名稱與子名稱順序完全一致，則返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
