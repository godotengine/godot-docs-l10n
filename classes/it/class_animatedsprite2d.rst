:github_url: hide

.. _class_AnimatedSprite2D:

AnimatedSprite2D
================

**Eredita:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Nodo di sprite che contiene più texture come fotogrammi da riprodurre per l'animazione.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**AnimatedSprite2D** è simile al nodo :ref:`Sprite2D<class_Sprite2D>`, eccetto che trasporta molteplici texture come fotogrammi di animazione. Le animazioni sono create usando una risorsa :ref:`SpriteFrames<class_SpriteFrames>`, che consente di importare i file di immagine (o una cartella contenente tali file) per fornire i fotogrammi di animazione per lo sprite. La risorsa :ref:`SpriteFrames<class_SpriteFrames>` può essere configurata nell'editor tramite il pannello inferiore SpriteFrames.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Animazione di sprite 2D <../tutorials/2d/2d_sprite_animation>`

- `Demo 2D "Dodge The Creeps" <https://godotengine.org/asset-library/asset/2712>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`StringName<class_StringName>`     | :ref:`animation<class_AnimatedSprite2D_property_animation>`           | ``&"default"``    |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`String<class_String>`             | :ref:`autoplay<class_AnimatedSprite2D_property_autoplay>`             | ``""``            |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                 | :ref:`centered<class_AnimatedSprite2D_property_centered>`             | ``true``          |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                 | :ref:`flip_h<class_AnimatedSprite2D_property_flip_h>`                 | ``false``         |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                 | :ref:`flip_v<class_AnimatedSprite2D_property_flip_v>`                 | ``false``         |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                   | :ref:`frame<class_AnimatedSprite2D_property_frame>`                   | ``0``             |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`               | :ref:`frame_progress<class_AnimatedSprite2D_property_frame_progress>` | ``0.0``           |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`           | :ref:`offset<class_AnimatedSprite2D_property_offset>`                 | ``Vector2(0, 0)`` |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`               | :ref:`speed_scale<class_AnimatedSprite2D_property_speed_scale>`       | ``1.0``           |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`SpriteFrames<class_SpriteFrames>` | :ref:`sprite_frames<class_AnimatedSprite2D_property_sprite_frames>`   |                   |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_playing_speed<class_AnimatedSprite2D_method_get_playing_speed>`\ (\ ) |const|                                                                                                             |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`is_playing<class_AnimatedSprite2D_method_is_playing>`\ (\ ) |const|                                                                                                                           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`pause<class_AnimatedSprite2D_method_pause>`\ (\ )                                                                                                                                             |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`play<class_AnimatedSprite2D_method_play>`\ (\ name\: :ref:`StringName<class_StringName>` = &"", custom_speed\: :ref:`float<class_float>` = 1.0, from_end\: :ref:`bool<class_bool>` = false\ ) |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`play_backwards<class_AnimatedSprite2D_method_play_backwards>`\ (\ name\: :ref:`StringName<class_StringName>` = &""\ )                                                                         |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_frame_and_progress<class_AnimatedSprite2D_method_set_frame_and_progress>`\ (\ frame\: :ref:`int<class_int>`, progress\: :ref:`float<class_float>`\ )                                      |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`stop<class_AnimatedSprite2D_method_stop>`\ (\ )                                                                                                                                               |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_AnimatedSprite2D_signal_animation_changed:

.. rst-class:: classref-signal

**animation_changed**\ (\ ) :ref:`🔗<class_AnimatedSprite2D_signal_animation_changed>`

Emesso quando :ref:`animation<class_AnimatedSprite2D_property_animation>` cambia.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_signal_animation_finished:

.. rst-class:: classref-signal

**animation_finished**\ (\ ) :ref:`🔗<class_AnimatedSprite2D_signal_animation_finished>`

Emesso quando l'animazione raggiunge la fine, o l'inizio se è riprodotta al rovescio. Quando l'animazione termina, mette in pausa la riproduzione.

\ **Nota:** Questo segnale non viene emesso se un'animazione si sta ripetendo.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_signal_animation_looped:

.. rst-class:: classref-signal

**animation_looped**\ (\ ) :ref:`🔗<class_AnimatedSprite2D_signal_animation_looped>`

Emesso quando l'animazione si ripete.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_signal_frame_changed:

.. rst-class:: classref-signal

**frame_changed**\ (\ ) :ref:`🔗<class_AnimatedSprite2D_signal_frame_changed>`

Emesso quando :ref:`frame<class_AnimatedSprite2D_property_frame>` cambia.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_signal_sprite_frames_changed:

.. rst-class:: classref-signal

**sprite_frames_changed**\ (\ ) :ref:`🔗<class_AnimatedSprite2D_signal_sprite_frames_changed>`

