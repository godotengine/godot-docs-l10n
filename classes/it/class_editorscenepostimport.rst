:github_url: hide

.. _class_EditorScenePostImport:

EditorScenePostImport
=====================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Post-elabora le scene dopo l'importazione.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Subito dopo l'importazione, è possibile modificare automaticamente le scene importate impostando la loro proprietà di impostazione **Script personalizzato** su uno script ``tool`` che eredita da questa classe.

Il callback :ref:`_post_import()<class_EditorScenePostImport_private_method__post_import>` riceve il nodo radice della scena importata e restituisce la versione modificata della scena. Esempio di utilizzo:


.. tabs::

 .. code-tab:: gdscript

    @tool # Necessario affinché esegui nell'editor.
    extends EditorScenePostImport

    # Questo esempio modifica tutti i nomi dei nodi.
    # Chiamato subito dopo che la scena è stata importata e ottiene il nodo radice.
    func _post_import(scene):
        # Cambia i nomi di tutti i nodi in "modificato_[nomenodoprecedente]"
        iterate(scene)
        return scene # Ricordati di restituire la scena importata

    func iterate(node):
        if node != null:
            node.name = "modificato_" + node.name
            for child in node.get_children():
                iterate(child)

 .. code-tab:: csharp

    using Godot;

    // Questo esempio modifica tutti i nomi dei nodi.
    // Chiamato subito dopo che la scena è stata importata e ottiene il nodo radice.
    [Tool]
    public partial class NodeRenamer : EditorScenePostImport
    {
        public override GodotObject _PostImport(Node scene)
        {
            // Cambia i nomi di tutti i nodi in "modified_[nomenodoprecedente]"
            Iterate(scene);
            return scene; // Ricordati di restituire la scena importata
        }

        public void Iterate(Node node)
        {
            if (node != null)
            {
                node.Name = $"modificato_{node.Name}";
                foreach (Node child in node.GetChildren())
                {
                    Iterate(child);
                }
            }
        }
    }



.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Importazione di scene 3D: Configurazione: Utilizzo di script di importazione per l'automazione <../tutorials/assets_pipeline/importing_3d_scenes/import_configuration.html#using-import-scripts-for-automation>`__

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>` | :ref:`_post_import<class_EditorScenePostImport_private_method__post_import>`\ (\ scene\: :ref:`Node<class_Node>`\ ) |virtual| |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_source_file<class_EditorScenePostImport_method_get_source_file>`\ (\ ) |const|                                      |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_EditorScenePostImport_private_method__post_import:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **_post_import**\ (\ scene\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_EditorScenePostImport_private_method__post_import>`

Chiamato dopo che la scena è stata importata. Questo metodo deve restituire la versione modificata della scena.

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImport_method_get_source_file:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_source_file**\ (\ ) |const| :ref:`🔗<class_EditorScenePostImport_method_get_source_file>`

Restituisce il percorso del file sorgente importato (ad esempio ``res://scene.dae``).

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
