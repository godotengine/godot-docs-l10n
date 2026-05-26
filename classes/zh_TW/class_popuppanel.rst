:github_url: hide

.. _class_PopupPanel:

PopupPanel
==========

**繼承：** :ref:`Popup<class_Popup>` **<** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

帶有面板背景的快顯視窗。

.. rst-class:: classref-introduction-group

說明
----

帶有可配置面板背景的快顯視窗。新增到這個節點的子控制項都會被拉伸到面板的大小（類似於 :ref:`PanelContainer<class_PanelContainer>` 的原理）。如果你製作的是視窗，請參閱 :ref:`Window<class_Window>`\ 。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------------------------------------------------------+------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`DefaultCanvasItemTextureFilter<enum_Viewport_DefaultCanvasItemTextureFilter>` | canvas_item_default_texture_filter | ``4`` (overrides :ref:`Viewport<class_Viewport_property_canvas_item_default_texture_filter>`) |
   +-------------------------------------------------------------------------------------+------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`DefaultCanvasItemTextureRepeat<enum_Viewport_DefaultCanvasItemTextureRepeat>` | canvas_item_default_texture_repeat | ``3`` (overrides :ref:`Viewport<class_Viewport_property_canvas_item_default_texture_repeat>`) |
   +-------------------------------------------------------------------------------------+------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                             | transparent                        | ``true`` (overrides :ref:`Window<class_Window_property_transparent>`)                         |
   +-------------------------------------------------------------------------------------+------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                             | transparent_bg                     | ``true`` (overrides :ref:`Viewport<class_Viewport_property_transparent_bg>`)                  |
   +-------------------------------------------------------------------------------------+------------------------------------+-----------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

主題屬性
--------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`panel<class_PopupPanel_theme_style_panel>` |
   +---------------------------------+--------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主題屬性說明
------------

.. _class_PopupPanel_theme_style_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **panel** :ref:`🔗<class_PopupPanel_theme_style_panel>`

:ref:`StyleBox<class_StyleBox>` for the background panel.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