Emesso quando :ref:`sprite_frames<class_AnimatedSprite2D_property_sprite_frames>` cambia.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AnimatedSprite2D_property_animation:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **animation** = ``&"default"`` :ref:`🔗<class_AnimatedSprite2D_property_animation>`

.. rst-class:: classref-property-setget

- |void| **set_animation**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_animation**\ (\ )

L'animazione attuale dalla risorsa :ref:`sprite_frames<class_AnimatedSprite2D_property_sprite_frames>`. Se questo valore è cambiato, il contatore :ref:`frame<class_AnimatedSprite2D_property_frame>` e il :ref:`frame_progress<class_AnimatedSprite2D_property_frame_progress>` sono ripristinati.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_autoplay:

.. rst-class:: classref-property

:ref:`String<class_String>` **autoplay** = ``""`` :ref:`🔗<class_AnimatedSprite2D_property_autoplay>`

.. rst-class:: classref-property-setget

- |void| **set_autoplay**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_autoplay**\ (\ )

La chiave dell'animazione da riprodurre quando la scena è caricata.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_centered:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **centered** = ``true`` :ref:`🔗<class_AnimatedSprite2D_property_centered>`

.. rst-class:: classref-property-setget

- |void| **set_centered**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_centered**\ (\ )

Se ``true``, la texture sarà centrata.

\ **Nota:** Per i giochi con un'estetica di pixel art, le texture possono apparire deformate quando centrate. Ciò è causato dalla loro posizione che è in mezzo a i pixel. Per evitarlo, imposta questa proprietà a ``false``, o considera abilitare :ref:`ProjectSettings.rendering/2d/snap/snap_2d_vertices_to_pixel<class_ProjectSettings_property_rendering/2d/snap/snap_2d_vertices_to_pixel>` e :ref:`ProjectSettings.rendering/2d/snap/snap_2d_transforms_to_pixel<class_ProjectSettings_property_rendering/2d/snap/snap_2d_transforms_to_pixel>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_flip_h:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_h** = ``false`` :ref:`🔗<class_AnimatedSprite2D_property_flip_h>`

.. rst-class:: classref-property-setget

- |void| **set_flip_h**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_h**\ (\ )

Se ``true``, la texture è capovolta orizzontalmente.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_flip_v:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_v** = ``false`` :ref:`🔗<class_AnimatedSprite2D_property_flip_v>`

.. rst-class:: classref-property-setget

- |void| **set_flip_v**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_v**\ (\ )

Se ``true``, la texture è capovolta verticalmente.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_frame:

.. rst-class:: classref-property

:ref:`int<class_int>` **frame** = ``0`` :ref:`🔗<class_AnimatedSprite2D_property_frame>`

.. rst-class:: classref-property-setget

- |void| **set_frame**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_frame**\ (\ )

L'indice del fotogramma di animazione visualizzato. Impostare questa proprietà reimposta anche :ref:`frame_progress<class_AnimatedSprite2D_property_frame_progress>`. Se questo non è desiderato, utilizza :ref:`set_frame_and_progress()<class_AnimatedSprite2D_method_set_frame_and_progress>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_frame_progress:

.. rst-class:: classref-property

:ref:`float<class_float>` **frame_progress** = ``0.0`` :ref:`🔗<class_AnimatedSprite2D_property_frame_progress>`

.. rst-class:: classref-property-setget

- |void| **set_frame_progress**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_frame_progress**\ (\ )

Il valore di progresso tra ``0.0`` e ``1.0`` fino a quando il fotogramma attuale passa al fotogramma successivo. Se l'animazione è riprodotta all'indietro, il valore passa da ``1.0`` a ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_AnimatedSprite2D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

Lo scostamento di disegno della texture.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **speed_scale** = ``1.0`` :ref:`🔗<class_AnimatedSprite2D_property_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_speed_scale**\ (\ )

Il rapporto di scala della velocità. Ad esempio, se questo valore è ``1``, l'animazione è riprodotta alla velocità normale. Se è ``0.5``, allora è riprodotta alla velocità dimezzata. Se è ``2``, allora è riprodotta alla velocità doppia.

Se impostato a un valore negativo, l'animazione è riprodotta al rovescio. Se impostato su ``0``, l'animazione non avanza.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_sprite_frames:

.. rst-class:: classref-property

:ref:`SpriteFrames<class_SpriteFrames>` **sprite_frames** :ref:`🔗<class_AnimatedSprite2D_property_sprite_frames>`

.. rst-class:: classref-property-setget

- |void| **set_sprite_frames**\ (\ value\: :ref:`SpriteFrames<class_SpriteFrames>`\ )
- :ref:`SpriteFrames<class_SpriteFrames>` **get_sprite_frames**\ (\ )

La risorsa :ref:`SpriteFrames<class_SpriteFrames>` contenente l'animazione(i). Consente di caricare, modificare, cancellare, rendere unici e salvare gli stati della risorsa :ref:`SpriteFrames<class_SpriteFrames>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_AnimatedSprite2D_method_get_playing_speed:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_playing_speed**\ (\ ) |const| :ref:`🔗<class_AnimatedSprite2D_method_get_playing_speed>`

