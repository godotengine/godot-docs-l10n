:github_url: hide

.. _class_OccluderInstance3D:

OccluderInstance3D
==================

**Hereda:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Provides occlusion culling for 3D nodes, which improves performance in closed areas.

.. rst-class:: classref-introduction-group

Descripción
----------------------

El occlusion culling puede mejorar el rendimiento del renderizado en zonas cerradas o semiabiertas al ocultar la geometría que queda tapada por otros objetos.

El sistema de occlusion culling es principalmente estático. Los nodos **OccluderInstance3D** se pueden mover u ocultar durante la ejecución, pero hacerlo provocará un nuevo cálculo en segundo plano que puede tardar varios fotogramas. Se recomienda mover los nodos **OccluderInstance3D** solo de forma ocasional (por ejemplo, para la generación procedural), en lugar de hacerlo en cada fotograma.

El sistema de occlusion culling funciona renderizando los oclusores en la CPU en paralelo mediante `Embree <https://www.embree.org/>`__ y dibujando el resultado en un búfer de baja resolución. Después, utiliza este búfer para descartar individualmente los nodos 3D que no deben renderizarse. En el editor 3D, puedes previsualizar el búfer de occlusion culling seleccionando **Perspectiva > Visualización avanzada... > Búfer de occlusion culling** en la esquina superior izquierda del viewport 3D. La calidad del búfer de occlusion culling se puede ajustar en la configuración del proyecto.

\ **Bake:** Selecciona un nodo **OccluderInstance3D** y, a continuación, utiliza el botón **Procesar oclusores** situado en la parte superior del editor 3D. Solo se tendrán en cuenta los materiales opacos; los materiales transparentes (con mezcla alfa o prueba alfa) se ignorarán durante la generación de oclusores.

\ **Nota:** El occlusion culling solo es efectivo si :ref:`ProjectSettings.rendering/occlusion_culling/use_occlusion_culling<class_ProjectSettings_property_rendering/occlusion_culling/use_occlusion_culling>` está establecido en ``true``. Activar el occlusion culling supone un coste para la CPU. Actívalo únicamente si realmente tienes previsto utilizarlo. Por lo general, las escenas grandes y abiertas con pocos objetos que bloqueen la vista, o ninguno, no se beneficiarán demasiado del occlusion culling. Las escenas grandes y abiertas suelen beneficiarse más del LOD de malla y de los rangos de visibilidad (:ref:`GeometryInstance3D.visibility_range_begin<class_GeometryInstance3D_property_visibility_range_begin>` y :ref:`GeometryInstance3D.visibility_range_end<class_GeometryInstance3D_property_visibility_range_end>`) que del occlusion culling.

\ **Nota:** Debido a las limitaciones de memoria, el occlusion culling no está habilitado de forma predeterminada en las plantillas de exportación para Web. Se puede habilitar compilando plantillas de exportación personalizadas para Web con ``module_raycast_enabled=yes``.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Occlusion Culling <../tutorials/3d/occlusion_culling>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------+----------------+
   | :ref:`int<class_int>`               | :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>`                                       | ``4294967295`` |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>`           | :ref:`bake_simplification_distance<class_OccluderInstance3D_property_bake_simplification_distance>` | ``0.1``        |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------+----------------+
   | :ref:`Occluder3D<class_Occluder3D>` | :ref:`occluder<class_OccluderInstance3D_property_occluder>`                                         |                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------+----------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_bake_mask_value<class_OccluderInstance3D_method_get_bake_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_bake_mask_value<class_OccluderInstance3D_method_set_bake_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_OccluderInstance3D_property_bake_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **bake_mask** = ``4294967295`` :ref:`🔗<class_OccluderInstance3D_property_bake_mask>`

.. rst-class:: classref-property-setget

- |void| **set_bake_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bake_mask**\ (\ )

The visual layers to account for when baking for occluders. Only :ref:`MeshInstance3D<class_MeshInstance3D>`\ s whose :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>` match with this :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>` will be included in the generated occluder mesh. By default, all objects with *opaque* materials are taken into account for the occluder baking.

To improve performance and avoid artifacts, it is recommended to exclude dynamic objects, small objects and fixtures from the baking process by moving them to a separate visual layer and excluding this layer in :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>`.

.. rst-class:: classref-item-separator

----

.. _class_OccluderInstance3D_property_bake_simplification_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **bake_simplification_distance** = ``0.1`` :ref:`🔗<class_OccluderInstance3D_property_bake_simplification_distance>`

.. rst-class:: classref-property-setget

- |void| **set_bake_simplification_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bake_simplification_distance**\ (\ )

The simplification distance to use for simplifying the generated occluder polygon (in 3D units). Higher values result in a less detailed occluder mesh, which improves performance but reduces culling accuracy.

The occluder geometry is rendered on the CPU, so it is important to keep its geometry as simple as possible. Since the buffer is rendered at a low resolution, less detailed occluder meshes generally still work well. The default value is fairly aggressive, so you may have to decrease it if you run into false negatives (objects being occluded even though they are visible by the camera). A value of ``0.01`` will act conservatively, and will keep geometry *perceptually* unaffected in the occlusion culling buffer. Depending on the scene, a value of ``0.01`` may still simplify the mesh noticeably compared to disabling simplification entirely.

Setting this to ``0.0`` disables simplification entirely, but vertices in the exact same position will still be merged. The mesh will also be re-indexed to reduce both the number of vertices and indices.

\ **Note:** This uses the `meshoptimizer <https://meshoptimizer.org/>`__ library under the hood, similar to LOD generation.

.. rst-class:: classref-item-separator

----

.. _class_OccluderInstance3D_property_occluder:

.. rst-class:: classref-property

:ref:`Occluder3D<class_Occluder3D>` **occluder** :ref:`🔗<class_OccluderInstance3D_property_occluder>`

.. rst-class:: classref-property-setget

- |void| **set_occluder**\ (\ value\: :ref:`Occluder3D<class_Occluder3D>`\ )
- :ref:`Occluder3D<class_Occluder3D>` **get_occluder**\ (\ )

The occluder resource for this **OccluderInstance3D**. You can generate an occluder resource by selecting an **OccluderInstance3D** node then using the **Bake Occluders** button at the top of the editor.

You can also draw your own 2D occluder polygon by adding a new :ref:`PolygonOccluder3D<class_PolygonOccluder3D>` resource to the :ref:`occluder<class_OccluderInstance3D_property_occluder>` property in the Inspector.

Alternatively, you can select a primitive occluder to use: :ref:`QuadOccluder3D<class_QuadOccluder3D>`, :ref:`BoxOccluder3D<class_BoxOccluder3D>` or :ref:`SphereOccluder3D<class_SphereOccluder3D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_OccluderInstance3D_method_get_bake_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_bake_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OccluderInstance3D_method_get_bake_mask_value>`

Devuelve si la capa especificada de :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>` está habilitada, dado un ``layer_number`` entre 1 y 32.

.. rst-class:: classref-item-separator

----

.. _class_OccluderInstance3D_method_set_bake_mask_value:

.. rst-class:: classref-method

|void| **set_bake_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_OccluderInstance3D_method_set_bake_mask_value>`

Basado en ``value``, habilita o deshabilita la capa especificada en el :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>`, dado un ``layer_number`` entre 1 y 32.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
