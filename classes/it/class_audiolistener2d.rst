:github_url: hide

.. meta::
	:keywords: sound

.. _class_AudioListener2D:

AudioListener2D
===============

**Eredita:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Sostituisce la posizione da cui si sentono i suoni.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una volta aggiunto all'albero di scene e abilitato utilizzando :ref:`make_current()<class_AudioListener2D_method_make_current>`, questo nodo sostituirà la posizione da cui si sentono i suoni. Solo un **AudioListener2D** può essere attuale. Utilizzare :ref:`make_current()<class_AudioListener2D_method_make_current>` disabiliterà il **AudioListener2D** precedente.

Se non è presente alcun **AudioListener2D** attivo nella :ref:`Viewport<class_Viewport>` attuale, il centro dello schermo sarà utilizzato come punto di ascolto dell'audio. **AudioListener2D** deve essere all'interno di un :ref:`SceneTree<class_SceneTree>` per poter funzionare.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------+
   | |void|                  | :ref:`clear_current<class_AudioListener2D_method_clear_current>`\ (\ )   |
   +-------------------------+--------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_current<class_AudioListener2D_method_is_current>`\ (\ ) |const| |
   +-------------------------+--------------------------------------------------------------------------+
   | |void|                  | :ref:`make_current<class_AudioListener2D_method_make_current>`\ (\ )     |
   +-------------------------+--------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_AudioListener2D_method_clear_current:

.. rst-class:: classref-method

|void| **clear_current**\ (\ ) :ref:`🔗<class_AudioListener2D_method_clear_current>`

Disattiva l'**AudioListener2D**. Se non è impostato come attuale, questo metodo non avrà alcun effetto.

.. rst-class:: classref-item-separator

----

.. _class_AudioListener2D_method_is_current:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_current**\ (\ ) |const| :ref:`🔗<class_AudioListener2D_method_is_current>`

Restituisce ``true`` se questo **AudioListener2D** è attualmente attivo.

.. rst-class:: classref-item-separator

----

.. _class_AudioListener2D_method_make_current:

.. rst-class:: classref-method

|void| **make_current**\ (\ ) :ref:`🔗<class_AudioListener2D_method_make_current>`

Rende l'**AudioListener2D** attivo, impostandolo come punto di ascolto per i suoni. Se c'è già un altro **AudioListener2D** attivo, esso sarà disabilitato.

Questo metodo non avrà effetto se l'**AudioListener2D** non è stato aggiunto al :ref:`SceneTree<class_SceneTree>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
