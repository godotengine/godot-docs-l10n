:github_url: hide

.. _class_ResourceImporterShaderFile:

ResourceImporterShaderFile
==========================

**繼承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Imports native GLSL shaders (not Godot shaders) as an :ref:`RDShaderFile<class_RDShaderFile>`.

.. rst-class:: classref-introduction-group

說明
----

這會將本機GLSL 著色器匯入為\ :ref:`RDShaderFile<class_RDShaderFile>` 資源，用於低階\ :ref:`RenderingDevice<class_RenderingDevice>` 操作。此匯入器\ *不*\ 處理\ ``. gdshader `` 檔案。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
