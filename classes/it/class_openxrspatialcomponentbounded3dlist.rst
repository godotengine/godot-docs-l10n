:github_url: hide

.. _class_OpenXRSpatialComponentBounded3DList:

OpenXRSpatialComponentBounded3DList
===================================

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Object for storing the queries bounded3d result data.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Oggetto per memorizzare i dati risultanti di una richiesta sui bounding box 3D quando si chiama :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`get_center_pose<class_OpenXRSpatialComponentBounded3DList_method_get_center_pose>`\ (\ index\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`get_size<class_OpenXRSpatialComponentBounded3DList_method_get_size>`\ (\ index\: :ref:`int<class_int>`\ ) |const|               |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_OpenXRSpatialComponentBounded3DList_method_get_center_pose:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_center_pose**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentBounded3DList_method_get_center_pose>`

Restituisce il centro del nostro riquadro limite per l'entità all'indice ``index``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentBounded3DList_method_get_size:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_size**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentBounded3DList_method_get_size>`

Restituisce le dimensioni del riquadro limite per l'entità all'indice ``index``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
