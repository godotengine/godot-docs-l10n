:github_url: hide

.. _class_ResourceImporterOBJ:

ResourceImporterOBJ
===================

**Hereda:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Importa un modelo 3D OBJ como una :ref:`Mesh<class_Mesh>` independiente o como una escena.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A diferencia de :ref:`ResourceImporterScene<class_ResourceImporterScene>`, **ResourceImporterOBJ** importará un solo recurso :ref:`Mesh<class_Mesh>` por defecto en lugar de importar una :ref:`PackedScene<class_PackedScene>`. Esto hace que sea más fácil usar el recurso :ref:`Mesh<class_Mesh>` en nodos que esperan recursos :ref:`Mesh<class_Mesh>` directos, como :ref:`GridMap<class_GridMap>`, :ref:`GPUParticles3D<class_GPUParticles3D>` o :ref:`CPUParticles3D<class_CPUParticles3D>`. Ten en cuenta que todavía es posible guardar los recursos de la malla de las escenas 3D usando el **Configuración avanzada de importación** diálogo, independientemente del formato de origen.

Véase también :ref:`ResourceImporterScene<class_ResourceImporterScene>`, que se utiliza para formatos 3D más avanzados como glTF.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Importar escenas 3D <../tutorials/assets_pipeline/importing_3d_scenes/index>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`force_disable_mesh_compression<class_ResourceImporterOBJ_property_force_disable_mesh_compression>`     | ``false``            |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`generate_lightmap_uv2<class_ResourceImporterOBJ_property_generate_lightmap_uv2>`                       | ``false``            |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`generate_lightmap_uv2_texel_size<class_ResourceImporterOBJ_property_generate_lightmap_uv2_texel_size>` | ``0.2``              |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`generate_lods<class_ResourceImporterOBJ_property_generate_lods>`                                       | ``true``             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`generate_shadow_mesh<class_ResourceImporterOBJ_property_generate_shadow_mesh>`                         | ``true``             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`generate_tangents<class_ResourceImporterOBJ_property_generate_tangents>`                               | ``true``             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`offset_mesh<class_ResourceImporterOBJ_property_offset_mesh>`                                           | ``Vector3(0, 0, 0)`` |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`scale_mesh<class_ResourceImporterOBJ_property_scale_mesh>`                                             | ``Vector3(1, 1, 1)`` |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ResourceImporterOBJ_property_force_disable_mesh_compression:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force_disable_mesh_compression** = ``false`` :ref:`🔗<class_ResourceImporterOBJ_property_force_disable_mesh_compression>`

Si es ``true``, la compresión de la malla no se utilizará. Considera activar esta opción si observas artefactos de bloques en tus normales de malla o UV, o si tienes mallas que son más grandes que unos pocos miles de metros en cada dirección.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_lightmap_uv2:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_lightmap_uv2** = ``false`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_lightmap_uv2>`

Si es ``true``, genera UV2 al importar para el baking de :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_lightmap_uv2_texel_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **generate_lightmap_uv2_texel_size** = ``0.2`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_lightmap_uv2_texel_size>`

Controla el tamaño de cada texel en el lightmap procesado. Un valor más pequeño da como resultado lightmaps más precisos, a costa de tamaños de lightmaps más grandes y tiempos de procesado más largos.

\ **Nota:** Solo es efectivo si :ref:`generate_lightmap_uv2<class_ResourceImporterOBJ_property_generate_lightmap_uv2>` es ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_lods:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_lods** = ``true`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_lods>`

Si es ``true``, genera variantes de menor detalle de la malla que se mostrarán en la distancia para mejorar el rendimiento del renderizado. No todas las mallas se benefician de LOD, especialmente si nunca se renderizan desde lejos. Deshabilitar esto puede reducir el tamaño del archivo de salida y acelerar la importación. Véase `Nivel de detalle de la malla (LOD) <../tutorials/3d/mesh_lod.html#doc-mesh-lod>`__ para obtener más información.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_shadow_mesh:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_shadow_mesh** = ``true`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_shadow_mesh>`

Si es ``true``, habilita la generación de mallas de sombra en la importación. Esto optimiza el renderizado de sombras sin reducir la calidad soldando los vértices juntos cuando sea posible. Esto a su vez reduce el ancho de banda de memoria requerido para renderizar las sombras. La generación de mallas de sombra actualmente no admite el uso de un nivel de detalle más bajo que la malla de origen (pero el renderizado de sombras hará uso de los LOD cuando sea relevante).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_tangents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_tangents** = ``true`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_tangents>`

If ``true``, generate vertex tangents using `Mikktspace <http://www.mikktspace.com/>`__ if the source mesh doesn't have tangent data. When possible, it's recommended to let the 3D modeling software generate tangents on export instead of relying on this option. Tangents are required for correct display of normal and height maps, along with any material/shader features that require tangents.

If you don't need material features that require tangents, disabling this can reduce output file size and speed up importing if the source 3D file doesn't contain tangents.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_offset_mesh:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **offset_mesh** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_ResourceImporterOBJ_property_offset_mesh>`

Desplaza los datos de la malla por el valor especificado. Esto se puede utilizar para solucionar mallas desalineadas sin tener que modificar el archivo de origen.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_scale_mesh:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **scale_mesh** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_ResourceImporterOBJ_property_scale_mesh>`

Escala los datos de la malla según el valor especificado. Esto permite solucionar mallas mal escaladas sin necesidad de modificar el archivo fuente.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
