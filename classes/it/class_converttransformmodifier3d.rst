:github_url: hide

.. _class_ConvertTransformModifier3D:

ConvertTransformModifier3D
==========================

**Eredita:** :ref:`BoneConstraint3D<class_BoneConstraint3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Uno :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` per applicare una trasformazione all'osso che è convertito dal riferimento.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Applica la trasformazione copiata dell'insieme di ossa tramite :ref:`BoneConstraint3D.set_reference_bone()<class_BoneConstraint3D_method_set_reference_bone>` all'insieme di ossa tramite :ref:`BoneConstraint3D.set_apply_bone()<class_BoneConstraint3D_method_set_apply_bone>` rispetto all'asse specifico, rimappandolo con alcune opzioni.

Esistono 4 modi per applicare la trasformazione, a seconda della combinazione di :ref:`set_relative()<class_ConvertTransformModifier3D_method_set_relative>` e :ref:`set_additive()<class_ConvertTransformModifier3D_method_set_additive>`.

\ **Relativo + Additivo:**\ 

- Estrae la posa di riferimento relativa al riposo e la aggiunge alla posa dell'osso da applicare.

\ **Relativo + Non Additivo:**\ 

- Estrae la posa di riferimento relativa al riposo e la aggiunge alla posa dell'osso da applicare.

\ **Non Relativo + Additivo:**\ 

- Estrae la posa di riferimento assoluta e la aggiunge alla posa dell'osso da applicare.

\ **Non relativo + Non additivo:**\ 

- Estrae la posa di riferimento in modo assoluto e la posa dell'osso applicato è sostituita con essa.

\ **Nota:** L'opzione relativa è disponibile solo se :ref:`BoneConstraint3D.get_reference_type()<class_BoneConstraint3D_method_get_reference_type>` è :ref:`BoneConstraint3D.REFERENCE_TYPE_BONE<class_BoneConstraint3D_constant_REFERENCE_TYPE_BONE>`. Vedi anche :ref:`ReferenceType<enum_BoneConstraint3D_ReferenceType>`.

\ **Nota:** Se c'è una rotazione superiore a ``180`` gradi con assi vincolati, potrebbe avvenire un ribaltamento.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------+-------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`setting_count<class_ConvertTransformModifier3D_property_setting_count>` | ``0`` |
   +-----------------------+-------------------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Axis<enum_Vector3_Axis>`                                      | :ref:`get_apply_axis<class_ConvertTransformModifier3D_method_get_apply_axis>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                           |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`get_apply_range_max<class_ConvertTransformModifier3D_method_get_apply_range_max>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                 |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`get_apply_range_min<class_ConvertTransformModifier3D_method_get_apply_range_min>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                 |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>` | :ref:`get_apply_transform_mode<class_ConvertTransformModifier3D_method_get_apply_transform_mode>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                       |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Axis<enum_Vector3_Axis>`                                      | :ref:`get_reference_axis<class_ConvertTransformModifier3D_method_get_reference_axis>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                   |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`get_reference_range_max<class_ConvertTransformModifier3D_method_get_reference_range_max>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                         |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`get_reference_range_min<class_ConvertTransformModifier3D_method_get_reference_range_min>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                         |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>` | :ref:`get_reference_transform_mode<class_ConvertTransformModifier3D_method_get_reference_transform_mode>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`is_additive<class_ConvertTransformModifier3D_method_is_additive>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                 |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`is_relative<class_ConvertTransformModifier3D_method_is_relative>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                 |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_additive<class_ConvertTransformModifier3D_method_set_additive>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                                                    |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_apply_axis<class_ConvertTransformModifier3D_method_set_apply_axis>`\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>`\ )                                                                            |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_apply_range_max<class_ConvertTransformModifier3D_method_set_apply_range_max>`\ (\ index\: :ref:`int<class_int>`, range_max\: :ref:`float<class_float>`\ )                                                                  |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_apply_range_min<class_ConvertTransformModifier3D_method_set_apply_range_min>`\ (\ index\: :ref:`int<class_int>`, range_min\: :ref:`float<class_float>`\ )                                                                  |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_apply_transform_mode<class_ConvertTransformModifier3D_method_set_apply_transform_mode>`\ (\ index\: :ref:`int<class_int>`, transform_mode\: :ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>`\ )         |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_reference_axis<class_ConvertTransformModifier3D_method_set_reference_axis>`\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>`\ )                                                                    |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_reference_range_max<class_ConvertTransformModifier3D_method_set_reference_range_max>`\ (\ index\: :ref:`int<class_int>`, range_max\: :ref:`float<class_float>`\ )                                                          |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_reference_range_min<class_ConvertTransformModifier3D_method_set_reference_range_min>`\ (\ index\: :ref:`int<class_int>`, range_min\: :ref:`float<class_float>`\ )                                                          |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_reference_transform_mode<class_ConvertTransformModifier3D_method_set_reference_transform_mode>`\ (\ index\: :ref:`int<class_int>`, transform_mode\: :ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>`\ ) |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_relative<class_ConvertTransformModifier3D_method_set_relative>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                                                    |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_ConvertTransformModifier3D_TransformMode:

.. rst-class:: classref-enumeration

enum **TransformMode**: :ref:`🔗<enum_ConvertTransformModifier3D_TransformMode>`

.. _class_ConvertTransformModifier3D_constant_TRANSFORM_MODE_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>` **TRANSFORM_MODE_POSITION** = ``0``

Converte con la posizione. Trasferisce la differenza.

.. _class_ConvertTransformModifier3D_constant_TRANSFORM_MODE_ROTATION:

.. rst-class:: classref-enumeration-constant

:ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>` **TRANSFORM_MODE_ROTATION** = ``1``

