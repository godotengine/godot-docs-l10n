:github_url: hide

.. _class_ResourceImporterScene:

ResourceImporterScene
=====================

**Hereda:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Importa una escena 3D glTF, FBX, COLLADA o de Blender.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Véase también :ref:`ResourceImporterOBJ<class_ResourceImporterOBJ>`, que se utiliza para los modelos OBJ que se pueden importar como una :ref:`Mesh<class_Mesh>` independiente o una escena.

Las opciones adicionales (como extraer mallas o materiales individuales a archivos) están disponibles en el diálogo **Configuración avanzada de importación**. Este diálogo se puede acceder haciendo doble clic en una escena 3D en el dock FileSystem o seleccionando una escena 3D en el dock FileSystem, yendo al dock Importar y eligiendo **Avanzado**.

\ **Nota:** **ResourceImporterScene** *no* se utiliza para :ref:`PackedScene<class_PackedScene>`\ s, como archivos ``.tscn`` y ``.scn``.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Importar escenas 3D <../tutorials/assets_pipeline/importing_3d_scenes/index>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`_subresources<class_ResourceImporterScene_property__subresources>`                                                         | ``{}``    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`animation/fps<class_ResourceImporterScene_property_animation/fps>`                                                         | ``30``    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`animation/import<class_ResourceImporterScene_property_animation/import>`                                                   | ``true``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`animation/import_rest_as_RESET<class_ResourceImporterScene_property_animation/import_rest_as_RESET>`                       | ``false`` |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`animation/remove_immutable_tracks<class_ResourceImporterScene_property_animation/remove_immutable_tracks>`                 | ``true``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`animation/trimming<class_ResourceImporterScene_property_animation/trimming>`                                               | ``false`` |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`array_mesh/deduplicate_surfaces<class_ResourceImporterScene_property_array_mesh/deduplicate_surfaces>`                     | ``true``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`         | :ref:`import_script/path<class_ResourceImporterScene_property_import_script/path>`                                               | ``""``    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`materials/extract<class_ResourceImporterScene_property_materials/extract>`                                                 | ``0``     |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`materials/extract_format<class_ResourceImporterScene_property_materials/extract_format>`                                   | ``0``     |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`         | :ref:`materials/extract_path<class_ResourceImporterScene_property_materials/extract_path>`                                       | ``""``    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`mesh_library/use_node_names_as_mesh_names<class_ResourceImporterScene_property_mesh_library/use_node_names_as_mesh_names>` | ``false`` |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`meshes/create_shadow_meshes<class_ResourceImporterScene_property_meshes/create_shadow_meshes>`                             | ``true``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`meshes/ensure_tangents<class_ResourceImporterScene_property_meshes/ensure_tangents>`                                       | ``true``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`meshes/force_disable_compression<class_ResourceImporterScene_property_meshes/force_disable_compression>`                   | ``false`` |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`meshes/generate_lods<class_ResourceImporterScene_property_meshes/generate_lods>`                                           | ``true``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`meshes/light_baking<class_ResourceImporterScene_property_meshes/light_baking>`                                             | ``1``     |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`meshes/lightmap_texel_size<class_ResourceImporterScene_property_meshes/lightmap_texel_size>`                               | ``0.2``   |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`nodes/apply_root_scale<class_ResourceImporterScene_property_nodes/apply_root_scale>`                                       | ``true``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`nodes/import_as_skeleton_bones<class_ResourceImporterScene_property_nodes/import_as_skeleton_bones>`                       | ``false`` |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`         | :ref:`nodes/root_name<class_ResourceImporterScene_property_nodes/root_name>`                                                     | ``""``    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`nodes/root_scale<class_ResourceImporterScene_property_nodes/root_scale>`                                                   | ``1.0``   |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Script<class_Script>`         | :ref:`nodes/root_script<class_ResourceImporterScene_property_nodes/root_script>`                                                 | ``null``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`         | :ref:`nodes/root_type<class_ResourceImporterScene_property_nodes/root_type>`                                                     | ``""``    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`nodes/use_name_suffixes<class_ResourceImporterScene_property_nodes/use_name_suffixes>`                                     | ``true``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`nodes/use_node_type_suffixes<class_ResourceImporterScene_property_nodes/use_node_type_suffixes>`                           | ``true``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`skins/use_named_skins<class_ResourceImporterScene_property_skins/use_named_skins>`                                         | ``true``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ResourceImporterScene_property__subresources:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **_subresources** = ``{}`` :ref:`🔗<class_ResourceImporterScene_property__subresources>`

Contiene propiedades para los subrecursos de la escena. Esta es una opción interna que no es visible en el dock Importar.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_animation/fps:

.. rst-class:: classref-property

:ref:`float<class_float>` **animation/fps** = ``30`` :ref:`🔗<class_ResourceImporterScene_property_animation/fps>`

El número de fotogramas por segundo que se utilizará para procesar curvas de animación a una serie de puntos con interpolación lineal. Se recomienda configurar este valor para que coincida con el valor que estás utilizando como base en tu modelado 3D software. Los valores más altos dan como resultado una animación más precisa con cambios de movimiento rápidos a costa de tamaños de archivo y uso de memoria más altos. Gracias a la interpolación, por lo general no hay mucho beneficio en superar los 30 FPS (ya que la animación seguirá apareciendo fluida a velocidades de fotogramas de renderizado más altas).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_animation/import:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **animation/import** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_animation/import>`

