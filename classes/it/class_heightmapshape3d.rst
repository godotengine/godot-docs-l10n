:github_url: hide

.. _class_HeightMapShape3D:

HeightMapShape3D
================

**Eredita:** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una forma di heightmap 3D utilizzata per le collisioni fisiche.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

A 3D heightmap shape, intended for use in physics to provide a shape for a :ref:`CollisionShape3D<class_CollisionShape3D>`. This type is most commonly used for terrain with vertices placed in a fixed-width grid.

The heightmap is represented as a 2D grid of height values, which represent the position of grid points on the Y axis. Grid points are spaced 1 unit apart on the X and Z axes, and the grid is centered on the origin of the :ref:`CollisionShape3D<class_CollisionShape3D>` node. Internally, each grid square is divided into two triangles.

Due to the nature of the heightmap, it cannot be used to model overhangs or caves, which would require multiple vertices at the same vertical location. Holes can be punched through the collision by assigning :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` to the height of the desired vertices. You could then insert meshes with their own separate collision to provide overhangs, caves, and so on.

\ **Performance:** **HeightMapShape3D** is faster to check collisions against than :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>`, but it is significantly slower than primitive shapes like :ref:`BoxShape3D<class_BoxShape3D>`.

A heightmap collision shape can also be built by using an :ref:`Image<class_Image>` reference:


.. tabs::

 .. code-tab:: gdscript

    var heightmap_texture = ResourceLoader.load("res://heightmap_image.exr")
    var heightmap_image = heightmap_texture.get_image()
    heightmap_image.convert(Image.FORMAT_RF)

    var height_min = 0.0
    var height_max = 10.0

    update_map_data_from_image(heightmap_image, height_min, height_max)



\ **Note:** If you need to use a spacing different than 1 unit, you can adjust the :ref:`Node3D.scale<class_Node3D_property_scale>` of the shape. However, keep in mind that GodotPhysics3D does not support non-uniform scaling: you'll need to scale the Y axis by the same amount as the X and Z axes, which means the values in :ref:`map_data<class_HeightMapShape3D_property_map_data>` will need to be pre-scaled by the inverse of that scale. Also note that GodotPhysics3D does not support scaling at all for dynamic bodies (that is, non-frozen :ref:`RigidBody3D<class_RigidBody3D>` nodes); to use a scaled **HeightMapShape3D** with those, you will need to use Jolt Physics.

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Metodi
------------

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

Descrizioni delle proprietà
------------------------------------------------------

.. _class_HeightMapShape3D_property_map_data:

.. rst-class:: classref-property

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **map_data** = ``PackedFloat32Array(0, 0, 0, 0)`` :ref:`🔗<class_HeightMapShape3D_property_map_data>`

.. rst-class:: classref-property-setget

- |void| **set_map_data**\ (\ value\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )
- :ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_map_data**\ (\ )

Dati della heightmap. La dimensione dell'array deve essere uguale a :ref:`map_width<class_HeightMapShape3D_property_map_width>` moltiplicato per :ref:`map_depth<class_HeightMapShape3D_property_map_depth>`.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat32Array<class_PackedFloat32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_HeightMapShape3D_property_map_depth:

.. rst-class:: classref-property

:ref:`int<class_int>` **map_depth** = ``2`` :ref:`🔗<class_HeightMapShape3D_property_map_depth>`

.. rst-class:: classref-property-setget

- |void| **set_map_depth**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_map_depth**\ (\ )

Numero di vertici nella profondità della heightmap. Cambiare questa proprietà ridimensionerà :ref:`map_data<class_HeightMapShape3D_property_map_data>`.

.. rst-class:: classref-item-separator

----

.. _class_HeightMapShape3D_property_map_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **map_width** = ``2`` :ref:`🔗<class_HeightMapShape3D_property_map_width>`

.. rst-class:: classref-property-setget

- |void| **set_map_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_map_width**\ (\ )

Numero di vertici nella larghezza della heightmap. Cambiare questa proprietà ridimensionerà :ref:`map_data<class_HeightMapShape3D_property_map_data>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_HeightMapShape3D_method_get_max_height:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_max_height**\ (\ ) |const| :ref:`🔗<class_HeightMapShape3D_method_get_max_height>`

Restituisce il valore di altezza più grande trovato in :ref:`map_data<class_HeightMapShape3D_property_map_data>`. È ricalcolato solo quando :ref:`map_data<class_HeightMapShape3D_property_map_data>` cambia.

.. rst-class:: classref-item-separator

----

.. _class_HeightMapShape3D_method_get_min_height:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_min_height**\ (\ ) |const| :ref:`🔗<class_HeightMapShape3D_method_get_min_height>`

Restituisce il valore di altezza più piccolo trovato in :ref:`map_data<class_HeightMapShape3D_property_map_data>`. È ricalcolato solo quando :ref:`map_data<class_HeightMapShape3D_property_map_data>` cambia.

.. rst-class:: classref-item-separator

----

.. _class_HeightMapShape3D_method_update_map_data_from_image:

.. rst-class:: classref-method

|void| **update_map_data_from_image**\ (\ image\: :ref:`Image<class_Image>`, height_min\: :ref:`float<class_float>`, height_max\: :ref:`float<class_float>`\ ) :ref:`🔗<class_HeightMapShape3D_method_update_map_data_from_image>`

Aggiorna :ref:`map_data<class_HeightMapShape3D_property_map_data>` con i dati letti da un riferimento :ref:`Image<class_Image>`. Ridimensiona automaticamente :ref:`map_width<class_HeightMapShape3D_property_map_width>` e :ref:`map_depth<class_HeightMapShape3D_property_map_depth>` della heightmap per adattarle alla larghezza e all'altezza complete dell'immagine.

L'immagine deve essere in formato :ref:`Image.FORMAT_RF<class_Image_constant_FORMAT_RF>` (32 bit), :ref:`Image.FORMAT_RH<class_Image_constant_FORMAT_RH>` (16 bit) o :ref:`Image.FORMAT_R8<class_Image_constant_FORMAT_R8>` (8 bit).

Ogni pixel dell'immagine viene letto come float nell'intervallo da ``0.0`` (pixel nero) a ``1.0`` (pixel bianco). Questo valore di intervallo viene rimappato da ``height_min`` a ``height_max`` per formare il valore di altezza finale.

\ **Nota:** Si consiglia di utilizzare una heightmap con dati a 16 o 32 bit, memorizzati in formato EXR o HDR. Utilizzare dati di altezza a 8 bit, o in un formato come PNG che Godot importa come 8 bit, risulterà in terreno terrazzato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
