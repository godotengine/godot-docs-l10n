:github_url: hide

.. _class_BackBufferCopy:

BackBufferCopy
==============

**繼承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

這個節點能夠將螢幕中的某個區域複製到緩衝中，方便著色器程式碼存取。

.. rst-class:: classref-introduction-group

說明
----

用於對目前顯示畫面進行後緩衝的節點。會依據 :ref:`copy_mode<class_BackBufferCopy_property_copy_mode>`\ ，將 **BackBufferCopy** 節點所設定的區域或整個螢幕內容複製到緩衝中。之後可於著色器腳本中透過螢幕紋理存取（亦即帶有 ``hint_screen_texture`` 的 uniform 取樣器）。

\ **注意：**\ 由於此節點繼承自 :ref:`Node2D<class_Node2D>`\ （而非 :ref:`Control<class_Control>`\ ），錨點與邊距不會套用到子系 :ref:`Control<class_Control>` 節點。視窗大小變更時可能因此產生問題。為避免此情形，請將 :ref:`Control<class_Control>` 衍生節點作為 **BackBufferCopy** 的\ *同層*\ 節點，而非子節點。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`螢幕讀取著色器 <../tutorials/shaders/screen-reading_shaders>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------------------+-----------------------------------------------------------+---------------------------------+
   | :ref:`CopyMode<enum_BackBufferCopy_CopyMode>` | :ref:`copy_mode<class_BackBufferCopy_property_copy_mode>` | ``1``                           |
   +-----------------------------------------------+-----------------------------------------------------------+---------------------------------+
   | :ref:`Rect2<class_Rect2>`                     | :ref:`rect<class_BackBufferCopy_property_rect>`           | ``Rect2(-100, -100, 200, 200)`` |
   +-----------------------------------------------+-----------------------------------------------------------+---------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_BackBufferCopy_CopyMode:

.. rst-class:: classref-enumeration

enum **CopyMode**: :ref:`🔗<enum_BackBufferCopy_CopyMode>`

.. _class_BackBufferCopy_constant_COPY_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`CopyMode<enum_BackBufferCopy_CopyMode>` **COPY_MODE_DISABLED** = ``0``

停用緩衝模式。這代表 **BackBufferCopy** 節點會直接使用它所覆蓋的螢幕區域。

.. _class_BackBufferCopy_constant_COPY_MODE_RECT:

.. rst-class:: classref-enumeration-constant

:ref:`CopyMode<enum_BackBufferCopy_CopyMode>` **COPY_MODE_RECT** = ``1``

**BackBufferCopy** 會緩衝一個矩形區域。

.. _class_BackBufferCopy_constant_COPY_MODE_VIEWPORT:

.. rst-class:: classref-enumeration-constant

:ref:`CopyMode<enum_BackBufferCopy_CopyMode>` **COPY_MODE_VIEWPORT** = ``2``

**BackBufferCopy** 會緩衝整個螢幕。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_BackBufferCopy_property_copy_mode:

.. rst-class:: classref-property

:ref:`CopyMode<enum_BackBufferCopy_CopyMode>` **copy_mode** = ``1`` :ref:`🔗<class_BackBufferCopy_property_copy_mode>`

.. rst-class:: classref-property-setget

- |void| **set_copy_mode**\ (\ value\: :ref:`CopyMode<enum_BackBufferCopy_CopyMode>`\ )
- :ref:`CopyMode<enum_BackBufferCopy_CopyMode>` **get_copy_mode**\ (\ )

緩衝模式。

.. rst-class:: classref-item-separator

----

.. _class_BackBufferCopy_property_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **rect** = ``Rect2(-100, -100, 200, 200)`` :ref:`🔗<class_BackBufferCopy_property_rect>`

.. rst-class:: classref-property-setget

- |void| **set_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_rect**\ (\ )

此 **BackBufferCopy** 所覆蓋的區域。只有當 :ref:`copy_mode<class_BackBufferCopy_property_copy_mode>` 為 :ref:`COPY_MODE_RECT<class_BackBufferCopy_constant_COPY_MODE_RECT>` 時才會使用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
