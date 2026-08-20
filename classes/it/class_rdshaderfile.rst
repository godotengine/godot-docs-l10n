:github_url: hide

.. _class_RDShaderFile:

RDShaderFile
============

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

File di shader compilato nel formato SPIR-V (utilizzato da :ref:`RenderingDevice<class_RenderingDevice>`). Da non confondere con lo :ref:`Shader<class_Shader>` di Godot.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

File di shader compilato nel formato SPIR-V.

Vedi anche :ref:`RDShaderSource<class_RDShaderSource>`. **RDShaderFile** è pensato per essere utilizzato solo con l'API del :ref:`RenderingDevice<class_RenderingDevice>`. Non deve essere confuso con la risorsa :ref:`Shader<class_Shader>` di Godot, che è quella che i vari nodi di Godot usano per la programmazione di shader di alto livello.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`base_error<class_RDShaderFile_property_base_error>` | ``""`` |
   +-----------------------------+-----------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RDShaderSPIRV<class_RDShaderSPIRV>`                        | :ref:`get_spirv<class_RDShaderFile_method_get_spirv>`\ (\ version\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                     |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_version_list<class_RDShaderFile_method_get_version_list>`\ (\ ) |const|                                                                                            |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bytecode<class_RDShaderFile_method_set_bytecode>`\ (\ bytecode\: :ref:`RDShaderSPIRV<class_RDShaderSPIRV>`, version\: :ref:`StringName<class_StringName>` = &""\ ) |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_RDShaderFile_property_base_error:

.. rst-class:: classref-property

:ref:`String<class_String>` **base_error** = ``""`` :ref:`🔗<class_RDShaderFile_property_base_error>`

.. rst-class:: classref-property-setget

- |void| **set_base_error**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_base_error**\ (\ )

Il messaggio base di errore di compilazione, che indica errori non correlati a una fase specifica dello shader se non è vuoto. Se è vuoto, la compilazione dello shader non è necessariamente riuscita (verifica i membri nel messaggio di errore di :ref:`RDShaderSPIRV<class_RDShaderSPIRV>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_RDShaderFile_method_get_spirv:

.. rst-class:: classref-method

:ref:`RDShaderSPIRV<class_RDShaderSPIRV>` **get_spirv**\ (\ version\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_RDShaderFile_method_get_spirv>`

Restituisce la rappresentazione intermedia SPIR-V per lo shader specificato ``version``.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderFile_method_get_version_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_version_list**\ (\ ) |const| :ref:`🔗<class_RDShaderFile_method_get_version_list>`

Restituisce la lista delle versioni compilate per questo shader.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderFile_method_set_bytecode:

.. rst-class:: classref-method

|void| **set_bytecode**\ (\ bytecode\: :ref:`RDShaderSPIRV<class_RDShaderSPIRV>`, version\: :ref:`StringName<class_StringName>` = &""\ ) :ref:`🔗<class_RDShaderFile_method_set_bytecode>`

Imposta il bytecode SPIR-V che verrà compilato per la versione specificata ``version`` a ``bytecode``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
