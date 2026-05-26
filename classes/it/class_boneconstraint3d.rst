:github_url: hide

.. _class_BoneConstraint3D:

BoneConstraint3D
================

**Eredita:** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`AimModifier3D<class_AimModifier3D>`, :ref:`ConvertTransformModifier3D<class_ConvertTransformModifier3D>`, :ref:`CopyTransformModifier3D<class_CopyTransformModifier3D>`

Un nodo che può modificare un osso di uno Skeleton3D associando due ossa.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Base class of :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` that modifies the bone set in :ref:`set_apply_bone()<class_BoneConstraint3D_method_set_apply_bone>` based on the transform of the bone retrieved by :ref:`get_reference_bone()<class_BoneConstraint3D_method_get_reference_bone>`.

\ **Note:** Most methods in this class take an ``index`` parameter. This parameter specifies which setting list entry to return if the IK has multiple entries (e.g. ``settings/<index>/amount``).

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`clear_setting<class_BoneConstraint3D_method_clear_setting>`\ (\ )                                                                                                            |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                 | :ref:`get_amount<class_BoneConstraint3D_method_get_amount>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`get_apply_bone<class_BoneConstraint3D_method_get_apply_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                   |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                               | :ref:`get_apply_bone_name<class_BoneConstraint3D_method_get_apply_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                         |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`get_reference_bone<class_BoneConstraint3D_method_get_reference_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                           |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                               | :ref:`get_reference_bone_name<class_BoneConstraint3D_method_get_reference_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                 |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                           | :ref:`get_reference_node<class_BoneConstraint3D_method_get_reference_node>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                           |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ReferenceType<enum_BoneConstraint3D_ReferenceType>` | :ref:`get_reference_type<class_BoneConstraint3D_method_get_reference_type>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                           |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`get_setting_count<class_BoneConstraint3D_method_get_setting_count>`\ (\ ) |const|                                                                                            |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_amount<class_BoneConstraint3D_method_set_amount>`\ (\ index\: :ref:`int<class_int>`, amount\: :ref:`float<class_float>`\ )                                               |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_apply_bone<class_BoneConstraint3D_method_set_apply_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                             |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_apply_bone_name<class_BoneConstraint3D_method_set_apply_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                        |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_reference_bone<class_BoneConstraint3D_method_set_reference_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                     |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_reference_bone_name<class_BoneConstraint3D_method_set_reference_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_reference_node<class_BoneConstraint3D_method_set_reference_node>`\ (\ index\: :ref:`int<class_int>`, node\: :ref:`NodePath<class_NodePath>`\ )                           |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_reference_type<class_BoneConstraint3D_method_set_reference_type>`\ (\ index\: :ref:`int<class_int>`, type\: :ref:`ReferenceType<enum_BoneConstraint3D_ReferenceType>`\ ) |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_setting_count<class_BoneConstraint3D_method_set_setting_count>`\ (\ count\: :ref:`int<class_int>`\ )                                                                     |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_BoneConstraint3D_ReferenceType:

.. rst-class:: classref-enumeration

enum **ReferenceType**: :ref:`🔗<enum_BoneConstraint3D_ReferenceType>`

.. _class_BoneConstraint3D_constant_REFERENCE_TYPE_BONE:

.. rst-class:: classref-enumeration-constant

:ref:`ReferenceType<enum_BoneConstraint3D_ReferenceType>` **REFERENCE_TYPE_BONE** = ``0``

The reference target is a bone. In this case, the reference target spaces is local space.

.. _class_BoneConstraint3D_constant_REFERENCE_TYPE_NODE:

.. rst-class:: classref-enumeration-constant

:ref:`ReferenceType<enum_BoneConstraint3D_ReferenceType>` **REFERENCE_TYPE_NODE** = ``1``

The reference target is a :ref:`Node3D<class_Node3D>`. In this case, the reference target spaces is model space.

In other words, the reference target's coordinates are treated as if it were placed directly under :ref:`Skeleton3D<class_Skeleton3D>` which parent of the **BoneConstraint3D**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_BoneConstraint3D_method_clear_setting:

.. rst-class:: classref-method

|void| **clear_setting**\ (\ ) :ref:`🔗<class_BoneConstraint3D_method_clear_setting>`

Cancella tutte le impostazioni.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_amount:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_amount**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_amount>`

