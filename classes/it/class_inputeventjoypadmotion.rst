:github_url: hide

.. meta::
	:keywords: gamepad, controller

.. _class_InputEventJoypadMotion:

InputEventJoypadMotion
======================

**Eredita:** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Rappresenta i movimenti degli assi (come quelli del joystick o dei grilletti analogici) da un gamepad.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Memorizza informazioni sui movimenti del joystick. Un **InputEventJoypadMotion** rappresenta un asse alla volta. Per i pulsanti del gamepad, vedi :ref:`InputEventJoypadButton<class_InputEventJoypadButton>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo di InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------------+---------------------------------------------------------------------+---------+
   | :ref:`JoyAxis<enum_@GlobalScope_JoyAxis>` | :ref:`axis<class_InputEventJoypadMotion_property_axis>`             | ``0``   |
   +-------------------------------------------+---------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                 | :ref:`axis_value<class_InputEventJoypadMotion_property_axis_value>` | ``0.0`` |
   +-------------------------------------------+---------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_InputEventJoypadMotion_property_axis:

.. rst-class:: classref-property

:ref:`JoyAxis<enum_@GlobalScope_JoyAxis>` **axis** = ``0`` :ref:`🔗<class_InputEventJoypadMotion_property_axis>`

.. rst-class:: classref-property-setget

- |void| **set_axis**\ (\ value\: :ref:`JoyAxis<enum_@GlobalScope_JoyAxis>`\ )
- :ref:`JoyAxis<enum_@GlobalScope_JoyAxis>` **get_axis**\ (\ )

Identificatore dell'asse.

.. rst-class:: classref-item-separator

----

.. _class_InputEventJoypadMotion_property_axis_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **axis_value** = ``0.0`` :ref:`🔗<class_InputEventJoypadMotion_property_axis_value>`

.. rst-class:: classref-property-setget

- |void| **set_axis_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_axis_value**\ (\ )

Posizione attuale del joystick sull'asse specificato. Il valore è compreso da ``-1.0`` a ``1.0``. Un valore di ``0`` significa che l'asse è nella sua posizione di riposo.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