Converti con la rotazione. L'angolo è il rollio dell'asse specificato.

.. _class_ConvertTransformModifier3D_constant_TRANSFORM_MODE_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>` **TRANSFORM_MODE_SCALE** = ``2``

Converti con la scala. Trasferisci il rapporto, non la differenza.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ConvertTransformModifier3D_property_setting_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_count** = ``0`` :ref:`🔗<class_ConvertTransformModifier3D_property_setting_count>`

.. rst-class:: classref-property-setget

- |void| **set_setting_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_count**\ (\ )

Il numero di impostazioni nel modificatore.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ConvertTransformModifier3D_method_get_apply_axis:

.. rst-class:: classref-method

:ref:`Axis<enum_Vector3_Axis>` **get_apply_axis**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_apply_axis>`

Restituisce l'asse della trasformazione di destinazione di rimappatura.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_get_apply_range_max:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_apply_range_max**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_apply_range_max>`

Restituisce il valore massimo dell'intervallo di destinazione di rimappatura.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_get_apply_range_min:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_apply_range_min**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_apply_range_min>`

Restituisce il valore minimo dell'intervallo di destinazione di rimappatura.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_get_apply_transform_mode:

.. rst-class:: classref-method

:ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>` **get_apply_transform_mode**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_apply_transform_mode>`

Restituisce l'operazione della trasformazione di destinazione di rimappatura.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_get_reference_axis:

.. rst-class:: classref-method

:ref:`Axis<enum_Vector3_Axis>` **get_reference_axis**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_reference_axis>`

Restituisce l'asse della trasformazione di origine di rimappatura.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_get_reference_range_max:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_reference_range_max**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_reference_range_max>`

Restituisce il valore massimo dell'intervallo di origine di rimappatura.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_get_reference_range_min:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_reference_range_min**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_reference_range_min>`

Restituisce il valore minimo dell'intervallo di origine di rimappatura.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_get_reference_transform_mode:

.. rst-class:: classref-method

:ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>` **get_reference_transform_mode**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_reference_transform_mode>`

Restituisce l'operazione della trasformazione della sorgente di rimappatura.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_is_additive:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_additive**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_is_additive>`

Restituisce ``true`` se l'opzione "additiva" è abilitata nell'impostazione all'indice ``index``.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_is_relative:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_relative**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_is_relative>`

Restituisce ``true`` se l'opzione "relativa" è abilitata nell'impostazione all'indice ``index``.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_additive:

.. rst-class:: classref-method

|void| **set_additive**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_additive>`

Imposta l'opzione "additiva" nell'impostazione all'indice ``index`` su ``enabled``. Questo influisce principalmente sul processo di applicazione della trasformazione al :ref:`BoneConstraint3D.set_apply_bone()<class_BoneConstraint3D_method_set_apply_bone>`.

Se ``enabled`` è impostato su ``true``, la trasformazione elaborata viene aggiunta alla posa dell'osso applicato attuale.

Se ``enabled`` è impostato su ``false``, la posa dell'osso applicato attuale è sostituita con la trasformazione elaborata. Tuttavia, se :ref:`set_relative()<class_ConvertTransformModifier3D_method_set_relative>` è impostato su ``true``, la trasformazione è relativa al riposo.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_apply_axis:

.. rst-class:: classref-method

|void| **set_apply_axis**\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_apply_axis>`

Imposta l'asse della trasformazione di destinazione di rimappatura.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_apply_range_max:

.. rst-class:: classref-method

|void| **set_apply_range_max**\ (\ index\: :ref:`int<class_int>`, range_max\: :ref:`float<class_float>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_apply_range_max>`

Imposta il valore massimo dell'intervallo di destinazione di rimappatura.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_apply_range_min:

.. rst-class:: classref-method

|void| **set_apply_range_min**\ (\ index\: :ref:`int<class_int>`, range_min\: :ref:`float<class_float>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_apply_range_min>`

Imposta il valore minimo dell'intervallo di destinazione di rimappatura.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_apply_transform_mode:

.. rst-class:: classref-method

|void| **set_apply_transform_mode**\ (\ index\: :ref:`int<class_int>`, transform_mode\: :ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_apply_transform_mode>`

Imposta l'operazione dell'intervallo di destinazione di rimappatura.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_reference_axis:

.. rst-class:: classref-method

|void| **set_reference_axis**\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_reference_axis>`

Imposta l'asse dell'intervallo di origine di rimappatura.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_reference_range_max:

.. rst-class:: classref-method

|void| **set_reference_range_max**\ (\ index\: :ref:`int<class_int>`, range_max\: :ref:`float<class_float>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_reference_range_max>`

Imposta il valore massimo della trasformazione di origine di rimappatura.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_reference_range_min:

.. rst-class:: classref-method

|void| **set_reference_range_min**\ (\ index\: :ref:`int<class_int>`, range_min\: :ref:`float<class_float>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_reference_range_min>`

Imposta il valore minimo della trasformazione di origine di rimappatura.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_reference_transform_mode:

.. rst-class:: classref-method

|void| **set_reference_transform_mode**\ (\ index\: :ref:`int<class_int>`, transform_mode\: :ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_reference_transform_mode>`

Imposta l'operazione della trasformazione di origine di rimappatura.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_relative:

.. rst-class:: classref-method

|void| **set_relative**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_relative>`

Imposta l'opzione relativa nell'impostazione all'indice ``index`` su ``enabled``.

Se ``enabled`` è impostato su ``true``, la trasformazione estratta e applicata è relativa al riposo.

Se ``enabled`` è impostato su ``false``, la trasformazione estratta è assoluta.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
