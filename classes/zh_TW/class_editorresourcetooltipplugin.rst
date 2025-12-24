:github_url: hide

.. _class_EditorResourceTooltipPlugin:

EditorResourceTooltipPlugin
===========================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

為處理的資源型別製作高階工具提示的外掛程式。

.. rst-class:: classref-introduction-group

說明
----

:ref:`FileSystemDock<class_FileSystemDock>` 使用的資源工具提示外掛程式，能夠為指定資源生成自訂工具提示。例如，\ :ref:`Texture2D<class_Texture2D>` 的工具提示會顯示較大的預覽和該紋理的尺寸。

外掛程式必須先使用 :ref:`FileSystemDock.add_resource_tooltip_plugin()<class_FileSystemDock_method_add_resource_tooltip_plugin>` 註冊。使用者懸停在檔案系統面板中該外掛程式能夠處理的資源上時，就會呼叫 :ref:`_make_tooltip_for_path()<class_EditorResourceTooltipPlugin_private_method__make_tooltip_for_path>` 來建立工具提示。工作原理類似於 :ref:`Control._make_custom_tooltip()<class_Control_private_method__make_custom_tooltip>`\ 。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`_handles<class_EditorResourceTooltipPlugin_private_method__handles>`\ (\ type\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                   |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Control<class_Control>` | :ref:`_make_tooltip_for_path<class_EditorResourceTooltipPlugin_private_method__make_tooltip_for_path>`\ (\ path\: :ref:`String<class_String>`, metadata\: :ref:`Dictionary<class_Dictionary>`, base\: :ref:`Control<class_Control>`\ ) |virtual| |const| |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`request_thumbnail<class_EditorResourceTooltipPlugin_method_request_thumbnail>`\ (\ path\: :ref:`String<class_String>`, control\: :ref:`TextureRect<class_TextureRect>`\ ) |const|                                                                  |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_EditorResourceTooltipPlugin_private_method__handles:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_handles**\ (\ type\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorResourceTooltipPlugin_private_method__handles>`

如果外掛程式要處理給定的 :ref:`Resource<class_Resource>` 型別 ``type``\ ，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorResourceTooltipPlugin_private_method__make_tooltip_for_path:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **_make_tooltip_for_path**\ (\ path\: :ref:`String<class_String>`, metadata\: :ref:`Dictionary<class_Dictionary>`, base\: :ref:`Control<class_Control>`\ ) |virtual| |const| :ref:`🔗<class_EditorResourceTooltipPlugin_private_method__make_tooltip_for_path>`

建立並返回工具提示，會在使用者懸停在檔案系統面板上路徑為 ``path`` 的資源上時顯示。

中繼資料字典 ``metadata`` 由預覽生成器提供（見 :ref:`EditorResourcePreviewGenerator._generate()<class_EditorResourcePreviewGenerator_private_method__generate>`\ ）。

\ ``base`` 是基礎的預設工具提示，是一個包含檔案名、型別、大小標籤的 :ref:`VBoxContainer<class_VBoxContainer>`\ 。如果其他外掛程式也能夠處理相同的檔案型別，那麼 ``base`` 就是上一個外掛程式的輸出。為了達到最佳效果，請確保基礎工具提示是返回的 :ref:`Control<class_Control>` 的一部分。

\ **注意：**\ 不建議使用 :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>`\ ，尤其是模型、紋理等開銷較大的資源，否則會在建立工具提示時讓編輯器失去回應。如果想要在工具提示中顯示預覽，可以使用 :ref:`request_thumbnail()<class_EditorResourceTooltipPlugin_method_request_thumbnail>`\ 。

\ **注意：**\ 如果你決定要丟棄 ``base``\ ，請確保呼叫了 :ref:`Node.queue_free()<class_Node_method_queue_free>`\ ，否則不會自動釋放。

::

    func _make_tooltip_for_path(path, metadata, base):
        var t_rect = TextureRect.new()
        request_thumbnail(path, t_rect)
        base.add_child(t_rect) # TextureRect 會出現在工具提示的底部。
        return base

.. rst-class:: classref-item-separator

----

.. _class_EditorResourceTooltipPlugin_method_request_thumbnail:

.. rst-class:: classref-method

|void| **request_thumbnail**\ (\ path\: :ref:`String<class_String>`, control\: :ref:`TextureRect<class_TextureRect>`\ ) |const| :ref:`🔗<class_EditorResourceTooltipPlugin_method_request_thumbnail>`

為給定的 :ref:`TextureRect<class_TextureRect>` 請求縮略圖。縮略圖使用 :ref:`EditorResourcePreview<class_EditorResourcePreview>` 非同步創建，會在可用時自動設定。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
