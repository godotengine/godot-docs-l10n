:github_url: hide

.. _class_MeshTexture:

MeshTexture
===========

**Eredita:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una semplice texture che utilizza una mesh per disegnarsi.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una texture semplice che usa una mesh per disegnare se stessa. È limitata perché i flag non possono essere cambiati e il disegno di una regione specificata non è supportato.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`base_texture<class_MeshTexture_property_base_texture>` |                                                                                        |
   +-----------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`     | :ref:`image_size<class_MeshTexture_property_image_size>`     | ``Vector2(0, 0)``                                                                      |
   +-----------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Mesh<class_Mesh>`           | :ref:`mesh<class_MeshTexture_property_mesh>`                 |                                                                                        |
   +-----------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | resource_local_to_scene                                      | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-----------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_MeshTexture_property_base_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **base_texture** :ref:`🔗<class_MeshTexture_property_base_texture>`

.. rst-class:: classref-property-setget

- |void| **set_base_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_base_texture**\ (\ )

Imposta la texture di base che la Mesh utilizzerà per disegnare.

.. rst-class:: classref-item-separator

----

.. _class_MeshTexture_property_image_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **image_size** = ``Vector2(0, 0)`` :ref:`🔗<class_MeshTexture_property_image_size>`

.. rst-class:: classref-property-setget

- |void| **set_image_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_image_size**\ (\ )

Imposta le dimensioni dell'immagine, necessarie come riferimento.

.. rst-class:: classref-item-separator

----

.. _class_MeshTexture_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_MeshTexture_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

Imposta la mesh utilizzata il disegno. Deve essere una mesh con vertici 2D.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
