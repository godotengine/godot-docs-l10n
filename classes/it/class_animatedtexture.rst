:github_url: hide

.. _class_AnimatedTexture:

AnimatedTexture
===============

**Deprecato:** This class does not work properly in current versions and may be removed in the future. There is currently no equivalent workaround.

**Eredita:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Texture di proxy per semplici animazioni basate su fotogrammi.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**AnimatedTexture** è un formato di risorse per animazioni basate su fotogrammi, in cui più texture possono essere concatenate automaticamente con un ritardo predefinito per ogni fotogrammi. A differenza di :ref:`AnimationPlayer<class_AnimationPlayer>` o :ref:`AnimatedSprite2D<class_AnimatedSprite2D>`, non è un :ref:`Node<class_Node>`, ma ha il vantaggio di essere utilizzabile ovunque sia possibile utilizzare una risorsa :ref:`Texture2D<class_Texture2D>`, ad esempio in un :ref:`TileSet<class_TileSet>`.

La riproduzione dell'animazione è controllata dalla proprietà :ref:`speed_scale<class_AnimatedTexture_property_speed_scale>`, così come dalla durata di ogni frame (vedi :ref:`set_frame_duration()<class_AnimatedTexture_method_set_frame_duration>`). L'animazione si ripete, ovvero ripartirà automaticamente dal fotogramma 0 dopo aver riprodotto l'ultimo fotogramma.

\ **AnimatedTexture** attualmente richiede che tutte le texture dei fotogrammi abbiano le stesse dimensioni, altrimenti quelle più grandi verranno ritagliate per adattarsi a quella più piccola.

\ **Nota:** AnimatedTexture non supporta l'utilizzo di :ref:`AtlasTexture<class_AtlasTexture>`. Ogni fotogramma deve essere una :ref:`Texture2D<class_Texture2D>` separata.

