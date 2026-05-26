:github_url: hide

.. _class_RID:

RID
===

:ref:`Resource<class_Resource>` 的唯一識別碼的控制碼。

.. rst-class:: classref-introduction-group

說明
----

The RID :ref:`Variant<class_Variant>` type is used to access a low-level resource by its unique ID. RIDs are opaque, which means they do not grant access to the resource by themselves. They are used by the low-level server classes, such as :ref:`DisplayServer<class_DisplayServer>`, :ref:`RenderingServer<class_RenderingServer>`, :ref:`TextServer<class_TextServer>`, etc.

A low-level resource may correspond to a high-level :ref:`Resource<class_Resource>`, such as :ref:`Texture<class_Texture>` or :ref:`Mesh<class_Mesh>`.

\ **Note:** RIDs are only useful during the current session. It won't correspond to a similar resource if sent over a network, or loaded from a file at a later time.

\ **Note:** In a boolean context, an RID will evaluate to ``false`` if it has the invalid ID ``0``. Otherwise, an RID will always evaluate to ``true``. This is equivalent to calling :ref:`is_valid()<class_RID_method_is_valid>`.

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

Constructs an **RID** as a copy of the given **RID**.

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
