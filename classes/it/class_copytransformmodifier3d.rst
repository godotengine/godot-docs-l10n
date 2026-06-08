:github_url: hide

.. _class_CopyTransformModifier3D:

CopyTransformModifier3D
=======================

**Eredita:** :ref:`BoneConstraint3D<class_BoneConstraint3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Uno :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` che applica una trasformazione all'osso che ha copiato dal riferimento.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Applica la trasformazione copiata dell'insieme di ossa tramite :ref:`BoneConstraint3D.set_reference_bone()<class_BoneConstraint3D_method_set_reference_bone>` all'insieme di ossa tramite :ref:`BoneConstraint3D.set_apply_bone()<class_BoneConstraint3D_method_set_apply_bone>` elaborandola con alcune maschere e opzioni.

Esistono 4 modi per applicare la trasformazione, a seconda della combinazione di :ref:`set_relative()<class_CopyTransformModifier3D_method_set_relative>` e :ref:`set_additive()<class_CopyTransformModifier3D_method_set_additive>`.

\ **Relativo + Additivo:**\ 

- Estrae la posa di riferimento relativa al riposo e la aggiunge alla posa dell'osso da applicare.

\ **Relativo + Non Additivo:**\ 

- Estrae la posa di riferimento relativa al riposo e la aggiunge alla posa dell'osso da applicare.

\ **Non Relativo + Additivo:**\ 

- Estrae la posa di riferimento assoluta e la aggiunge alla posa dell'osso da applicare.

\ **Non relativo + Non additivo:**\ 

- Estrae la posa di riferimento in modo assoluto e la posa dell'osso applicato è sostituita con essa.

\ **Nota:** L'opzione relativa è disponibile solo se :ref:`BoneConstraint3D.get_reference_type()<class_BoneConstraint3D_method_get_reference_type>` è :ref:`BoneConstraint3D.REFERENCE_TYPE_BONE<class_BoneConstraint3D_constant_REFERENCE_TYPE_BONE>`. Vedi anche :ref:`ReferenceType<enum_BoneConstraint3D_ReferenceType>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`setting_count<class_CopyTransformModifier3D_property_setting_count>` | ``0`` |
   +-----------------------+----------------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>`\]           | :ref:`get_axis_flags<class_CopyTransformModifier3D_method_get_axis_flags>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                      |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`TransformFlag<enum_CopyTransformModifier3D_TransformFlag>`\] | :ref:`get_copy_flags<class_CopyTransformModifier3D_method_get_copy_flags>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                      |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>`\]           | :ref:`get_invert_flags<class_CopyTransformModifier3D_method_get_invert_flags>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                  |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_additive<class_CopyTransformModifier3D_method_is_additive>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                            |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_axis_x_enabled<class_CopyTransformModifier3D_method_is_axis_x_enabled>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_axis_x_inverted<class_CopyTransformModifier3D_method_is_axis_x_inverted>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                              |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_axis_y_enabled<class_CopyTransformModifier3D_method_is_axis_y_enabled>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_axis_y_inverted<class_CopyTransformModifier3D_method_is_axis_y_inverted>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                              |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_axis_z_enabled<class_CopyTransformModifier3D_method_is_axis_z_enabled>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_axis_z_inverted<class_CopyTransformModifier3D_method_is_axis_z_inverted>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                              |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_position_copying<class_CopyTransformModifier3D_method_is_position_copying>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                            |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_relative<class_CopyTransformModifier3D_method_is_relative>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                            |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_rotation_copying<class_CopyTransformModifier3D_method_is_rotation_copying>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                            |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_scale_copying<class_CopyTransformModifier3D_method_is_scale_copying>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                  |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_additive<class_CopyTransformModifier3D_method_set_additive>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                               |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_axis_flags<class_CopyTransformModifier3D_method_set_axis_flags>`\ (\ index\: :ref:`int<class_int>`, axis_flags\: |bitfield|\[:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>`\]\ )           |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_axis_x_enabled<class_CopyTransformModifier3D_method_set_axis_x_enabled>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                   |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_axis_x_inverted<class_CopyTransformModifier3D_method_set_axis_x_inverted>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                 |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_axis_y_enabled<class_CopyTransformModifier3D_method_set_axis_y_enabled>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                   |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_axis_y_inverted<class_CopyTransformModifier3D_method_set_axis_y_inverted>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                 |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_axis_z_enabled<class_CopyTransformModifier3D_method_set_axis_z_enabled>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                   |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_axis_z_inverted<class_CopyTransformModifier3D_method_set_axis_z_inverted>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                 |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_copy_flags<class_CopyTransformModifier3D_method_set_copy_flags>`\ (\ index\: :ref:`int<class_int>`, copy_flags\: |bitfield|\[:ref:`TransformFlag<enum_CopyTransformModifier3D_TransformFlag>`\]\ ) |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_copy_position<class_CopyTransformModifier3D_method_set_copy_position>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                     |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_copy_rotation<class_CopyTransformModifier3D_method_set_copy_rotation>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                     |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_copy_scale<class_CopyTransformModifier3D_method_set_copy_scale>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                           |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_invert_flags<class_CopyTransformModifier3D_method_set_invert_flags>`\ (\ index\: :ref:`int<class_int>`, axis_flags\: |bitfield|\[:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>`\]\ )       |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_relative<class_CopyTransformModifier3D_method_set_relative>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                               |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_CopyTransformModifier3D_TransformFlag:

