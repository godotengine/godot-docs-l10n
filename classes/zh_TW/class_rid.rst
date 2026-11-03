:github_url: hide

.. _class_RID:

RID
===

:ref:`Resource<class_Resource>` 的唯一識別碼的控制碼。

.. rst-class:: classref-introduction-group

說明
----

RID :ref:`Variant<class_Variant>` 型別用於通過唯一 ID 來存取底層資源。RID 是不透明的，這意味著它們本身並不能直接讓你存取到資源。它們主要被底層伺服器類所使用，例如 :ref:`DisplayServer<class_DisplayServer>`\ （顯示伺服器）、\ :ref:`RenderingServer<class_RenderingServer>`\ （渲染伺服器）、\ :ref:`TextServer<class_TextServer>`\ （文字伺服器）等。

一個底層資源可能對應著一個高層級的 :ref:`Resource<class_Resource>`\ （資源），比如 :ref:`Texture<class_Texture>`\ （紋理）或 :ref:`Mesh<class_Mesh>`\ （網格）。

\ **注意：** RID 僅在目前會話期間有用。如果通過網路發送，或者在之後從檔案中載入，它將無法對應到相同的資源。

\ **注意：** 在布林值情境中，如果 RID 是無效 ID ``0``\ ，它的判斷結果將為 ``false``\ 。否則，RID 的判斷結果將始終為 ``true``\ 。這等同於呼叫 :ref:`is_valid()<class_RID_method_is_valid>` 方法。

.. note::

	使用 C# 操作此 API 時有顯著差異，詳見 :ref:`doc_c_sharp_differences`。

.. rst-class:: classref-reftable-group

建構子
------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`RID<class_RID_constructor_RID>`\ (\ )                               |
   +-----------------------+---------------------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`RID<class_RID_constructor_RID>`\ (\ from\: :ref:`RID<class_RID>`\ ) |
   +-----------------------+---------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`get_id<class_RID_method_get_id>`\ (\ ) |const|     |
   +-------------------------+----------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_valid<class_RID_method_is_valid>`\ (\ ) |const| |
   +-------------------------+----------------------------------------------------------+

.. rst-class:: classref-reftable-group

運算子
------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_RID_operator_neq_RID>`\ (\ right\: :ref:`RID<class_RID>`\ )  |
   +-------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator \<<class_RID_operator_lt_RID>`\ (\ right\: :ref:`RID<class_RID>`\ )   |
   +-------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator \<=<class_RID_operator_lte_RID>`\ (\ right\: :ref:`RID<class_RID>`\ ) |
   +-------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_RID_operator_eq_RID>`\ (\ right\: :ref:`RID<class_RID>`\ )   |
   +-------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ><class_RID_operator_gt_RID>`\ (\ right\: :ref:`RID<class_RID>`\ )    |
   +-------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator >=<class_RID_operator_gte_RID>`\ (\ right\: :ref:`RID<class_RID>`\ )  |
   +-------------------------+--------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

建構子說明
----------

.. _class_RID_constructor_RID:

.. rst-class:: classref-constructor

:ref:`RID<class_RID>` **RID**\ (\ ) :ref:`🔗<class_RID_constructor_RID>`

建構空的 **RID**\ ，內容為無效的 ID ``0``\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`RID<class_RID>` **RID**\ (\ from\: :ref:`RID<class_RID>`\ )

構造給定 **RID** 的副本 **RID**\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_RID_method_get_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_id**\ (\ ) |const| :ref:`🔗<class_RID_method_get_id>`

返回引用的底層資源的 ID。

.. rst-class:: classref-item-separator

----

.. _class_RID_method_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid**\ (\ ) |const| :ref:`🔗<class_RID_method_is_valid>`

如果該 **RID** 非 ``0``\ ，則返回 ``true``\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

運算子說明
----------

.. _class_RID_operator_neq_RID:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RID_operator_neq_RID>`

如果 **RID** 不相等，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_RID_operator_lt_RID:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RID_operator_lt_RID>`

如果該 **RID** 的 ID 小於右側 ``right`` 的 ID，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_RID_operator_lte_RID:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RID_operator_lte_RID>`

如果該 **RID** 的 ID 小於等於右側 ``right`` 的 ID，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_RID_operator_eq_RID:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RID_operator_eq_RID>`

如果 **RID** 相等，則返回 ``true``\ ，表示它們引用的是同一個底層資源。

.. rst-class:: classref-item-separator

----

.. _class_RID_operator_gt_RID:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RID_operator_gt_RID>`

如果該 **RID** 的 ID 大於右側 ``right`` 的 ID，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_RID_operator_gte_RID:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RID_operator_gte_RID>`

如果該 **RID** 的 ID 大於等於右側 ``right`` 的 ID，則返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
