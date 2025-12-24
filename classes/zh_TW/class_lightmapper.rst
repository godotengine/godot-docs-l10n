:github_url: hide

.. _class_Lightmapper:

Lightmapper
===========

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`LightmapperRD<class_LightmapperRD>`

由光照貼圖器擴充的抽象類別，用於 :ref:`LightmapGI<class_LightmapGI>`\ 。

.. rst-class:: classref-introduction-group

說明
----

此類應由自訂光照貼圖器類擴充。然後可以將光照貼圖器與 :ref:`LightmapGI<class_LightmapGI>` 一起使用，以提供快速烘焙的 3D 全域光照。

Godot 包含一個基於 GPU 的內建光照貼圖器 :ref:`LightmapperRD<class_LightmapperRD>`\ ，它使用計算著色器，但自訂光照貼圖器可以由 C++ 模組實作。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
