:github_url: hide

.. _class_GDScript:

GDScript
========

**Eredita:** :ref:`Script<class_Script>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Uno script implementato nel linguaggio di programmazione GDScript.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Uno script implementato nel linguaggio di programmazione GDScript, salvato con l'estensione ``.gd``. Lo script estende la funzionalità di tutti gli oggetti che lo istanziano.

Chiamando :ref:`new()<class_GDScript_method_new>` si crea una nuova istanza dello script. :ref:`Object.set_script()<class_Object_method_set_script>` estende un oggetto esistente, se la classe di quell'oggetto corrisponde a una delle classi base dello script.

Se stai cercando le funzioni integrate di GDScript, vedi invece :ref:`@GDScript<class_@GDScript>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Indice di documentazione su GDScript <../tutorials/scripting/gdscript/index>`

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`new<class_GDScript_method_new>`\ (\ ...\ ) |vararg| |
   +-------------------------------+-----------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_GDScript_method_new:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **new**\ (\ ...\ ) |vararg| :ref:`🔗<class_GDScript_method_new>`

Restituisce una nuova istanza dello script.

::

    var MyClass = load("myclass.gd")
    var instance = MyClass.new()
    print(instance.get_script() == MyClass) # Prints true

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