.. rst-class:: classref-enumeration

flags **TransformFlag**: :ref:`🔗<enum_CopyTransformModifier3D_TransformFlag>`

.. _class_CopyTransformModifier3D_constant_TRANSFORM_FLAG_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_CopyTransformModifier3D_TransformFlag>` **TRANSFORM_FLAG_POSITION** = ``1``

Se impostato, consente copiare la posizione.

.. _class_CopyTransformModifier3D_constant_TRANSFORM_FLAG_ROTATION:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_CopyTransformModifier3D_TransformFlag>` **TRANSFORM_FLAG_ROTATION** = ``2``

Se impostato, consente copiare la rotazione.

.. _class_CopyTransformModifier3D_constant_TRANSFORM_FLAG_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_CopyTransformModifier3D_TransformFlag>` **TRANSFORM_FLAG_SCALE** = ``4``

Se impostato, consente copiare la scala.

.. _class_CopyTransformModifier3D_constant_TRANSFORM_FLAG_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_CopyTransformModifier3D_TransformFlag>` **TRANSFORM_FLAG_ALL** = ``7``

Se impostato, consente di copiare la posizione/rotazione/scala.

.. rst-class:: classref-item-separator

----

.. _enum_CopyTransformModifier3D_AxisFlag:

.. rst-class:: classref-enumeration

flags **AxisFlag**: :ref:`🔗<enum_CopyTransformModifier3D_AxisFlag>`

.. _class_CopyTransformModifier3D_constant_AXIS_FLAG_X:

.. rst-class:: classref-enumeration-constant

:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>` **AXIS_FLAG_X** = ``1``

Se impostato, consente di elaborare l'asse X.

.. _class_CopyTransformModifier3D_constant_AXIS_FLAG_Y:

.. rst-class:: classref-enumeration-constant

:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>` **AXIS_FLAG_Y** = ``2``

Se impostato, consente di elaborare l'asse Y.

.. _class_CopyTransformModifier3D_constant_AXIS_FLAG_Z:

.. rst-class:: classref-enumeration-constant

:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>` **AXIS_FLAG_Z** = ``4``

Se impostato, consente di elaborare l'asse Z.

.. _class_CopyTransformModifier3D_constant_AXIS_FLAG_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>` **AXIS_FLAG_ALL** = ``7``

Se impostato, consente di elaborare tutti gli assi.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_CopyTransformModifier3D_property_setting_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_count** = ``0`` :ref:`🔗<class_CopyTransformModifier3D_property_setting_count>`

.. rst-class:: classref-property-setget

- |void| **set_setting_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_count**\ (\ )

Il numero di impostazioni nel modificatore.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_CopyTransformModifier3D_method_get_axis_flags:

.. rst-class:: classref-method

