:github_url: hide

.. meta::
	:keywords: sound

.. _class_AudioListener2D:

AudioListener2D
===============

**繼承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

覆寫聽音位置。

.. rst-class:: classref-introduction-group

說明
----

當加入場景樹並透過 :ref:`make_current()<class_AudioListener2D_method_make_current>` 啟用後，此節點將覆寫聽音位置；任一時刻僅能有一個 **AudioListener2D** 為目前使用。呼叫 :ref:`make_current()<class_AudioListener2D_method_make_current>` 會停用先前的 **AudioListener2D**\ 。

若目前 :ref:`Viewport<class_Viewport>` 中沒有啟用的 **AudioListener2D**\ ，則以螢幕中心作為聽音點。必須將 **AudioListener2D** 置於 :ref:`SceneTree<class_SceneTree>` 內才能運作。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------+
   | |void|                  | :ref:`clear_current<class_AudioListener2D_method_clear_current>`\ (\ )   |
   +-------------------------+--------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_current<class_AudioListener2D_method_is_current>`\ (\ ) |const| |
   +-------------------------+--------------------------------------------------------------------------+
   | |void|                  | :ref:`make_current<class_AudioListener2D_method_make_current>`\ (\ )     |
   +-------------------------+--------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_AudioListener2D_method_clear_current:

.. rst-class:: classref-method

|void| **clear_current**\ (\ ) :ref:`🔗<class_AudioListener2D_method_clear_current>`

停用 **AudioListener2D**\ ；若其非目前使用則此方法無效。

.. rst-class:: classref-item-separator

----

.. _class_AudioListener2D_method_is_current:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_current**\ (\ ) |const| :ref:`🔗<class_AudioListener2D_method_is_current>`

若此 **AudioListener2D** 目前啟用，返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioListener2D_method_make_current:

.. rst-class:: classref-method

|void| **make_current**\ (\ ) :ref:`🔗<class_AudioListener2D_method_make_current>`

將此 **AudioListener2D** 設為啟用並成為聽音點；若已存在其他啟用之 **AudioListener2D**\ ，則會被停用。

若此節點未加入 :ref:`SceneTree<class_SceneTree>`\ ，本方法無效。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
