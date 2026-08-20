:github_url: hide

.. _class_VisualShaderNodeVec4Constant:

VisualShaderNodeVec4Constant
============================

**Eredita:** :ref:`VisualShaderNodeConstant<class_VisualShaderNodeConstant>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una costante di vettore 4D, da utilizzare all'interno del grafico di visual shader.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una costante di vettore 4D, che può essere utilizzata come nodo in ingresso.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------+----------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`constant<class_VisualShaderNodeVec4Constant_property_constant>` | ``Quaternion(0, 0, 0, 1)`` |
   +-------------------------------------+-----------------------------------------------------------------------+----------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeVec4Constant_property_constant:

.. rst-class:: classref-property

:ref:`Quaternion<class_Quaternion>` **constant** = ``Quaternion(0, 0, 0, 1)`` :ref:`🔗<class_VisualShaderNodeVec4Constant_property_constant>`

.. rst-class:: classref-property-setget

- |void| **set_constant**\ (\ value\: :ref:`Quaternion<class_Quaternion>`\ )
- :ref:`Quaternion<class_Quaternion>` **get_constant**\ (\ )

Un vettore 4D costante (rappresentato come un :ref:`Quaternion<class_Quaternion>`) che rappresenta lo stato di questo nodo.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
