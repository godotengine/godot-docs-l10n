:github_url: hide

.. _class_FBXState:

FBXState
========

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`GLTFState<class_GLTFState>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Il FBXState gestisce i dati di stato importati dai file FBX.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`allow_geometry_helper_nodes<class_FBXState_property_allow_geometry_helper_nodes>` | ``false`` |
   +-------------------------+-----------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_FBXState_property_allow_geometry_helper_nodes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_geometry_helper_nodes** = ``false`` :ref:`🔗<class_FBXState_property_allow_geometry_helper_nodes>`

.. rst-class:: classref-property-setget

- |void| **set_allow_geometry_helper_nodes**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_allow_geometry_helper_nodes**\ (\ )

Se ``true``, il processo di importazione ha utilizzato nodi ausiliari chiamati nodi di supporto della geometria. Questi nodi aiutano a preservare i perni e le trasformazioni del modello 3D originale durante l'importazione.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
