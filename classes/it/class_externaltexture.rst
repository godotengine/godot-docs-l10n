:github_url: hide

.. _class_ExternalTexture:

ExternalTexture
===============

**Eredita:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Texture che visualizza il contenuto di un buffer esterno.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Visualizza il contenuto di un buffer esterno fornito dalla piattaforma.

Richiede l'estensione `OES_EGL_image_external <https://registry.khronos.org/OpenGL/extensions/OES/OES_EGL_image_external.txt>`__ (OpenGL) o l'estensione `VK_ANDROID_external_memory_android_hardware_buffer <https://registry.khronos.org/vulkan/specs/1.1-extensions/html/vkspec.html#VK_ANDROID_external_memory_android_hardware_buffer>`__ (Vulkan).

\ **Nota:** Questo attualmente è supportato solo nelle build Android.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | resource_local_to_scene                          | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-------------------------------+--------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`size<class_ExternalTexture_property_size>` | ``Vector2(256, 256)``                                                                  |
   +-------------------------------+--------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_external_texture_id<class_ExternalTexture_method_get_external_texture_id>`\ (\ ) |const|                                   |
   +-----------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`set_external_buffer_id<class_ExternalTexture_method_set_external_buffer_id>`\ (\ external_buffer_id\: :ref:`int<class_int>`\ ) |
   +-----------------------+--------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ExternalTexture_property_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **size** = ``Vector2(256, 256)`` :ref:`🔗<class_ExternalTexture_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_size**\ (\ )

Dimensioni della texture esterna.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ExternalTexture_method_get_external_texture_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_external_texture_id**\ (\ ) |const| :ref:`🔗<class_ExternalTexture_method_get_external_texture_id>`

Restituisce l'ID della texture esterna.

A seconda del caso d'uso, potrebbe essere necessario passarlo alle API della piattaforma, ad esempio quando si crea un ``android.graphics.SurfaceTexture`` su Android.

.. rst-class:: classref-item-separator

----

.. _class_ExternalTexture_method_set_external_buffer_id:

.. rst-class:: classref-method

|void| **set_external_buffer_id**\ (\ external_buffer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ExternalTexture_method_set_external_buffer_id>`

Imposta l'ID del buffer esterno.

A seconda del caso d'uso, potrebbe essere necessario passarlo alle API della piattaforma, ad esempio quando si crea un ``android.graphics.SurfaceTexture`` su Android.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
