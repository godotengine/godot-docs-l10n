:github_url: hide

.. _class_VisualShaderNodeSample3D:

VisualShaderNodeSample3D
========================

**Eredita:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`VisualShaderNodeTexture2DArray<class_VisualShaderNodeTexture2DArray>`, :ref:`VisualShaderNodeTexture3D<class_VisualShaderNodeTexture3D>`

Un nodo di base per i nodi che campionano le texture 3D nel grafico di visual shader.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una classe virtuale, usa invece i discendenti.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------+-------+
   | :ref:`Source<enum_VisualShaderNodeSample3D_Source>` | :ref:`source<class_VisualShaderNodeSample3D_property_source>` | ``0`` |
   +-----------------------------------------------------+---------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_VisualShaderNodeSample3D_Source:

.. rst-class:: classref-enumeration

enum **Source**: :ref:`🔗<enum_VisualShaderNodeSample3D_Source>`

.. _class_VisualShaderNodeSample3D_constant_SOURCE_TEXTURE:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeSample3D_Source>` **SOURCE_TEXTURE** = ``0``

Crea un uniforme interno e fornisce un modo per assegnarlo all'interno del nodo.

.. _class_VisualShaderNodeSample3D_constant_SOURCE_PORT:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeSample3D_Source>` **SOURCE_PORT** = ``1``

Utilizza la texture uniforme dalla porta del campionatore.

.. _class_VisualShaderNodeSample3D_constant_SOURCE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeSample3D_Source>` **SOURCE_MAX** = ``2``

Rappresenta la dimensione dell'enumerazione :ref:`Source<enum_VisualShaderNodeSample3D_Source>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeSample3D_property_source:

.. rst-class:: classref-property

:ref:`Source<enum_VisualShaderNodeSample3D_Source>` **source** = ``0`` :ref:`🔗<class_VisualShaderNodeSample3D_property_source>`

.. rst-class:: classref-property-setget

- |void| **set_source**\ (\ value\: :ref:`Source<enum_VisualShaderNodeSample3D_Source>`\ )
- :ref:`Source<enum_VisualShaderNodeSample3D_Source>` **get_source**\ (\ )

Un tipo di sorgente di ingresso.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
