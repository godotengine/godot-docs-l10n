:github_url: hide

.. _class_LightmapperRD:

LightmapperRD
=============

**繼承：** :ref:`Lightmapper<class_Lightmapper>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

內建的基於 GPU 的光照貼圖器，與 :ref:`LightmapGI<class_LightmapGI>` 一起使用。

.. rst-class:: classref-introduction-group

說明
----

LightmapperRD ("RD" stands for :ref:`RenderingDevice<class_RenderingDevice>`) is the built-in GPU-based lightmapper for use with :ref:`LightmapGI<class_LightmapGI>`. On most dedicated GPUs, it can bake lightmaps much faster than most CPU-based lightmappers. LightmapperRD uses compute shaders to bake lightmaps, so it does not require CUDA or OpenCL libraries to be installed to be usable.

\ **Note:** Only usable when using the RenderingDevice backend (Forward+ or Mobile renderers), not Compatibility.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
