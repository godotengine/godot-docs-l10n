:github_url: hide

.. _class_Shader:

Shader
======

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`VisualShader<class_VisualShader>`

Uno shader implementato nel linguaggio di shading Godot.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un programma di shader personalizzato implementato nel linguaggio di shading Godot, salvato con l'estensione ``.gdshader``.

Questa classe è utilizzata da uno :ref:`ShaderMaterial<class_ShaderMaterial>` e consente di scrivere il proprio comportamento personalizzato per il rendering di elementi visivi o l'aggiornamento delle informazioni sulle particelle. Per una spiegazione dettagliata e l'utilizzo, consultare i tutorial collegati di seguito.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Indice di documentazione sugli Shader <../tutorials/shaders/index>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`code<class_Shader_property_code>` | ``""`` |
   +-----------------------------+-----------------------------------------+--------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture<class_Texture>` | :ref:`get_default_texture_parameter<class_Shader_method_get_default_texture_parameter>`\ (\ name\: :ref:`StringName<class_StringName>`, index\: :ref:`int<class_int>` = 0\ ) |const|                                  |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Mode<enum_Shader_Mode>` | :ref:`get_mode<class_Shader_method_get_mode>`\ (\ ) |const|                                                                                                                                                           |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`     | :ref:`get_shader_uniform_list<class_Shader_method_get_shader_uniform_list>`\ (\ get_groups\: :ref:`bool<class_bool>` = false\ )                                                                                       |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`inspect_native_shader_code<class_Shader_method_inspect_native_shader_code>`\ (\ )                                                                                                                               |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_default_texture_parameter<class_Shader_method_set_default_texture_parameter>`\ (\ name\: :ref:`StringName<class_StringName>`, texture\: :ref:`Texture<class_Texture>`, index\: :ref:`int<class_int>` = 0\ ) |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_Shader_Mode:

.. rst-class:: classref-enumeration

enum **Mode**: :ref:`🔗<enum_Shader_Mode>`

.. _class_Shader_constant_MODE_SPATIAL:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_Shader_Mode>` **MODE_SPATIAL** = ``0``

Modalità utilizzata per disegnare tutti gli oggetti 3D.

.. _class_Shader_constant_MODE_CANVAS_ITEM:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_Shader_Mode>` **MODE_CANVAS_ITEM** = ``1``

Modalità utilizzata per disegnare tutti gli oggetti 2D.

.. _class_Shader_constant_MODE_PARTICLES:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_Shader_Mode>` **MODE_PARTICLES** = ``2``

Modalità utilizzata per calcolare le informazioni su ciascuna particella individualmente. Non utilizzata per il disegno.

.. _class_Shader_constant_MODE_SKY:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_Shader_Mode>` **MODE_SKY** = ``3``

Modalità utilizzata per disegnare i cieli. Funziona solo con gli shader assegnati agli oggetti :ref:`Sky<class_Sky>`.

.. _class_Shader_constant_MODE_FOG:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_Shader_Mode>` **MODE_FOG** = ``4``

Modalità utilizzata per impostare il colore e la densità dell'effetto nebbia volumetrica.

.. _class_Shader_constant_MODE_TEXTURE_BLIT:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_Shader_Mode>` **MODE_TEXTURE_BLIT** = ``5``

Mode used for drawing to DrawableTexture resources via blit calls.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Shader_property_code:

.. rst-class:: classref-property

:ref:`String<class_String>` **code** = ``""`` :ref:`🔗<class_Shader_property_code>`

.. rst-class:: classref-property-setget

- |void| **set_code**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_code**\ (\ )

Restituisce il codice dello shader così come è stato scritto dall'utente, non il codice generato completo utilizzato internamente.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Shader_method_get_default_texture_parameter:

.. rst-class:: classref-method

:ref:`Texture<class_Texture>` **get_default_texture_parameter**\ (\ name\: :ref:`StringName<class_StringName>`, index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_Shader_method_get_default_texture_parameter>`

Restituisce la texture impostata come predefinita per il parametro specificato.

\ **Nota:** ``name`` deve corrispondere esattamente al nome dell'uniforme nel codice.

\ **Nota:** Se viene utilizzato l'array del campionatore, usa ``index`` per accedere alla texture specificata.

.. rst-class:: classref-item-separator

----

.. _class_Shader_method_get_mode:

.. rst-class:: classref-method

:ref:`Mode<enum_Shader_Mode>` **get_mode**\ (\ ) |const| :ref:`🔗<class_Shader_method_get_mode>`

Restituisce la modalità di shader per lo shader.

.. rst-class:: classref-item-separator

----

.. _class_Shader_method_get_shader_uniform_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_shader_uniform_list**\ (\ get_groups\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Shader_method_get_shader_uniform_list>`

Ottiene la lista delle uniformi dello shader che è possibile assegnare a uno :ref:`ShaderMaterial<class_ShaderMaterial>`, per l'uso con :ref:`ShaderMaterial.set_shader_parameter()<class_ShaderMaterial_method_set_shader_parameter>` e :ref:`ShaderMaterial.get_shader_parameter()<class_ShaderMaterial_method_get_shader_parameter>`. I parametri restituiti sono contenuti in dizionari in un formato simile a quelli restituiti da :ref:`Object.get_property_list()<class_Object_method_get_property_list>`.

Se l'argomento ``get_groups`` è ``true``, saranno fornite indicazioni per il raggruppamento dei parametri.

.. rst-class:: classref-item-separator

----

.. _class_Shader_method_inspect_native_shader_code:

.. rst-class:: classref-method

|void| **inspect_native_shader_code**\ (\ ) :ref:`🔗<class_Shader_method_inspect_native_shader_code>`

Disponibile solo quando è in esecuzione nell'editor. Apre un popup che visualizza il codice dello shader generato, incluse tutte le varianti e il codice di shader interno. Vedi anche :ref:`Material.inspect_native_shader_code()<class_Material_method_inspect_native_shader_code>`.

.. rst-class:: classref-item-separator

----

.. _class_Shader_method_set_default_texture_parameter:

.. rst-class:: classref-method

|void| **set_default_texture_parameter**\ (\ name\: :ref:`StringName<class_StringName>`, texture\: :ref:`Texture<class_Texture>`, index\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Shader_method_set_default_texture_parameter>`

Imposta la texture predefinita da utilizzare con l'uniforme di texture.

\ **Nota:** ``name`` deve corrispondere esattamente al nome dell'uniforme nel codice.

\ **Nota:** Se viene utilizzato l'array del campionatore, usa ``index`` per accedere alla texture specificata.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
