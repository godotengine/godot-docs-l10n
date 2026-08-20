:github_url: hide

.. _class_JavaClassWrapper:

JavaClassWrapper
================

**Eredita:** :ref:`Object<class_Object>`

Fornisce l'accesso alla Java Native Interface.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Il singleton JavaClassWrapper fornisce un modo all'applicazione Godot di inviare e ricevere dati tramite la `Java Native Interface <https://developer.android.com/training/articles/perf-jni>`__ (JNI).

\ **Nota:** Questo singleton è disponibile solo nelle build Android.

::

    var LocalDateTime = JavaClassWrapper.wrap("java.time.LocalDateTime")
    var DateTimeFormatter = JavaClassWrapper.wrap("java.time.format.DateTimeFormatter")

    var datetime = LocalDateTime.now()
    var formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss")

    print(datetime.format(formatter))

\ **Attenzione:** Quando si chiamano metodi Java, assicurarsi di controllare :ref:`get_exception()<class_JavaClassWrapper_method_get_exception>` per verificare se il metodo ha generato un'eccezione.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Integrazione con le API di Android <../tutorials/platform/android/javaclasswrapper_and_androidruntimeplugin>`

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JavaObject<class_JavaObject>` | :ref:`create_proxy<class_JavaClassWrapper_method_create_proxy>`\ (\ object\: :ref:`Object<class_Object>`, interfaces\: :ref:`PackedStringArray<class_PackedStringArray>`\ )  |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JavaObject<class_JavaObject>` | :ref:`create_sam_callback<class_JavaClassWrapper_method_create_sam_callback>`\ (\ sam_interface\: :ref:`String<class_String>`, callable\: :ref:`Callable<class_Callable>`\ ) |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JavaObject<class_JavaObject>` | :ref:`get_exception<class_JavaClassWrapper_method_get_exception>`\ (\ )                                                                                                      |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JavaClass<class_JavaClass>`   | :ref:`wrap<class_JavaClassWrapper_method_wrap>`\ (\ name\: :ref:`String<class_String>`\ )                                                                                    |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_JavaClassWrapper_method_create_proxy:

.. rst-class:: classref-method

:ref:`JavaObject<class_JavaObject>` **create_proxy**\ (\ object\: :ref:`Object<class_Object>`, interfaces\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_JavaClassWrapper_method_create_proxy>`

Crea un :ref:`JavaObject<class_JavaObject>` che implementa le interfacce Java specificate, utilizzando l':ref:`Object<class_Object>` fornito come implementazione.

\ ``object`` deve contenere firme di metodi corrispondenti alle firme dei metodi delle ``interfaces`` Java passate. L'invocazione dei metodi dalle ``interfaces`` Java indirizzerà al metodo corrispondente dell'``object``.

::

    class PrintProxy:
        func println(content: String) -> void:
            print(content)

    var print_proxy = PrintProxy.new()
    var printer_object = JavaClassWrapper.create_proxy(print_proxy, ["android.util.Printer"])
    printer_object.println("Hello Godot World!")

\ **Nota:** Questo metodo funziona solo su Android. Su tutte le altre piattaforme, questo metodo restituirà sempre ``null``.

.. rst-class:: classref-item-separator

----

.. _class_JavaClassWrapper_method_create_sam_callback:

.. rst-class:: classref-method

:ref:`JavaObject<class_JavaObject>` **create_sam_callback**\ (\ sam_interface\: :ref:`String<class_String>`, callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_JavaClassWrapper_method_create_sam_callback>`

Crea un :ref:`JavaObject<class_JavaObject>` che implementa l'interfaccia Java Single Abstract Method (SAM) utilizzando il :ref:`Callable<class_Callable>` di Godot come implementazione.

\ ``sam_interface`` **deve essere** un'interfaccia Java SAM, ovvero deve avere un solo metodo astratto da implementare.

\ ``callable`` deve essere in grado di gestire gli stessi tipi di parametri del metodo dell'interfaccia SAM e deve fornire lo stesso tipo di ritorno. ``callable`` verrà invocato come callback, passando gli argomenti dal metodo dell'interfaccia Java SAM.

::

    var cb = func (content: String) -> void:
        print(content)
    var callback = JavaClassWrapper.create_sam_callback("android.util.Printer", cb)
    callback.println("Hello Godot World!")

\ **Nota:** Questo metodo funziona solo su Android. Su tutte le altre piattaforme, questo metodo restituirà sempre ``null``.

.. rst-class:: classref-item-separator

----

.. _class_JavaClassWrapper_method_get_exception:

.. rst-class:: classref-method

:ref:`JavaObject<class_JavaObject>` **get_exception**\ (\ ) :ref:`🔗<class_JavaClassWrapper_method_get_exception>`

Restituisce l'eccezione Java dall'ultima chiamata in una classe Java. Se non c'è stata alcuna eccezione, restituirà ``null``.

\ **Nota:** Questo metodo funziona solo su Android. Su tutte le altre piattaforme, questo metodo restituirà sempre ``null``.

.. rst-class:: classref-item-separator

----

.. _class_JavaClassWrapper_method_wrap:

.. rst-class:: classref-method

:ref:`JavaClass<class_JavaClass>` **wrap**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_JavaClassWrapper_method_wrap>`

Effettua un wrapping su una classe definita in Java e la restituisce come un tipo :ref:`JavaClass<class_JavaClass>` :ref:`Object<class_Object>` con cui Godot può interagire.

Quando si effettua un wrapping sulle classi interne (annidate), utilizzare ``$`` anziché ``.`` per separarle. Ad esempio, ``JavaClassWrapper.wrap("android.view.WindowManager$LayoutParams")`` effettua un wrapping sulla classe **WindowManager.LayoutParams**.

\ **Nota:** Per richiamare un costruttore, chiama un metodo con lo stesso nome della classe. Ad esempio:

::

    var Intent = JavaClassWrapper.wrap("android.content.Intent")
    var intent = Intent.Intent()

\ **Nota:** Questo metodo funziona solo su Android. Su tutte le altre piattaforme, questo metodo non fa nulla e restituisce un :ref:`JavaClass<class_JavaClass>` vuoto.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
