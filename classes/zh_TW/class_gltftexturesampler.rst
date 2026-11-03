:github_url: hide

.. _class_GLTFTextureSampler:

GLTFTextureSampler
==================

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表 glTF 紋理取樣器

.. rst-class:: classref-introduction-group

說明
----

表示由基本 glTF 規範定義的紋理取樣器。glTF 中的紋理取樣器指定在物件上渲染紋理時，如何從紋理的基礎影像中取樣資料。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`執行時檔案載入與儲存 <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------+-----------------------------------------------------------------+-----------+
   | :ref:`int<class_int>` | :ref:`mag_filter<class_GLTFTextureSampler_property_mag_filter>` | ``9729``  |
   +-----------------------+-----------------------------------------------------------------+-----------+
   | :ref:`int<class_int>` | :ref:`min_filter<class_GLTFTextureSampler_property_min_filter>` | ``9987``  |
   +-----------------------+-----------------------------------------------------------------+-----------+
   | :ref:`int<class_int>` | :ref:`wrap_s<class_GLTFTextureSampler_property_wrap_s>`         | ``10497`` |
   +-----------------------+-----------------------------------------------------------------+-----------+
   | :ref:`int<class_int>` | :ref:`wrap_t<class_GLTFTextureSampler_property_wrap_t>`         | ``10497`` |
   +-----------------------+-----------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_GLTFTextureSampler_property_mag_filter:

.. rst-class:: classref-property

:ref:`int<class_int>` **mag_filter** = ``9729`` :ref:`🔗<class_GLTFTextureSampler_property_mag_filter>`

.. rst-class:: classref-property-setget

- |void| **set_mag_filter**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_mag_filter**\ (\ )

紋理的放大濾鏡，當紋理在螢幕上看起來比源影像大時使用。

.. rst-class:: classref-item-separator

----

.. _class_GLTFTextureSampler_property_min_filter:

.. rst-class:: classref-property

:ref:`int<class_int>` **min_filter** = ``9987`` :ref:`🔗<class_GLTFTextureSampler_property_min_filter>`

.. rst-class:: classref-property-setget

- |void| **set_min_filter**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_min_filter**\ (\ )

紋理的縮小濾鏡，當紋理在螢幕上看起來比源影像小時使用。

.. rst-class:: classref-item-separator

----

.. _class_GLTFTextureSampler_property_wrap_s:

.. rst-class:: classref-property

:ref:`int<class_int>` **wrap_s** = ``10497`` :ref:`🔗<class_GLTFTextureSampler_property_wrap_s>`

.. rst-class:: classref-property-setget

- |void| **set_wrap_s**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_wrap_s**\ (\ )

用於 S 軸（水平）紋理座標的環繞模式。

.. rst-class:: classref-item-separator

----

.. _class_GLTFTextureSampler_property_wrap_t:

.. rst-class:: classref-property

:ref:`int<class_int>` **wrap_t** = ``10497`` :ref:`🔗<class_GLTFTextureSampler_property_wrap_t>`

.. rst-class:: classref-property-setget

- |void| **set_wrap_t**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_wrap_t**\ (\ )

用於 T 軸（垂直）紋理座標的環繞模式。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