|bitfield|\[:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>`\] **get_axis_flags**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_get_axis_flags>`

Restituisce i flag di asse dell'impostazione all'indice ``index``.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_get_copy_flags:

.. rst-class:: classref-method

|bitfield|\[:ref:`TransformFlag<enum_CopyTransformModifier3D_TransformFlag>`\] **get_copy_flags**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_get_copy_flags>`

Restituisce i flag di copia dell'impostazione all'indice ``index``.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_get_invert_flags:

.. rst-class:: classref-method

|bitfield|\[:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>`\] **get_invert_flags**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_get_invert_flags>`

Restituisce i flag di inversione dell'impostazione all'indice ``index``.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_additive:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_additive**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_additive>`

Restituisce ``true`` se l'opzione "additiva" è abilitata nell'impostazione all'indice ``index``.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_axis_x_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_axis_x_enabled**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_axis_x_enabled>`

Restituisce ``true`` se i flag di abilitazione hanno il flag per l'asse X nell'impostazione all'indice ``index``. Vedi anche :ref:`set_axis_flags()<class_CopyTransformModifier3D_method_set_axis_flags>`.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_axis_x_inverted:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_axis_x_inverted**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_axis_x_inverted>`

Restituisce ``true`` se i flag di inversione hanno il flag per l'asse X nell'impostazione all'indice ``index``. Vedi anche :ref:`set_invert_flags()<class_CopyTransformModifier3D_method_set_invert_flags>`.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_axis_y_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_axis_y_enabled**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_axis_y_enabled>`

Restituisce ``true`` se i flag di abilitazione hanno il flag per l'asse Y nell'impostazione all'indice ``index``. Vedi anche :ref:`set_axis_flags()<class_CopyTransformModifier3D_method_set_axis_flags>`.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_axis_y_inverted:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_axis_y_inverted**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_axis_y_inverted>`

Restituisce ``true`` se i flag di inversione hanno il flag per l'asse Y nell'impostazione all'indice ``index``. Vedi anche :ref:`set_invert_flags()<class_CopyTransformModifier3D_method_set_invert_flags>`.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_axis_z_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_axis_z_enabled**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_axis_z_enabled>`

Restituisce ``true`` se i flag di abilitazione hanno il flag per l'asse Z nell'impostazione all'indice ``index``. Vedi anche :ref:`set_axis_flags()<class_CopyTransformModifier3D_method_set_axis_flags>`.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_axis_z_inverted:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_axis_z_inverted**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_axis_z_inverted>`

Restituisce ``true`` se i flag di inversione hanno il flag per l'asse Z nell'impostazione all'indice ``index``. Vedi anche :ref:`set_invert_flags()<class_CopyTransformModifier3D_method_set_invert_flags>`.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_position_copying:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_position_copying**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_position_copying>`

Restituisce ``true`` se i flag di copia hanno il flag per la posizione nell'impostazione all'indice ``index``. Vedi anche :ref:`set_copy_flags()<class_CopyTransformModifier3D_method_set_copy_flags>`.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_relative:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_relative**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_relative>`

Restituisce ``true`` se l'opzione "relativa" è abilitata nell'impostazione all'indice ``index``.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_rotation_copying:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_rotation_copying**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_rotation_copying>`

Restituisce ``true`` se i flag di copia hanno il flag per la rotazione nell'impostazione all'indice ``index``. Vedi anche :ref:`set_copy_flags()<class_CopyTransformModifier3D_method_set_copy_flags>`.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_scale_copying:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_scale_copying**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_scale_copying>`

Restituisce ``true`` se i flag di copia hanno il flag per la scala nell'impostazione all'indice ``index``. Vedi anche :ref:`set_copy_flags()<class_CopyTransformModifier3D_method_set_copy_flags>`.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_additive:

.. rst-class:: classref-method

|void| **set_additive**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_additive>`

Imposta l'opzione "additiva" nell'impostazione all'indice ``index`` su ``enabled``. Questo influisce principalmente sul processo di applicazione della trasformazione al :ref:`BoneConstraint3D.set_apply_bone()<class_BoneConstraint3D_method_set_apply_bone>`.

Se ``enabled`` è impostato su ``true``, la trasformazione elaborata viene aggiunta alla posa dell'osso applicato attuale.