Restituisce la velocità di riproduzione effettiva dell'animazione attuale o ``0`` se non è riprodotta. Questa velocità è la proprietà :ref:`speed_scale<class_AnimatedSprite2D_property_speed_scale>` moltiplicata per l'argomento ``custom_speed`` specificato quando si chiama il metodo :ref:`play()<class_AnimatedSprite2D_method_play>`.

Restituisce un valore negativo se l'animazione corrente si sta riproducendo all'indietro.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_method_is_playing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_playing**\ (\ ) |const| :ref:`🔗<class_AnimatedSprite2D_method_is_playing>`

Restituisce ``true`` se un'impostazione è attualmente in riproduzione (anche se :ref:`speed_scale<class_AnimatedSprite2D_property_speed_scale>` e/o ``custom_speed`` sono ``0``).

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_method_pause:

.. rst-class:: classref-method

|void| **pause**\ (\ ) :ref:`🔗<class_AnimatedSprite2D_method_pause>`

Pausa l'animazione attualmente in riproduzione. Il :ref:`frame<class_AnimatedSprite2D_property_frame>` e :ref:`frame_progress<class_AnimatedSprite2D_property_frame_progress>` saranno mantenuti e chiamando :ref:`play()<class_AnimatedSprite2D_method_play>` o :ref:`play_backwards()<class_AnimatedSprite2D_method_play_backwards>` senza argomenti riprenderà l'animazione dalla posizione di riproduzione corrente.

Vedi anche :ref:`stop()<class_AnimatedSprite2D_method_stop>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_method_play:

.. rst-class:: classref-method

|void| **play**\ (\ name\: :ref:`StringName<class_StringName>` = &"", custom_speed\: :ref:`float<class_float>` = 1.0, from_end\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AnimatedSprite2D_method_play>`

Riproduce l'animazione con la chiave ``name``. Se ``custom_speed`` è negativo e ``from_end`` è ``true``, l'animazione sarà riprodotta all'indietro (che equivale a chiamare :ref:`play_backwards()<class_AnimatedSprite2D_method_play_backwards>`).

Se questo metodo è chiamato con lo stesso nome dell'animazione di ``name``, o senza il parametro ``name``, l'animazione assegnata riprenderà la riproduzione se è stata messa in pausa.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_method_play_backwards:

.. rst-class:: classref-method

|void| **play_backwards**\ (\ name\: :ref:`StringName<class_StringName>` = &""\ ) :ref:`🔗<class_AnimatedSprite2D_method_play_backwards>`

Riproduce l'animazione con la chiave ``name`` al rovescio.

Questo metodo è una abbreviazione per :ref:`play()<class_AnimatedSprite2D_method_play>` con ``custom_speed = -1.0`` e ``from_end = true``, quindi vedi la sua descrizione per ulteriori informazioni.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_method_set_frame_and_progress:

.. rst-class:: classref-method

|void| **set_frame_and_progress**\ (\ frame\: :ref:`int<class_int>`, progress\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AnimatedSprite2D_method_set_frame_and_progress>`

Imposta :ref:`frame<class_AnimatedSprite2D_property_frame>` e :ref:`frame_progress<class_AnimatedSprite2D_property_frame_progress>` ai valori forniti. A differenza di impostare :ref:`frame<class_AnimatedSprite2D_property_frame>`, questo metodo non ripristina :ref:`frame_progress<class_AnimatedSprite2D_property_frame_progress>` a ``0.0`` implicitamente.

\ **Esempio:** Cambia l'animazione, mantenendo lo stesso :ref:`frame<class_AnimatedSprite2D_property_frame>` e :ref:`frame_progress<class_AnimatedSprite2D_property_frame_progress>`.


.. tabs::

 .. code-tab:: gdscript

    var current_frame = animated_sprite.get_frame()
    var current_progress = animated_sprite.get_frame_progress()
    animated_sprite.play("walk_another_skin")
    animated_sprite.set_frame_and_progress(current_frame, current_progress)



.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_AnimatedSprite2D_method_stop>`

Interrompe l'animazione attualmente in riproduzione. La posizione di animazione è ripristinata a ``0`` e ``custom_speed`` è ripristinato a ``1.0``. Vedi anche :ref:`pause()<class_AnimatedSprite2D_method_pause>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
