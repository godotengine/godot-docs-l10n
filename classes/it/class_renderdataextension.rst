:github_url: hide

.. _class_RenderDataExtension:

RenderDataExtension
===================

**Eredita:** :ref:`RenderData<class_RenderData>` **<** :ref:`Object<class_Object>`

Questa classe consente di creare un'implementazione di RenderData in GDExtension.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa classe consente di creare un'implementazione di RenderData in GDExtension.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`_get_camera_attributes<class_RenderDataExtension_private_method__get_camera_attributes>`\ (\ ) |virtual| |const|       |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`_get_environment<class_RenderDataExtension_private_method__get_environment>`\ (\ ) |virtual| |const|                   |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RenderSceneBuffers<class_RenderSceneBuffers>` | :ref:`_get_render_scene_buffers<class_RenderDataExtension_private_method__get_render_scene_buffers>`\ (\ ) |virtual| |const| |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RenderSceneData<class_RenderSceneData>`       | :ref:`_get_render_scene_data<class_RenderDataExtension_private_method__get_render_scene_data>`\ (\ ) |virtual| |const|       |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_RenderDataExtension_private_method__get_camera_attributes:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_camera_attributes**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderDataExtension_private_method__get_camera_attributes>`

Da implementare in GDExtension per restituire il :ref:`RID<class_RID>` per l'oggetto degli attributi della telecamera per questa implementazione.

.. rst-class:: classref-item-separator

----

.. _class_RenderDataExtension_private_method__get_environment:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_environment**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderDataExtension_private_method__get_environment>`

Da implementare in GDExtension per restituire il :ref:`RID<class_RID>` per l'oggetto dell'ambiente per questa implementazione.

.. rst-class:: classref-item-separator

----

.. _class_RenderDataExtension_private_method__get_render_scene_buffers:

.. rst-class:: classref-method

:ref:`RenderSceneBuffers<class_RenderSceneBuffers>` **_get_render_scene_buffers**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderDataExtension_private_method__get_render_scene_buffers>`

Da implementare in GDExtension per restituire l'oggetto :ref:`RenderSceneBuffers<class_RenderSceneBuffers>` di questa implementazione.

.. rst-class:: classref-item-separator

----

.. _class_RenderDataExtension_private_method__get_render_scene_data:

.. rst-class:: classref-method

:ref:`RenderSceneData<class_RenderSceneData>` **_get_render_scene_data**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderDataExtension_private_method__get_render_scene_data>`

Da implementare in GDExtension per restituire l'oggetto :ref:`RenderSceneDataExtension<class_RenderSceneDataExtension>` di questa implementazione.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
