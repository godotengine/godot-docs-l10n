:github_url: hide

.. _class_GodotInstance:

GodotInstance
=============

**繼承：** :ref:`Object<class_Object>`

提供對嵌入的 Godot 實例的存取權限。

.. rst-class:: classref-introduction-group

說明
----

GodotInstance 代表一個正在執行的 Godot 實例，該實例由外部程式碼庫控制，且沒有永久的主循環。它通過 C API 函式 ``libgodot_create_godot_instance`` 建立。每個處理程序只能建立一個 GodotInstance 實例。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------+
   | |void|                  | :ref:`focus_in<class_GodotInstance_method_focus_in>`\ (\ )     |
   +-------------------------+----------------------------------------------------------------+
   | |void|                  | :ref:`focus_out<class_GodotInstance_method_focus_out>`\ (\ )   |
   +-------------------------+----------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_started<class_GodotInstance_method_is_started>`\ (\ ) |
   +-------------------------+----------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`iteration<class_GodotInstance_method_iteration>`\ (\ )   |
   +-------------------------+----------------------------------------------------------------+
   | |void|                  | :ref:`pause<class_GodotInstance_method_pause>`\ (\ )           |
   +-------------------------+----------------------------------------------------------------+
   | |void|                  | :ref:`resume<class_GodotInstance_method_resume>`\ (\ )         |
   +-------------------------+----------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`start<class_GodotInstance_method_start>`\ (\ )           |
   +-------------------------+----------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_GodotInstance_method_focus_in:

.. rst-class:: classref-method

|void| **focus_in**\ (\ ) :ref:`🔗<class_GodotInstance_method_focus_in>`

通知實例它現在處於焦點狀態。

.. rst-class:: classref-item-separator

----

.. _class_GodotInstance_method_focus_out:

.. rst-class:: classref-method

|void| **focus_out**\ (\ ) :ref:`🔗<class_GodotInstance_method_focus_out>`

通知實例它現在已失去焦點。

.. rst-class:: classref-item-separator

----

.. _class_GodotInstance_method_is_started:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_started**\ (\ ) :ref:`🔗<class_GodotInstance_method_is_started>`

如果該實例已完全啟動，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_GodotInstance_method_iteration:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **iteration**\ (\ ) :ref:`🔗<class_GodotInstance_method_iteration>`

執行主循環的單次迭代。如果引擎正在嘗試退出，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_GodotInstance_method_pause:

.. rst-class:: classref-method

|void| **pause**\ (\ ) :ref:`🔗<class_GodotInstance_method_pause>`

通知實例它即將被暫停。

.. rst-class:: classref-item-separator

----

.. _class_GodotInstance_method_resume:

.. rst-class:: classref-method

|void| **resume**\ (\ ) :ref:`🔗<class_GodotInstance_method_resume>`

通知實例它正在被恢復執行。

.. rst-class:: classref-item-separator

----

.. _class_GodotInstance_method_start:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **start**\ (\ ) :ref:`🔗<class_GodotInstance_method_start>`

完成該實例的啟動序列。成功時回傳 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