\ **Attenzione:** L'implementazione attuale non è efficiente per i renderer moderni.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`current_frame<class_AnimatedTexture_property_current_frame>` |                                                                                        |
   +---------------------------+--------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`frames<class_AnimatedTexture_property_frames>`               | ``1``                                                                                  |
   +---------------------------+--------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`one_shot<class_AnimatedTexture_property_one_shot>`           | ``false``                                                                              |
   +---------------------------+--------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`pause<class_AnimatedTexture_property_pause>`                 | ``false``                                                                              |
   +---------------------------+--------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | resource_local_to_scene                                            | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +---------------------------+--------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`speed_scale<class_AnimatedTexture_property_speed_scale>`     | ``1.0``                                                                                |
   +---------------------------+--------------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | :ref:`get_frame_duration<class_AnimatedTexture_method_get_frame_duration>`\ (\ frame\: :ref:`int<class_int>`\ ) |const|                                    |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`get_frame_texture<class_AnimatedTexture_method_get_frame_texture>`\ (\ frame\: :ref:`int<class_int>`\ ) |const|                                      |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_frame_duration<class_AnimatedTexture_method_set_frame_duration>`\ (\ frame\: :ref:`int<class_int>`, duration\: :ref:`float<class_float>`\ )      |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_frame_texture<class_AnimatedTexture_method_set_frame_texture>`\ (\ frame\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Costanti
----------------

.. _class_AnimatedTexture_constant_MAX_FRAMES:

.. rst-class:: classref-constant

**MAX_FRAMES** = ``256`` :ref:`🔗<class_AnimatedTexture_constant_MAX_FRAMES>`

Il numero massimo di fotogrammi supportati da **AnimatedTexture**. Se hai bisogno di più fotogrammi nella tua animazione, usa :ref:`AnimationPlayer<class_AnimationPlayer>` o :ref:`AnimatedSprite2D<class_AnimatedSprite2D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AnimatedTexture_property_current_frame:

.. rst-class:: classref-property

:ref:`int<class_int>` **current_frame** :ref:`🔗<class_AnimatedTexture_property_current_frame>`

.. rst-class:: classref-property-setget

- |void| **set_current_frame**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_current_frame**\ (\ )

Imposta il fotogramma attualmente visibile della texture. Impostando questo fotogramma durante la riproduzione si reimposta il tempo del fotogramma attuale, quindi il fotogramma appena selezionato viene riprodotto per tutta la sua durata configurata.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedTexture_property_frames:

.. rst-class:: classref-property

:ref:`int<class_int>` **frames** = ``1`` :ref:`🔗<class_AnimatedTexture_property_frames>`

.. rst-class:: classref-property-setget

- |void| **set_frames**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_frames**\ (\ )

Il numero di fotogrammi da usare nell'animazione. Nonostante sia possibile creare i fotogrammi in modo indipendente con :ref:`set_frame_texture()<class_AnimatedTexture_method_set_frame_texture>`, è necessario impostare questo valore affinché l'animazione prenda in considerazione i nuovi fotogrammi. Il numero massimo di fotogrammi è :ref:`MAX_FRAMES<class_AnimatedTexture_constant_MAX_FRAMES>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedTexture_property_one_shot:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_shot** = ``false`` :ref:`🔗<class_AnimatedTexture_property_one_shot>`

.. rst-class:: classref-property-setget

- |void| **set_one_shot**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_one_shot**\ (\ )

Se ``true``, l'animazione verrà riprodotta solo una volta e non tornerà al primo fotogramma dopo aver raggiunto la fine. Nota che il raggiungimento della fine non imposterà :ref:`pause<class_AnimatedTexture_property_pause>` su ``true``.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedTexture_property_pause:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pause** = ``false`` :ref:`🔗<class_AnimatedTexture_property_pause>`

.. rst-class:: classref-property-setget

- |void| **set_pause**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_pause**\ (\ )

Se ``true``, l'animazione sarà messa in pausa nel punto in cui si trova attualmente (ovvero in :ref:`current_frame<class_AnimatedTexture_property_current_frame>`). L'animazione riprenderà dal punto in cui era stata messa in pausa quando si imposta questa proprietà su ``false``.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedTexture_property_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **speed_scale** = ``1.0`` :ref:`🔗<class_AnimatedTexture_property_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_speed_scale**\ (\ )

La velocità dell'animazione è moltiplicata per questo valore. Se impostato su un valore negativo, l'animazione è riprodotta al contrario.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_AnimatedTexture_method_get_frame_duration:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_frame_duration**\ (\ frame\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimatedTexture_method_get_frame_duration>`

Restituisce la durata del fotogramma ``frame``, in secondi.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedTexture_method_get_frame_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_frame_texture**\ (\ frame\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimatedTexture_method_get_frame_texture>`

Restituisce la :ref:`Texture2D<class_Texture2D>` del fotogramma fornito.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedTexture_method_set_frame_duration:

.. rst-class:: classref-method

|void| **set_frame_duration**\ (\ frame\: :ref:`int<class_int>`, duration\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AnimatedTexture_method_set_frame_duration>`

Imposta la durata di un determinato fotogramma (``frame``). La durata finale è influenzata da :ref:`speed_scale<class_AnimatedTexture_property_speed_scale>`. Se impostato su ``0``, il fotogramma viene saltato durante la riproduzione.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedTexture_method_set_frame_texture:

.. rst-class:: classref-method

|void| **set_frame_texture**\ (\ frame\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_AnimatedTexture_method_set_frame_texture>`

Assegna una :ref:`Texture2D<class_Texture2D>` al fotogramma specificato. Gli ID dei fotogrammi iniziano da 0, quindi il primo fotogramma ha ID 0 e l'ultimo fotogramma dell'animazione ha ID :ref:`frames<class_AnimatedTexture_property_frames>` - 1.

Puoi definire un numero qualsiasi di texture fino a :ref:`MAX_FRAMES<class_AnimatedTexture_constant_MAX_FRAMES>`, ma tieni presente che solo i fotogrammi da 0 a :ref:`frames<class_AnimatedTexture_property_frames>` - 1 faranno parte dell'animazione.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
