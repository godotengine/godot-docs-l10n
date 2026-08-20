:github_url: hide

.. _class_OpenXRAnalogThresholdModifier:

OpenXRAnalogThresholdModifier
=============================

**Eredita:** :ref:`OpenXRActionBindingModifier<class_OpenXRActionBindingModifier>` **<** :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Il modificatore di associazione della soglia analogica può modificare un input float in un input booleano con le soglie specificate.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Il modificatore di associazione della soglia analogica può modificare un input float in un input booleano con le soglie specificate.

Consulta `XR_VALVE_analog_threshold <https://registry.khronos.org/OpenXR/specs/1.1/html/xrspec.html#XR_VALVE_analog_threshold>`__ per dettagli approfonditi.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------------------+----------------------------------------------------------------------------------+---------+
   | :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` | :ref:`off_haptic<class_OpenXRAnalogThresholdModifier_property_off_haptic>`       |         |
   +-------------------------------------------------+----------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                       | :ref:`off_threshold<class_OpenXRAnalogThresholdModifier_property_off_threshold>` | ``0.4`` |
   +-------------------------------------------------+----------------------------------------------------------------------------------+---------+
   | :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` | :ref:`on_haptic<class_OpenXRAnalogThresholdModifier_property_on_haptic>`         |         |
   +-------------------------------------------------+----------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                       | :ref:`on_threshold<class_OpenXRAnalogThresholdModifier_property_on_threshold>`   | ``0.6`` |
   +-------------------------------------------------+----------------------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_OpenXRAnalogThresholdModifier_property_off_haptic:

.. rst-class:: classref-property

:ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **off_haptic** :ref:`🔗<class_OpenXRAnalogThresholdModifier_property_off_haptic>`

.. rst-class:: classref-property-setget

- |void| **set_off_haptic**\ (\ value\: :ref:`OpenXRHapticBase<class_OpenXRHapticBase>`\ )
- :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **get_off_haptic**\ (\ )

Impulso tattile da emettere quando l'utente rilascia l'input.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRAnalogThresholdModifier_property_off_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **off_threshold** = ``0.4`` :ref:`🔗<class_OpenXRAnalogThresholdModifier_property_off_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_off_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_off_threshold**\ (\ )

Quando il valore di input scende al di sotto di questo valore, l'output diventa ``falso``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRAnalogThresholdModifier_property_on_haptic:

.. rst-class:: classref-property

:ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **on_haptic** :ref:`🔗<class_OpenXRAnalogThresholdModifier_property_on_haptic>`

.. rst-class:: classref-property-setget

- |void| **set_on_haptic**\ (\ value\: :ref:`OpenXRHapticBase<class_OpenXRHapticBase>`\ )
- :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **get_on_haptic**\ (\ )

Impulso tattile da emettere quando l'utente preme l'input.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRAnalogThresholdModifier_property_on_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **on_threshold** = ``0.6`` :ref:`🔗<class_OpenXRAnalogThresholdModifier_property_on_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_on_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_on_threshold**\ (\ )

Quando il nostro valore di input è uguale o maggiore di questo valore, il nostro output diventa ``true``. Rimane ``true`` finché non scende al di sotto del valore di :ref:`off_threshold<class_OpenXRAnalogThresholdModifier_property_off_threshold>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
