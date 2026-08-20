:github_url: hide

.. _class_SpringBoneCollision3D:

SpringBoneCollision3D
=====================

**Eredita:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`SpringBoneCollisionCapsule3D<class_SpringBoneCollisionCapsule3D>`, :ref:`SpringBoneCollisionPlane3D<class_SpringBoneCollisionPlane3D>`, :ref:`SpringBoneCollisionSphere3D<class_SpringBoneCollisionSphere3D>`

Una classe base della collisione che interagisce con :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una collisione può essere un figlio di :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>`. Se non è un figlio di :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>`, non ha alcun effetto.

La collisione e lo scorrimento sono effettuati nel processo di modificazione di :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>` in base all'ordine della sua lista di collisioni, impostato da :ref:`SpringBoneSimulator3D.set_collision_path()<class_SpringBoneSimulator3D_method_set_collision_path>`. Se :ref:`SpringBoneSimulator3D.are_all_child_collisions_enabled()<class_SpringBoneSimulator3D_method_are_all_child_collisions_enabled>` è ``true``, l'ordine corrisponde allo :ref:`SceneTree<class_SceneTree>`.

Se :ref:`bone<class_SpringBoneCollision3D_property_bone>` è impostato, si sincronizza con la posa dell'osso dello :ref:`Skeleton3D<class_Skeleton3D>` antenato, il che viene effettuato prima del processo di modificazione dello :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>`, come pre-processo.

\ **Attenzione:** Uno **SpringBoneCollision3D** ridimensionato probabilmente non si comporterà come previsto. Assicurarsi che lo :ref:`Skeleton3D<class_Skeleton3D>` genitore e le sue ossa non siano ridimensionati.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`               | :ref:`bone<class_SpringBoneCollision3D_property_bone>`                       | ``-1`` |
   +-------------------------------------+------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`         | :ref:`bone_name<class_SpringBoneCollision3D_property_bone_name>`             | ``""`` |
   +-------------------------------------+------------------------------------------------------------------------------+--------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`position_offset<class_SpringBoneCollision3D_property_position_offset>` |        |
   +-------------------------------------+------------------------------------------------------------------------------+--------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`rotation_offset<class_SpringBoneCollision3D_property_rotation_offset>` |        |
   +-------------------------------------+------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`Skeleton3D<class_Skeleton3D>` | :ref:`get_skeleton<class_SpringBoneCollision3D_method_get_skeleton>`\ (\ ) |const| |
   +-------------------------------------+------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_SpringBoneCollision3D_property_bone:

.. rst-class:: classref-property

:ref:`int<class_int>` **bone** = ``-1`` :ref:`🔗<class_SpringBoneCollision3D_property_bone>`

.. rst-class:: classref-property-setget

- |void| **set_bone**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bone**\ (\ )

L'indice dell'osso attaccato.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollision3D_property_bone_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **bone_name** = ``""`` :ref:`🔗<class_SpringBoneCollision3D_property_bone_name>`

.. rst-class:: classref-property-setget

- |void| **set_bone_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_bone_name**\ (\ )

Il nome dell'osso attaccato.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollision3D_property_position_offset:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **position_offset** :ref:`🔗<class_SpringBoneCollision3D_property_position_offset>`

.. rst-class:: classref-property-setget

- |void| **set_position_offset**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_position_offset**\ (\ )

Lo scostamento della posizione, dalla posizione della posa del :ref:`bone<class_SpringBoneCollision3D_property_bone>` di :ref:`Skeleton3D<class_Skeleton3D>`.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollision3D_property_rotation_offset:

.. rst-class:: classref-property

:ref:`Quaternion<class_Quaternion>` **rotation_offset** :ref:`🔗<class_SpringBoneCollision3D_property_rotation_offset>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_offset**\ (\ value\: :ref:`Quaternion<class_Quaternion>`\ )
- :ref:`Quaternion<class_Quaternion>` **get_rotation_offset**\ (\ )

La deviazione della rotazione, dalla rotazione della posa del :ref:`bone<class_SpringBoneCollision3D_property_bone>` di :ref:`Skeleton3D<class_Skeleton3D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_SpringBoneCollision3D_method_get_skeleton:

.. rst-class:: classref-method

:ref:`Skeleton3D<class_Skeleton3D>` **get_skeleton**\ (\ ) |const| :ref:`🔗<class_SpringBoneCollision3D_method_get_skeleton>`

Ottiene il nodo :ref:`Skeleton3D<class_Skeleton3D>` genitore del :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>` genitore se trovato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