Si es ``true``, importa las animaciones de la escena 3D.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_animation/import_rest_as_RESET:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **animation/import_rest_as_RESET** = ``false`` :ref:`🔗<class_ResourceImporterScene_property_animation/import_rest_as_RESET>`

Si es ``true``, agrega una :ref:`Animation<class_Animation>` llamada ``RESET``, que contiene el :ref:`Skeleton3D.get_bone_rest()<class_Skeleton3D_method_get_bone_rest>` de los nodos :ref:`Skeleton3D<class_Skeleton3D>`. Esto puede ser útil para extraer una animación en la pose de referencia.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_animation/remove_immutable_tracks:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **animation/remove_immutable_tracks** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_animation/remove_immutable_tracks>`

Si es ``true``, elimina las pistas de animación que solo contienen valores predeterminados. Esto puede reducir el tamaño del archivo de salida y el uso de memoria con ciertas escenas 3D, dependiendo del contenido de sus pistas de animación.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_animation/trimming:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **animation/trimming** = ``false`` :ref:`🔗<class_ResourceImporterScene_property_animation/trimming>`

Si es ``true``, recorta el principio y el final de las animaciones si no hay cambios de fotogramas clave. Esto puede reducir el tamaño del archivo de salida y el uso de memoria con ciertas escenas 3D, dependiendo del contenido de sus pistas de animación.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_array_mesh/deduplicate_surfaces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **array_mesh/deduplicate_surfaces** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_array_mesh/deduplicate_surfaces>`

If the 3D model file contains only one mesh, this option has no effect. If ``true`` and the 3D model file contains multiple meshes with the same surface names and formats, the surfaces will be merged together when the meshes are merged. This is useful for reducing the number of surfaces in the resulting mesh, and avoids duplicating materials. If ``false`` and the 3D model file contains multiple meshes, the surfaces will always be kept separate.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_import_script/path:

.. rst-class:: classref-property

:ref:`String<class_String>` **import_script/path** = ``""`` :ref:`🔗<class_ResourceImporterScene_property_import_script/path>`

Ruta a un script de importación, que puede ejecutar código después de que el proceso de importación se haya completado para el procesamiento personalizado. Véase `Usando scripts de importación para la automatización <../tutorials/assets_pipeline/importing_3d_scenes/import_configuration.html#using-import-scripts-for-automation>`__ para más información.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_materials/extract:

.. rst-class:: classref-property

:ref:`int<class_int>` **materials/extract** = ``0`` :ref:`🔗<class_ResourceImporterScene_property_materials/extract>`

Modo de extracción de material.

- ``0 (Keep Internal)``, los materiales no se extraen.

- ``1 (Extract Once)``, los materiales se extraen una vez y se reutilizan en la importación posterior.

- ``2 (Extract and Overwrite)``, los materiales se extraen y sobrescriben en cada importación.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_materials/extract_format:

.. rst-class:: classref-property

:ref:`int<class_int>` **materials/extract_format** = ``0`` :ref:`🔗<class_ResourceImporterScene_property_materials/extract_format>`

Formato de archivo de material extraído.

- ``0 (Text)``, formato de archivo de texto (``*.tres``).

- ``1 (Binary)``, formato de archivo binario (``*.res``).

- ``2 (Material)``, formato de archivo binario (``*.material``).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_materials/extract_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **materials/extract_path** = ``""`` :ref:`🔗<class_ResourceImporterScene_property_materials/extract_path>`

Ruta donde se guardan los materiales extraídos. Si está vacío, se utiliza la ruta de la escena de origen.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_mesh_library/use_node_names_as_mesh_names:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mesh_library/use_node_names_as_mesh_names** = ``false`` :ref:`🔗<class_ResourceImporterScene_property_mesh_library/use_node_names_as_mesh_names>`

