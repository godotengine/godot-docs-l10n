:github_url: hide

.. _class_PlaceholderTexture3D:

PlaceholderTexture3D
====================

**Eredita:** :ref:`Texture3D<class_Texture3D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe segnaposto per una texture tridimensionale.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa classe è utilizzata quando si carica un progetto che utilizza una sottoclasse di :ref:`Texture3D<class_Texture3D>` in 2 condizioni:

- Quando si esegue il progetto esportato in modalità server dedicato, sono mantenute solo le dimensioni della texture (poiché potrebbero essere utilizzate per scopi di gioco o per il posizionamento di altri elementi). Ciò consente di ridurre significativamente le dimensioni del PCK esportato.

- Quando manca questa sottoclasse a causa dell'utilizzo di una versione o build del motore diversa (ad esempio con moduli disabilitati).

\ **Nota:** Questa non è destinata a essere utilizzata come texture reale per il rendering. Non è garantito che funzioni come una texture negli shader o materiali (ad esempio quando si calcolano gli UV).

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------+-----------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`size<class_PlaceholderTexture3D_property_size>` | ``Vector3i(1, 1, 1)`` |
   +---------------------------------+-------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_PlaceholderTexture3D_property_size:

.. rst-class:: classref-property

:ref:`Vector3i<class_Vector3i>` **size** = ``Vector3i(1, 1, 1)`` :ref:`🔗<class_PlaceholderTexture3D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3i<class_Vector3i>`\ )
- :ref:`Vector3i<class_Vector3i>` **get_size**\ (\ )

Le dimensioni della texture (in pixel).

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
