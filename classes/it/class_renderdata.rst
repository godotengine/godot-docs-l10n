:github_url: hide

.. _class_RenderData:

RenderData
==========

**Eredita:** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`RenderDataExtension<class_RenderDataExtension>`, :ref:`RenderDataRD<class_RenderDataRD>`

Oggetto astratto di dati di rendering, contiene i dati dei frame relativi al rendering di un singolo frame di una viewport.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Abstract render data object, exists for the duration of rendering a single viewport. See also :ref:`RenderDataRD<class_RenderDataRD>`, :ref:`RenderSceneData<class_RenderSceneData>`, and :ref:`RenderSceneDataRD<class_RenderSceneDataRD>`.

\ **Note:** This is an internal rendering server object. Do not instantiate this class from a script.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`get_camera_attributes<class_RenderData_method_get_camera_attributes>`\ (\ ) |const|       |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`get_environment<class_RenderData_method_get_environment>`\ (\ ) |const|                   |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`RenderSceneBuffers<class_RenderSceneBuffers>` | :ref:`get_render_scene_buffers<class_RenderData_method_get_render_scene_buffers>`\ (\ ) |const| |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`RenderSceneData<class_RenderSceneData>`       | :ref:`get_render_scene_data<class_RenderData_method_get_render_scene_data>`\ (\ ) |const|       |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_RenderData_method_get_camera_attributes:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_camera_attributes**\ (\ ) |const| :ref:`🔗<class_RenderData_method_get_camera_attributes>`

Restituisce il :ref:`RID<class_RID>` dell'oggetto attributi della telecamera nel :ref:`RenderingServer<class_RenderingServer>` usato per renderizzare questa viewport.

.. rst-class:: classref-item-separator

----

.. _class_RenderData_method_get_environment:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_environment**\ (\ ) |const| :ref:`🔗<class_RenderData_method_get_environment>`

Restituisce il :ref:`RID<class_RID>` dell'oggetto ambiente nel :ref:`RenderingServer<class_RenderingServer>` attualmente usato per renderizzare questa viewport.

.. rst-class:: classref-item-separator

----

.. _class_RenderData_method_get_render_scene_buffers:

.. rst-class:: classref-method

:ref:`RenderSceneBuffers<class_RenderSceneBuffers>` **get_render_scene_buffers**\ (\ ) |const| :ref:`🔗<class_RenderData_method_get_render_scene_buffers>`

Restituisce l'oggetto :ref:`RenderSceneBuffers<class_RenderSceneBuffers>` che gestisce i buffer di scena per renderizzare questa viewport.

.. rst-class:: classref-item-separator

----

.. _class_RenderData_method_get_render_scene_data:

.. rst-class:: classref-method

:ref:`RenderSceneData<class_RenderSceneData>` **get_render_scene_data**\ (\ ) |const| :ref:`🔗<class_RenderData_method_get_render_scene_data>`

Restituisce l'oggetto :ref:`RenderSceneData<class_RenderSceneData>` che gestisce i dati della scena in questo frame.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
