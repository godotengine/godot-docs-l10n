:github_url: hide

.. _class_OpenXRSpatialComponentMesh2DList:

OpenXRSpatialComponentMesh2DList
================================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Objeto para almacenar los datos del resultado de malla 2D de las consultas.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Objeto para almacenar los datos del resultado de la malla 2D de las consultas al llamar a :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Descripciones de Métodos
------------------------------------------------

.. _class_OpenXRSpatialComponentMesh2DList_method_get_indices:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_indices**\ (\ snapshot\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentMesh2DList_method_get_indices>`

Devuelve los índices de malla para la entidad en este ``index``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentMesh2DList_method_get_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_transform**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentMesh2DList_method_get_transform>`

Devuelve la transformación para posicionar nuestra malla para la entidad en este ``index``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentMesh2DList_method_get_vertices:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_vertices**\ (\ snapshot\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentMesh2DList_method_get_vertices>`

Devuelve los vértices de la malla para la entidad en este ``index``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
