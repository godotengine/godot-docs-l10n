:github_url: hide

.. _class_VoxelGI:

VoxelGI
=======

**Hereda:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Sonda de iluminación global (GI) en tiempo real.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Los **VoxelGI** se utilizan para proporcionar luz indirecta y reflejos en tiempo real de alta calidad a las escenas. Precálculan el efecto de los objetos que emiten luz y el efecto de la geometría estática para simular el comportamiento de la luz compleja en tiempo real. Los **VoxelGI** necesitan ser procesados antes de tener un efecto visible. Sin embargo, una vez procesados, los objetos dinámicos recibirán luz de ellos. Además, las luces pueden ser totalmente dinámicas u procesadas.

\ **Nota:** **VoxelGI** solo se admite en el método de renderizado Forward+, no en Mobile o Compatibility.

\ **Generación procedural:** **VoxelGI** se puede procesar en un proyecto exportado, lo que lo hace adecuado para niveles generados proceduralmente o construidos por el usuario, siempre y cuando toda la geometría se genere de antemano. Para los juegos en los que la geometría se genera en cualquier momento durante el juego, SDFGI es más adecuado (véase :ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`).

\ **Rendimiento:** **VoxelGI** es relativamente exigente con la GPU y no es adecuado para hardware de gama baja, como los gráficos integrados (en su lugar, considera :ref:`LightmapGI<class_LightmapGI>`). Para mejorar el rendimiento, ajuste :ref:`ProjectSettings.rendering/global_illumination/voxel_gi/quality<class_ProjectSettings_property_rendering/global_illumination/voxel_gi/quality>` y active :ref:`ProjectSettings.rendering/global_illumination/gi/use_half_resolution<class_ProjectSettings_property_rendering/global_illumination/gi/use_half_resolution>` en la Configuración del proyecto. Para proporcionar una alternativa para hardware de gama baja, considera la posibilidad de añadir una opción para desactivar **VoxelGI** en los menús de opciones de su proyecto. Un nodo **VoxelGI** puede ser desactivado ocultándolo.

\ **Nota:** Las mallas deben tener paredes suficientemente gruesas para evitar fugas de luz (evite las paredes de una sola cara). Para los niveles interiores, encierre la geometría de su nivel en una caja suficientemente grande y una los bucles para cerrar la malla. Para evitar aún más las fugas de luz, también puede colocar estratégicamente nodos temporales :ref:`MeshInstance3D<class_MeshInstance3D>` con su :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` establecido en :ref:`GeometryInstance3D.GI_MODE_STATIC<class_GeometryInstance3D_constant_GI_MODE_STATIC>`. Estos nodos temporales pueden ser ocultados después de procesar el nodo **VoxelGI**.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usando iluminación global de Voxels <../tutorials/3d/global_illumination/using_voxel_gi>`

- `Demo de Shooter en Tercera Persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+
   | :ref:`CameraAttributes<class_CameraAttributes>` | :ref:`camera_attributes<class_VoxelGI_property_camera_attributes>` |                         |
   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+
   | :ref:`VoxelGIData<class_VoxelGIData>`           | :ref:`data<class_VoxelGI_property_data>`                           |                         |
   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`size<class_VoxelGI_property_size>`                           | ``Vector3(20, 20, 20)`` |
   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+
   | :ref:`Subdiv<enum_VoxelGI_Subdiv>`              | :ref:`subdiv<class_VoxelGI_property_subdiv>`                       | ``1``                   |
   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`bake<class_VoxelGI_method_bake>`\ (\ from_node\: :ref:`Node<class_Node>` = null, create_visual_debug\: :ref:`bool<class_bool>` = false\ ) |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`debug_bake<class_VoxelGI_method_debug_bake>`\ (\ )                                                                                        |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_VoxelGI_Subdiv:

.. rst-class:: classref-enumeration

enum **Subdiv**: :ref:`🔗<enum_VoxelGI_Subdiv>`

.. _class_VoxelGI_constant_SUBDIV_64:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_64** = ``0``

Usar las 64 subdivisiones. Este es el ajuste de menor calidad, pero el más rápido. Úsalo si puedes, pero sobre todo úsalo en el hardware de gama baja.

.. _class_VoxelGI_constant_SUBDIV_128:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_128** = ``1``

Utiliza 128 subdivisiones. Este es el ajuste de calidad predeterminado.

.. _class_VoxelGI_constant_SUBDIV_256:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_256** = ``2``

Usar 256 subdivisiones.

.. _class_VoxelGI_constant_SUBDIV_512:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_512** = ``3``

Usa 512 subdivisiones. Esta es la configuración de mayor calidad, pero la más lenta. En hardware de gama baja, esto podría causar que la GPU se bloquee.

.. _class_VoxelGI_constant_SUBDIV_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_MAX** = ``4``

Representa el tamaño del enum :ref:`Subdiv<enum_VoxelGI_Subdiv>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VoxelGI_property_camera_attributes:

.. rst-class:: classref-property

:ref:`CameraAttributes<class_CameraAttributes>` **camera_attributes** :ref:`🔗<class_VoxelGI_property_camera_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_camera_attributes**\ (\ value\: :ref:`CameraAttributes<class_CameraAttributes>`\ )
- :ref:`CameraAttributes<class_CameraAttributes>` **get_camera_attributes**\ (\ )

El recurso :ref:`CameraAttributes<class_CameraAttributes>` que especifica los niveles de exposición para procesar. Las propiedades de autoexposición y no exposición se ignorarán. La configuración de exposición debe usarse para reducir el rango dinámico presente al procesar. Si la exposición es demasiado alta, el **VoxelGI** tendrá artefactos de bandas o puede tener artefactos de sobreexposición.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGI_property_data:

.. rst-class:: classref-property

:ref:`VoxelGIData<class_VoxelGIData>` **data** :ref:`🔗<class_VoxelGI_property_data>`

.. rst-class:: classref-property-setget

- |void| **set_probe_data**\ (\ value\: :ref:`VoxelGIData<class_VoxelGIData>`\ )
- :ref:`VoxelGIData<class_VoxelGIData>` **get_probe_data**\ (\ )

El recurso :ref:`VoxelGIData<class_VoxelGIData>` que contiene los datos para este **VoxelGI**.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGI_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(20, 20, 20)`` :ref:`🔗<class_VoxelGI_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

The size of the area covered by the **VoxelGI**. This must be ``1.0`` or greater on each axis.

\ **Note:** If you make the size larger without increasing the number of subdivisions with :ref:`subdiv<class_VoxelGI_property_subdiv>`, the size of each cell will increase and result in less detailed lighting.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGI_property_subdiv:

.. rst-class:: classref-property

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **subdiv** = ``1`` :ref:`🔗<class_VoxelGI_property_subdiv>`

.. rst-class:: classref-property-setget

- |void| **set_subdiv**\ (\ value\: :ref:`Subdiv<enum_VoxelGI_Subdiv>`\ )
- :ref:`Subdiv<enum_VoxelGI_Subdiv>` **get_subdiv**\ (\ )

El número de veces que se subdivide la cuadrícula en la que opera el **VoxelGI**. Un número mayor resulta en un detalle más fino y, por lo tanto, en una mayor calidad visual, mientras que un número menor resulta en un mejor rendimiento.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_VoxelGI_method_bake:

.. rst-class:: classref-method

|void| **bake**\ (\ from_node\: :ref:`Node<class_Node>` = null, create_visual_debug\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_VoxelGI_method_bake>`

Procesa el efecto de todos los :ref:`GeometryInstance3D<class_GeometryInstance3D>` marcados con :ref:`GeometryInstance3D.GI_MODE_STATIC<class_GeometryInstance3D_constant_GI_MODE_STATIC>` y los :ref:`Light3D<class_Light3D>` marcados con :ref:`Light3D.BAKE_STATIC<class_Light3D_constant_BAKE_STATIC>` o :ref:`Light3D.BAKE_DYNAMIC<class_Light3D_constant_BAKE_DYNAMIC>`. Si ``create_visual_debug`` es ``true``, después de procesar la luz, esto generará un :ref:`MultiMesh<class_MultiMesh>` que tiene un cubo que representa cada celda sólida con cada cubo coloreado al color albedo de la celda. Esto puede usarse para visualizar los datos del **VoxelGI** y depurar cualquier problema que pueda estar ocurriendo.

\ **Nota:** :ref:`bake()<class_VoxelGI_method_bake>` funciona desde el editor y en proyectos exportados. Esto lo hace adecuado para niveles generados proceduralmente o construidos por el usuario. Procesar un nodo **VoxelGI** generalmente toma de 5 a 20 segundos en la mayoría de las escenas. Reducir :ref:`subdiv<class_VoxelGI_property_subdiv>` puede acelerar el baking.

\ **Nota:** Los :ref:`GeometryInstance3D<class_GeometryInstance3D>` y :ref:`Light3D<class_Light3D>` deben estar completamente listos antes de llamar a :ref:`bake()<class_VoxelGI_method_bake>`. Si los está creando proceduralmente y faltan algunas mallas o luces en su **VoxelGI** baking, use ``call_deferred("bake")`` en lugar de llamar a :ref:`bake()<class_VoxelGI_method_bake>` directamente.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGI_method_debug_bake:

.. rst-class:: classref-method

|void| **debug_bake**\ (\ ) :ref:`🔗<class_VoxelGI_method_debug_bake>`

Llama a :ref:`bake()<class_VoxelGI_method_bake>` con ``create_visual_debug`` activado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
