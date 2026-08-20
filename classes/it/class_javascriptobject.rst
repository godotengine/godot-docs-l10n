:github_url: hide

.. _class_JavaScriptObject:

JavaScriptObject
================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una classe wrapper per oggetti JavaScript nativi del web.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Il JavaScriptObject serve per interagire con oggetti JavaScript recuperati o creati tramite :ref:`JavaScriptBridge.get_interface()<class_JavaScriptBridge_method_get_interface>`, :ref:`JavaScriptBridge.create_object()<class_JavaScriptBridge_method_create_object>` o :ref:`JavaScriptBridge.create_callback()<class_JavaScriptBridge_method_create_callback>`.

::

    extends Node

    var _my_js_callback = JavaScriptBridge.create_callback(myCallback) # Questo riferimento deve essere mantenuto
    var console = JavaScriptBridge.get_interface("console")

    func _init():
        var buf = JavaScriptBridge.create_object("ArrayBuffer", 10) # new ArrayBuffer(10)
        print(buf) # Stampa [JavaScriptObject:OBJECT_ID]
        var uint8arr = JavaScriptBridge.create_object("Uint8Array", buf) # new Uint8Array(buf)
        uint8arr[1] = 255
        prints(uint8arr[1], uint8arr.byteLength) # Stampa "255 10"

        # Stampa "Uint8Array(10) [ 0, 255, 0, 0, 0, 0, 0, 0, 0, 0 ]" nella console del browser.
        console.log(uint8arr)

        # Equivalente di JavaScriptBridge: Array.from(uint8arr).forEach(myCallback)
        JavaScriptBridge.get_interface("Array").from(uint8arr).forEach(_my_js_callback)

    func myCallback(args):
        # Verrà chiamato con i parametri passati al callback "forEach"
        # [0, 0, [JavaScriptObject:1173]]
        # [255, 1, [JavaScriptObject:1173]]
        # ...
        # [0, 9, [JavaScriptObject:1180]]
        print(args)

\ **Nota:** Disponibile solo nella piattaforma Web.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
