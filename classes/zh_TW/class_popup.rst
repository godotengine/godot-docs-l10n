:github_url: hide

.. _class_Popup:

Popup
=====

**繼承：** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`PopupMenu<class_PopupMenu>`, :ref:`PopupPanel<class_PopupPanel>`

本文視窗以及固定位置的面板的基底類別。

.. rst-class:: classref-introduction-group

說明
----

**Popup** 是本文視窗以及固定位置的面板的基底類別。預設情況下是模態的（見 :ref:`Window.popup_window<class_Window_property_popup_window>`\ ），還提供了用於自訂彈出行為的方法。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | borderless        | ``true`` (overrides :ref:`Window<class_Window_property_borderless>`)        |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | maximize_disabled | ``true`` (overrides :ref:`Window<class_Window_property_maximize_disabled>`) |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | minimize_disabled | ``true`` (overrides :ref:`Window<class_Window_property_minimize_disabled>`) |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | popup_window      | ``true`` (overrides :ref:`Window<class_Window_property_popup_window>`)      |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | popup_wm_hint     | ``true`` (overrides :ref:`Window<class_Window_property_popup_wm_hint>`)     |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | transient         | ``true`` (overrides :ref:`Window<class_Window_property_transient>`)         |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | unresizable       | ``true`` (overrides :ref:`Window<class_Window_property_unresizable>`)       |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | visible           | ``false`` (overrides :ref:`Window<class_Window_property_visible>`)          |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | wrap_controls     | ``true`` (overrides :ref:`Window<class_Window_property_wrap_controls>`)     |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_Popup_signal_popup_hide:

.. rst-class:: classref-signal

**popup_hide**\ (\ ) :ref:`🔗<class_Popup_signal_popup_hide>`

當該快顯視窗被隱藏時發出。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
