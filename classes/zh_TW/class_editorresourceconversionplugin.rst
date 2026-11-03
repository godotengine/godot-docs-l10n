:github_url: hide

.. _class_EditorResourceConversionPlugin:

EditorResourceConversionPlugin
==============================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於在編輯器資源選擇器的本文功能表中新增從一種資源格式到另一種資源格式的自訂轉換器的外掛程式；例如，將 :ref:`StandardMaterial3D<class_StandardMaterial3D>` 轉換為 :ref:`ShaderMaterial<class_ShaderMaterial>`\ 。

.. rst-class:: classref-introduction-group

說明
----

當編輯器屬性檢視器中的資源被調出本文功能表時，\ **EditorResourceConversionPlugin** 被呼叫。相關的轉換外掛程式將作為功能表選項出現，以將給定的資源轉換為目標型別。

下面展示了一個將 :ref:`ImageTexture<class_ImageTexture>` 轉換為 :ref:`PortableCompressedTexture2D<class_PortableCompressedTexture2D>` 的基本外掛範例。


.. tabs::

 .. code-tab:: gdscript

    extends EditorResourceConversionPlugin

    func _handles(resource: Resource):
        return resource is ImageTexture

    func _converts_to():
        return "PortableCompressedTexture2D"

    func _convert(itex: Resource):
        var ptex = PortableCompressedTexture2D.new()
        ptex.create_from_image(itex.get_image(), PortableCompressedTexture2D.COMPRESSION_MODE_LOSSLESS)
        return ptex



要使用 **EditorResourceConversionPlugin**\ ，請先使用 :ref:`EditorPlugin.add_resource_conversion_plugin()<class_EditorPlugin_method_add_resource_conversion_plugin>` 方法註冊它。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>` | :ref:`_convert<class_EditorResourceConversionPlugin_private_method__convert>`\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const| |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`     | :ref:`_converts_to<class_EditorResourceConversionPlugin_private_method__converts_to>`\ (\ ) |virtual| |const|                                     |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`_handles<class_EditorResourceConversionPlugin_private_method__handles>`\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const| |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_EditorResourceConversionPlugin_private_method__convert:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **_convert**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const| :ref:`🔗<class_EditorResourceConversionPlugin_private_method__convert>`

取得輸入 :ref:`Resource<class_Resource>` 並將其轉換為 :ref:`_converts_to()<class_EditorResourceConversionPlugin_private_method__converts_to>` 中給定的型別。返回的 :ref:`Resource<class_Resource>` 是轉換後的結果，輸入的 :ref:`Resource<class_Resource>` 保持不變。

.. rst-class:: classref-item-separator

----

.. _class_EditorResourceConversionPlugin_private_method__converts_to:

.. rst-class:: classref-method

:ref:`String<class_String>` **_converts_to**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorResourceConversionPlugin_private_method__converts_to>`

返回該外掛程式將源資源轉換為的 :ref:`Resource<class_Resource>` 的目標型別的類別名稱。

.. rst-class:: classref-item-separator

----

.. _class_EditorResourceConversionPlugin_private_method__handles:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_handles**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const| :ref:`🔗<class_EditorResourceConversionPlugin_private_method__handles>`

呼叫以確定特定 :ref:`Resource<class_Resource>` 是否可以通過該外掛程式轉換為目標資源型別。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
