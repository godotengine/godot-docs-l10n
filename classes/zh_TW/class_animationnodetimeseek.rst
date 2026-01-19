:github_url: hide

.. _class_AnimationNodeTimeSeek:

AnimationNodeTimeSeek
=====================

**繼承：** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在 :ref:`AnimationTree<class_AnimationTree>` 中使用的時間尋找動畫節點。

.. rst-class:: classref-introduction-group

說明
----

此動畫節點可向動畫圖任何子節點下達尋找指令，用以從頭或指定播放位置播放 :ref:`Animation<class_Animation>`\ （位於 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 內）。

設定時間並改變播放後，尋找節點會在下一個處理影格自動將 ``seek_request`` 設為 ``-1.0``\ ，進入休眠模式。


.. tabs::

 .. code-tab:: gdscript

    # 從開頭播放子動畫。
    animation_tree.set("parameters/TimeSeek/seek_request", 0.0)
    animation_tree["parameters/TimeSeek/seek_request"] = 0.0  # 同上

    # 從 12 秒處播放子動畫。
    animation_tree.set("parameters/TimeSeek/seek_request", 12.0)
    animation_tree["parameters/TimeSeek/seek_request"] = 12.0  # 同上

 .. code-tab:: csharp

    // 從開頭播放子動畫。
    animationTree.Set("parameters/TimeSeek/seek_request", 0.0);

    // 從 12 秒處播放子動畫。
    animationTree.Set("parameters/TimeSeek/seek_request", 12.0);



.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 AnimationTree <../tutorials/animation/animation_tree>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`explicit_elapse<class_AnimationNodeTimeSeek_property_explicit_elapse>` | ``true`` |
   +-------------------------+------------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AnimationNodeTimeSeek_property_explicit_elapse:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **explicit_elapse** = ``true`` :ref:`🔗<class_AnimationNodeTimeSeek_property_explicit_elapse>`

.. rst-class:: classref-property-setget

- |void| **set_explicit_elapse**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_explicit_elapse**\ (\ )

若為 ``true``\ ，在兩次尋找之間將執行額外處理，如計算 Root Motion 與尋找最近的離散鍵。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
