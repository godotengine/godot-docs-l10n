:github_url: hide

.. _class_OpenXRAnchorTracker:

OpenXRAnchorTracker
===================

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`OpenXRSpatialEntityTracker<class_OpenXRSpatialEntityTracker>` **<** :ref:`XRPositionalTracker<class_XRPositionalTracker>` **<** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Positional tracker for our spatial entity anchor extension.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Positional tracker for our OpenXR spatial entity anchor extension, it tracks a user defined location in real space and maps it to our virtual space.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`uuid<class_OpenXRAnchorTracker_property_uuid>` | ``""`` |
   +-----------------------------+------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`has_uuid<class_OpenXRAnchorTracker_method_has_uuid>`\ (\ ) |const| |
   +-------------------------+--------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_OpenXRAnchorTracker_signal_uuid_changed:

.. rst-class:: classref-signal

**uuid_changed**\ (\ ) :ref:`🔗<class_OpenXRAnchorTracker_signal_uuid_changed>`

Emesso quando l'UUID per questo ancoraggio è stato cambiato.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_OpenXRAnchorTracker_property_uuid:

.. rst-class:: classref-property

:ref:`String<class_String>` **uuid** = ``""`` :ref:`🔗<class_OpenXRAnchorTracker_property_uuid>`

.. rst-class:: classref-property-setget

- |void| **set_uuid**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_uuid**\ (\ )

L'UUID fornito per gli ancoraggi persistenti.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_OpenXRAnchorTracker_method_has_uuid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_uuid**\ (\ ) |const| :ref:`🔗<class_OpenXRAnchorTracker_method_has_uuid>`

Returns ``true`` if a non-zero UUID is set.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
