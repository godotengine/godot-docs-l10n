:github_url: hide

.. _class_ImageFormatLoaderExtension:

ImageFormatLoaderExtension
==========================

**繼承：** :ref:`ImageFormatLoader<class_ImageFormatLoader>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於建立 :ref:`ImageFormatLoader<class_ImageFormatLoader>` 擴充的基底類別（新增對額外圖像格式的支援）。

.. rst-class:: classref-introduction-group

說明
----

該引擎支援多種開箱即用的圖像格式（PNG、SVG、JPEG、WebP 等），但也可以選擇通過擴充該類，來實作對其他圖像格式的支援。

請務必遵守文件中的返回型別和值。應該建立它的一個實例，並在初始化階段呼叫 :ref:`add_format_loader()<class_ImageFormatLoaderExtension_method_add_format_loader>` 來註冊該載入器。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_recognized_extensions<class_ImageFormatLoaderExtension_private_method__get_recognized_extensions>`\ (\ ) |virtual| |const|                                                                                                                                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`_load_image<class_ImageFormatLoaderExtension_private_method__load_image>`\ (\ image\: :ref:`Image<class_Image>`, fileaccess\: :ref:`FileAccess<class_FileAccess>`, flags\: |bitfield|\[:ref:`LoaderFlags<enum_ImageFormatLoader_LoaderFlags>`\], scale\: :ref:`float<class_float>`\ ) |virtual| |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_format_loader<class_ImageFormatLoaderExtension_method_add_format_loader>`\ (\ )                                                                                                                                                                                                             |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_format_loader<class_ImageFormatLoaderExtension_method_remove_format_loader>`\ (\ )                                                                                                                                                                                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ImageFormatLoaderExtension_private_method__get_recognized_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_recognized_extensions**\ (\ ) |virtual| |const| :ref:`🔗<class_ImageFormatLoaderExtension_private_method__get_recognized_extensions>`

返回該圖像格式的檔副檔名列表。具有給定副檔名的檔將被視為影像檔並使用該類載入。

.. rst-class:: classref-item-separator

----

.. _class_ImageFormatLoaderExtension_private_method__load_image:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_load_image**\ (\ image\: :ref:`Image<class_Image>`, fileaccess\: :ref:`FileAccess<class_FileAccess>`, flags\: |bitfield|\[:ref:`LoaderFlags<enum_ImageFormatLoader_LoaderFlags>`\], scale\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_ImageFormatLoaderExtension_private_method__load_image>`

將 ``fileaccess`` 的內容載入至提供的 ``image``\ 。

.. rst-class:: classref-item-separator

----

.. _class_ImageFormatLoaderExtension_method_add_format_loader:

.. rst-class:: classref-method

|void| **add_format_loader**\ (\ ) :ref:`🔗<class_ImageFormatLoaderExtension_method_add_format_loader>`

將這個格式載入器新增至引擎，使其能夠識別 :ref:`_get_recognized_extensions()<class_ImageFormatLoaderExtension_private_method__get_recognized_extensions>` 返回的檔案副檔名。

.. rst-class:: classref-item-separator

----

.. _class_ImageFormatLoaderExtension_method_remove_format_loader:

.. rst-class:: classref-method

|void| **remove_format_loader**\ (\ ) :ref:`🔗<class_ImageFormatLoaderExtension_method_remove_format_loader>`

從引擎中移除這個格式載入器。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
