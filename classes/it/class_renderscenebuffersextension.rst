:github_url: hide

.. _class_RenderSceneBuffersExtension:

RenderSceneBuffersExtension
===========================

**Eredita:** :ref:`RenderSceneBuffers<class_RenderSceneBuffers>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Questa classe consente di implementare un RenderSceneBuffer in GDExtension.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa classe consente di implementare un RenderSceneBuffer in GDExtension.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_configure<class_RenderSceneBuffersExtension_private_method__configure>`\ (\ config\: :ref:`RenderSceneBuffersConfiguration<class_RenderSceneBuffersConfiguration>`\ ) |virtual|          |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_set_anisotropic_filtering_level<class_RenderSceneBuffersExtension_private_method__set_anisotropic_filtering_level>`\ (\ anisotropic_filtering_level\: :ref:`int<class_int>`\ ) |virtual| |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_set_fsr_sharpness<class_RenderSceneBuffersExtension_private_method__set_fsr_sharpness>`\ (\ fsr_sharpness\: :ref:`float<class_float>`\ ) |virtual|                                       |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_set_texture_mipmap_bias<class_RenderSceneBuffersExtension_private_method__set_texture_mipmap_bias>`\ (\ texture_mipmap_bias\: :ref:`float<class_float>`\ ) |virtual|                     |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_set_use_debanding<class_RenderSceneBuffersExtension_private_method__set_use_debanding>`\ (\ use_debanding\: :ref:`bool<class_bool>`\ ) |virtual|                                         |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_RenderSceneBuffersExtension_private_method__configure:

.. rst-class:: classref-method

|void| **_configure**\ (\ config\: :ref:`RenderSceneBuffersConfiguration<class_RenderSceneBuffersConfiguration>`\ ) |virtual| :ref:`🔗<class_RenderSceneBuffersExtension_private_method__configure>`

Implementa questo metodo in GDExtension per gestire il (ri)dimensionamento di una viewport.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersExtension_private_method__set_anisotropic_filtering_level:

.. rst-class:: classref-method

|void| **_set_anisotropic_filtering_level**\ (\ anisotropic_filtering_level\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_RenderSceneBuffersExtension_private_method__set_anisotropic_filtering_level>`

Implementa questo metodo in GDExtension per cambiare il livello del filtro anisotropico.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersExtension_private_method__set_fsr_sharpness:

.. rst-class:: classref-method

|void| **_set_fsr_sharpness**\ (\ fsr_sharpness\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_RenderSceneBuffersExtension_private_method__set_fsr_sharpness>`

Implementa questo metodo in GDExtension per registrare un nuovo valore di nitidezza del FSR.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersExtension_private_method__set_texture_mipmap_bias:

.. rst-class:: classref-method

|void| **_set_texture_mipmap_bias**\ (\ texture_mipmap_bias\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_RenderSceneBuffersExtension_private_method__set_texture_mipmap_bias>`

Implementa questo metodo in GDExtension per cambiare il bias delle mipmap delle texture.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersExtension_private_method__set_use_debanding:

.. rst-class:: classref-method

|void| **_set_use_debanding**\ (\ use_debanding\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_RenderSceneBuffersExtension_private_method__set_use_debanding>`

Implementa questo metodo in GDExtension per reagire al cambio del flag di debanding.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
