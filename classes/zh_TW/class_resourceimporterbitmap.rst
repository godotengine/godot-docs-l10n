:github_url: hide

.. _class_ResourceImporterBitMap:

ResourceImporterBitMap
======================

**繼承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

匯入 :ref:`BitMap<class_BitMap>` 資源（布林值的二維陣列）。

.. rst-class:: classref-introduction-group

說明
----

:ref:`BitMap<class_BitMap>` 資源通常用作\ :ref:`TextureButton<class_TextureButton>` 和\ :ref:`TouchScreenButton<class_TouchScreenButton>` 中的點選遮罩。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`匯入影像 <../tutorials/assets_pipeline/importing_images>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`create_from<class_ResourceImporterBitMap_property_create_from>` | ``0``   |
   +---------------------------+-----------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`threshold<class_ResourceImporterBitMap_property_threshold>`     | ``0.5`` |
   +---------------------------+-----------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ResourceImporterBitMap_property_create_from:

.. rst-class:: classref-property

:ref:`int<class_int>` **create_from** = ``0`` :ref:`🔗<class_ResourceImporterBitMap_property_create_from>`

用於產生點陣圖的資料來源。

\ **黑白：** HSV 值大於\ :ref:`threshold<class_ResourceImporterBitMap_property_threshold>`\ 的像素將被視為「已啟用」（位元為\ ``true``\ ）。如果像素低於或等於閾值，則將被視為「停用」（位元為\ ``false``\ ）。

\ **Alpha：** Alpha 值大於\ :ref:`threshold<class_ResourceImporterBitMap_property_threshold>`\ 的像素將被視為「啟用」（位元為\ ``true``\ ）。如果像素低於或等於閾值，則將被視為“已停用”（位元為 ``false``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterBitMap_property_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **threshold** = ``0.5`` :ref:`🔗<class_ResourceImporterBitMap_property_threshold>`

用於確定哪些位元應視為啟用或停用的閾值。另請參閱\ :ref:`create_from<class_ResourceImporterBitMap_property_create_from>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
