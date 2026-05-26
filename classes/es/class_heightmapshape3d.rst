:github_url: hide

.. _class_HeightMapShape3D:

HeightMapShape3D
================

**Hereda:** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una forma de mapa de altura 3D utilizada para la colisión física.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una forma de mapa de altura 3D, destinada a ser utilizada en físicas para proporcionar una forma a un :ref:`CollisionShape3D<class_CollisionShape3D>`. Este tipo se utiliza con mayor frecuencia para terrenos con vértices colocados en una cuadrícula de ancho fijo.

El mapa de altura se representa como una cuadrícula 2D de valores de altura, que representan la posición de los puntos de la cuadrícula en el eje Y. Los puntos de la cuadrícula están espaciados 1 unidad en los ejes X y Z, y la cuadrícula está centrada en el origen del nodo :ref:`CollisionShape3D<class_CollisionShape3D>`. Internamente, cada cuadrado de la cuadrícula se divide en dos triángulos.

Debido a la naturaleza del mapa de altura, no puede utilizarse para modelar salientes o cuevas, lo que requeriría múltiples vértices en la misma ubicación vertical. Se pueden hacer agujeros a través de la colisión asignando :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` a la altura de los vértices deseados (esto es compatible tanto con GodotPhysics3D como con Jolt Physics). Luego podrías insertar mallas con su propia colisión separada para proporcionar salientes, cuevas, etc.

\ **Rendimiento:** **HeightMapShape3D** es más rápido para comprobar colisiones que :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>`, pero es significativamente más lento que formas primitivas como :ref:`BoxShape3D<class_BoxShape3D>`.

Una forma de colisión de mapa de altura también se puede construir utilizando una referencia :ref:`Image<class_Image>`:


.. tabs::

 .. code-tab:: gdscript

    var heightmap_texture = ResourceLoader.load("res://heightmap_image.exr")
    var heightmap_image = heightmap_texture.get_image()
    heightmap_image.convert(Image.FORMAT_RF)

    var height_min = 0.0
    var height_max = 10.0

    update_map_data_from_image(heightmap_image, height_min, height_max)



\ **Nota:** Si necesitas usar un espaciado diferente a 1 unidad, puedes ajustar la :ref:`Node3D.scale<class_Node3D_property_scale>` de la forma. Sin embargo, ten en cuenta que GodotPhysics3D no soporta el escalado no uniforme: necesitarás escalar el eje Y por la misma cantidad que los ejes X y Z, lo que significa que los valores en :ref:`map_data<class_HeightMapShape3D_property_map_data>` deberán ser pre-escalados por el inverso de esa escala. También ten en cuenta que GodotPhysics3D no soporta escalado en absoluto para cuerpos dinámicos (es decir, nodos :ref:`RigidBody3D<class_RigidBody3D>` no congelados); para usar un **HeightMapShape3D** escalado con estos, necesitarás usar Jolt Physics.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------+------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`map_data<class_HeightMapShape3D_property_map_data>`   | ``PackedFloat32Array(0, 0, 0, 0)`` |
   +-----------------------------------------------------+-------------------------------------------------------------+------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`map_depth<class_HeightMapShape3D_property_map_depth>` | ``2``                              |
   +-----------------------------------------------------+-------------------------------------------------------------+------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`map_width<class_HeightMapShape3D_property_map_width>` | ``2``                              |
   +-----------------------------------------------------+-------------------------------------------------------------+------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_max_height<class_HeightMapShape3D_method_get_max_height>`\ (\ ) |const|                                                                                                                                    |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_min_height<class_HeightMapShape3D_method_get_min_height>`\ (\ ) |const|                                                                                                                                    |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`update_map_data_from_image<class_HeightMapShape3D_method_update_map_data_from_image>`\ (\ image\: :ref:`Image<class_Image>`, height_min\: :ref:`float<class_float>`, height_max\: :ref:`float<class_float>`\ ) |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_HeightMapShape3D_property_map_data:

