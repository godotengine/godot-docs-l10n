:github_url: hide

.. _class_RenderSceneDataExtension:

RenderSceneDataExtension
========================

**繼承：** :ref:`RenderSceneData<class_RenderSceneData>` **<** :ref:`Object<class_Object>`

該類允許在 GDExtension 中實作 RenderSceneData。

.. rst-class:: classref-introduction-group

說明
----

該類允許在 GDExtension 中實作 RenderSceneData。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>`   | :ref:`_get_cam_projection<class_RenderSceneDataExtension_private_method__get_cam_projection>`\ (\ ) |virtual| |const|                                 |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`_get_cam_transform<class_RenderSceneDataExtension_private_method__get_cam_transform>`\ (\ ) |virtual| |const|                                   |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                 | :ref:`_get_uniform_buffer<class_RenderSceneDataExtension_private_method__get_uniform_buffer>`\ (\ ) |virtual| |const|                                 |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`_get_view_count<class_RenderSceneDataExtension_private_method__get_view_count>`\ (\ ) |virtual| |const|                                         |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`_get_view_eye_offset<class_RenderSceneDataExtension_private_method__get_view_eye_offset>`\ (\ view\: :ref:`int<class_int>`\ ) |virtual| |const| |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>`   | :ref:`_get_view_projection<class_RenderSceneDataExtension_private_method__get_view_projection>`\ (\ view\: :ref:`int<class_int>`\ ) |virtual| |const| |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_RenderSceneDataExtension_private_method__get_cam_projection:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **_get_cam_projection**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderSceneDataExtension_private_method__get_cam_projection>`

在 GDExtension 中實作時請回傳相機的 :ref:`Projection<class_Projection>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneDataExtension_private_method__get_cam_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **_get_cam_transform**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderSceneDataExtension_private_method__get_cam_transform>`

在 GDExtension 中實作時請回傳相機的 :ref:`Transform3D<class_Transform3D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneDataExtension_private_method__get_uniform_buffer:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_uniform_buffer**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderSceneDataExtension_private_method__get_uniform_buffer>`

在 GDExtension 中實作時請回傳 Uniform 緩衝的 :ref:`RID<class_RID>`\ ，這個緩衝中包含了 UBO 形式的場景資料。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneDataExtension_private_method__get_view_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_view_count**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderSceneDataExtension_private_method__get_view_count>`

在 GDExtension 中實作時請回傳檢視數量。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneDataExtension_private_method__get_view_eye_offset:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **_get_view_eye_offset**\ (\ view\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_RenderSceneDataExtension_private_method__get_view_eye_offset>`

在 GDExtension 中實作時請回傳 ``view`` 檢視的眼部偏移量。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneDataExtension_private_method__get_view_projection:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **_get_view_projection**\ (\ view\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_RenderSceneDataExtension_private_method__get_view_projection>`

在 GDExtension 中實作時請回傳 ``view`` 檢視的檢視 :ref:`Projection<class_Projection>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
