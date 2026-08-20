:github_url: hide

.. _class_EditorResourceConversionPlugin:

EditorResourceConversionPlugin
==============================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Estensione per aggiungere convertitori personalizzati da un formato di risorsa a un altro nel menu contestuale del selettore delle risorse dell'editor; ad esempio, convertire uno :ref:`StandardMaterial3D<class_StandardMaterial3D>` in uno :ref:`ShaderMaterial<class_ShaderMaterial>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**EditorResourceConversionPlugin** è utilizzato nel menu contestuale per una risorsa nell'ispettore dell'editor. Le estensioni di conversione pertinenti appariranno come opzioni del menu per convertire la risorsa specificata in un determinato tipo.

Di seguito è riportato un esempio di un'estensione base che convertirà un :ref:`ImageTexture<class_ImageTexture>` in un :ref:`PortableCompressedTexture2D<class_PortableCompressedTexture2D>`.


.. tabs::

 .. code-tab:: gdscript

    extends EditorResourceConversionPlugin

    func _handles(resource: Resource):
        return resource is ImageTexture

    func _converts_to():
        return "PortableCompressedTexture2D"

    func _convert(itex: Resource):
        var ptex = PortableCompressedTexture2D.new()
        ptex.create_from_image(itex.get_image(), PortableCompressedTexture2D.COMPRESSION_MODE_LOSSLESS)
        return ptex



Per usare un **EditorResourceConversionPlugin**, registralo prima attraverso il metodo :ref:`EditorPlugin.add_resource_conversion_plugin()<class_EditorPlugin_method_add_resource_conversion_plugin>`.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>` | :ref:`_convert<class_EditorResourceConversionPlugin_private_method__convert>`\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const| |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`     | :ref:`_converts_to<class_EditorResourceConversionPlugin_private_method__converts_to>`\ (\ ) |virtual| |const|                                     |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`_handles<class_EditorResourceConversionPlugin_private_method__handles>`\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const| |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_EditorResourceConversionPlugin_private_method__convert:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **_convert**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const| :ref:`🔗<class_EditorResourceConversionPlugin_private_method__convert>`

Accetta un :ref:`Resource<class_Resource>` in input e la converte nel tipo specificato in :ref:`_converts_to()<class_EditorResourceConversionPlugin_private_method__converts_to>`. Il valore restituito :ref:`Resource<class_Resource>` è il risultato della conversione e la :ref:`Resource<class_Resource>` in input rimane invariato.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourceConversionPlugin_private_method__converts_to:

.. rst-class:: classref-method

:ref:`String<class_String>` **_converts_to**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorResourceConversionPlugin_private_method__converts_to>`

Restituisce il nome della classe del tipo di destinazione di :ref:`Resource<class_Resource>` in cui questo plugin converte le risorse originali.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourceConversionPlugin_private_method__handles:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_handles**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const| :ref:`🔗<class_EditorResourceConversionPlugin_private_method__handles>`

Chiamato per determinare se una particolare :ref:`Resource<class_Resource>` può essere convertita nel tipo specificato di risorsa da questa estensione.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
