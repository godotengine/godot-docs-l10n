:github_url: hide

.. _class_RDUniform:

RDUniform
=========

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Uniforme di shader (utilizzato da :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo oggetto è utilizzato dal :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +------------------------------------------------------+------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                                | :ref:`binding<class_RDUniform_property_binding>`           | ``0`` |
   +------------------------------------------------------+------------------------------------------------------------+-------+
   | :ref:`UniformType<enum_RenderingDevice_UniformType>` | :ref:`uniform_type<class_RDUniform_property_uniform_type>` | ``3`` |
   +------------------------------------------------------+------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +----------------------------------------------------+--------------------------------------------------------------------------------+
   | |void|                                             | :ref:`add_id<class_RDUniform_method_add_id>`\ (\ id\: :ref:`RID<class_RID>`\ ) |
   +----------------------------------------------------+--------------------------------------------------------------------------------+
   | |void|                                             | :ref:`clear_ids<class_RDUniform_method_clear_ids>`\ (\ )                       |
   +----------------------------------------------------+--------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] | :ref:`get_ids<class_RDUniform_method_get_ids>`\ (\ ) |const|                   |
   +----------------------------------------------------+--------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_RDUniform_property_binding:

.. rst-class:: classref-property

:ref:`int<class_int>` **binding** = ``0`` :ref:`🔗<class_RDUniform_property_binding>`

.. rst-class:: classref-property-setget

- |void| **set_binding**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_binding**\ (\ )

L'associazione dell'uniforme.

.. rst-class:: classref-item-separator

----

.. _class_RDUniform_property_uniform_type:

.. rst-class:: classref-property

:ref:`UniformType<enum_RenderingDevice_UniformType>` **uniform_type** = ``3`` :ref:`🔗<class_RDUniform_property_uniform_type>`

.. rst-class:: classref-property-setget

- |void| **set_uniform_type**\ (\ value\: :ref:`UniformType<enum_RenderingDevice_UniformType>`\ )
- :ref:`UniformType<enum_RenderingDevice_UniformType>` **get_uniform_type**\ (\ )

Il tipo di dati dell'uniforme.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_RDUniform_method_add_id:

.. rst-class:: classref-method

|void| **add_id**\ (\ id\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RDUniform_method_add_id>`

Associa l'ID specificato all'uniforme. I dati associati all'ID sono quindi utilizzati quando l'uniforme viene passata a uno shader.

.. rst-class:: classref-item-separator

----

.. _class_RDUniform_method_clear_ids:

.. rst-class:: classref-method

|void| **clear_ids**\ (\ ) :ref:`🔗<class_RDUniform_method_clear_ids>`

Scollega tutti gli ID attualmente associati all'uniforme.

.. rst-class:: classref-item-separator

----

.. _class_RDUniform_method_get_ids:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_ids**\ (\ ) |const| :ref:`🔗<class_RDUniform_method_get_ids>`

Restituisce un'array di tutti gli id attualmente associati all'uniforme.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