If ``true``, the mesh names will be set to the names of the nodes in the 3D model file. If ``false``, the mesh names will be set to the names of the meshes in the 3D model file. Enabling this is a common work-around when the author of the 3D model file did not properly set the mesh names in Blender or other 3D modeling apps. For example, a file may have a node named "Turret" with a mesh named "Cube.002", so enabling this option will set the mesh name to "Turret" instead of "Cube_002".

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/create_shadow_meshes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meshes/create_shadow_meshes** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_meshes/create_shadow_meshes>`

Si es ``true``, habilita la generación de mallas de sombra en la importación. Esto optimiza el renderizado de sombras sin reducir la calidad soldando los vértices juntos cuando sea posible. Esto a su vez reduce el ancho de banda de memoria requerido para renderizar las sombras. La generación de mallas de sombra actualmente no admite el uso de un nivel de detalle más bajo que la malla de origen (pero el renderizado de sombras hará uso de los LOD cuando sea relevante).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/ensure_tangents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meshes/ensure_tangents** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_meshes/ensure_tangents>`

If ``true``, generate vertex tangents using `Mikktspace <http://www.mikktspace.com/>`__ if the input meshes don't have tangent data. When possible, it's recommended to let the 3D modeling software generate tangents on export instead of relying on this option. Tangents are required for correct display of normal and height maps, along with any material/shader features that require tangents.

If you don't need material features that require tangents, disabling this can reduce output file size and speed up importing if the source 3D file doesn't contain tangents.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/force_disable_compression:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meshes/force_disable_compression** = ``false`` :ref:`🔗<class_ResourceImporterScene_property_meshes/force_disable_compression>`

Si es ``true``, la compresión de la malla no se utilizará. Considera activar esta opción si observas artefactos de bloques en tus normales de malla o UV, o si tienes mallas que son más grandes que unos pocos miles de metros en cada dirección.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/generate_lods:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meshes/generate_lods** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_meshes/generate_lods>`

Si es ``true``, genera variantes de menor detalle de la malla que se mostrarán en la distancia para mejorar el rendimiento del renderizado. No todas las mallas se benefician de LOD, especialmente si nunca se renderizan desde lejos. Deshabilitar esto puede reducir el tamaño del archivo de salida y acelerar la importación. Véase `Nivel de detalle de la malla (LOD) <../tutorials/3d/mesh_lod.html#doc-mesh-lod>`__ para obtener más información.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/light_baking:

.. rst-class:: classref-property

:ref:`int<class_int>` **meshes/light_baking** = ``1`` :ref:`🔗<class_ResourceImporterScene_property_meshes/light_baking>`

Configura :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` de las mallas en la escena 3D. Si se establece en **Lightmaps estáticos**, establece el modo GI de las mallas en estático y genera UV2 al importar para el baking de :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/lightmap_texel_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **meshes/lightmap_texel_size** = ``0.2`` :ref:`🔗<class_ResourceImporterScene_property_meshes/lightmap_texel_size>`

Controla el tamaño de cada texel en el lightmap procesado. Un valor más pequeño da como resultado lightmaps más precisos, a costa de tamaños de lightmaps más grandes y tiempos de procesado más largos.

\ **Nota:** Solo es efectivo si :ref:`meshes/light_baking<class_ResourceImporterScene_property_meshes/light_baking>` está establecido en **Lightmaps estáticos**.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/apply_root_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **nodes/apply_root_scale** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_nodes/apply_root_scale>`

Si es ``true``, :ref:`nodes/root_scale<class_ResourceImporterScene_property_nodes/root_scale>` se aplicará a los nodos descendientes, mallas, animaciones, huesos, etc. Esto significa que si agregas un nodo hijo más adelante dentro de la escena importada, no se escalará. Si es ``false``, :ref:`nodes/root_scale<class_ResourceImporterScene_property_nodes/root_scale>` multiplicará la escala del nodo raíz en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/import_as_skeleton_bones:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **nodes/import_as_skeleton_bones** = ``false`` :ref:`🔗<class_ResourceImporterScene_property_nodes/import_as_skeleton_bones>`

Trata todos los nodos en la escena importada como si fueran huesos dentro de un solo :ref:`Skeleton3D<class_Skeleton3D>`. Se puede usar para garantizar que las animaciones importadas se dirijan a los huesos del esqueleto en lugar de los nodos. También se puede usar para asignar el hueso ``"Root"`` en un :ref:`BoneMap<class_BoneMap>`. Véase :doc:`Retargeting 3D Skeletons <../tutorials/assets_pipeline/retargeting_3d_skeletons>` para obtener más información.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/root_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **nodes/root_name** = ``""`` :ref:`🔗<class_ResourceImporterScene_property_nodes/root_name>`

Sobrescribe el nombre del nodo raíz. Si está vacío, el nodo raíz usará lo que la escena especifica, o el nombre del archivo si la escena no especifica un nombre raíz.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/root_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **nodes/root_scale** = ``1.0`` :ref:`🔗<class_ResourceImporterScene_property_nodes/root_scale>`

