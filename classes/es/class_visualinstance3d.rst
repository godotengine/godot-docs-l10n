:github_url: hide

.. _class_VisualInstance3D:

VisualInstance3D
================

**Hereda:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`Decal<class_Decal>`, :ref:`FogVolume<class_FogVolume>`, :ref:`GeometryInstance3D<class_GeometryInstance3D>`, :ref:`GPUParticlesAttractor3D<class_GPUParticlesAttractor3D>`, :ref:`GPUParticlesCollision3D<class_GPUParticlesCollision3D>`, :ref:`Light3D<class_Light3D>`, :ref:`LightmapGI<class_LightmapGI>`, :ref:`OccluderInstance3D<class_OccluderInstance3D>`, :ref:`OpenXRVisibilityMask<class_OpenXRVisibilityMask>`, :ref:`ReflectionProbe<class_ReflectionProbe>`, :ref:`RootMotionView<class_RootMotionView>`, :ref:`VisibleOnScreenNotifier3D<class_VisibleOnScreenNotifier3D>`, :ref:`VoxelGI<class_VoxelGI>`

Padre de todos los nodos visuales 3D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

La **VisualInstance3D** se utiliza para conectar un recurso a una representación visual. Todos los nodos visuales 3D heredan de **VisualInstance3D**. En general, no debes acceder directamente a las propiedades de **VisualInstance3D** ya que son accedidas y gestionadas por los nodos que heredan de **VisualInstance3D**. **VisualInstance3D** es la representación del nodo de la instancia :ref:`RenderingServer<class_RenderingServer>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`layers<class_VisualInstance3D_property_layers>`                                   | ``1``   |
   +---------------------------+-----------------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`sorting_offset<class_VisualInstance3D_property_sorting_offset>`                   | ``0.0`` |
   +---------------------------+-----------------------------------------------------------------------------------------+---------+
   | :ref:`bool<class_bool>`   | :ref:`sorting_use_aabb_center<class_VisualInstance3D_property_sorting_use_aabb_center>` |         |
   +---------------------------+-----------------------------------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`_get_aabb<class_VisualInstance3D_private_method__get_aabb>`\ (\ ) |virtual| |const|                                                                    |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`get_aabb<class_VisualInstance3D_method_get_aabb>`\ (\ ) |const|                                                                                        |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_base<class_VisualInstance3D_method_get_base>`\ (\ ) |const|                                                                                        |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_instance<class_VisualInstance3D_method_get_instance>`\ (\ ) |const|                                                                                |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_layer_mask_value<class_VisualInstance3D_method_get_layer_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_base<class_VisualInstance3D_method_set_base>`\ (\ base\: :ref:`RID<class_RID>`\ )                                                                  |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_layer_mask_value<class_VisualInstance3D_method_set_layer_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VisualInstance3D_property_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **layers** = ``1`` :ref:`🔗<class_VisualInstance3D_property_layers>`

.. rst-class:: classref-property-setget

- |void| **set_layer_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_layer_mask**\ (\ )

Las capas de renderizado en las que se dibuja este **VisualInstance3D**.

Este objeto solo será visible para las :ref:`Camera3D<class_Camera3D>`\ s cuya máscara de eliminación incluya cualquiera de las capas de renderizado a las que esté establecido este **VisualInstance3D**.

Para :ref:`Light3D<class_Light3D>`\ s, esto se puede utilizar para controlar qué **VisualInstance3D**\ s se ven afectados por una luz específica. Para :ref:`GPUParticles3D<class_GPUParticles3D>`, esto se puede utilizar para controlar qué partículas se ven afectadas por un atractor específico. Para :ref:`Decal<class_Decal>`\ s, esto se puede utilizar para controlar qué **VisualInstance3D**\ s se ven afectados por un decal específico.

Para ajustar :ref:`layers<class_VisualInstance3D_property_layers>` más fácilmente usando un script, utiliza :ref:`get_layer_mask_value()<class_VisualInstance3D_method_get_layer_mask_value>` y :ref:`set_layer_mask_value()<class_VisualInstance3D_method_set_layer_mask_value>`.

