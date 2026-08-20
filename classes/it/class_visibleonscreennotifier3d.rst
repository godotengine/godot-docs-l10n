:github_url: hide

.. _class_VisibleOnScreenNotifier3D:

VisibleOnScreenNotifier3D
=========================

**Eredita:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`VisibleOnScreenEnabler3D<class_VisibleOnScreenEnabler3D>`

Una regione a forma di scatola dello spazio 3D che rileva se è visibile sullo schermo.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

:ref:`VisibleOnScreenEnabler3D<class_VisibleOnScreenEnabler3D>` rappresenta una regione a forma di scatola nello spazio 3D. Quando una parte di questa regione diventa visibile sullo schermo o in una viewport, emetterà un segnale :ref:`screen_entered<class_VisibleOnScreenNotifier3D_signal_screen_entered>` e, allo stesso modo, emetterà un segnale :ref:`screen_exited<class_VisibleOnScreenNotifier3D_signal_screen_exited>` quando nessuna parte di essa rimane visibile.

Se vuoi che un nodo sia abilitato automaticamente quando questa regione è visibile sullo schermo, usa :ref:`VisibleOnScreenEnabler3D<class_VisibleOnScreenEnabler3D>`.

\ **Nota:** **VisibleOnScreenNotifier3D** utilizza un'euristica approssimativa che non tiene conto delle pareti e di altre occlusioni, a meno che non venga utilizzato l'occlusion culling. Inoltre, non funzionerà a meno che :ref:`Node3D.visible<class_Node3D_property_visible>` non sia impostato su ``true``.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------+-------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`aabb<class_VisibleOnScreenNotifier3D_property_aabb>` | ``AABB(-1, -1, -1, 2, 2, 2)`` |
   +-------------------------+------------------------------------------------------------+-------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_on_screen<class_VisibleOnScreenNotifier3D_method_is_on_screen>`\ (\ ) |const| |
   +-------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_VisibleOnScreenNotifier3D_signal_screen_entered:

.. rst-class:: classref-signal

**screen_entered**\ (\ ) :ref:`🔗<class_VisibleOnScreenNotifier3D_signal_screen_entered>`

Emesso quando il **VisibleOnScreenNotifier3D** entra nello schermo.

.. rst-class:: classref-item-separator

----

.. _class_VisibleOnScreenNotifier3D_signal_screen_exited:

.. rst-class:: classref-signal

**screen_exited**\ (\ ) :ref:`🔗<class_VisibleOnScreenNotifier3D_signal_screen_exited>`

Emesso quando il **VisibleOnScreenNotifier3D** esce dallo schermo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisibleOnScreenNotifier3D_property_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **aabb** = ``AABB(-1, -1, -1, 2, 2, 2)`` :ref:`🔗<class_VisibleOnScreenNotifier3D_property_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_aabb**\ (\ )

Il riquadro di delimitazione del **VisibleOnScreenNotifier3D**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_VisibleOnScreenNotifier3D_method_is_on_screen:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_screen**\ (\ ) |const| :ref:`🔗<class_VisibleOnScreenNotifier3D_method_is_on_screen>`

Se ``true``, il riquadro di delimitazione è sullo schermo.

\ **Nota:** Ci vuole un frame per determinare la visibilità di **VisibleOnScreenNotifier3D** una volta aggiunto all'albero di scene, quindi questo metodo restituirà sempre ``false`` subito dopo essere stato istanziato, prima del passaggio di disegno.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
