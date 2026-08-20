:github_url: hide

.. _class_Variant:

Variant
=======

Il tipo di dati più importante in Godot.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Nella programmazione informatica, una classe Variant è una classe progettata per memorizzare una varietà di altri tipi. Linguaggi di programmazione dinamici come PHP, Lua, JavaScript e GDScript le utilizzano spesso per memorizzare i dati delle variabili nel backend. Grazie alle classi Variant, le proprietà possono cambiare liberamente il proprio tipo di valore.


.. tabs::

 .. code-tab:: gdscript

    var foo = 2 # foo è dinamicamente un intero
    foo = "Ora foo è una stringa!"
    foo = RefCounted.new() # foo è un Object
    var bar: int = 2 # bar è un intero tipizzato staticamente.
    # bar = "Uh oh! Non posso far cambiare il tipo di una variabile tipizzata staticamente!"

 .. code-tab:: csharp

    // C# è un linguaggio a tipizzazione statica. Una volta che una variable ha un tipo non si può cambiare. È possibile usare la parola chiave `var` per permettere al compilatore di dedurre il tipo automaticamente.
    var foo = 2; // Foo è un intero a 32 bit (int). Attenzione: gli interi in GDScript sono a 64 bit l'equivalente diretto in C# è `long`.
    // foo = "foo era e sarà sempre un intero. Non si può convertire in una stringa!";
    var boo = "Boo è una stringa!";
    var ref = new RefCounted(); // var è particolarmente utile se usato insieme a un costruttore.

    // Godot fornisce anche un tipo Variant che serve da unione di tutti i tipi compatibili con Variant.
    Variant fooVar = 2; // fooVar è dinamicamente un intero (memorizzato come `long` nel tipo Variant).
    fooVar = "Ora fooVar è una stringa!";
    fooVar = new RefCounted(); // fooVar è un GodotObject.



Godot tiene traccia di tutte le variabili dell'API di scripting dentro Variant. Senza nemmeno rendertene conto, usi le Variant continuamente. Quando un particolare linguaggio impone le proprie regole per mantenere i dati tipizzati, quel linguaggio applica la propria logica personalizzata all'API base di scripting Variant .

- GDScript incapsula automaticamente i valori in Variant. Solitamente mantiene tutti i dati in semplici Variant e, facoltativamente, impone regole di tipizzazione statica personalizzate sui tipi di variabile.

- C# è tipizzato staticamente, ma utilizza la propria implementazione del tipo Variant al posto della classe **Variant** di Godot quando deve rappresentare un valore dinamico. A una Variant di C# ci si può assegnare implicitamente qualsiasi tipo compatibile, ma la conversione richiede un cast esplicito.

La funzione globale :ref:`@GlobalScope.typeof()<class_@GlobalScope_method_typeof>` restituisce il valore enumerato del tipo Variant memorizzato nella variabile attuale (vedi :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`).


.. tabs::

 .. code-tab:: gdscript

    var foo = 2
    match typeof(foo):
        TYPE_NIL:
            print("foo è null")
        TYPE_INT:
            print("foo è un intero")
        TYPE_OBJECT:
            # Nota che gli oggetti fanno parte della loro categoria speciale.
            # Per ottenere il nome del tipo di Object sottostante, c'è bisogno del metodo `get_class()`.
            print("foo is a(n) %s" % foo.get_class()) # inserisce il nome della classe in una stringa formattata.
            # Nota che questo metodo non ottiene l'identificatore globale `class_name` dello script.
            # Se è necessario il `class_name`, usa `foo.get_script().get_global_name()` al suo posto.

 .. code-tab:: csharp

    Variant foo = 2;
    switch (foo.VariantType)
    {
        case Variant.Type.Nil:
            GD.Print("foo è null");
            break;
        case Variant.Type.Int:
            GD.Print("foo è un intero");
            break;
        case Variant.Type.Object:
            // Nota che gli oggetti fanno parte della loro categoria speciale.
            // Puoi convertire una Variant in un GodotObject e ottenere il suo nome grazie alla riflessione.
            GD.Print($"foo is a(n) {foo.AsGodotObject().GetType().Name}");
            break;
    }



Una Variant occupa solo 20 byte e può memorizzare al suo interno quasi tutti i tipi di dati del motore. Raramente servono per conservare informazioni per lunghi periodi di tempo. Invece, servono principalmente per comunicare, modificare, serializzare e trasferire dati.

Godot ha investito specificamente nella creazione di una classe Variant il più flessibile possibile, tanto da utilizzarla per una moltitudine di operazioni al fine di facilitare la comunicazione tra tutti i sistemi di Godot.

Un Variant:

- Può memorizzare quasi tutti i tipi di dati.

- Può effettuare operazioni tra più Variant. GDScript usa Variant come tipo di dati atomico/nativo.

- Può essere convertito in un hash, così da confrontarlo rapidamente con altri Variant.

- Può servire per convertire in modo sicuro tra tipi diversi di dati.

- Può servire per astrarre le chiamate ai metodi e i relativi argomenti. Godot esporta tutte le sue funzioni tramite Variant.

- Può servire per differire chiamate o trasferire dati tra più thread.

- Può essere serializzato in binario, e memorizzato su disco o trasferito in rete.

- Può essere serializzato in testo e utilizzato per stampare valori e impostazioni modificabili.

- Può funzionare come proprietà esportata, consentendo all'editor di modificarla universalmente.

- Può essere utilizzato per dizionari, array, parser, ecc.

\ **Contenitori (Array e Dizionario):** Entrambi sono implementati utilizzando le Variant. Un :ref:`Dictionary<class_Dictionary>` può associare qualsiasi tipo di dato utilizzato come chiave a qualsiasi altro tipo di dato. Un :ref:`Array<class_Array>` contiene semplicemente un array di Variant. Naturalmente, una Variant può anche contenere al suo interno un :ref:`Dictionary<class_Dictionary>` e un :ref:`Array<class_Array>`, rendendola ancora più flessibile.

Le modifiche a un contenitore modificheranno tutti i riferimenti ad esso. Bisognerebbe creare un :ref:`Mutex<class_Mutex>` per bloccarlo se si desidera accedervi su più thread.

.. note::

	Ci sono differenze sostanziali quando si usa questa API con C#. Vedi :ref:`doc_c_sharp_differences` per maggiori informazioni.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Introduzione della classe Variant <../engine_details/architecture/variant_class>`

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
