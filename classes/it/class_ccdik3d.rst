:github_url: hide

.. _class_CCDIK3D:

CCDIK3D
=======

**Eredita:** :ref:`IterateIK3D<class_IterateIK3D>` **<** :ref:`ChainIK3D<class_ChainIK3D>` **<** :ref:`IKModifier3D<class_IKModifier3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Rotation based cyclic coordinate descent inverse kinematics solver.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**CCDIK3D** è un sistema IK basato sulla rotazione, che consente un tracciamento rapido ed efficace anche con ampie rotazioni delle articolazioni. È particolarmente adatto per catene con limitazioni, fornendo un tracciamento dell'obiettivo più fluido e stabile rispetto a :ref:`FABRIK3D<class_FABRIK3D>`.

La torsione risultante attorno al vettore di direzione in avanti verrà sempre mantenuta dalla posa precedente.

\ **Nota:** Quando l'obiettivo è vicino alla radice, può causare movimenti poco naturali, inclusi capovolgimenti e oscillazioni delle articolazioni.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
