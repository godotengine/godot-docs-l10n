:github_url: hide

.. _class_VisualShaderNodeBillboard:

VisualShaderNodeBillboard
=========================

**Eredita:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un nodo che controlla il modo in cui l'oggetto è rivolto verso la telecamera da utilizzare all'interno del grafico di shader visivo.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

La porta di uscita di questo nodo deve essere collegata alla porta ``Model View Matrix`` di :ref:`VisualShaderNodeOutput<class_VisualShaderNodeOutput>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` | :ref:`billboard_type<class_VisualShaderNodeBillboard_property_billboard_type>` | ``1``     |
   +--------------------------------------------------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                            | :ref:`keep_scale<class_VisualShaderNodeBillboard_property_keep_scale>`         | ``false`` |
   +--------------------------------------------------------------------+--------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_VisualShaderNodeBillboard_BillboardType:

.. rst-class:: classref-enumeration

enum **BillboardType**: :ref:`🔗<enum_VisualShaderNodeBillboard_BillboardType>`

.. _class_VisualShaderNodeBillboard_constant_BILLBOARD_TYPE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **BILLBOARD_TYPE_DISABLED** = ``0``

Il billboarding è disattivato e il nodo non fa nulla.

.. _class_VisualShaderNodeBillboard_constant_BILLBOARD_TYPE_ENABLED:

.. rst-class:: classref-enumeration-constant

:ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **BILLBOARD_TYPE_ENABLED** = ``1``

È abilitato un algoritmo di billboarding standard.

.. _class_VisualShaderNodeBillboard_constant_BILLBOARD_TYPE_FIXED_Y:

.. rst-class:: classref-enumeration-constant

:ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **BILLBOARD_TYPE_FIXED_Y** = ``2``

È abilitato un algoritmo di billboarding per la rotazione attorno all'asse Y.

.. _class_VisualShaderNodeBillboard_constant_BILLBOARD_TYPE_PARTICLES:

.. rst-class:: classref-enumeration-constant

:ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **BILLBOARD_TYPE_PARTICLES** = ``3``

È abilitato un algoritmo di billboarding progettato per l'uso sulle particelle.

.. _class_VisualShaderNodeBillboard_constant_BILLBOARD_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **BILLBOARD_TYPE_MAX** = ``4``

Rappresenta la dimensione dell'enumerazione :ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeBillboard_property_billboard_type:

.. rst-class:: classref-property

:ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **billboard_type** = ``1`` :ref:`🔗<class_VisualShaderNodeBillboard_property_billboard_type>`

.. rst-class:: classref-property-setget

- |void| **set_billboard_type**\ (\ value\: :ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>`\ )
- :ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **get_billboard_type**\ (\ )

Controlla il modo in cui l'oggetto è rivolto verso la telecamera.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeBillboard_property_keep_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **keep_scale** = ``false`` :ref:`🔗<class_VisualShaderNodeBillboard_property_keep_scale>`

.. rst-class:: classref-property-setget

- |void| **set_keep_scale_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_keep_scale_enabled**\ (\ )

Se ``true``, lo shader manterrà la scala impostata per la mesh. Altrimenti, la scala viene persa durante il billboarding.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
