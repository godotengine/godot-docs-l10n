:github_url: hide

.. _class_EditorScript:

EditorScript
============

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Script di base che consente di estendere le funzionalità dell'editor.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Gli script che estendono questa classe e implementano il suo metodo :ref:`_run()<class_EditorScript_private_method__run>` si possono eseguire dall'opzione di menu **File > Esegui** dell'Editor di script (o premendo :kbd:`Ctrl + Maiusc + X`) mentre l'editor è in esecuzione. Ciò è utile per aggiungere funzionalità personalizzate nell'editor a Godot. Per funzionalità più complesse, considera di utilizzare gli :ref:`EditorPlugin<class_EditorPlugin>`.

Se uno script che estende questa classe ha anche un nome di classe globale, sarà incluso nella tavolozza dei comandi dell'editor.

\ **Nota:** Gli script che estendono questa classe devono avere la modalità ``tool`` abilitata.

\ **Esempio:** Eseguendo il seguente script stampa "Ciao dall'editor di Godot!":


.. tabs::

 .. code-tab:: gdscript

    @tool
    extends EditorScript

    func _run():
        print("Ciao dall'editor di Godot!")

 .. code-tab:: csharp

    using Godot;

    [Tool]
    public partial class HelloEditor : EditorScript
    {
        public override void _Run()
        {
            GD.Print("Ciao dall'editor di Godot!")
        }
    }



\ **Nota:** EditorScript è :ref:`RefCounted<class_RefCounted>`, il che significa che viene distrutto quando nulla vi fa riferimento. Ciò può causare errori durante le operazioni asincrone se non ci sono riferimenti allo script.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`_run<class_EditorScript_private_method__run>`\ (\ ) |virtual| |required|                      |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`add_root_node<class_EditorScript_method_add_root_node>`\ (\ node\: :ref:`Node<class_Node>`\ ) |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`EditorInterface<class_EditorInterface>` | :ref:`get_editor_interface<class_EditorScript_method_get_editor_interface>`\ (\ ) |const|           |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`                       | :ref:`get_scene<class_EditorScript_method_get_scene>`\ (\ ) |const|                                 |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_EditorScript_private_method__run:

.. rst-class:: classref-method

|void| **_run**\ (\ ) |virtual| |required| :ref:`🔗<class_EditorScript_private_method__run>`

Questo metodo viene eseguito dall'Editor quando si utilizza **File > Esegui**.

.. rst-class:: classref-item-separator

----

.. _class_EditorScript_method_add_root_node:

.. rst-class:: classref-method

|void| **add_root_node**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_EditorScript_method_add_root_node>`

**Deprecato:** Use :ref:`EditorInterface.add_root_node()<class_EditorInterface_method_add_root_node>` instead.

Rende ``node`` la radice della scena attualmente aperta. Funziona solo se la scena è vuota. Se ``node`` è un'istanza di scena, verrà creata una scena ereditaria.

.. rst-class:: classref-item-separator

----

.. _class_EditorScript_method_get_editor_interface:

.. rst-class:: classref-method

:ref:`EditorInterface<class_EditorInterface>` **get_editor_interface**\ (\ ) |const| :ref:`🔗<class_EditorScript_method_get_editor_interface>`

**Deprecato:** :ref:`EditorInterface<class_EditorInterface>` is a global singleton and can be accessed directly by its name.

Restituisce l'istanza del singleton :ref:`EditorInterface<class_EditorInterface>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorScript_method_get_scene:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_scene**\ (\ ) |const| :ref:`🔗<class_EditorScript_method_get_scene>`

**Deprecato:** Use :ref:`EditorInterface.get_edited_scene_root()<class_EditorInterface_method_get_edited_scene_root>` instead.

Restituisce la radice :ref:`Node<class_Node>` della scena modificata (attuale). Equivalente a :ref:`EditorInterface.get_edited_scene_root()<class_EditorInterface_method_get_edited_scene_root>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
