:github_url: hide

.. _class_RenderSceneData:

RenderSceneData
===============

**繼承：** :ref:`Object<class_Object>`

**被繼承：** :ref:`RenderSceneDataExtension<class_RenderSceneDataExtension>`, :ref:`RenderSceneDataRD<class_RenderSceneDataRD>`

抽象渲染資料物件，儲存與渲染視埠的單個影格相關的場景資料。

.. rst-class:: classref-introduction-group

說明
----

抽象場景資料物件，在渲染單個視埠期間存在。另見 :ref:`RenderSceneDataRD<class_RenderSceneDataRD>`\ 、\ :ref:`RenderData<class_RenderData>` 和 :ref:`RenderDataRD<class_RenderDataRD>`\ 。

\ **注意：**\ 這是一個內部渲染伺服器物件。不要從腳本中實例化該類。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>`   | :ref:`get_cam_projection<class_RenderSceneData_method_get_cam_projection>`\ (\ ) |const|                                 |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`get_cam_transform<class_RenderSceneData_method_get_cam_transform>`\ (\ ) |const|                                   |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                 | :ref:`get_uniform_buffer<class_RenderSceneData_method_get_uniform_buffer>`\ (\ ) |const|                                 |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_view_count<class_RenderSceneData_method_get_view_count>`\ (\ ) |const|                                         |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`get_view_eye_offset<class_RenderSceneData_method_get_view_eye_offset>`\ (\ view\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>`   | :ref:`get_view_projection<class_RenderSceneData_method_get_view_projection>`\ (\ view\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_RenderSceneData_method_get_cam_projection:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **get_cam_projection**\ (\ ) |const| :ref:`🔗<class_RenderSceneData_method_get_cam_projection>`

回傳用於渲染該影格的相機投影。

\ **注意：**\ 如果渲染多個檢視，則這將回傳一個組合的投影。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneData_method_get_cam_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_cam_transform**\ (\ ) |const| :ref:`🔗<class_RenderSceneData_method_get_cam_transform>`

回傳用於渲染該影格的相機變換。

\ **注意：**\ 如果渲染多個檢視，則這將回傳一個居中的變換。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneData_method_get_uniform_buffer:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_uniform_buffer**\ (\ ) |const| :ref:`🔗<class_RenderSceneData_method_get_uniform_buffer>`

回傳包含場景資料作為 UBO 的 uniform 緩衝區的 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneData_method_get_view_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_view_count**\ (\ ) |const| :ref:`🔗<class_RenderSceneData_method_get_view_count>`

回傳渲染的檢視數。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneData_method_get_view_eye_offset:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_view_eye_offset**\ (\ view\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_RenderSceneData_method_get_view_eye_offset>`

回傳用於渲染該影格的每個檢視的眼睛偏移量。這是我們的相機變換和眼睛變換之間的偏移。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneData_method_get_view_projection:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **get_view_projection**\ (\ view\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_RenderSceneData_method_get_view_projection>`

回傳用於渲染該影格的每個檢視的檢視投影。

\ **注意：**\ 如果渲染單個檢視，則回傳相機投影。如果渲染多個檢視，則這將回傳給定檢視的投影，包括眼睛偏移。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
