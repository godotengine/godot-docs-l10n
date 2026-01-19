:github_url: hide

.. _class_RenderSceneData:

RenderSceneData
===============

**Eredita:** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`RenderSceneDataExtension<class_RenderSceneDataExtension>`, :ref:`RenderSceneDataRD<class_RenderSceneDataRD>`

Oggetto astratto di dati di rendering, contiene i dati di scena relativi al rendering di un singolo frame di una viewport.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Abstract scene data object, exists for the duration of rendering a single viewport. See also :ref:`RenderSceneDataRD<class_RenderSceneDataRD>`, :ref:`RenderData<class_RenderData>`, and :ref:`RenderDataRD<class_RenderDataRD>`.

\ **Note:** This is an internal rendering server object. Do not instantiate this class from a script.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>`   | :ref:`get_cam_projection<class_RenderSceneData_method_get_cam_projection>`\ (\ ) |const|                                 |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`get_cam_transform<class_RenderSceneData_method_get_cam_transform>`\ (\ ) |const|                                   |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                 | :ref:`get_uniform_buffer<class_RenderSceneData_method_get_uniform_buffer>`\ (\ ) |const|                                 |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_view_count<class_RenderSceneData_method_get_view_count>`\ (\ ) |const|                                         |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`get_view_eye_offset<class_RenderSceneData_method_get_view_eye_offset>`\ (\ view\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>`   | :ref:`get_view_projection<class_RenderSceneData_method_get_view_projection>`\ (\ view\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_RenderSceneData_method_get_cam_projection:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **get_cam_projection**\ (\ ) |const| :ref:`🔗<class_RenderSceneData_method_get_cam_projection>`

Restituisce la proiezione della telecamera utilizzata per renderizzare questo frame.

\ **Nota:** Se è renderizzata più di una vista, sarà restituita una proiezione combinata.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneData_method_get_cam_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_cam_transform**\ (\ ) |const| :ref:`🔗<class_RenderSceneData_method_get_cam_transform>`

Restituisce la trasformazione della telecamera utilizzata per renderizzare questo frame.

\ **Nota:** Se è renderizzata più di una vista, sarà restituita una trasformazione centrata.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneData_method_get_uniform_buffer:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_uniform_buffer**\ (\ ) |const| :ref:`🔗<class_RenderSceneData_method_get_uniform_buffer>`

Restituisce il :ref:`RID<class_RID>` del buffer uniforme contenente i dati della scena come UBO.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneData_method_get_view_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_view_count**\ (\ ) |const| :ref:`🔗<class_RenderSceneData_method_get_view_count>`

Restituisce il numero di viste che sono renderizzate.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneData_method_get_view_eye_offset:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_view_eye_offset**\ (\ view\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_RenderSceneData_method_get_view_eye_offset>`

Restituisce lo scostamento dell'occhio per una vista, utilizzato per renderizzare questo frame. Questo è lo scostamento tra la trasformazione della nostra telecamera e la trasformazione dell'occhio.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneData_method_get_view_projection:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **get_view_projection**\ (\ view\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_RenderSceneData_method_get_view_projection>`

Restituisce la proiezione della vista per una vista, utilizzata per renderizzare questo frame.

\ **Nota:** Se è renderizzata una singola vista, questo restituisce la proiezione della telecamera. Se sono renderizzate più viste, questo restituirà una proiezione per la vista specificata, incluso lo scostamento dell'occhio.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