Se ``enabled`` è impostato su ``false``, la posa dell'osso applicato attuale è sostituita con la trasformazione elaborata. Tuttavia, se :ref:`set_relative()<class_CopyTransformModifier3D_method_set_relative>` è impostato su ``true``, la trasformazione è relativa al riposo.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_axis_flags:

.. rst-class:: classref-method

|void| **set_axis_flags**\ (\ index\: :ref:`int<class_int>`, axis_flags\: |bitfield|\[:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>`\]\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_axis_flags>`

Imposta i flag per copiare gli assi. Se il flag è valido, l'asse è copiato.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_axis_x_enabled:

.. rst-class:: classref-method

|void| **set_axis_x_enabled**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_axis_x_enabled>`

Se ``enabled`` è ``true``, l'asse X sarà copiata.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_axis_x_inverted:

.. rst-class:: classref-method

|void| **set_axis_x_inverted**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_axis_x_inverted>`

Se ``enabled`` è ``true``, l'asse X sarà invertita.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_axis_y_enabled:

.. rst-class:: classref-method

|void| **set_axis_y_enabled**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_axis_y_enabled>`

Se ``enabled`` è ``true``, l'asse Y sarà copiata.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_axis_y_inverted:

.. rst-class:: classref-method

|void| **set_axis_y_inverted**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_axis_y_inverted>`

Se ``enabled`` è ``true``, l'asse Y sarà invertita.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_axis_z_enabled:

.. rst-class:: classref-method

|void| **set_axis_z_enabled**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_axis_z_enabled>`

Se ``enabled`` è ``true``, l'asse Z sarà copiata.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_axis_z_inverted:

.. rst-class:: classref-method

|void| **set_axis_z_inverted**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_axis_z_inverted>`

Se ``enabled`` è ``true``, l'asse Z sarà invertita.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_copy_flags:

.. rst-class:: classref-method

|void| **set_copy_flags**\ (\ index\: :ref:`int<class_int>`, copy_flags\: |bitfield|\[:ref:`TransformFlag<enum_CopyTransformModifier3D_TransformFlag>`\]\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_copy_flags>`

Imposta i flag per elaborare le operazioni di trasformazione. Se il flag è valido, l'operazione di trasformazione viene elaborata.

\ **Nota:** Se la rotazione è valida per un solo asse, rispetta il rollio dell'asse valido. Se la rotazione è valida per due assi, ignora il rollio dell'asse non valido.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_copy_position:

.. rst-class:: classref-method

|void| **set_copy_position**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_copy_position>`

Se ``enabled`` è ``true``, la posizione sarà copiata.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_copy_rotation:

.. rst-class:: classref-method

|void| **set_copy_rotation**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_copy_rotation>`

Se ``enabled`` è ``true``, la rotazione sarà copiata.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_copy_scale:

.. rst-class:: classref-method

|void| **set_copy_scale**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_copy_scale>`

Se ``enabled`` è ``true``, la scala sarà copiata.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_invert_flags:

.. rst-class:: classref-method

|void| **set_invert_flags**\ (\ index\: :ref:`int<class_int>`, axis_flags\: |bitfield|\[:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>`\]\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_invert_flags>`

Imposta i flag per invertire gli assi. Se il flag è valido, l'asse viene copiato.

\ **Nota:** Una scala invertita indica un numero inverso, non una scala negativa. Ad esempio, invertendo ``2.0`` si ottiene ``0.5``.

\ **Nota:** Una rotazione invertita inverte gli elementi del quaternione. Ad esempio, un'inversione a due assi invertirà il rollio di ciascun asse, mentre un'inversione a tre assi invertirà l'orientamento finale. Tuttavia, tieni presente che l'inversione di un solo asse può causare una rotazione indesiderata degli assi non invertiti, a causa delle caratteristiche del quaternione.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_relative:

.. rst-class:: classref-method

|void| **set_relative**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_relative>`

Imposta l'opzione relativa nell'impostazione all'indice ``index`` su ``enabled``.

Se ``enabled`` è impostato su ``true``, la trasformazione estratta e applicata è relativa al riposo.

Se ``enabled`` è impostato su ``false``, la trasformazione estratta è assoluta.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
