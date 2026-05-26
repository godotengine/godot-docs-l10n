:github_url: hide

.. _class_VoxelGIData:

VoxelGIData
===========

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Contiene datos procesados de iluminación global de vóxeles para usar en un nodo :ref:`VoxelGI<class_VoxelGI>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**VoxelGIData** contiene datos procesados de iluminación global de vóxeles para usar en un nodo :ref:`VoxelGI<class_VoxelGI>`. **VoxelGIData** también ofrece varias propiedades para ajustar la apariencia final de la iluminación global. Estas propiedades se pueden ajustar en tiempo de ejecución sin tener que volver a procesar el nodo :ref:`VoxelGI<class_VoxelGI>`.

\ **Nota:** Para evitar que los archivos de escena basados en texto (``.tscn``) crezcan demasiado y se vuelvan lentos de cargar y guardar, guarda siempre **VoxelGIData** en un archivo de recursos binario externo (``.res``) en lugar de incrustarlo dentro de la escena. Esto se puede hacer haciendo clic en la flecha desplegable junto al recurso **VoxelGIData**, eligiendo **Editar**, haciendo clic en el icono del disquete en la parte superior del Inspector y luego eligiendo **Guardar como...**.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Demo de Shooter en Tercera Persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`bias<class_VoxelGIData_property_bias>`                       | ``1.5``   |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dynamic_range<class_VoxelGIData_property_dynamic_range>`     | ``2.0``   |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`energy<class_VoxelGIData_property_energy>`                   | ``1.0``   |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`interior<class_VoxelGIData_property_interior>`               | ``false`` |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`normal_bias<class_VoxelGIData_property_normal_bias>`         | ``0.0``   |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`propagation<class_VoxelGIData_property_propagation>`         | ``0.5``   |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`use_two_bounces<class_VoxelGIData_property_use_two_bounces>` | ``true``  |
   +---------------------------+--------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`allocate<class_VoxelGIData_method_allocate>`\ (\ to_cell_xform\: :ref:`Transform3D<class_Transform3D>`, aabb\: :ref:`AABB<class_AABB>`, octree_size\: :ref:`Vector3<class_Vector3>`, octree_cells\: :ref:`PackedByteArray<class_PackedByteArray>`, data_cells\: :ref:`PackedByteArray<class_PackedByteArray>`, distance_field\: :ref:`PackedByteArray<class_PackedByteArray>`, level_counts\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`                         | :ref:`get_bounds<class_VoxelGIData_method_get_bounds>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                   |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`   | :ref:`get_data_cells<class_VoxelGIData_method_get_data_cells>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                           |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`get_level_counts<class_VoxelGIData_method_get_level_counts>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                       |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`   | :ref:`get_octree_cells<class_VoxelGIData_method_get_octree_cells>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                       |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`get_octree_size<class_VoxelGIData_method_get_octree_size>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                         |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`           | :ref:`get_to_cell_xform<class_VoxelGIData_method_get_to_cell_xform>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                     |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VoxelGIData_property_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **bias** = ``1.5`` :ref:`🔗<class_VoxelGIData_property_bias>`

.. rst-class:: classref-property-setget

- |void| **set_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bias**\ (\ )

El sesgo normal que se utilizará para la iluminación indirecta y los reflejos. Los valores más altos reducen los autorreflejos visibles en materiales no rugosos, a costa de una mayor fuga de luz visible y una iluminación indirecta de aspecto más plano. Para priorizar el ocultamiento de los autorreflejos sobre la calidad de la iluminación, establece :ref:`bias<class_VoxelGIData_property_bias>` en ``0.0`` y :ref:`normal_bias<class_VoxelGIData_property_normal_bias>` en un valor entre ``1.0`` y ``2.0``.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_dynamic_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **dynamic_range** = ``2.0`` :ref:`🔗<class_VoxelGIData_property_dynamic_range>`

.. rst-class:: classref-property-setget

- |void| **set_dynamic_range**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dynamic_range**\ (\ )

El rango dinámico que se utilizará (``1.0`` representa un brillo de escena de bajo rango dinámico). Se pueden usar valores más altos para proporcionar una iluminación indirecta más brillante, a costa de bandas de color más visibles en áreas oscuras (tanto en la iluminación indirecta como en los reflejos). Para evitar las bandas de color, se recomienda usar el valor más bajo que no provoque el recorte visible de la luz.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **energy** = ``1.0`` :ref:`🔗<class_VoxelGIData_property_energy>`

.. rst-class:: classref-property-setget

- |void| **set_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_energy**\ (\ )

La energía de la iluminación indirecta y los reflejos producidos por el nodo :ref:`VoxelGI<class_VoxelGI>`. Los valores más altos dan como resultado una iluminación indirecta más brillante. Si la iluminación indirecta se ve demasiado plana, intenta disminuir :ref:`propagation<class_VoxelGIData_property_propagation>` mientras aumentas :ref:`energy<class_VoxelGIData_property_energy>` al mismo tiempo. Véase también :ref:`use_two_bounces<class_VoxelGIData_property_use_two_bounces>`, que influye en el brillo efectivo de la iluminación indirecta.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_interior:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interior** = ``false`` :ref:`🔗<class_VoxelGIData_property_interior>`

.. rst-class:: classref-property-setget

- |void| **set_interior**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_interior**\ (\ )

Si es ``true``, la iluminación :ref:`Environment<class_Environment>` es ignorada por el nodo :ref:`VoxelGI<class_VoxelGI>`. Si es ``false``, la iluminación :ref:`Environment<class_Environment>` es tomada en cuenta por el nodo :ref:`VoxelGI<class_VoxelGI>`. La iluminación :ref:`Environment<class_Environment>` se actualiza en tiempo real, lo que significa que se puede cambiar sin tener que volver a procesar el nodo :ref:`VoxelGI<class_VoxelGI>`.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_normal_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **normal_bias** = ``0.0`` :ref:`🔗<class_VoxelGIData_property_normal_bias>`

.. rst-class:: classref-property-setget

- |void| **set_normal_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_normal_bias**\ (\ )

El sesgo normal que se utilizará para la iluminación indirecta y los reflejos. Los valores más altos reducen los autorreflejos visibles en materiales no rugosos, a costa de una mayor fuga de luz visible y una iluminación indirecta de aspecto más plano. Véase también :ref:`bias<class_VoxelGIData_property_bias>`. Para priorizar el ocultamiento de los autorreflejos sobre la calidad de la iluminación, establece :ref:`bias<class_VoxelGIData_property_bias>` en ``0.0`` y :ref:`normal_bias<class_VoxelGIData_property_normal_bias>` en un valor entre ``1.0`` y ``2.0``.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_propagation:

.. rst-class:: classref-property

:ref:`float<class_float>` **propagation** = ``0.5`` :ref:`🔗<class_VoxelGIData_property_propagation>`

.. rst-class:: classref-property-setget

- |void| **set_propagation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_propagation**\ (\ )

El multiplicador que se utilizará cuando la luz rebote en una superficie. Los valores más altos dan como resultado una iluminación indirecta más brillante. Si la iluminación indirecta se ve demasiado plana, intenta disminuir :ref:`propagation<class_VoxelGIData_property_propagation>` mientras aumentas :ref:`energy<class_VoxelGIData_property_energy>` al mismo tiempo. Véase también :ref:`use_two_bounces<class_VoxelGIData_property_use_two_bounces>`, que influye en el brillo efectivo de la iluminación indirecta.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_use_two_bounces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_two_bounces** = ``true`` :ref:`🔗<class_VoxelGIData_property_use_two_bounces>`

.. rst-class:: classref-property-setget

- |void| **set_use_two_bounces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_two_bounces**\ (\ )

Si es ``true``, realiza dos rebotes de iluminación indirecta en lugar de uno. Esto hace que la iluminación indirecta se vea más natural y brillante con un pequeño coste de rendimiento. El segundo rebote también es visible en los reflejos. Si la escena aparece demasiado brillante después de habilitar :ref:`use_two_bounces<class_VoxelGIData_property_use_two_bounces>`, ajusta :ref:`propagation<class_VoxelGIData_property_propagation>` y :ref:`energy<class_VoxelGIData_property_energy>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_VoxelGIData_method_allocate:

.. rst-class:: classref-method

|void| **allocate**\ (\ to_cell_xform\: :ref:`Transform3D<class_Transform3D>`, aabb\: :ref:`AABB<class_AABB>`, octree_size\: :ref:`Vector3<class_Vector3>`, octree_cells\: :ref:`PackedByteArray<class_PackedByteArray>`, data_cells\: :ref:`PackedByteArray<class_PackedByteArray>`, distance_field\: :ref:`PackedByteArray<class_PackedByteArray>`, level_counts\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_VoxelGIData_method_allocate>`

Initializes this **VoxelGIData** with the specified data. ``octree_cells`` must be a multiple of 32. ``octree_cells`` must be double the size of ``data_cells``. The allocated data can be retrieved later using the various getter methods.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_bounds:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **get_bounds**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_bounds>`

Devuelve los límites de los datos de vóxeles procesados como un :ref:`AABB<class_AABB>`, que debe coincidir con :ref:`VoxelGI.size<class_VoxelGI_property_size>` después de ser procesado (que solo contiene el tamaño como un :ref:`Vector3<class_Vector3>`).

\ **Nota:** Si el tamaño se modificó sin procesar los datos de VoxelGI, entonces el valor de :ref:`get_bounds()<class_VoxelGIData_method_get_bounds>` y :ref:`VoxelGI.size<class_VoxelGI_property_size>` no coincidirán.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_data_cells:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **get_data_cells**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_data_cells>`

Returns the baked cell data for this **VoxelGIData**.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_level_counts:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_level_counts**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_level_counts>`

Returns the baked level counts for this **VoxelGIData**.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_octree_cells:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **get_octree_cells**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_octree_cells>`

Returns the baked octree cell data for this **VoxelGIData**.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_octree_size:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_octree_size**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_octree_size>`

Returns the baked octree size for this **VoxelGIData**, which corresponds to the number of subdivisions per axis. This can be viewed in the editor by hovering the **Bake VoxelGI** button at the top of the 3D editor viewport when a :ref:`VoxelGI<class_VoxelGI>` node is selected and looking at the **Subdivisions** field in the tooltip.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_to_cell_xform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_to_cell_xform**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_to_cell_xform>`

Returns the baked cell transform for this **VoxelGIData**.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
