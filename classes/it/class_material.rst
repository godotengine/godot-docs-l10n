:github_url: hide

.. _class_Material:

Material
========

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`BaseMaterial3D<class_BaseMaterial3D>`, :ref:`BlitMaterial<class_BlitMaterial>`, :ref:`CanvasItemMaterial<class_CanvasItemMaterial>`, :ref:`FogMaterial<class_FogMaterial>`, :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>`, :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>`, :ref:`PhysicalSkyMaterial<class_PhysicalSkyMaterial>`, :ref:`PlaceholderMaterial<class_PlaceholderMaterial>`, :ref:`ProceduralSkyMaterial<class_ProceduralSkyMaterial>`, :ref:`ShaderMaterial<class_ShaderMaterial>`

Classe di base virtuale per applicare proprietà visive a un oggetto, come colore e rugosità.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Il **Material** è una risorsa di base utilizzata per colorare e ombreggiare la geometria. Tutti i materiali ereditano da essa e quasi tutti i nodi derivati da :ref:`VisualInstance3D<class_VisualInstance3D>` hanno un **Material**. Alcuni flag e parametri sono condivisi tra tutti i tipi di materiale e sono configurati qui.

È importante che tu possa ereditare da **Material** per creare il tuo tipo di materiale personalizzato tramite script o GDExtension.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Demo di tester di materiali 3D <https://godotengine.org/asset-library/asset/2742>`__

- `Demo di sparatutto in terza persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------+
   | :ref:`Material<class_Material>` | :ref:`next_pass<class_Material_property_next_pass>`             |
   +---------------------------------+-----------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`render_priority<class_Material_property_render_priority>` |
   +---------------------------------+-----------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`_can_do_next_pass<class_Material_private_method__can_do_next_pass>`\ (\ ) |virtual| |const|               |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`_can_use_render_priority<class_Material_private_method__can_use_render_priority>`\ (\ ) |virtual| |const| |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Mode<enum_Shader_Mode>`   | :ref:`_get_shader_mode<class_Material_private_method__get_shader_mode>`\ (\ ) |virtual| |required| |const|      |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`           | :ref:`_get_shader_rid<class_Material_private_method__get_shader_rid>`\ (\ ) |virtual| |required| |const|        |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>` | :ref:`create_placeholder<class_Material_method_create_placeholder>`\ (\ ) |const|                               |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`inspect_native_shader_code<class_Material_method_inspect_native_shader_code>`\ (\ )                       |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Costanti
----------------

.. _class_Material_constant_RENDER_PRIORITY_MAX:

.. rst-class:: classref-constant

**RENDER_PRIORITY_MAX** = ``127`` :ref:`🔗<class_Material_constant_RENDER_PRIORITY_MAX>`

Il valore massimo per il parametro :ref:`render_priority<class_Material_property_render_priority>`.

.. _class_Material_constant_RENDER_PRIORITY_MIN:

.. rst-class:: classref-constant

**RENDER_PRIORITY_MIN** = ``-128`` :ref:`🔗<class_Material_constant_RENDER_PRIORITY_MIN>`

