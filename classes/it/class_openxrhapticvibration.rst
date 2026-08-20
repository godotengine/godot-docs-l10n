:github_url: hide

.. _class_OpenXRHapticVibration:

OpenXRHapticVibration
=====================

**Eredita:** :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Vibration haptic feedback.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa risorsa di feedback tattile consente di definire un impulso di feedback tattile basato sulla vibrazione che può essere attivato tramite azioni nella mappa delle azioni OpenXR.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`amplitude<class_OpenXRHapticVibration_property_amplitude>` | ``1.0`` |
   +---------------------------+------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`duration<class_OpenXRHapticVibration_property_duration>`   | ``-1``  |
   +---------------------------+------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`frequency<class_OpenXRHapticVibration_property_frequency>` | ``0.0`` |
   +---------------------------+------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_OpenXRHapticVibration_property_amplitude:

.. rst-class:: classref-property

:ref:`float<class_float>` **amplitude** = ``1.0`` :ref:`🔗<class_OpenXRHapticVibration_property_amplitude>`

.. rst-class:: classref-property-setget

- |void| **set_amplitude**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_amplitude**\ (\ )

L'amplitudine dell'impulso tra ``0.0`` e ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRHapticVibration_property_duration:

.. rst-class:: classref-property

:ref:`int<class_int>` **duration** = ``-1`` :ref:`🔗<class_OpenXRHapticVibration_property_duration>`

.. rst-class:: classref-property-setget

- |void| **set_duration**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_duration**\ (\ )

La durata dell'impulso in nanosecondi. Usare ``-1`` per un impulso di durata minima per il runtime XR attuale.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRHapticVibration_property_frequency:

.. rst-class:: classref-property

:ref:`float<class_float>` **frequency** = ``0.0`` :ref:`🔗<class_OpenXRHapticVibration_property_frequency>`

.. rst-class:: classref-property-setget

- |void| **set_frequency**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_frequency**\ (\ )

La frequenza dell'impulso in Hz. ``0.0`` consentirà al runtime XR di scegliere una frequenza ottimale per il dispositivo utilizzato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
