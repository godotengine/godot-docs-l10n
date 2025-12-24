:github_url: hide

.. _class_InstancePlaceholder:

InstancePlaceholder
===================

**繼承：** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

:ref:`PackedScene<class_PackedScene>` 根 :ref:`Node<class_Node>` 的預留位置。

.. rst-class:: classref-introduction-group

說明
----

Turning on the option **Load As Placeholder** for an instantiated scene in the editor causes it to be replaced by an **InstancePlaceholder** when running the game, this will not replace the node in the editor. This makes it possible to delay actually loading the scene until calling :ref:`create_instance()<class_InstancePlaceholder_method_create_instance>`. This is useful to avoid loading large scenes all at once by loading parts of it selectively.

\ **Note:** Like :ref:`Node<class_Node>`, **InstancePlaceholder** does not have a transform. This causes any child nodes to be positioned relatively to the :ref:`Viewport<class_Viewport>` origin, rather than their parent as displayed in the editor. Replacing the placeholder with a scene with a transform will transform children relatively to their parent again.

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`             | :ref:`create_instance<class_InstancePlaceholder_method_create_instance>`\ (\ replace\: :ref:`bool<class_bool>` = false, custom_scene\: :ref:`PackedScene<class_PackedScene>` = null\ ) |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`get_instance_path<class_InstancePlaceholder_method_get_instance_path>`\ (\ ) |const|                                                                                             |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`get_stored_values<class_InstancePlaceholder_method_get_stored_values>`\ (\ with_order\: :ref:`bool<class_bool>` = false\ )                                                       |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_InstancePlaceholder_method_create_instance:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **create_instance**\ (\ replace\: :ref:`bool<class_bool>` = false, custom_scene\: :ref:`PackedScene<class_PackedScene>` = null\ ) :ref:`🔗<class_InstancePlaceholder_method_create_instance>`

呼叫這個方法會實際載入節點。建立的節點會被放置在場景樹中該 **InstancePlaceholder** 的\ *上方*\ 。出於方便的考慮，還會返回該 :ref:`Node<class_Node>` 的引用。

\ **注意：**\ :ref:`create_instance()<class_InstancePlaceholder_method_create_instance>` 不是執行緒安全的。從執行緒中呼叫時請使用 :ref:`Object.call_deferred()<class_Object_method_call_deferred>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_InstancePlaceholder_method_get_instance_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_instance_path**\ (\ ) |const| :ref:`🔗<class_InstancePlaceholder_method_get_instance_path>`

獲取呼叫 :ref:`create_instance()<class_InstancePlaceholder_method_create_instance>` 時預設載入的 :ref:`PackedScene<class_PackedScene>` 資源檔的路徑。不是執行緒安全的。如果從執行緒呼叫，請使用 :ref:`Object.call_deferred()<class_Object_method_call_deferred>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_InstancePlaceholder_method_get_stored_values:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_stored_values**\ (\ with_order\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_InstancePlaceholder_method_get_stored_values>`

返回在呼叫 :ref:`create_instance()<class_InstancePlaceholder_method_create_instance>` 時會套用到節點上的屬性列表。

如果 ``with_order`` 為 ``true``\ ，會在字典中加入 ``.order`` 欄位（注意有個前綴的點）。這個 ``.order`` 欄位是屬性名稱 :ref:`String<class_String>` 的 :ref:`Array<class_Array>`\ ，指定屬性的套用順序（索引為 0 的是第一個）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
