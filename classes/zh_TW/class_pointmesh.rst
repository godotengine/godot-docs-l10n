:github_url: hide

.. _class_PointMesh:

PointMesh
=========

**繼承：** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Mesh with a single point primitive.

.. rst-class:: classref-introduction-group

說明
----

A **PointMesh** is a primitive mesh composed of a single point. Instead of relying on triangles, points are rendered as a single rectangle on the screen with a constant size. They are intended to be used with particle systems, but can also be used as a cheap way to render billboarded sprites (for example in a point cloud).

In order to be displayed, point meshes must be used with a material that has a point size. The point size can be accessed in a shader with the ``POINT_SIZE`` built-in, or in a :ref:`BaseMaterial3D<class_BaseMaterial3D>` by setting the :ref:`BaseMaterial3D.use_point_size<class_BaseMaterial3D_property_use_point_size>` and :ref:`BaseMaterial3D.point_size<class_BaseMaterial3D_property_point_size>` properties.

\ **Note:** When using point meshes, properties that normally affect vertices will be ignored, including :ref:`BaseMaterial3D.billboard_mode<class_BaseMaterial3D_property_billboard_mode>`, :ref:`BaseMaterial3D.grow<class_BaseMaterial3D_property_grow>`, and :ref:`BaseMaterial3D.cull_mode<class_BaseMaterial3D_property_cull_mode>`.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
