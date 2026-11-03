:github_url: hide

.. _class_GLTFTexture:

GLTFTexture
===========

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

GLTFTexture 代表 glTF 檔案中的紋理。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`執行時檔案載入與儲存 <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`sampler<class_GLTFTexture_property_sampler>`     | ``-1`` |
   +-----------------------+--------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`src_image<class_GLTFTexture_property_src_image>` | ``-1`` |
   +-----------------------+--------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_GLTFTexture_property_sampler:

.. rst-class:: classref-property

:ref:`int<class_int>` **sampler** = ``-1`` :ref:`🔗<class_GLTFTexture_property_sampler>`

.. rst-class:: classref-property-setget

- |void| **set_sampler**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sampler**\ (\ )

紋理取樣器的 ID，在對影像進行取樣時使用。如果為 -1，則使用預設的紋理取樣器（線性篩選，並在兩個軸上重複環繞）。

.. rst-class:: classref-item-separator

----

.. _class_GLTFTexture_property_src_image:

.. rst-class:: classref-property

:ref:`int<class_int>` **src_image** = ``-1`` :ref:`🔗<class_GLTFTexture_property_src_image>`

.. rst-class:: classref-property-setget

- |void| **set_src_image**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_src_image**\ (\ )

與該紋理關聯的影像索引，見 :ref:`GLTFState.get_images()<class_GLTFState_method_get_images>`\ 。如果為 -1，則該紋理未與影像相關聯。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