Restituisce la quantità d'applicazione dell'impostazione all'indice ``index``.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_apply_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_apply_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_apply_bone>`

Restituisce l'osso d'applicazione dell'impostazione all'indice ``index``. Quest'osso sarà modificato.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_apply_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_apply_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_apply_bone_name>`

Restituisce il nome dell'osso d'applicazione dell'impostazione all'indice ``index``. Quest'osso sarà modificato.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_reference_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_reference_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_reference_bone>`

Restituisce l'osso di riferimento dell'impostazione all'indice ``index``.

Questo osso sarà solo referenziato e non modificato da questo modificatore.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_reference_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_reference_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_reference_bone_name>`

Restituisce il nome dell'osso di riferimento dell'impostazione all'indice ``index``.

Questo osso sarà solo referenziato e non modificato da questo modificatore.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_reference_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_reference_node**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_reference_node>`

Returns the reference node path of the setting at ``index``.

This node will be only referenced and not modified by this modifier.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_reference_type:

.. rst-class:: classref-method

:ref:`ReferenceType<enum_BoneConstraint3D_ReferenceType>` **get_reference_type**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_reference_type>`

Returns the reference target type of the setting at ``index``. See also :ref:`ReferenceType<enum_BoneConstraint3D_ReferenceType>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_setting_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_setting_count**\ (\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_setting_count>`

Restituisce il numero di impostazioni nel modificatore.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_amount:

.. rst-class:: classref-method

|void| **set_amount**\ (\ index\: :ref:`int<class_int>`, amount\: :ref:`float<class_float>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_amount>`

Imposta la quantità d'applicazione dell'impostazione all'indice ``index`` su ``amount``.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_apply_bone:

.. rst-class:: classref-method

|void| **set_apply_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_apply_bone>`

Imposta l'osso d'applicazione dell'impostazione all'indice ``index`` su ``bone``. Quest'osso sarà modificato.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_apply_bone_name:

.. rst-class:: classref-method

|void| **set_apply_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_apply_bone_name>`

Imposta l'osso d'applicazione dell'impostazione all'indice ``index`` sull'osso con il nome ``bone_name``. Quest'osso sarà modificato.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_reference_bone:

.. rst-class:: classref-method

|void| **set_reference_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_reference_bone>`

Imposta l'osso di riferimento dell'impostazione all'indice ``index`` su ``bone``.

Questo osso sarà solo referenziato e non modificato da questo modificatore.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_reference_bone_name:

.. rst-class:: classref-method

|void| **set_reference_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_reference_bone_name>`

Imposta l'osso di riferimento dell'impostazione all'indice ``index`` sull'osso con il nome ``bone_name``.

Questo osso sarà solo referenziato e non modificato da questo modificatore.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_reference_node:

.. rst-class:: classref-method

|void| **set_reference_node**\ (\ index\: :ref:`int<class_int>`, node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_reference_node>`

Sets the reference node path of the setting at ``index`` to ``node``.

This node will be only referenced and not modified by this modifier.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_reference_type:

.. rst-class:: classref-method

|void| **set_reference_type**\ (\ index\: :ref:`int<class_int>`, type\: :ref:`ReferenceType<enum_BoneConstraint3D_ReferenceType>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_reference_type>`

Sets the reference target type of the setting at ``index`` to ``type``. See also :ref:`ReferenceType<enum_BoneConstraint3D_ReferenceType>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_setting_count:

.. rst-class:: classref-method

|void| **set_setting_count**\ (\ count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_setting_count>`

Imposta il numero di impostazioni nel modificatore.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