La escala uniforme que se utilizará para la raíz de la escena. El valor predeterminado de ``1.0`` no realizará ningún cambio de escala. Véase :ref:`nodes/apply_root_scale<class_ResourceImporterScene_property_nodes/apply_root_scale>` para obtener detalles de cómo se aplica esta escala.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/root_script:

.. rst-class:: classref-property

:ref:`Script<class_Script>` **nodes/root_script** = ``null`` :ref:`🔗<class_ResourceImporterScene_property_nodes/root_script>`

Si se establece en un script válido, adjunta el script al nodo raíz de la escena importada. Si el tipo del nodo raíz no es compatible con el script, el nodo raíz se reemplazará con un tipo que sea compatible con el script. Esta configuración también se puede usar en otros nodos que no son de malla en la escena para adjuntar scripts a ellos.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/root_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **nodes/root_type** = ``""`` :ref:`🔗<class_ResourceImporterScene_property_nodes/root_type>`

Sobrescribe el tipo de nodo raíz. Si está vacío, el nodo raíz usará lo que la escena especifica, o :ref:`Node3D<class_Node3D>` si la escena no especifica un tipo de raíz. Se recomienda usar un tipo de nodo que herede de :ref:`Node3D<class_Node3D>`. De lo contrario, perderás la capacidad de posicionar el nodo directamente en el editor 3D.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/use_name_suffixes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **nodes/use_name_suffixes** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_nodes/use_name_suffixes>`

Si es ``true``, utilizará sufijos en los nombres de los objetos importados como nodos y recursos para determinar los tipos y propiedades, como ``-noimp`` para omitir la importación de un nodo o animación, ``-alpha`` para habilitar la transparencia alfa en un material, y ``-vcol`` para habilitar colores de vértice en un material. Deshabilitar esto hace que los archivos importados por el editor sean más similares a los archivos originales, y más similares a los archivos importados en tiempo de ejecución. Véase :doc:`Personalización del tipo de nodo usando sufijos de nombre <../tutorials/assets_pipeline/importing_3d_scenes/node_type_customization>` para obtener más información.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/use_node_type_suffixes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **nodes/use_node_type_suffixes** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_nodes/use_node_type_suffixes>`

Si es ``true``, utilizará sufijos en los nombres de los nodos para determinar el tipo de nodo, como ``-col`` para las formas de colisión. Esto solo se usa cuando :ref:`nodes/use_name_suffixes<class_ResourceImporterScene_property_nodes/use_name_suffixes>` es ``true``. Deshabilitar esto hace que los archivos importados por el editor sean más similares a los archivos originales, y más similares a los archivos importados en tiempo de ejecución. Véase :doc:`Personalización del tipo de nodo usando sufijos de nombre <../tutorials/assets_pipeline/importing_3d_scenes/node_type_customization>` para obtener más información.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_skins/use_named_skins:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **skins/use_named_skins** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_skins/use_named_skins>`

If checked, use named :ref:`Skin<class_Skin>`\ s for animation. The :ref:`MeshInstance3D<class_MeshInstance3D>` node contains 3 properties of relevance here: a skeleton :ref:`NodePath<class_NodePath>` pointing to the :ref:`Skeleton3D<class_Skeleton3D>` node (usually ``..``), a mesh, and a skin:

- The :ref:`Skeleton3D<class_Skeleton3D>` node contains a list of bones with names, their pose and rest, a name, and a parent bone.

- The mesh is all of the raw vertex data needed to display a mesh. In terms of the mesh, it knows how vertices are weight-painted and uses some internal numbering often imported from 3D modeling software.

- The skin contains the information necessary to bind this mesh onto this Skeleton3D. For each of the internal bone IDs chosen by the 3D modeling software, it contains two things. Firstly, a matrix known as the Bind Pose Matrix, Inverse Bind Matrix, or IBM for short. Secondly, the :ref:`Skin<class_Skin>` contains each bone's name (if :ref:`skins/use_named_skins<class_ResourceImporterScene_property_skins/use_named_skins>` is ``true``), or the bone's index within the :ref:`Skeleton3D<class_Skeleton3D>` list (if :ref:`skins/use_named_skins<class_ResourceImporterScene_property_skins/use_named_skins>` is ``false``).

Together, this information is enough to tell Godot how to use the bone poses in the :ref:`Skeleton3D<class_Skeleton3D>` node to render the mesh from each :ref:`MeshInstance3D<class_MeshInstance3D>`. Note that each :ref:`MeshInstance3D<class_MeshInstance3D>` may share binds, as is common in models exported from Blender, or each :ref:`MeshInstance3D<class_MeshInstance3D>` may use a separate :ref:`Skin<class_Skin>` object, as is common in models exported from other tools such as Maya.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
