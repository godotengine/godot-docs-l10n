:github_url: hide

.. _class_RenderData:

RenderData
==========

**繼承：** :ref:`Object<class_Object>`

**被繼承：** :ref:`RenderDataExtension<class_RenderDataExtension>`, :ref:`RenderDataRD<class_RenderDataRD>`

Abstract render data object, holds frame data related to rendering a single frame of a viewport.

.. rst-class:: classref-introduction-group

說明
----

Abstract render data object, exists for the duration of rendering a single viewport. See also :ref:`RenderDataRD<class_RenderDataRD>`, :ref:`RenderSceneData<class_RenderSceneData>`, and :ref:`RenderSceneDataRD<class_RenderSceneDataRD>`.

\ **Note:** This is an internal rendering server object. Do not instantiate this class from a script.

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`get_camera_attributes<class_RenderData_method_get_camera_attributes>`\ (\ ) |const|       |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`get_environment<class_RenderData_method_get_environment>`\ (\ ) |const|                   |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`RenderSceneBuffers<class_RenderSceneBuffers>` | :ref:`get_render_scene_buffers<class_RenderData_method_get_render_scene_buffers>`\ (\ ) |const| |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`RenderSceneData<class_RenderSceneData>`       | :ref:`get_render_scene_data<class_RenderData_method_get_render_scene_data>`\ (\ ) |const|       |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_RenderData_method_get_camera_attributes:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_camera_attributes**\ (\ ) |const| :ref:`🔗<class_RenderData_method_get_camera_attributes>`

Returns the :ref:`RID<class_RID>` of the camera attributes object in the :ref:`RenderingServer<class_RenderingServer>` being used to render this viewport.

.. rst-class:: classref-item-separator

----

.. _class_RenderData_method_get_environment:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_environment**\ (\ ) |const| :ref:`🔗<class_RenderData_method_get_environment>`

Returns the :ref:`RID<class_RID>` of the environment object in the :ref:`RenderingServer<class_RenderingServer>` being used to render this viewport.

.. rst-class:: classref-item-separator

----

.. _class_RenderData_method_get_render_scene_buffers:

.. rst-class:: classref-method

:ref:`RenderSceneBuffers<class_RenderSceneBuffers>` **get_render_scene_buffers**\ (\ ) |const| :ref:`🔗<class_RenderData_method_get_render_scene_buffers>`

Returns the :ref:`RenderSceneBuffers<class_RenderSceneBuffers>` object managing the scene buffers for rendering this viewport.

.. rst-class:: classref-item-separator

----

.. _class_RenderData_method_get_render_scene_data:

.. rst-class:: classref-method

:ref:`RenderSceneData<class_RenderSceneData>` **get_render_scene_data**\ (\ ) |const| :ref:`🔗<class_RenderData_method_get_render_scene_data>`

Returns the :ref:`RenderSceneData<class_RenderSceneData>` object managing this frames scene data.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
