:github_url: hide

.. _class_AnimationLibrary:

AnimationLibrary
================

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`Animation<class_Animation>` 資源容器。

.. rst-class:: classref-introduction-group

說明
----

動畫庫會透過 :ref:`StringName<class_StringName>` 作為鍵儲存一組動畫，供 :ref:`AnimationPlayer<class_AnimationPlayer>` 節點使用。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`動畫教學索引 <../tutorials/animation/index>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`add_animation<class_AnimationLibrary_method_add_animation>`\ (\ name\: :ref:`StringName<class_StringName>`, animation\: :ref:`Animation<class_Animation>`\ )       |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Animation<class_Animation>`                                | :ref:`get_animation<class_AnimationLibrary_method_get_animation>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                              |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_animation_list<class_AnimationLibrary_method_get_animation_list>`\ (\ ) |const|                                                                                |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_animation_list_size<class_AnimationLibrary_method_get_animation_list_size>`\ (\ ) |const|                                                                      |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_animation<class_AnimationLibrary_method_has_animation>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                              |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_animation<class_AnimationLibrary_method_remove_animation>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`rename_animation<class_AnimationLibrary_method_rename_animation>`\ (\ name\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ ) |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_AnimationLibrary_signal_animation_added:

.. rst-class:: classref-signal

**animation_added**\ (\ anim_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationLibrary_signal_animation_added>`

Emitted when an :ref:`Animation<class_Animation>` is added, under the key ``anim_name``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_signal_animation_changed:

.. rst-class:: classref-signal

**animation_changed**\ (\ anim_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationLibrary_signal_animation_changed>`

Emitted when there's a change in one of the animations, e.g. tracks are added, moved or have changed paths. ``anim_name`` is the key of the animation that was changed.

See also :ref:`Resource.changed<class_Resource_signal_changed>`, which this acts as a relay for.

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_signal_animation_removed:

.. rst-class:: classref-signal

**animation_removed**\ (\ anim_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationLibrary_signal_animation_removed>`

Emitted when an :ref:`Animation<class_Animation>` stored with the key ``anim_name`` is removed.

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_signal_animation_renamed:

.. rst-class:: classref-signal

**animation_renamed**\ (\ old_name\: :ref:`StringName<class_StringName>`, new_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationLibrary_signal_animation_renamed>`

Emitted when the key for an :ref:`Animation<class_Animation>` is changed, from ``old_name`` to ``new_name``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_AnimationLibrary_method_add_animation:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_animation**\ (\ name\: :ref:`StringName<class_StringName>`, animation\: :ref:`Animation<class_Animation>`\ ) :ref:`🔗<class_AnimationLibrary_method_add_animation>`

將 ``animation`` 新增至動畫庫並以鍵 ``name`` 存取。

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_method_get_animation:

.. rst-class:: classref-method

:ref:`Animation<class_Animation>` **get_animation**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationLibrary_method_get_animation>`

返回鍵為 ``name`` 的 :ref:`Animation<class_Animation>`\ 。若不存在則返回 ``null`` 並記錄錯誤。

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_method_get_animation_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_animation_list**\ (\ ) |const| :ref:`🔗<class_AnimationLibrary_method_get_animation_list>`

返回動畫庫中所儲存之 :ref:`Animation<class_Animation>` 的鍵。

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_method_get_animation_list_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_animation_list_size**\ (\ ) |const| :ref:`🔗<class_AnimationLibrary_method_get_animation_list_size>`

返回動畫庫中所儲存之 :ref:`Animation<class_Animation>` 的鍵數量。

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_method_has_animation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_animation**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationLibrary_method_has_animation>`

若動畫庫內存在鍵為 ``name`` 的 :ref:`Animation<class_Animation>` 則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_method_remove_animation:

.. rst-class:: classref-method

|void| **remove_animation**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationLibrary_method_remove_animation>`

移除鍵為 ``name`` 的 :ref:`Animation<class_Animation>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationLibrary_method_rename_animation:

.. rst-class:: classref-method

|void| **rename_animation**\ (\ name\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationLibrary_method_rename_animation>`

將鍵為 ``name`` 的 :ref:`Animation<class_Animation>` 之鍵更改為 ``newname``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
