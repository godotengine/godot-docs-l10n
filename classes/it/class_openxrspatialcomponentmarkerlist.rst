:github_url: hide

.. _class_OpenXRSpatialComponentMarkerList:

OpenXRSpatialComponentMarkerList
================================

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Object for storing the queries marker result data.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Oggetto per memorizzare i dati risultanti di una richiesta sui marcatori quando si chiama :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                       | :ref:`get_marker_data<class_OpenXRSpatialComponentMarkerList_method_get_marker_data>`\ (\ snapshot\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                               | :ref:`get_marker_id<class_OpenXRSpatialComponentMarkerList_method_get_marker_id>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                       |
   +---------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` | :ref:`get_marker_type<class_OpenXRSpatialComponentMarkerList_method_get_marker_type>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                   |
   +---------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_OpenXRSpatialComponentMarkerList_MarkerType:

.. rst-class:: classref-enumeration

enum **MarkerType**: :ref:`🔗<enum_OpenXRSpatialComponentMarkerList_MarkerType>`

.. _class_OpenXRSpatialComponentMarkerList_constant_MARKER_TYPE_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` **MARKER_TYPE_UNKNOWN** = ``0``

Marcatore sconosciuto o non impostato.

.. _class_OpenXRSpatialComponentMarkerList_constant_MARKER_TYPE_QRCODE:

.. rst-class:: classref-enumeration-constant

:ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` **MARKER_TYPE_QRCODE** = ``1``

Marcatore basato su un codice QR.

.. _class_OpenXRSpatialComponentMarkerList_constant_MARKER_TYPE_MICRO_QRCODE:

.. rst-class:: classref-enumeration-constant

:ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` **MARKER_TYPE_MICRO_QRCODE** = ``2``

Marcatore basato su un codice QR micro.

.. _class_OpenXRSpatialComponentMarkerList_constant_MARKER_TYPE_ARUCO:

.. rst-class:: classref-enumeration-constant

:ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` **MARKER_TYPE_ARUCO** = ``3``

Marcatore basato su un codice Aruco.

.. _class_OpenXRSpatialComponentMarkerList_constant_MARKER_TYPE_APRIL_TAG:

.. rst-class:: classref-enumeration-constant

:ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` **MARKER_TYPE_APRIL_TAG** = ``4``

Marcatore basato su un April Tag.

.. _class_OpenXRSpatialComponentMarkerList_constant_MARKER_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` **MARKER_TYPE_MAX** = ``5``

Valore massimo di questa enumerazione.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_OpenXRSpatialComponentMarkerList_method_get_marker_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_marker_data**\ (\ snapshot\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentMarkerList_method_get_marker_data>`

Restituisce un buffer di tipo :ref:`String<class_String>` o :ref:`PackedByteArray<class_PackedByteArray>` contenente i dati relativi al marcatore all'indice ``index``. Applicabile solo ai marcatori di codici QR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentMarkerList_method_get_marker_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_marker_id**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentMarkerList_method_get_marker_id>`

Restituisce l'ID del marcatore per il marcatore all'indice ``index``. Applicabile solo ai marcatori Aruco o April Tag.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentMarkerList_method_get_marker_type:

.. rst-class:: classref-method

:ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` **get_marker_type**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentMarkerList_method_get_marker_type>`

Restituisce il tipo di marcatore per il marcatore all'indice ``index``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
