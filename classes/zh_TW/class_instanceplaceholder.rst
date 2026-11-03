:github_url: hide

.. _class_InstancePlaceholder:

InstancePlaceholder
===================

**繼承：** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

:ref:`PackedScene<class_PackedScene>` 根 :ref:`Node<class_Node>` 的預留位置。

.. rst-class:: classref-introduction-group

說明
----

在編輯器中為實例化的場景打開\ **載入為佔位符**\ 選項會導致在執行遊戲時將其替換為 **InstancePlaceholder**\ 。這樣就可以將場景推遲到呼叫 :ref:`create_instance()<class_InstancePlaceholder_method_create_instance>` 時再實際載入。這樣做有助於對大型場景中的不同部分進行有選擇的載入，避免一次性載入所有部分。

\ **注意：**\ **InstancePlaceholder** 與 :ref:`Node<class_Node>` 類似，不具備變換屬性。因此任何子節點都會相對於 :ref:`Viewport<class_Viewport>` 的原點開始定位，而不是在編輯器中顯示的父節點。用一個具有變換屬性的場景來替換佔位符，將使子節點再次相對於它們的父節點進行變換。

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

取得呼叫 :ref:`create_instance()<class_InstancePlaceholder_method_create_instance>` 時預設載入的 :ref:`PackedScene<class_PackedScene>` 資源檔的路徑。不是執行緒安全的。如果從執行緒呼叫，請使用 :ref:`Object.call_deferred()<class_Object_method_call_deferred>`\ 。

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
