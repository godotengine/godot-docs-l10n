:github_url: hide

.. _class_RetargetModifier3D:

RetargetModifier3D
==================

**Eredita:** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un modificatore per trasferire le pose dello scheletro padre (o le pose globali) agli scheletri figlio nello spazio modello con riposi diversi.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Recupera la posa (o posa globale) relativa al riposo dello scheletro padre nello spazio modello e la trasferisce allo scheletro figlio.

Questo modificatore riscrive la posa dello scheletro figlio direttamente nel processo di aggiornamento dello scheletro padre. Ciò significa che sovrascrive la posa dell'osso mappato impostata nel processo normale sullo scheletro di destinazione. Se si desidera impostare la posa dell'osso dello scheletro di destinazione dopo la reindirizzazione, sarà necessario aggiungere un figlio :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` allo scheletro di destinazione e quindi modificare la posa.

\ **Nota:** Quando :ref:`use_global_pose<class_RetargetModifier3D_property_use_global_pose>` è abilitato, anche se è un osso non mappato, può causare problemi visivi perché la posa globale viene applicata ignorando la posa dell'osso padre **se ha ossa figlio mappati**. Vedi anche :ref:`use_global_pose<class_RetargetModifier3D_property_use_global_pose>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------------+---------------------------------------------------------------------------+-----------+
   | |bitfield|\[:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>`\] | :ref:`enable<class_RetargetModifier3D_property_enable>`                   | ``7``     |
   +---------------------------------------------------------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`SkeletonProfile<class_SkeletonProfile>`                             | :ref:`profile<class_RetargetModifier3D_property_profile>`                 |           |
   +---------------------------------------------------------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                   | :ref:`use_global_pose<class_RetargetModifier3D_property_use_global_pose>` | ``false`` |
   +---------------------------------------------------------------------------+---------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_position_enabled<class_RetargetModifier3D_method_is_position_enabled>`\ (\ ) |const|                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_rotation_enabled<class_RetargetModifier3D_method_is_rotation_enabled>`\ (\ ) |const|                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_scale_enabled<class_RetargetModifier3D_method_is_scale_enabled>`\ (\ ) |const|                                    |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_position_enabled<class_RetargetModifier3D_method_set_position_enabled>`\ (\ enabled\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_rotation_enabled<class_RetargetModifier3D_method_set_rotation_enabled>`\ (\ enabled\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_scale_enabled<class_RetargetModifier3D_method_set_scale_enabled>`\ (\ enabled\: :ref:`bool<class_bool>`\ )       |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_RetargetModifier3D_TransformFlag:

.. rst-class:: classref-enumeration

flags **TransformFlag**: :ref:`🔗<enum_RetargetModifier3D_TransformFlag>`

.. _class_RetargetModifier3D_constant_TRANSFORM_FLAG_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>` **TRANSFORM_FLAG_POSITION** = ``1``

Se impostato, consente di reindirizzare la posizione.

.. _class_RetargetModifier3D_constant_TRANSFORM_FLAG_ROTATION:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>` **TRANSFORM_FLAG_ROTATION** = ``2``

Se impostato, consente di reindirizzare la rotazione.

.. _class_RetargetModifier3D_constant_TRANSFORM_FLAG_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>` **TRANSFORM_FLAG_SCALE** = ``4``

Se impostato, consente di reindirizzare la scala.

.. _class_RetargetModifier3D_constant_TRANSFORM_FLAG_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>` **TRANSFORM_FLAG_ALL** = ``7``

Se impostato, consente di reindirizzare la posizione/rotazione/scala.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_RetargetModifier3D_property_enable:

.. rst-class:: classref-property

|bitfield|\[:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>`\] **enable** = ``7`` :ref:`🔗<class_RetargetModifier3D_property_enable>`

.. rst-class:: classref-property-setget

- |void| **set_enable_flags**\ (\ value\: |bitfield|\[:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>`\]\ )
- |bitfield|\[:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>`\] **get_enable_flags**\ (\ )

Flag per controllare individualmente il processo degli elementi di trasformazione quando :ref:`use_global_pose<class_RetargetModifier3D_property_use_global_pose>` è disabilitato.

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_property_profile:

.. rst-class:: classref-property

:ref:`SkeletonProfile<class_SkeletonProfile>` **profile** :ref:`🔗<class_RetargetModifier3D_property_profile>`

.. rst-class:: classref-property-setget

- |void| **set_profile**\ (\ value\: :ref:`SkeletonProfile<class_SkeletonProfile>`\ )
- :ref:`SkeletonProfile<class_SkeletonProfile>` **get_profile**\ (\ )

:ref:`SkeletonProfile<class_SkeletonProfile>` per reindirizzare le ossa con nomi corrispondenti alla lista di ossa.

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_property_use_global_pose:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_global_pose** = ``false`` :ref:`🔗<class_RetargetModifier3D_property_use_global_pose>`

.. rst-class:: classref-property-setget

- |void| **set_use_global_pose**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_global_pose**\ (\ )

Se ``false``, nel caso in cui lo scheletro di destinazione abbia meno ossa dello scheletro di origine, la trasformazione del genitore dell'osso di origine verrà ignorata.

Invece, è possibile reindirizzare tra modelli con diverse forme del corpo e posizione, rotazione e scala possono essere reindirizzate separatamente.

Se ``true``, la reindirizzazione viene effettuata tenendo conto della posa globale.

Nel caso in cui lo scheletro di destinazione abbia meno ossa dello scheletro di origine, la trasformazione del genitore dell'osso di origine viene presa in considerazione. Tuttavia, la lunghezza delle ossa tra gli scheletri deve corrispondere esattamente, altrimenti, le ossa saranno costrette a espandersi o restringersi.

Ciò è utile per utilizzare ossa fittizie con lunghezza ``0`` per abbinare le posture durante la reindirizzazione tra modelli con un numero diverso di ossa.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_RetargetModifier3D_method_is_position_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_position_enabled**\ (\ ) |const| :ref:`🔗<class_RetargetModifier3D_method_is_position_enabled>`

Restituisce ``true`` se :ref:`enable<class_RetargetModifier3D_property_enable>` ha :ref:`TRANSFORM_FLAG_POSITION<class_RetargetModifier3D_constant_TRANSFORM_FLAG_POSITION>`.

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_method_is_rotation_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_rotation_enabled**\ (\ ) |const| :ref:`🔗<class_RetargetModifier3D_method_is_rotation_enabled>`

Restituisce ``true`` se :ref:`enable<class_RetargetModifier3D_property_enable>` ha :ref:`TRANSFORM_FLAG_ROTATION<class_RetargetModifier3D_constant_TRANSFORM_FLAG_ROTATION>`.

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_method_is_scale_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_scale_enabled**\ (\ ) |const| :ref:`🔗<class_RetargetModifier3D_method_is_scale_enabled>`

Restituisce ``true`` se :ref:`enable<class_RetargetModifier3D_property_enable>` has :ref:`TRANSFORM_FLAG_SCALE<class_RetargetModifier3D_constant_TRANSFORM_FLAG_SCALE>`.

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_method_set_position_enabled:

.. rst-class:: classref-method

|void| **set_position_enabled**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_RetargetModifier3D_method_set_position_enabled>`

Imposta :ref:`TRANSFORM_FLAG_POSITION<class_RetargetModifier3D_constant_TRANSFORM_FLAG_POSITION>` su :ref:`enable<class_RetargetModifier3D_property_enable>`.

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_method_set_rotation_enabled:

.. rst-class:: classref-method

|void| **set_rotation_enabled**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_RetargetModifier3D_method_set_rotation_enabled>`

Imposta :ref:`TRANSFORM_FLAG_ROTATION<class_RetargetModifier3D_constant_TRANSFORM_FLAG_ROTATION>` su :ref:`enable<class_RetargetModifier3D_property_enable>`.

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_method_set_scale_enabled:

.. rst-class:: classref-method

|void| **set_scale_enabled**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_RetargetModifier3D_method_set_scale_enabled>`

Imposta :ref:`TRANSFORM_FLAG_SCALE<class_RetargetModifier3D_constant_TRANSFORM_FLAG_SCALE>` su :ref:`enable<class_RetargetModifier3D_property_enable>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
