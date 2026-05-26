:github_url: hide

.. _class_OpenXRSpatialComponentMesh2DList:

OpenXRSpatialComponentMesh2DList
================================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于存储查询 mesh2d 结果数据的对象。

.. rst-class:: classref-introduction-group

描述
----

用于存储调用 :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>` 时查询到的 2D 网格结果数据的对象。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`get_indices<class_OpenXRSpatialComponentMesh2DList_method_get_indices>`\ (\ snapshot\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const|   |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`get_transform<class_OpenXRSpatialComponentMesh2DList_method_get_transform>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                 |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`get_vertices<class_OpenXRSpatialComponentMesh2DList_method_get_vertices>`\ (\ snapshot\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const| |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OpenXRSpatialComponentMesh2DList_method_get_indices:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_indices**\ (\ snapshot\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentMesh2DList_method_get_indices>`

返回该 ``index`` 处实体的网格索引。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentMesh2DList_method_get_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_transform**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentMesh2DList_method_get_transform>`

返回用于定位该 ``index`` 处实体的网格的变换。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentMesh2DList_method_get_vertices:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_vertices**\ (\ snapshot\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentMesh2DList_method_get_vertices>`

返回该 ``index`` 处实体的网格顶点。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
