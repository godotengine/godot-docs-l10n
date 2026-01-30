:github_url: hide

.. _class_MeshLibrary:

MeshLibrary
===========

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

网格库。

.. rst-class:: classref-introduction-group

描述
----

网格库包含一个 :ref:`Mesh<class_Mesh>` 资源列表，每个资源都有一个名称和 ID。每个项目还可以包括碰撞和导航形状。这个资源在 :ref:`GridMap<class_GridMap>` 中使用。

.. rst-class:: classref-introduction-group

教程
----

- `3D 动力学角色演示 <https://godotengine.org/asset-library/asset/2739>`__

- `3D 平台跳跃演示 <https://godotengine.org/asset-library/asset/2748>`__

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`clear<class_MeshLibrary_method_clear>`\ (\ )                                                                                                                                                                      |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`create_item<class_MeshLibrary_method_create_item>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                                                              |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                  | :ref:`find_item_by_name<class_MeshLibrary_method_find_item_by_name>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                                                                  |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`                        | :ref:`get_item_list<class_MeshLibrary_method_get_item_list>`\ (\ ) |const|                                                                                                                                              |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Mesh<class_Mesh>`                                                | :ref:`get_item_mesh<class_MeshLibrary_method_get_item_mesh>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                                  |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ShadowCastingSetting<enum_RenderingServer_ShadowCastingSetting>` | :ref:`get_item_mesh_cast_shadow<class_MeshLibrary_method_get_item_mesh_cast_shadow>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                          |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                                  | :ref:`get_item_mesh_transform<class_MeshLibrary_method_get_item_mesh_transform>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                              |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                            | :ref:`get_item_name<class_MeshLibrary_method_get_item_name>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                                  |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                  | :ref:`get_item_navigation_layers<class_MeshLibrary_method_get_item_navigation_layers>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                        |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NavigationMesh<class_NavigationMesh>`                            | :ref:`get_item_navigation_mesh<class_MeshLibrary_method_get_item_navigation_mesh>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                            |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                                  | :ref:`get_item_navigation_mesh_transform<class_MeshLibrary_method_get_item_navigation_mesh_transform>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                        |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                                      | :ref:`get_item_preview<class_MeshLibrary_method_get_item_preview>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                            |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                              | :ref:`get_item_shapes<class_MeshLibrary_method_get_item_shapes>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                              |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                  | :ref:`get_last_unused_item_id<class_MeshLibrary_method_get_last_unused_item_id>`\ (\ ) |const|                                                                                                                          |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`remove_item<class_MeshLibrary_method_remove_item>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                                                              |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_mesh<class_MeshLibrary_method_set_item_mesh>`\ (\ id\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )                                                                                          |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_mesh_cast_shadow<class_MeshLibrary_method_set_item_mesh_cast_shadow>`\ (\ id\: :ref:`int<class_int>`, shadow_casting_setting\: :ref:`ShadowCastingSetting<enum_RenderingServer_ShadowCastingSetting>`\ ) |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_mesh_transform<class_MeshLibrary_method_set_item_mesh_transform>`\ (\ id\: :ref:`int<class_int>`, mesh_transform\: :ref:`Transform3D<class_Transform3D>`\ )                                              |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_name<class_MeshLibrary_method_set_item_name>`\ (\ id\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                                                                                      |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_navigation_layers<class_MeshLibrary_method_set_item_navigation_layers>`\ (\ id\: :ref:`int<class_int>`, navigation_layers\: :ref:`int<class_int>`\ )                                                     |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_navigation_mesh<class_MeshLibrary_method_set_item_navigation_mesh>`\ (\ id\: :ref:`int<class_int>`, navigation_mesh\: :ref:`NavigationMesh<class_NavigationMesh>`\ )                                     |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_navigation_mesh_transform<class_MeshLibrary_method_set_item_navigation_mesh_transform>`\ (\ id\: :ref:`int<class_int>`, navigation_mesh\: :ref:`Transform3D<class_Transform3D>`\ )                       |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_preview<class_MeshLibrary_method_set_item_preview>`\ (\ id\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )                                                                       |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_shapes<class_MeshLibrary_method_set_item_shapes>`\ (\ id\: :ref:`int<class_int>`, shapes\: :ref:`Array<class_Array>`\ )                                                                                  |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_MeshLibrary_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_MeshLibrary_method_clear>`

清除库。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_create_item:

.. rst-class:: classref-method

|void| **create_item**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MeshLibrary_method_create_item>`

使用给定的 ID 在库中创建一个新项。

你可以从 :ref:`get_last_unused_item_id()<class_MeshLibrary_method_get_last_unused_item_id>` 获取一个未使用的 ID。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_find_item_by_name:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_item_by_name**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_find_item_by_name>`

返回具有给定名称的第一个项目，如果未找到任何项目，则返回 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_list:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_item_list**\ (\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_list>`

返回正在使用的项目 ID 列表。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_mesh:

.. rst-class:: classref-method

:ref:`Mesh<class_Mesh>` **get_item_mesh**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_mesh>`

返回该项目的网格。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_mesh_cast_shadow:

.. rst-class:: classref-method

:ref:`ShadowCastingSetting<enum_RenderingServer_ShadowCastingSetting>` **get_item_mesh_cast_shadow**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_mesh_cast_shadow>`

返回该项的阴影投射模式。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_mesh_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_item_mesh_transform**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_mesh_transform>`

返回应用到项目网格的变换。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_item_name**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_name>`

返回该项的名称。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_navigation_layers:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_item_navigation_layers**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_navigation_layers>`

返回该项的导航层位掩码。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_navigation_mesh:

.. rst-class:: classref-method

:ref:`NavigationMesh<class_NavigationMesh>` **get_item_navigation_mesh**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_navigation_mesh>`

返回该项的导航网格。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_navigation_mesh_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_item_navigation_mesh_transform**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_navigation_mesh_transform>`

返回应用于该项导航网格的变换。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_preview:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_item_preview**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_preview>`

在编辑器中运行时，返回生成的项目预览（等轴透视中的 3D 渲染）。在一个运行的项目中使用时，返回手动定义的项目预览，该项目预览可以使用 :ref:`set_item_preview()<class_MeshLibrary_method_set_item_preview>` 设置。如果在一个运行的项目中，没有手动设置预览，则返回一个空的 :ref:`Texture2D<class_Texture2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_shapes:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_item_shapes**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_shapes>`

返回某个项目的碰撞形状。

该数组由每个 :ref:`Shape3D<class_Shape3D>` 后跟其 :ref:`Transform3D<class_Transform3D>` 组成。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_last_unused_item_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_last_unused_item_id**\ (\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_last_unused_item_id>`

获取新项未使用的 ID。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_remove_item:

.. rst-class:: classref-method

|void| **remove_item**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MeshLibrary_method_remove_item>`

删除项目。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_mesh:

.. rst-class:: classref-method

|void| **set_item_mesh**\ (\ id\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_mesh>`

设置该项的网格。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_mesh_cast_shadow:

.. rst-class:: classref-method

|void| **set_item_mesh_cast_shadow**\ (\ id\: :ref:`int<class_int>`, shadow_casting_setting\: :ref:`ShadowCastingSetting<enum_RenderingServer_ShadowCastingSetting>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_mesh_cast_shadow>`

将该项的阴影投射模式设置为 ``shadow_casting_setting``\ 。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_mesh_transform:

.. rst-class:: classref-method

|void| **set_item_mesh_transform**\ (\ id\: :ref:`int<class_int>`, mesh_transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_mesh_transform>`

设置要应用到项目网格的变换。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_name:

.. rst-class:: classref-method

|void| **set_item_name**\ (\ id\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_name>`

设置该项的名称。

这个名称会显示在编辑器中。稍后还可以使用 :ref:`find_item_by_name()<class_MeshLibrary_method_find_item_by_name>` 来查找该项。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_navigation_layers:

.. rst-class:: classref-method

|void| **set_item_navigation_layers**\ (\ id\: :ref:`int<class_int>`, navigation_layers\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_navigation_layers>`

设置该项的导航层位掩码。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_navigation_mesh:

.. rst-class:: classref-method

|void| **set_item_navigation_mesh**\ (\ id\: :ref:`int<class_int>`, navigation_mesh\: :ref:`NavigationMesh<class_NavigationMesh>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_navigation_mesh>`

设置该项的导航网格。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_navigation_mesh_transform:

.. rst-class:: classref-method

|void| **set_item_navigation_mesh_transform**\ (\ id\: :ref:`int<class_int>`, navigation_mesh\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_navigation_mesh_transform>`

设置应用于该项的导航网格的变换。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_preview:

.. rst-class:: classref-method

|void| **set_item_preview**\ (\ id\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_preview>`

在编辑器中设置要用作该项预览图标的纹理。

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_shapes:

.. rst-class:: classref-method

|void| **set_item_shapes**\ (\ id\: :ref:`int<class_int>`, shapes\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_shapes>`

设置某个项目的碰撞形状。

该数组应由 :ref:`Shape3D<class_Shape3D>` 对象组成，每个对象后跟一个将应用于它的 :ref:`Transform3D<class_Transform3D>`\ 。对于不应具有变换的形状，请使用 :ref:`Transform3D.IDENTITY<class_Transform3D_constant_IDENTITY>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
