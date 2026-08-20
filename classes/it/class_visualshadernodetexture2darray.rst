:github_url: hide

.. _class_VisualShaderNodeTexture2DArray:

VisualShaderNodeTexture2DArray
==============================

**Eredita:** :ref:`VisualShaderNodeSample3D<class_VisualShaderNodeSample3D>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un array uniforme di texture 2D da utilizzare all'interno del grafico di visual shader.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Tradotto come ``uniform sampler2DArray`` nel linguaggio di shader.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------+-----------------------------------------------------------------------------------+
   | :ref:`TextureLayered<class_TextureLayered>` | :ref:`texture_array<class_VisualShaderNodeTexture2DArray_property_texture_array>` |
   +---------------------------------------------+-----------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeTexture2DArray_property_texture_array:

.. rst-class:: classref-property

:ref:`TextureLayered<class_TextureLayered>` **texture_array** :ref:`🔗<class_VisualShaderNodeTexture2DArray_property_texture_array>`

.. rst-class:: classref-property-setget

- |void| **set_texture_array**\ (\ value\: :ref:`TextureLayered<class_TextureLayered>`\ )
- :ref:`TextureLayered<class_TextureLayered>` **get_texture_array**\ (\ )

Un array di texture sorgente. Usato se :ref:`VisualShaderNodeSample3D.source<class_VisualShaderNodeSample3D_property_source>` è impostato su :ref:`VisualShaderNodeSample3D.SOURCE_TEXTURE<class_VisualShaderNodeSample3D_constant_SOURCE_TEXTURE>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