.. rst-class:: classref-property

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **map_data** = ``PackedFloat32Array(0, 0, 0, 0)`` :ref:`🔗<class_HeightMapShape3D_property_map_data>`

.. rst-class:: classref-property-setget

- |void| **set_map_data**\ (\ value\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )
- :ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_map_data**\ (\ )

Datos del mapa de altura. El tamaño del array debe ser igual a :ref:`map_width<class_HeightMapShape3D_property_map_width>` multiplicado por :ref:`map_depth<class_HeightMapShape3D_property_map_depth>`.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat32Array<class_PackedFloat32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_HeightMapShape3D_property_map_depth:

.. rst-class:: classref-property

:ref:`int<class_int>` **map_depth** = ``2`` :ref:`🔗<class_HeightMapShape3D_property_map_depth>`

.. rst-class:: classref-property-setget

- |void| **set_map_depth**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_map_depth**\ (\ )

Número de vértices en la profundidad del mapa de altura. Cambiar esto redimensionará :ref:`map_data<class_HeightMapShape3D_property_map_data>`.

.. rst-class:: classref-item-separator

----

.. _class_HeightMapShape3D_property_map_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **map_width** = ``2`` :ref:`🔗<class_HeightMapShape3D_property_map_width>`

.. rst-class:: classref-property-setget

- |void| **set_map_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_map_width**\ (\ )

Número de vértices en el ancho del mapa de altura. Cambiar esto redimensionará :ref:`map_data<class_HeightMapShape3D_property_map_data>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_HeightMapShape3D_method_get_max_height:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_max_height**\ (\ ) |const| :ref:`🔗<class_HeightMapShape3D_method_get_max_height>`

Devuelve el valor de altura más grande encontrado en :ref:`map_data<class_HeightMapShape3D_property_map_data>`. Se vuelve a calcular solo cuando cambia :ref:`map_data<class_HeightMapShape3D_property_map_data>`.

.. rst-class:: classref-item-separator

----

.. _class_HeightMapShape3D_method_get_min_height:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_min_height**\ (\ ) |const| :ref:`🔗<class_HeightMapShape3D_method_get_min_height>`

Devuelve el valor de altura más pequeño encontrado en :ref:`map_data<class_HeightMapShape3D_property_map_data>`. Se vuelve a calcular solo cuando cambia :ref:`map_data<class_HeightMapShape3D_property_map_data>`.

.. rst-class:: classref-item-separator

----

.. _class_HeightMapShape3D_method_update_map_data_from_image:

.. rst-class:: classref-method

|void| **update_map_data_from_image**\ (\ image\: :ref:`Image<class_Image>`, height_min\: :ref:`float<class_float>`, height_max\: :ref:`float<class_float>`\ ) :ref:`🔗<class_HeightMapShape3D_method_update_map_data_from_image>`

Actualiza :ref:`map_data<class_HeightMapShape3D_property_map_data>` con datos leídos de una referencia :ref:`Image<class_Image>`. Redimensiona automáticamente el mapa de altura :ref:`map_width<class_HeightMapShape3D_property_map_width>` y :ref:`map_depth<class_HeightMapShape3D_property_map_depth>` para ajustarse al ancho y alto completo de la imagen.

La imagen debe estar en :ref:`Image.FORMAT_RF<class_Image_constant_FORMAT_RF>` (32 bits), :ref:`Image.FORMAT_RH<class_Image_constant_FORMAT_RH>` (16 bits) o :ref:`Image.FORMAT_R8<class_Image_constant_FORMAT_R8>` (8 bits).

Cada píxel de la imagen se lee como un flotante en el rango de ``0.0`` (píxel negro) a ``1.0`` (píxel blanco). Este valor de rango se reasigna a ``height_min`` y ``height_max`` para formar el valor de altura final.

\ **Nota:** Se recomienda usar un mapa de altura con datos de 16 o 32 bits, almacenado en formato EXR o HDR. Usar datos de altura de 8 bits, o un formato como PNG que Godot importa como 8 bits, resultará en un terreno aterrazado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
