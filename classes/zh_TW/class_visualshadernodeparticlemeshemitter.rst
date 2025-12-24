:github_url: hide

.. _class_VisualShaderNodeParticleMeshEmitter:

VisualShaderNodeParticleMeshEmitter
===================================

**繼承：** :ref:`VisualShaderNodeParticleEmitter<class_VisualShaderNodeParticleEmitter>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

讓粒子從由 :ref:`Mesh<class_Mesh>` 定義的形狀中發射的視覺化著色器節點。

.. rst-class:: classref-introduction-group

說明
----

讓粒子由分配的 :ref:`mesh<class_VisualShaderNodeParticleMeshEmitter_property_mesh>` 的形狀中發射的 :ref:`VisualShaderNodeParticleEmitter<class_VisualShaderNodeParticleEmitter>`\ 。它將從網格的表面發射，可以是全部表面，也可以是某個指定的表面。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`Mesh<class_Mesh>` | :ref:`mesh<class_VisualShaderNodeParticleMeshEmitter_property_mesh>`                         |          |
   +-------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`   | :ref:`surface_index<class_VisualShaderNodeParticleMeshEmitter_property_surface_index>`       | ``0``    |
   +-------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`use_all_surfaces<class_VisualShaderNodeParticleMeshEmitter_property_use_all_surfaces>` | ``true`` |
   +-------------------------+----------------------------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeParticleMeshEmitter_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_VisualShaderNodeParticleMeshEmitter_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

定義發射形狀的 :ref:`Mesh<class_Mesh>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeParticleMeshEmitter_property_surface_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **surface_index** = ``0`` :ref:`🔗<class_VisualShaderNodeParticleMeshEmitter_property_surface_index>`

.. rst-class:: classref-property-setget

- |void| **set_surface_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_surface_index**\ (\ )

發射粒子的表面的索引。\ :ref:`use_all_surfaces<class_VisualShaderNodeParticleMeshEmitter_property_use_all_surfaces>` 必須為 ``false`` 才能生效。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeParticleMeshEmitter_property_use_all_surfaces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_all_surfaces** = ``true`` :ref:`🔗<class_VisualShaderNodeParticleMeshEmitter_property_use_all_surfaces>`

.. rst-class:: classref-property-setget

- |void| **set_use_all_surfaces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_use_all_surfaces**\ (\ )

如果為 ``true``\ ，則粒子會從該網格的所有表面上發射。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
