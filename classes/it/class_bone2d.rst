:github_url: hide

.. _class_Bone2D:

Bone2D
======

**Eredita:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un giunto utilizzato con :ref:`Skeleton2D<class_Skeleton2D>` per controllare e animare altri nodi.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una gerarchia di nodi **Bone2D** può essere associata a uno :ref:`Skeleton2D<class_Skeleton2D>` per controllare e animare altri nodi :ref:`Node2D<class_Node2D>`.

Puoi usare i nodi **Bone2D** e :ref:`Skeleton2D<class_Skeleton2D>` per animare le mesh 2D create con l'editor degli UV di :ref:`Polygon2D<class_Polygon2D>`.

Ogni osso ha una trasformazione :ref:`rest<class_Bone2D_property_rest>` che è possibile ripristinare con :ref:`apply_rest()<class_Bone2D_method_apply_rest>`. Queste pose di riposo sono relative al genitore dell'osso.

Se nell'editor è possibile impostare la posa di riposo di un intero scheletro tramite un'opzione di menu, dal codice bisogna iterare sulle ossa per impostare individualmente le loro pose di riposo.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------+-----------------------------------------+-----------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`rest<class_Bone2D_property_rest>` | ``Transform2D(0, 0, 0, 0, 0, 0)`` |
   +---------------------------------------+-----------------------------------------+-----------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`apply_rest<class_Bone2D_method_apply_rest>`\ (\ )                                                                                           |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`get_autocalculate_length_and_angle<class_Bone2D_method_get_autocalculate_length_and_angle>`\ (\ ) |const|                                   |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_bone_angle<class_Bone2D_method_get_bone_angle>`\ (\ ) |const|                                                                           |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_index_in_skeleton<class_Bone2D_method_get_index_in_skeleton>`\ (\ ) |const|                                                             |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_length<class_Bone2D_method_get_length>`\ (\ ) |const|                                                                                   |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`get_skeleton_rest<class_Bone2D_method_get_skeleton_rest>`\ (\ ) |const|                                                                     |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_autocalculate_length_and_angle<class_Bone2D_method_set_autocalculate_length_and_angle>`\ (\ auto_calculate\: :ref:`bool<class_bool>`\ ) |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_bone_angle<class_Bone2D_method_set_bone_angle>`\ (\ angle\: :ref:`float<class_float>`\ )                                                |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_length<class_Bone2D_method_set_length>`\ (\ length\: :ref:`float<class_float>`\ )                                                       |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Bone2D_property_rest:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **rest** = ``Transform2D(0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_Bone2D_property_rest>`

.. rst-class:: classref-property-setget

- |void| **set_rest**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_rest**\ (\ )

Trasformazione di riposo dell'osso. Puoi ripristinare le trasformazioni del nodo a questo valore usando :ref:`apply_rest()<class_Bone2D_method_apply_rest>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Bone2D_method_apply_rest:

.. rst-class:: classref-method

|void| **apply_rest**\ (\ ) :ref:`🔗<class_Bone2D_method_apply_rest>`

Ripristina l'osso alla posa di riposo. Ciò equivale a impostare :ref:`Node2D.transform<class_Node2D_property_transform>` a :ref:`rest<class_Bone2D_property_rest>`.

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_get_autocalculate_length_and_angle:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_autocalculate_length_and_angle**\ (\ ) |const| :ref:`🔗<class_Bone2D_method_get_autocalculate_length_and_angle>`

Restituisce se questo **Bone2D** calcolerà automaticamente la sua lunghezza e l'angolo dell'osso tramite il suo primo nodo figlio **Bone2D**, se ne esiste uno. Se non ci sono figli **Bone2D**, non può calcolare automaticamente questi valori e stamperà un avviso.

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_get_bone_angle:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_bone_angle**\ (\ ) |const| :ref:`🔗<class_Bone2D_method_get_bone_angle>`

Restituisce l'angolo dell'osso in **Bone2D**.

\ **Nota:** Questo è diverso dalla rotazione di **Bone2D**. L'angolo dell'osso è la rotazione dell'osso mostrata dal gizmo, che non è influenzata dal :ref:`Node2D.transform<class_Node2D_property_transform>` di **Bone2D**.

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_get_index_in_skeleton:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_index_in_skeleton**\ (\ ) |const| :ref:`🔗<class_Bone2D_method_get_index_in_skeleton>`

Restituisce l'indice del nodo come parte dell'intero scheletro. Vedi :ref:`Skeleton2D<class_Skeleton2D>`.

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_get_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_length**\ (\ ) |const| :ref:`🔗<class_Bone2D_method_get_length>`

Restituisce la lunghezza dell'osso nel nodo **Bone2D**.

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_get_skeleton_rest:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **get_skeleton_rest**\ (\ ) |const| :ref:`🔗<class_Bone2D_method_get_skeleton_rest>`

Restituisce il :ref:`rest<class_Bone2D_property_rest>` :ref:`Transform2D<class_Transform2D>` del nodo se non ha un genitore, o la sua posa di riposo relativa al suo genitore.

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_set_autocalculate_length_and_angle:

.. rst-class:: classref-method

|void| **set_autocalculate_length_and_angle**\ (\ auto_calculate\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Bone2D_method_set_autocalculate_length_and_angle>`

Se impostato su ``true``, il nodo **Bone2D** tenterà di calcolare automaticamente l'angolo e la lunghezza dell'osso tramite il primo nodo figlio **Bone2D**, se ne esiste uno. Se non ci sono, **Bone2D** non può calcolare automaticamente questi valori e stamperà un avviso.

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_set_bone_angle:

.. rst-class:: classref-method

|void| **set_bone_angle**\ (\ angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Bone2D_method_set_bone_angle>`

Imposta l'angolo dell'osso per il **Bone2D**. Questo è in genere impostato sulla rotazione dal **Bone2D** a un nodo figlio **Bone2D**.

\ **Nota:** Questo è diverso dalla rotazione di **Bone2D**. L'angolo dell'osso è la rotazione dell'osso mostrata dal gizmo, che non è influenzata dal :ref:`Node2D.transform<class_Node2D_property_transform>` di **Bone2D**.

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_set_length:

.. rst-class:: classref-method

|void| **set_length**\ (\ length\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Bone2D_method_set_length>`

Imposta la lunghezza dell'osso nel **Bone2D**.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
