:github_url: hide

.. _class_GLTFCamera:

GLTFCamera
==========

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Rappresenta una telecamera glTF.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Rappresenta una telecamera come definita dalle specifiche glTF di base.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Caricamento e salvataggio di file a tempo di esecuzione <../tutorials/io/runtime_file_loading_and_saving>`

- `Specifiche dettagliate di una telecamera glTF <https://registry.khronos.org/glTF/specs/2.0/glTF-2.0.html#reference-camera>`__

- `Specifiche di una telecamera glTF e file di esempio <https://github.com/KhronosGroup/glTF-Tutorials/blob/master/gltfTutorial/gltfTutorial_015_SimpleCameras.md>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`depth_far<class_GLTFCamera_property_depth_far>`     | ``4000.0``    |
   +---------------------------+-----------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`depth_near<class_GLTFCamera_property_depth_near>`   | ``0.05``      |
   +---------------------------+-----------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`fov<class_GLTFCamera_property_fov>`                 | ``1.3089969`` |
   +---------------------------+-----------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`   | :ref:`perspective<class_GLTFCamera_property_perspective>` | ``true``      |
   +---------------------------+-----------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`size_mag<class_GLTFCamera_property_size_mag>`       | ``0.5``       |
   +---------------------------+-----------------------------------------------------------+---------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFCamera<class_GLTFCamera>` | :ref:`from_dictionary<class_GLTFCamera_method_from_dictionary>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFCamera<class_GLTFCamera>` | :ref:`from_node<class_GLTFCamera_method_from_node>`\ (\ camera_node\: :ref:`Camera3D<class_Camera3D>`\ ) |static|                |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`to_dictionary<class_GLTFCamera_method_to_dictionary>`\ (\ ) |const|                                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Camera3D<class_Camera3D>`     | :ref:`to_node<class_GLTFCamera_method_to_node>`\ (\ ) |const|                                                                    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_GLTFCamera_property_depth_far:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth_far** = ``4000.0`` :ref:`🔗<class_GLTFCamera_property_depth_far>`

.. rst-class:: classref-property-setget

- |void| **set_depth_far**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth_far**\ (\ )

La distanza dal limite di ritaglio lontano per questa telecamera rispetto al suo asse Z locale, in metri. Questa corrisponde alla proprietà ``zfar`` di glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFCamera_property_depth_near:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth_near** = ``0.05`` :ref:`🔗<class_GLTFCamera_property_depth_near>`

.. rst-class:: classref-property-setget

- |void| **set_depth_near**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth_near**\ (\ )

La distanza dal limite di ritaglio vicino per questa telecamera rispetto al suo asse Z locale, in metri. Questa corrisponde alla proprietà ``znear`` di glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFCamera_property_fov:

.. rst-class:: classref-property

:ref:`float<class_float>` **fov** = ``1.3089969`` :ref:`🔗<class_GLTFCamera_property_fov>`

.. rst-class:: classref-property-setget

- |void| **set_fov**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fov**\ (\ )

Il FOV (campo visivo) della telecamera. Questa classe e glTF definiscono il FOV della telecamera in radianti, mentre Godot usa i gradi. Questo corrisponde alla proprietà ``yfov`` di glTF. Questo valore è usato solo per le telecamere prospettiche, quando :ref:`perspective<class_GLTFCamera_property_perspective>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFCamera_property_perspective:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **perspective** = ``true`` :ref:`🔗<class_GLTFCamera_property_perspective>`

.. rst-class:: classref-property-setget

- |void| **set_perspective**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_perspective**\ (\ )

Se ``true`` la telecamera è in modalità prospettiva. Altrimenti, la telecamera è in modalità ortografica/ortogonale. Questo corrisponde alla proprietà ``type`` di una telecamera in glTF. Vedi :ref:`Camera3D.projection<class_Camera3D_property_projection>` e le specifiche glTF per ulteriori informazioni.

.. rst-class:: classref-item-separator

----

.. _class_GLTFCamera_property_size_mag:

.. rst-class:: classref-property

:ref:`float<class_float>` **size_mag** = ``0.5`` :ref:`🔗<class_GLTFCamera_property_size_mag>`

.. rst-class:: classref-property-setget

- |void| **set_size_mag**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_size_mag**\ (\ )

La dimensione della telecamera. Questa classe e GLTF definiscono le unità della dimensione della telecamera come raggio in metri, mentre Godot la definisce come diametro in metri. Questo corrisponde alla proprietà ``ymag`` di GLTF. Questo valore è utilizzato solo per telecamere ortografiche/ortogonali, quando :ref:`perspective<class_GLTFCamera_property_perspective>` è ``false``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_GLTFCamera_method_from_dictionary:

.. rst-class:: classref-method

:ref:`GLTFCamera<class_GLTFCamera>` **from_dictionary**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| :ref:`🔗<class_GLTFCamera_method_from_dictionary>`

Crea una nuova istanza di GLTFCamera interpretando il :ref:`Dictionary<class_Dictionary>` specificato.

.. rst-class:: classref-item-separator

----

.. _class_GLTFCamera_method_from_node:

.. rst-class:: classref-method

:ref:`GLTFCamera<class_GLTFCamera>` **from_node**\ (\ camera_node\: :ref:`Camera3D<class_Camera3D>`\ ) |static| :ref:`🔗<class_GLTFCamera_method_from_node>`

Crea una nuova istanza di GLTFCamera dal nodo :ref:`Camera3D<class_Camera3D>` di Godot specificato.

.. rst-class:: classref-item-separator

----

.. _class_GLTFCamera_method_to_dictionary:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **to_dictionary**\ (\ ) |const| :ref:`🔗<class_GLTFCamera_method_to_dictionary>`

Serializza questa istanza di GLTFCamera in un :ref:`Dictionary<class_Dictionary>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFCamera_method_to_node:

.. rst-class:: classref-method

:ref:`Camera3D<class_Camera3D>` **to_node**\ (\ ) |const| :ref:`🔗<class_GLTFCamera_method_to_node>`

Converte questa istanza GLTFCamera in un nodo :ref:`Camera3D<class_Camera3D>` di Godot.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
