:github_url: hide

.. _class_FogVolume:

FogVolume
=========

**Eredita:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una regione che contribuisce alla nebbia volumetrica predefinita dell'ambiente mondiale.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

I **FogVolume** servono per aggiungere nebbia localizzata all'effetto nebbia volumetrica globale. I **FogVolume** possono anche rimuovere la nebbia volumetrica da aree specifiche se si utilizza un :ref:`FogMaterial<class_FogMaterial>` con un :ref:`FogMaterial.density<class_FogMaterial_property_density>` negativo.

Le prestazioni dei **FogVolume** sono direttamente correlate alle loro dimensioni relative sullo schermo e alla complessità del loro :ref:`FogMaterial<class_FogMaterial>` associato. È meglio mantenere **FogVolume** relativamente piccoli e semplici, dove possibile.

\ **Nota:** I **FogVolume** hanno un effetto visibile solo se :ref:`Environment.volumetric_fog_enabled<class_Environment_property_volumetric_fog_enabled>` è ``true``. Se non si desidera che la nebbia sia visibile globalmente (ma solo all'interno dei nodi **FogVolume**), imposta :ref:`Environment.volumetric_fog_density<class_Environment_property_volumetric_fog_density>` su ``0.0``.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Nebbia volumetrica e volumi di nebbia <../tutorials/3d/volumetric_fog>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------+----------------------+
   | :ref:`Material<class_Material>`                            | :ref:`material<class_FogVolume_property_material>` |                      |
   +------------------------------------------------------------+----------------------------------------------------+----------------------+
   | :ref:`FogVolumeShape<enum_RenderingServer_FogVolumeShape>` | :ref:`shape<class_FogVolume_property_shape>`       | ``3``                |
   +------------------------------------------------------------+----------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                              | :ref:`size<class_FogVolume_property_size>`         | ``Vector3(2, 2, 2)`` |
   +------------------------------------------------------------+----------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_FogVolume_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_FogVolume_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

Il :ref:`Material<class_Material>` utilizzato dal **FogVolume**. Può essere un :ref:`FogMaterial<class_FogMaterial>` integrato o uno :ref:`ShaderMaterial<class_ShaderMaterial>` personalizzato.

.. rst-class:: classref-item-separator

----

.. _class_FogVolume_property_shape:

.. rst-class:: classref-property

:ref:`FogVolumeShape<enum_RenderingServer_FogVolumeShape>` **shape** = ``3`` :ref:`🔗<class_FogVolume_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`FogVolumeShape<enum_RenderingServer_FogVolumeShape>`\ )
- :ref:`FogVolumeShape<enum_RenderingServer_FogVolumeShape>` **get_shape**\ (\ )

La forma del **FogVolume**. Può essere impostata su :ref:`RenderingServer.FOG_VOLUME_SHAPE_ELLIPSOID<class_RenderingServer_constant_FOG_VOLUME_SHAPE_ELLIPSOID>`, :ref:`RenderingServer.FOG_VOLUME_SHAPE_CONE<class_RenderingServer_constant_FOG_VOLUME_SHAPE_CONE>`, :ref:`RenderingServer.FOG_VOLUME_SHAPE_CYLINDER<class_RenderingServer_constant_FOG_VOLUME_SHAPE_CYLINDER>`, :ref:`RenderingServer.FOG_VOLUME_SHAPE_BOX<class_RenderingServer_constant_FOG_VOLUME_SHAPE_BOX>`, o :ref:`RenderingServer.FOG_VOLUME_SHAPE_WORLD<class_RenderingServer_constant_FOG_VOLUME_SHAPE_WORLD>`.

.. rst-class:: classref-item-separator

----

.. _class_FogVolume_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(2, 2, 2)`` :ref:`🔗<class_FogVolume_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

La dimensione del **FogVolume** quando :ref:`shape<class_FogVolume_property_shape>` è :ref:`RenderingServer.FOG_VOLUME_SHAPE_ELLIPSOID<class_RenderingServer_constant_FOG_VOLUME_SHAPE_ELLIPSOID>`, :ref:`RenderingServer.FOG_VOLUME_SHAPE_CONE<class_RenderingServer_constant_FOG_VOLUME_SHAPE_CONE>`, :ref:`RenderingServer.FOG_VOLUME_SHAPE_CYLINDER<class_RenderingServer_constant_FOG_VOLUME_SHAPE_CYLINDER>`, o :ref:`RenderingServer.FOG_VOLUME_SHAPE_BOX<class_RenderingServer_constant_FOG_VOLUME_SHAPE_BOX>`.

\ **Nota:** i volumi di nebbia sottili potrebbero sembrare tremolanti quando la telecamera si muove o ruota. Questo può essere alleviato aumentando :ref:`ProjectSettings.rendering/environment/volumetric_fog/volume_depth<class_ProjectSettings_property_rendering/environment/volumetric_fog/volume_depth>` (a scapito delle prestazioni) o diminuendo :ref:`Environment.volumetric_fog_length<class_Environment_property_volumetric_fog_length>` (senza scapito delle prestazioni, ma a scapito di un intervallo di nebbia inferiore). In alternativa, il **FogVolume** può essere reso più spesso e utilizzare una densità inferiore nel :ref:`material<class_FogVolume_property_material>`.

\ **Nota:** Se :ref:`shape<class_FogVolume_property_shape>` è :ref:`RenderingServer.FOG_VOLUME_SHAPE_CONE<class_RenderingServer_constant_FOG_VOLUME_SHAPE_CONE>` o :ref:`RenderingServer.FOG_VOLUME_SHAPE_CYLINDER<class_RenderingServer_constant_FOG_VOLUME_SHAPE_CYLINDER>`, il cono (o cilindro) sarà regolato per adattarsi alle dimensioni. Il ridimensionamento non uniforme delle forme cono (o cilindro) tramite la proprietà :ref:`size<class_FogVolume_property_size>` non è supportato, ma è possibile ridimensionare il nodo **FogVolume**.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