\ **Nota:** :ref:`VoxelGI<class_VoxelGI>`, SDFGI y :ref:`LightmapGI<class_LightmapGI>` siempre tendrán en cuenta todas las capas para determinar qué contribuye a la iluminación global. Si esto es un problema, establece :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` a :ref:`GeometryInstance3D.GI_MODE_DISABLED<class_GeometryInstance3D_constant_GI_MODE_DISABLED>` para las mallas y :ref:`Light3D.light_bake_mode<class_Light3D_property_light_bake_mode>` a :ref:`Light3D.BAKE_DISABLED<class_Light3D_constant_BAKE_DISABLED>` para las luces para excluirlas de la iluminación global.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_property_sorting_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **sorting_offset** = ``0.0`` :ref:`🔗<class_VisualInstance3D_property_sorting_offset>`

.. rst-class:: classref-property-setget

- |void| **set_sorting_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sorting_offset**\ (\ )

Cantidad en la que se ajustará la profundidad de esta **VisualInstance3D** al ordenar por profundidad. Utiliza las mismas unidades que el motor (que suelen ser metros). Ajustarlo a un valor más alto hará que la **VisualInstance3D** se dibuje de forma fiable por encima de otras **VisualInstance3D** que de otro modo estén situadas en el mismo punto. Para asegurar que siempre se dibuje encima de otros objetos a su alrededor (no situados en el mismo punto), establece el valor para que sea mayor que la distancia entre esta **VisualInstance3D** y las otras **VisualInstance3D** cercanas.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_property_sorting_use_aabb_center:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sorting_use_aabb_center** :ref:`🔗<class_VisualInstance3D_property_sorting_use_aabb_center>`

.. rst-class:: classref-property-setget

- |void| **set_sorting_use_aabb_center**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_sorting_use_aabb_center**\ (\ )

Si es ``true``, el objeto se ordena según el centro :ref:`AABB<class_AABB>`. El objeto se ordenará según la posición global en caso contrario.

La ordenación basada en el centro :ref:`AABB<class_AABB>` suele ser más precisa para los modelos 3D. La ordenación basada en la posición, en cambio, permite controlar mejor el orden de dibujado cuando se trabaja con :ref:`GPUParticles3D<class_GPUParticles3D>` y :ref:`CPUParticles3D<class_CPUParticles3D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_VisualInstance3D_private_method__get_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **_get_aabb**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualInstance3D_private_method__get_aabb>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_get_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **get_aabb**\ (\ ) |const| :ref:`🔗<class_VisualInstance3D_method_get_aabb>`

Devuelve el :ref:`AABB<class_AABB>` (también conocido como el cuadro delimitador) para este **VisualInstance3D**.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_get_base:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_base**\ (\ ) |const| :ref:`🔗<class_VisualInstance3D_method_get_base>`

Devuelve el RID del recurso asociado con este **VisualInstance3D**. Por ejemplo, si el Nodo es un :ref:`MeshInstance3D<class_MeshInstance3D>`, esto devolverá el RID de la :ref:`Mesh<class_Mesh>` asociada.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_get_instance:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_instance**\ (\ ) |const| :ref:`🔗<class_VisualInstance3D_method_get_instance>`

Devuelve el RID de esta instancia. Este RID es el mismo que el RID devuelto por :ref:`RenderingServer.instance_create()<class_RenderingServer_method_instance_create>`. Este RID es necesario si quieres llamar a las funciones de :ref:`RenderingServer<class_RenderingServer>` directamente en este **VisualInstance3D**.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_get_layer_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_layer_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualInstance3D_method_get_layer_mask_value>`

Devuelve si la capa especificada de :ref:`layers<class_VisualInstance3D_property_layers>` está activada o no, dado un ``layer_number`` entre 1 y 20.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_set_base:

.. rst-class:: classref-method

|void| **set_base**\ (\ base\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_VisualInstance3D_method_set_base>`

Establece el recurso que es instanciado por este **VisualInstance3D**, lo cual cambia la forma en que el motor maneja el **VisualInstance3D** internamente. Equivalente a :ref:`RenderingServer.instance_set_base()<class_RenderingServer_method_instance_set_base>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_set_layer_mask_value:

.. rst-class:: classref-method

|void| **set_layer_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_VisualInstance3D_method_set_layer_mask_value>`

Basado en ``value``, activa o desactiva la capa especificada en :ref:`layers<class_VisualInstance3D_property_layers>`, dado un ``layer_number`` entre 1 y 20.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
