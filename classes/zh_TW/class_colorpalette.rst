:github_url: hide

.. _class_ColorPalette:

ColorPalette
============

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於管理調色板的資源類，可以用 :ref:`ColorPicker<class_ColorPicker>` 來載入和儲存。

.. rst-class:: classref-introduction-group

說明
----

**ColorPalette** 資源可用於儲存和管理顏色的合集。常用於需要一組預設顏色的場景，例如建立主題、設計使用者介面、管理遊戲素材等。內建的 :ref:`ColorPicker<class_ColorPicker>` 控制項無需額外編寫程式碼就可以使用 **ColorPalette**\ 。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------+------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>` | :ref:`colors<class_ColorPalette_property_colors>` | ``PackedColorArray()`` |
   +-------------------------------------------------+---------------------------------------------------+------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ColorPalette_property_colors:

.. rst-class:: classref-property

:ref:`PackedColorArray<class_PackedColorArray>` **colors** = ``PackedColorArray()`` :ref:`🔗<class_ColorPalette_property_colors>`

.. rst-class:: classref-property-setget

- |void| **set_colors**\ (\ value\: :ref:`PackedColorArray<class_PackedColorArray>`\ )
- :ref:`PackedColorArray<class_PackedColorArray>` **get_colors**\ (\ )

包含調色板中顏色的 :ref:`PackedColorArray<class_PackedColorArray>`\ 。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedColorArray<class_PackedColorArray>` for more details.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
