:github_url: hide

.. _class_XRPose:

XRPose
======

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Questo oggetto contiene tutti i dati relativi a una posa su un oggetto tracciato.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

I runtime XR spesso identificano più posizioni su dispositivi come controller che sono tracciati spazialmente.

Orientamento, posizione, velocità lineare e velocità angolare sono tutti forniti per ogni posa dal runtime XR. Questo oggetto contiene questo stato di una posa.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Indice della documentazione XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------+-----------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                             | :ref:`angular_velocity<class_XRPose_property_angular_velocity>`       | ``Vector3(0, 0, 0)``                                |
   +-----------------------------------------------------------+-----------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`has_tracking_data<class_XRPose_property_has_tracking_data>`     | ``false``                                           |
   +-----------------------------------------------------------+-----------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                             | :ref:`linear_velocity<class_XRPose_property_linear_velocity>`         | ``Vector3(0, 0, 0)``                                |
   +-----------------------------------------------------------+-----------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`StringName<class_StringName>`                       | :ref:`name<class_XRPose_property_name>`                               | ``&""``                                             |
   +-----------------------------------------------------------+-----------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>` | :ref:`tracking_confidence<class_XRPose_property_tracking_confidence>` | ``0``                                               |
   +-----------------------------------------------------------+-----------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                     | :ref:`transform<class_XRPose_property_transform>`                     | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +-----------------------------------------------------------+-----------------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`get_adjusted_transform<class_XRPose_method_get_adjusted_transform>`\ (\ ) |const| |
   +---------------------------------------+-----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_XRPose_TrackingConfidence:

.. rst-class:: classref-enumeration

enum **TrackingConfidence**: :ref:`🔗<enum_XRPose_TrackingConfidence>`

.. _class_XRPose_constant_XR_TRACKING_CONFIDENCE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>` **XR_TRACKING_CONFIDENCE_NONE** = ``0``

Non sono disponibili informazioni di tracciamento per questa posa.

.. _class_XRPose_constant_XR_TRACKING_CONFIDENCE_LOW:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>` **XR_TRACKING_CONFIDENCE_LOW** = ``1``

Le informazioni di tracciamento potrebbero essere imprecise o stimate. Ad esempio, con il tracciamento "inside out" questo indicherebbe che un controller potrebbe essere (parzialmente) oscurato.

.. _class_XRPose_constant_XR_TRACKING_CONFIDENCE_HIGH:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>` **XR_TRACKING_CONFIDENCE_HIGH** = ``2``

Le informazioni di tracciamento sono considerate accurate e aggiornate.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_XRPose_property_angular_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **angular_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_XRPose_property_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_angular_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_angular_velocity**\ (\ )

La velocità angolare per questa posa.

.. rst-class:: classref-item-separator

----

.. _class_XRPose_property_has_tracking_data:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **has_tracking_data** = ``false`` :ref:`🔗<class_XRPose_property_has_tracking_data>`

.. rst-class:: classref-property-setget

- |void| **set_has_tracking_data**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_has_tracking_data**\ (\ )

Se ``true`` i nostri dati di tracciamento sono aggiornati. Se ``false`` non stiamo ricevendo più nuovi dati di tracciamento e il nostro stato è qualunque fosse l'ultimo stato valido.

.. rst-class:: classref-item-separator

----

.. _class_XRPose_property_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **linear_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_XRPose_property_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_linear_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_linear_velocity**\ (\ )

La velocità lineare di questa posa.

.. rst-class:: classref-item-separator

----

.. _class_XRPose_property_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **name** = ``&""`` :ref:`🔗<class_XRPose_property_name>`

.. rst-class:: classref-property-setget

- |void| **set_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_name**\ (\ )

Il nome di questa posa. Di solito, questo nome è derivato da una mappa di azioni configurata dall'utente. Godot suggerisce inoltre alcuni nomi di pose che gli oggetti :ref:`XRInterface<class_XRInterface>` dovrebbero implementare:

- ``root`` è la posizione radice, spesso utilizzata per gli oggetti tracciati che non hanno ulteriori nodi.

- ``aim`` è la punta di un controller con l'orientamento rivolto verso l'esterno, spesso usato per i raycast.

- ``grip`` è la posizione in cui l'utente afferra il controller

- ``skeleton`` è la posizione radice di una mesh di mano, quando si utilizza il tracciamento delle mani e uno scheletro animato è fornito dal runtime XR.

.. rst-class:: classref-item-separator

----

.. _class_XRPose_property_tracking_confidence:

.. rst-class:: classref-property

:ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>` **tracking_confidence** = ``0`` :ref:`🔗<class_XRPose_property_tracking_confidence>`

.. rst-class:: classref-property-setget

- |void| **set_tracking_confidence**\ (\ value\: :ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>`\ )
- :ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>` **get_tracking_confidence**\ (\ )

L'affidabilità del tracciamento per questa posa fornisce informazioni su quanto sia accurato il posizionamento spaziale di questa registrazione.

.. rst-class:: classref-item-separator

----

.. _class_XRPose_property_transform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **transform** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_XRPose_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_transform**\ (\ )

La trasformazione contenente l'origine e la trasformazione come riportata dal runtime XR.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_XRPose_method_get_adjusted_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_adjusted_transform**\ (\ ) |const| :ref:`🔗<class_XRPose_method_get_adjusted_transform>`

Restituisce la :ref:`transform<class_XRPose_property_transform>` con scala mondiale e il nostro sistema di riferimento applicato. Questa è la trasformazione usata per posizionare gli oggetti :ref:`XRNode3D<class_XRNode3D>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