Il valore minimo per il parametro :ref:`render_priority<class_Material_property_render_priority>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Material_property_next_pass:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **next_pass** :ref:`🔗<class_Material_property_next_pass>`

.. rst-class:: classref-property-setget

- |void| **set_next_pass**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_next_pass**\ (\ )

Imposta il **Material** da utilizzare per il passaggio successivo. Questo renderizza nuovamente l'oggetto utilizzando un materiale diverso.

\ **Nota:** I materiali :ref:`next_pass<class_Material_property_next_pass>` non vengono necessariamente disegnati immediatamente dopo il **Material** sorgente. L'ordine di disegno è determinato dalle proprietà del materiale, :ref:`render_priority<class_Material_property_render_priority>` e dalla distanza dalla telecamera.

\ **Nota:** Questo si applica solo a :ref:`StandardMaterial3D<class_StandardMaterial3D>` e :ref:`ShaderMaterial<class_ShaderMaterial>` con tipo "Spatial".

.. rst-class:: classref-item-separator

----

.. _class_Material_property_render_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **render_priority** :ref:`🔗<class_Material_property_render_priority>`

.. rst-class:: classref-property-setget

- |void| **set_render_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_render_priority**\ (\ )

Imposta la priorità di rendering per gli oggetti nelle scene 3D. Gli oggetti con priorità più alta saranno ordinati prima di quelli con priorità più bassa. In altre parole, tutti gli oggetti con un :ref:`render_priority<class_Material_property_render_priority>` di ``1`` saranno renderizzati prima di tutti gli oggetti con un :ref:`render_priority<class_Material_property_render_priority>` di ``0``.

\ **Nota:** Questo si applica solo ai :ref:`StandardMaterial3D<class_StandardMaterial3D>` e :ref:`ShaderMaterial<class_ShaderMaterial>` con tipo "Spatial".

\ **Nota:** Questo non avrà alcun impatto sul modo in cui gli oggetti trasparenti sono ordinati rispetto agli oggetti opachi o sul modo in cui le mesh dinamiche sono ordinate rispetto ad altre mesh opache. Ciò perché tutti gli oggetti trasparenti sono disegnati dopo tutti gli oggetti opachi e tutte le mesh opache dinamiche sono disegnate prima di altre mesh opache.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Material_private_method__can_do_next_pass:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_do_next_pass**\ (\ ) |virtual| |const| :ref:`🔗<class_Material_private_method__can_do_next_pass>`

Esposto solo per essere sovrascritto. Non puoi chiamare questa funzione direttamente. Utilizzato internamente per determinare se :ref:`next_pass<class_Material_property_next_pass>` debba essere mostrato nell'editor o meno.

.. rst-class:: classref-item-separator

----

.. _class_Material_private_method__can_use_render_priority:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_use_render_priority**\ (\ ) |virtual| |const| :ref:`🔗<class_Material_private_method__can_use_render_priority>`

Esposto solo per essere sovrascritto. Non puoi chiamare questa funzione direttamente. Utilizzato internamente per determinare se :ref:`render_priority<class_Material_property_render_priority>` debba essere visualizzato o meno nell'editor.

.. rst-class:: classref-item-separator

----

.. _class_Material_private_method__get_shader_mode:

.. rst-class:: classref-method

:ref:`Mode<enum_Shader_Mode>` **_get_shader_mode**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Material_private_method__get_shader_mode>`

Esposto solo per essere sovrascritto. Non puoi chiamare questa funzione direttamente. Utilizzato internamente da vari strumenti dell'editor.

.. rst-class:: classref-item-separator

----

.. _class_Material_private_method__get_shader_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_shader_rid**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Material_private_method__get_shader_rid>`

Esposto solo per essere sovrascritto. Non puoi chiamare questa funzione direttamente. Utilizzato internamente da vari strumenti dell'editor. Utilizzato per accedere al RID dello :ref:`Shader<class_Shader>` del **Material**.

.. rst-class:: classref-item-separator

----

.. _class_Material_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_Material_method_create_placeholder>`

Crea una versione segnaposto di questa risorsa (:ref:`PlaceholderMaterial<class_PlaceholderMaterial>`).

.. rst-class:: classref-item-separator

----

.. _class_Material_method_inspect_native_shader_code:

.. rst-class:: classref-method

|void| **inspect_native_shader_code**\ (\ ) :ref:`🔗<class_Material_method_inspect_native_shader_code>`

Disponibile solo quando è in esecuzione nell'editor. Apre un popup che visualizza il codice dello shader generato, incluse tutte le varianti e il codice dello shader interno. Vedi anche :ref:`Shader.inspect_native_shader_code()<class_Shader_method_inspect_native_shader_code>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
