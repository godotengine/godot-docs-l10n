:github_url: hide

.. _class_TextServerDummy:

TextServerDummy
===============

**繼承：** :ref:`TextServerExtension<class_TextServerExtension>` **<** :ref:`TextServer<class_TextServer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

虛設的文字伺服器，無法算繪文字或管理字形。

.. rst-class:: classref-introduction-group

說明
----

虛設的 :ref:`TextServer<class_TextServer>` 介面，不做任何事情。可以在不需要算繪文字時釋放記憶體，因為文字伺服器極其消耗資源。也可以用來比較複雜 GUI 的性能，檢查文字算繪帶來的影響。

虛設的文字伺服器在專案開始後始終可用。存取方法如下：

::

    var dummy_text_server = TextServerManager.find_interface("Dummy")
    if dummy_text_server != null:
        TextServerManager.set_primary_interface(dummy_text_server)
        # 如果不需要其他文字伺服器，就可以移除：
        for i in TextServerManager.get_interface_count():
            var text_server = TextServerManager.get_interface(i)
            if text_server != dummy_text_server:
                TextServerManager.remove_interface(text_server)

可以使用命令列參數 ``--text-driver Dummy``\ （大小寫敏感）來強制專案使用“Dummy（虛設）”\ :ref:`TextServer<class_TextServer>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
