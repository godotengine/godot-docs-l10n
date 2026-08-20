:github_url: hide

.. _class_VisualShaderNodeCubemap:

VisualShaderNodeCubemap
=======================

**Eredita:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un nodo di campionamento :ref:`Cubemap<class_Cubemap>` da utilizzare all'interno del grafico di shader visivo.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Tradotto in ``texture(cubemap, vec3)`` nel linguaggio shader. Restituisce un vettore di colore e un canale alfa come scalare.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+
   | :ref:`TextureLayered<class_TextureLayered>`                  | :ref:`cube_map<class_VisualShaderNodeCubemap_property_cube_map>`         |       |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+
   | :ref:`Source<enum_VisualShaderNodeCubemap_Source>`           | :ref:`source<class_VisualShaderNodeCubemap_property_source>`             | ``0`` |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+
   | :ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` | :ref:`texture_type<class_VisualShaderNodeCubemap_property_texture_type>` | ``0`` |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_VisualShaderNodeCubemap_Source:

.. rst-class:: classref-enumeration

enum **Source**: :ref:`🔗<enum_VisualShaderNodeCubemap_Source>`

.. _class_VisualShaderNodeCubemap_constant_SOURCE_TEXTURE:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeCubemap_Source>` **SOURCE_TEXTURE** = ``0``

Utilizza il :ref:`Cubemap<class_Cubemap>` impostato tramite :ref:`cube_map<class_VisualShaderNodeCubemap_property_cube_map>`. Se impostato su :ref:`source<class_VisualShaderNodeCubemap_property_source>`, la porta ``samplerCube`` è ignorata.

.. _class_VisualShaderNodeCubemap_constant_SOURCE_PORT:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeCubemap_Source>` **SOURCE_PORT** = ``1``

Utilizza il riferimento al campionatore :ref:`Cubemap<class_Cubemap>` passato tramite la porta ``samplerCube``. Se è impostato su :ref:`source<class_VisualShaderNodeCubemap_property_source>`, la texture :ref:`cube_map<class_VisualShaderNodeCubemap_property_cube_map>` è ignorata.

.. _class_VisualShaderNodeCubemap_constant_SOURCE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeCubemap_Source>` **SOURCE_MAX** = ``2``

Rappresenta la dimensione dell'enumerazione :ref:`Source<enum_VisualShaderNodeCubemap_Source>`.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeCubemap_TextureType:

.. rst-class:: classref-enumeration

enum **TextureType**: :ref:`🔗<enum_VisualShaderNodeCubemap_TextureType>`

.. _class_VisualShaderNodeCubemap_constant_TYPE_DATA:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` **TYPE_DATA** = ``0``

Non sono aggiunte indicazioni alla dichiarazione dell'uniforme.

.. _class_VisualShaderNodeCubemap_constant_TYPE_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` **TYPE_COLOR** = ``1``

Aggiunge ``source_color`` come indicazione alla dichiarazione dell'uniforme per un'adeguata conversione da codifica sRGB non lineare a codifica lineare.

.. _class_VisualShaderNodeCubemap_constant_TYPE_NORMAL_MAP:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` **TYPE_NORMAL_MAP** = ``2``

Aggiunge ``hint_normal`` come indicazione alla dichiarazione uniforme, il che converte internamente la texture per un utilizzo adeguato come mappa normale.

.. _class_VisualShaderNodeCubemap_constant_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` **TYPE_MAX** = ``3``

Rappresenta la dimensione dell'enumerazione :ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeCubemap_property_cube_map:

.. rst-class:: classref-property

:ref:`TextureLayered<class_TextureLayered>` **cube_map** :ref:`🔗<class_VisualShaderNodeCubemap_property_cube_map>`

.. rst-class:: classref-property-setget

- |void| **set_cube_map**\ (\ value\: :ref:`TextureLayered<class_TextureLayered>`\ )
- :ref:`TextureLayered<class_TextureLayered>` **get_cube_map**\ (\ )

La texture :ref:`Cubemap<class_Cubemap>` da campionare quando si utilizza :ref:`SOURCE_TEXTURE<class_VisualShaderNodeCubemap_constant_SOURCE_TEXTURE>` come :ref:`source<class_VisualShaderNodeCubemap_property_source>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCubemap_property_source:

.. rst-class:: classref-property

:ref:`Source<enum_VisualShaderNodeCubemap_Source>` **source** = ``0`` :ref:`🔗<class_VisualShaderNodeCubemap_property_source>`

.. rst-class:: classref-property-setget

- |void| **set_source**\ (\ value\: :ref:`Source<enum_VisualShaderNodeCubemap_Source>`\ )
- :ref:`Source<enum_VisualShaderNodeCubemap_Source>` **get_source**\ (\ )

Definisce quale sorgente deve essere utilizzata per il campionamento.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCubemap_property_texture_type:

.. rst-class:: classref-property

:ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` **texture_type** = ``0`` :ref:`🔗<class_VisualShaderNodeCubemap_property_texture_type>`

.. rst-class:: classref-property-setget

- |void| **set_texture_type**\ (\ value\: :ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>`\ )
- :ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` **get_texture_type**\ (\ )

Definisce il tipo di dati forniti dalla texture sorgente.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
