:github_url: hide

.. _class_TextServerFallback:

TextServerFallback
==================

**繼承：** :ref:`TextServerExtension<class_TextServerExtension>` **<** :ref:`TextServer<class_TextServer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A fallback implementation of Godot's text server, without support for BiDi and complex text layout.

.. rst-class:: classref-introduction-group

說明
----

A fallback implementation of Godot's text server. This fallback is faster than :ref:`TextServerAdvanced<class_TextServerAdvanced>` for processing a lot of text, but it does not support BiDi and complex text layout.

\ **Note:** This text server is not part of official Godot binaries. If you want to use it, compile the engine with the option ``module_text_server_fb_enabled=yes``. When building with **TextServerFallback**, consider also disabling :ref:`TextServerAdvanced<class_TextServerAdvanced>` with ``module_text_server_adv_enabled=no`` to reduce binary size.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
