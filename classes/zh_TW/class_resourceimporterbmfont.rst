:github_url: hide

.. _class_ResourceImporterBMFont:

ResourceImporterBMFont
======================

**繼承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

``.fbx`` 場景檔案格式的匯入器。

.. rst-class:: classref-introduction-group

說明
----

BMFont 格式是由 `BMFont <https://www.angelcode.com/products/bmfont/>`__ 程式建立的格式。許多與 BMFont 相容的程式也存在，例如\ `BMGlyph <https://www.bmglyph.com/>`__\ 。

與 :ref:`ResourceImporterImageFont<class_ResourceImporterImageFont>` 相比，\ **ResourceImporterBMFont** 支援具有不同字形寬度/高度的點陣字形。

另請參閱 :ref:`ResourceImporterDynamicFont<class_ResourceImporterDynamicFont>`\ 。、""、""、"False"、""、""、""

.. rst-class:: classref-introduction-group

教學
----

- `點陣字型——使用字形 <../tutorials/ui/gui_using_fonts.html#bitmap-fonts>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`compress<class_ResourceImporterBMFont_property_compress>`         | ``true`` |
   +---------------------------+-------------------------------------------------------------------------+----------+
   | :ref:`Array<class_Array>` | :ref:`fallbacks<class_ResourceImporterBMFont_property_fallbacks>`       | ``[]``   |
   +---------------------------+-------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`scaling_mode<class_ResourceImporterBMFont_property_scaling_mode>` | ``2``    |
   +---------------------------+-------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ResourceImporterBMFont_property_compress:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress** = ``true`` :ref:`🔗<class_ResourceImporterBMFont_property_compress>`

如果為 ``true``\ ，則對二進位資源使用無失真壓縮。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterBMFont_property_fallbacks:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **fallbacks** = ``[]`` :ref:`🔗<class_ResourceImporterBMFont_property_fallbacks>`

如果在此點陣字形中找不到字形，則要使用的字形後備列表。首先嘗試陣列開頭的字形。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterBMFont_property_scaling_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **scaling_mode** = ``2`` :ref:`🔗<class_ResourceImporterBMFont_property_scaling_mode>`

Font scaling mode.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
