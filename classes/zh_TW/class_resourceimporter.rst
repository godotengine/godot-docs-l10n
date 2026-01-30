:github_url: hide

.. _class_ResourceImporter:

ResourceImporter
================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`EditorImportPlugin<class_EditorImportPlugin>`, :ref:`ResourceImporterBitMap<class_ResourceImporterBitMap>`, :ref:`ResourceImporterBMFont<class_ResourceImporterBMFont>`, :ref:`ResourceImporterCSVTranslation<class_ResourceImporterCSVTranslation>`, :ref:`ResourceImporterDynamicFont<class_ResourceImporterDynamicFont>`, :ref:`ResourceImporterImage<class_ResourceImporterImage>`, :ref:`ResourceImporterImageFont<class_ResourceImporterImageFont>`, :ref:`ResourceImporterLayeredTexture<class_ResourceImporterLayeredTexture>`, :ref:`ResourceImporterMP3<class_ResourceImporterMP3>`, :ref:`ResourceImporterOBJ<class_ResourceImporterOBJ>`, :ref:`ResourceImporterOggVorbis<class_ResourceImporterOggVorbis>`, :ref:`ResourceImporterScene<class_ResourceImporterScene>`, :ref:`ResourceImporterShaderFile<class_ResourceImporterShaderFile>`, :ref:`ResourceImporterSVG<class_ResourceImporterSVG>`, :ref:`ResourceImporterTexture<class_ResourceImporterTexture>`, :ref:`ResourceImporterTextureAtlas<class_ResourceImporterTextureAtlas>`, :ref:`ResourceImporterWAV<class_ResourceImporterWAV>`

資源匯入器的基底類別。

.. rst-class:: classref-introduction-group

說明
----

這是 Godot 資源匯入器的基底類別。要使用編輯器外掛程式實作你自己的資源匯入器，請參考 :ref:`EditorImportPlugin<class_EditorImportPlugin>`\ 。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`匯入外掛程式 <../tutorials/plugins/editor/import_plugins>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_build_dependencies<class_ResourceImporter_private_method__get_build_dependencies>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_ResourceImporter_ImportOrder:

.. rst-class:: classref-enumeration

enum **ImportOrder**: :ref:`🔗<enum_ResourceImporter_ImportOrder>`

.. _class_ResourceImporter_constant_IMPORT_ORDER_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`ImportOrder<enum_ResourceImporter_ImportOrder>` **IMPORT_ORDER_DEFAULT** = ``0``

預設匯入順序。

.. _class_ResourceImporter_constant_IMPORT_ORDER_SCENE:

.. rst-class:: classref-enumeration-constant

:ref:`ImportOrder<enum_ResourceImporter_ImportOrder>` **IMPORT_ORDER_SCENE** = ``100``

場景的匯入順序，確保場景被匯入在所有其他核心資源（如紋理）\ *之後*\ 。自訂匯入器的匯入順序一般應低於\ ``100``\ ，以避免匯入依賴自訂資源的場景時出現問題。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ResourceImporter_private_method__get_build_dependencies:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_build_dependencies**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceImporter_private_method__get_build_dependencies>`

Called when the engine compilation profile editor wants to check what build options an imported resource needs. For example, :ref:`ResourceImporterDynamicFont<class_ResourceImporterDynamicFont>` has a property called :ref:`ResourceImporterDynamicFont.multichannel_signed_distance_field<class_ResourceImporterDynamicFont_property_multichannel_signed_distance_field>`, that depends on the engine to be build with the "msdfgen" module. If that resource happened to be a custom one, it would be handled like this:

::

    func _get_build_dependencies(path):
        var resource = load(path)
        var dependencies = PackedStringArray()

        if resource.multichannel_signed_distance_field:
            dependencies.push_back("module_msdfgen_enabled")

        return dependencies

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
