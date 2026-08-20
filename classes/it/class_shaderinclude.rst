:github_url: hide

.. _class_ShaderInclude:

ShaderInclude
=============

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Uno snippet di codice di shader da includere in uno :ref:`Shader<class_Shader>` attraverso ``#include``.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un file di inclusione di shader, salvato con l'estensione ``.gdshaderinc``. Questa classe consente di definire uno snippet di shader personalizzato che può essere incluso in uno :ref:`Shader<class_Shader>` attraverso la direttiva del preprocessore ``#include``, seguita dal percorso del file (ad esempio ``#include "res://shader_lib.gdshaderinc"``). Lo snippet non deve essere uno shader valido di per sé.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Precalcolo per il processore di shader <../tutorials/shaders/shader_reference/shader_preprocessor>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`code<class_ShaderInclude_property_code>` | ``""`` |
   +-----------------------------+------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ShaderInclude_property_code:

.. rst-class:: classref-property

:ref:`String<class_String>` **code** = ``""`` :ref:`🔗<class_ShaderInclude_property_code>`

.. rst-class:: classref-property-setget

- |void| **set_code**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_code**\ (\ )

Restituisce il codice del file di inclusione dello shader. Il testo restituito è ciò che l'utente ha scritto, non il codice generato completo utilizzato internamente.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
