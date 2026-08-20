:github_url: hide

.. _class_Expression:

Expression
==========

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una classe che memorizza un'espressione che si può eseguire.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un'espressione può essere composta da qualsiasi operazione aritmetica, chiamata di una funzione matematica integrata, chiamata di un metodo di un'istanza passata, oppure chiamata di creazione di un tipo integrato.

Un esempio di testo di un espressione che utilizza le funzioni matematiche integrate potrebbe essere ``sqrt(pow(3, 2) + pow(4, 2))``.

Nell'esempio seguente utilizziamo un nodo :ref:`LineEdit<class_LineEdit>` per scrivere la nostra espressione e mostrare il risultato.


.. tabs::

 .. code-tab:: gdscript

    var expression = Expression.new()

    func _ready():
        $LineEdit.text_submitted.connect(self._on_text_submitted)

    func _on_text_submitted(command):
        var error = expression.parse(command)
        if error != OK:
            print(expression.get_error_text())
            return
        var result = expression.execute()
        if not expression.has_execute_failed():
            $LineEdit.text = str(result)

 .. code-tab:: csharp

    private Expression _expression = new Expression();

    public override void _Ready()
    {
        GetNode<LineEdit>("LineEdit").TextSubmitted += OnTextEntered;
    }

    private void OnTextEntered(string command)
    {
        Error error = _expression.Parse(command);
        if (error != Error.Ok)
        {
            GD.Print(_expression.GetErrorText());
            return;
        }
        Variant result = _expression.Execute();
        if (!_expression.HasExecuteFailed())
        {
            GetNode<LineEdit>("LineEdit").Text = result.ToString();
        }
    }



.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Valutazione delle espressioni <../tutorials/scripting/evaluating_expressions>`

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`         | :ref:`execute<class_Expression_method_execute>`\ (\ inputs\: :ref:`Array<class_Array>` = [], base_instance\: :ref:`Object<class_Object>` = null, show_error\: :ref:`bool<class_bool>` = true, const_calls_only\: :ref:`bool<class_bool>` = false\ ) |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_error_text<class_Expression_method_get_error_text>`\ (\ ) |const|                                                                                                                                                                         |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`has_execute_failed<class_Expression_method_has_execute_failed>`\ (\ ) |const|                                                                                                                                                                 |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`parse<class_Expression_method_parse>`\ (\ expression\: :ref:`String<class_String>`, input_names\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray()\ )                                                                  |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Expression_method_execute:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **execute**\ (\ inputs\: :ref:`Array<class_Array>` = [], base_instance\: :ref:`Object<class_Object>` = null, show_error\: :ref:`bool<class_bool>` = true, const_calls_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Expression_method_execute>`

Esegue l'espressione precedentemente analizzata da :ref:`parse()<class_Expression_method_parse>` e restituisce il risultato. Prima di utilizzare l'oggetto restituito, dovresti controllare se il metodo ha fallito chiamando :ref:`has_execute_failed()<class_Expression_method_has_execute_failed>`.

Se hai definito variabili di input in :ref:`parse()<class_Expression_method_parse>`, puoi specificare i loro valori nell'array inputs, nello stesso ordine.

.. rst-class:: classref-item-separator

----

.. _class_Expression_method_get_error_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_error_text**\ (\ ) |const| :ref:`🔗<class_Expression_method_get_error_text>`

Restituisce il testo di errore se :ref:`parse()<class_Expression_method_parse>` o :ref:`execute()<class_Expression_method_execute>` ha fallito.

.. rst-class:: classref-item-separator

----

.. _class_Expression_method_has_execute_failed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_execute_failed**\ (\ ) |const| :ref:`🔗<class_Expression_method_has_execute_failed>`

Restituisce ``true`` se :ref:`execute()<class_Expression_method_execute>` ha fallito.

.. rst-class:: classref-item-separator

----

.. _class_Expression_method_parse:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **parse**\ (\ expression\: :ref:`String<class_String>`, input_names\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray()\ ) :ref:`🔗<class_Expression_method_parse>`

Analizza l'espressione e restituisce un codice di :ref:`Error<enum_@GlobalScope_Error>`.

Puoi facoltativamente specificare i nomi delle variabili che possono apparire nell'espressione con ``input_names``, in modo da poterle associare quando viene eseguita.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
