:github_url: hide

.. _class_VisualShaderNodeInput:

VisualShaderNodeInput
=====================

**Eredita:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Rappresenta il parametro shader di input all'interno del grafico di visual shader.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Da accesso alle variabili di input (integrate) disponibili per lo shader. Vedi il riferimento di shader per l'elenco dei built-in disponibili per ogni tipo di shader (controlla la sezione ``Tutorials`` per il collegamento).

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Indice di riferimento di shader <../tutorials/shaders/shader_reference/index>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------+--------------+
   | :ref:`String<class_String>` | :ref:`input_name<class_VisualShaderNodeInput_property_input_name>` | ``"[None]"`` |
   +-----------------------------+--------------------------------------------------------------------+--------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_input_real_name<class_VisualShaderNodeInput_method_get_input_real_name>`\ (\ ) |const| |
   +-----------------------------+--------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_VisualShaderNodeInput_signal_input_type_changed:

.. rst-class:: classref-signal

**input_type_changed**\ (\ ) :ref:`🔗<class_VisualShaderNodeInput_signal_input_type_changed>`

Emesso quando l'ingresso viene modificato tramite :ref:`input_name<class_VisualShaderNodeInput_property_input_name>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeInput_property_input_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **input_name** = ``"[None]"`` :ref:`🔗<class_VisualShaderNodeInput_property_input_name>`

.. rst-class:: classref-property-setget

- |void| **set_input_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_input_name**\ (\ )

Una delle diverse costanti di input in stile minuscolo come: "vertex" (``VERTEX``) o "point_size" (``POINT_SIZE``).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_VisualShaderNodeInput_method_get_input_real_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_input_real_name**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeInput_method_get_input_real_name>`

Restituisce un nome tradotto della costante attuale nel Godot Shader Language. Ad esempio ``"ALBEDO"`` se :ref:`input_name<class_VisualShaderNodeInput_property_input_name>` è uguale a ``"albedo"``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
