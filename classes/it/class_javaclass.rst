:github_url: hide

.. _class_JavaClass:

JavaClass
=========

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Rappresenta una classe dalla Java Native Interface.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Rappresenta una classe dalla Java Native Interface. Viene restituito da :ref:`JavaClassWrapper.wrap()<class_JavaClassWrapper_method_wrap>`.

\ **Nota:** Questa classe funziona solo su Android. Per qualsiasi altra piattaforma, questa classe non fa nulla.

\ **Nota:** Questa classe non va confusa con :ref:`JavaScriptObject<class_JavaScriptObject>`.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`get_java_class_name<class_JavaClass_method_get_java_class_name>`\ (\ ) |const|                                       |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_java_method_list<class_JavaClass_method_get_java_method_list>`\ (\ ) |const|                                     |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JavaClass<class_JavaClass>`                                | :ref:`get_java_parent_class<class_JavaClass_method_get_java_parent_class>`\ (\ ) |const|                                   |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_java_method<class_JavaClass_method_has_java_method>`\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_JavaClass_method_get_java_class_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_java_class_name**\ (\ ) |const| :ref:`🔗<class_JavaClass_method_get_java_class_name>`

Restituisce il nome della classe Java.

.. rst-class:: classref-item-separator

----

.. _class_JavaClass_method_get_java_method_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_java_method_list**\ (\ ) |const| :ref:`🔗<class_JavaClass_method_get_java_method_list>`

Restituisce i metodi Java dell'oggetto e le relative firme come un :ref:`Array<class_Array>` di dizionari, nello stesso formato di :ref:`Object.get_method_list()<class_Object_method_get_method_list>`.

.. rst-class:: classref-item-separator

----

.. _class_JavaClass_method_get_java_parent_class:

.. rst-class:: classref-method

:ref:`JavaClass<class_JavaClass>` **get_java_parent_class**\ (\ ) |const| :ref:`🔗<class_JavaClass_method_get_java_parent_class>`

Restituisce un **JavaClass** che rappresenta la classe padre di questa classe.

.. rst-class:: classref-item-separator

----

.. _class_JavaClass_method_has_java_method:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_java_method**\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_JavaClass_method_has_java_method>`

Restituisce ``true`` se il metodo con il nome ``method`` esiste tra i metodi Java dell'oggetto.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
