:github_url: hide

.. _class_SubViewport:

SubViewport
===========

**Eredita:** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un'interfaccia per un mondo di gioco che non crea una finestra né disegna direttamente sullo schermo.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**SubViewport** isola una regione rettangolare di una scena da visualizzare in modo indipendente. Può essere utilizzato, ad esempio, per visualizzare l'interfaccia utente nello spazio 3D.

\ **Nota:** **SubViewport** è una :ref:`Viewport<class_Viewport>` che non è un :ref:`Window<class_Window>`, ovvero non disegna nulla da sola. Per visualizzare qualcosa, una **SubViewport** deve avere dimensioni diverse da zero ed essere inserita in un :ref:`SubViewportContainer<class_SubViewportContainer>` o assegnata a una :ref:`ViewportTexture<class_ViewportTexture>`.

\ **Nota:** Gli :ref:`InputEvent<class_InputEvent>` non vengono passati a una **SubViewport** a sé stante, come predefinito. Per garantire la propagazione degli :ref:`InputEvent<class_InputEvent>`, una **SubViewport** può essere posizionata all'interno di un :ref:`SubViewportContainer<class_SubViewportContainer>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo delle Viewport <../tutorials/rendering/viewports>`

- :doc:`Viewport e trasformazioni di canvas <../tutorials/2d/2d_transforms>`

- `Demo di GUI in Viewport 3D <https://godotengine.org/asset-library/asset/2807>`__

- `Demo di viewport 3D in 2D <https://godotengine.org/asset-library/asset/2804>`__

- `Demo di viewport 2D in 3D <https://godotengine.org/asset-library/asset/2803>`__

- `Demo di cattura dello schermo <https://godotengine.org/asset-library/asset/2808>`__

- `Demo di schermo diviso dinamico <https://godotengine.org/asset-library/asset/2806>`__

- `Demo di scaling della risoluzione 3D <https://godotengine.org/asset-library/asset/2805>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+
   | :ref:`ClearMode<enum_SubViewport_ClearMode>`   | :ref:`render_target_clear_mode<class_SubViewport_property_render_target_clear_mode>`   | ``0``                  |
   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+
   | :ref:`UpdateMode<enum_SubViewport_UpdateMode>` | :ref:`render_target_update_mode<class_SubViewport_property_render_target_update_mode>` | ``2``                  |
   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+
   | :ref:`Vector2i<class_Vector2i>`                | :ref:`size<class_SubViewport_property_size>`                                           | ``Vector2i(512, 512)`` |
   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+
   | :ref:`Vector2i<class_Vector2i>`                | :ref:`size_2d_override<class_SubViewport_property_size_2d_override>`                   | ``Vector2i(0, 0)``     |
   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+
   | :ref:`bool<class_bool>`                        | :ref:`size_2d_override_stretch<class_SubViewport_property_size_2d_override_stretch>`   | ``false``              |
   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+
   | :ref:`int<class_int>`                          | :ref:`view_count<class_SubViewport_property_view_count>`                               | ``1``                  |
   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_SubViewport_ClearMode:

.. rst-class:: classref-enumeration

enum **ClearMode**: :ref:`🔗<enum_SubViewport_ClearMode>`

.. _class_SubViewport_constant_CLEAR_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`ClearMode<enum_SubViewport_ClearMode>` **CLEAR_MODE_ALWAYS** = ``0``

Cancella sempre la destinazione di rendering prima di disegnare.

.. _class_SubViewport_constant_CLEAR_MODE_NEVER:

.. rst-class:: classref-enumeration-constant

:ref:`ClearMode<enum_SubViewport_ClearMode>` **CLEAR_MODE_NEVER** = ``1``

Non cancella mai la destinazione di rendering.

.. _class_SubViewport_constant_CLEAR_MODE_ONCE:

.. rst-class:: classref-enumeration-constant

:ref:`ClearMode<enum_SubViewport_ClearMode>` **CLEAR_MODE_ONCE** = ``2``

Cancella la destinazione di rendering nel frame successivo, quindi passa a :ref:`CLEAR_MODE_NEVER<class_SubViewport_constant_CLEAR_MODE_NEVER>`.

.. rst-class:: classref-item-separator

----

.. _enum_SubViewport_UpdateMode:

.. rst-class:: classref-enumeration

enum **UpdateMode**: :ref:`🔗<enum_SubViewport_UpdateMode>`

.. _class_SubViewport_constant_UPDATE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_SubViewport_UpdateMode>` **UPDATE_DISABLED** = ``0``

Non aggiorna mai la destinazione di rendering.

.. _class_SubViewport_constant_UPDATE_ONCE:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_SubViewport_UpdateMode>` **UPDATE_ONCE** = ``1``

Aggiorna la destinazione di rendering una sola volta, quindi passa a :ref:`UPDATE_DISABLED<class_SubViewport_constant_UPDATE_DISABLED>`.

.. _class_SubViewport_constant_UPDATE_WHEN_VISIBLE:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_SubViewport_UpdateMode>` **UPDATE_WHEN_VISIBLE** = ``2``

Aggiorna la destinazione di rendering solo quando è visibile. Questo è il valore predefinito.

.. _class_SubViewport_constant_UPDATE_WHEN_PARENT_VISIBLE:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_SubViewport_UpdateMode>` **UPDATE_WHEN_PARENT_VISIBLE** = ``3``

Aggiorna la destinazione di rendering solo quando il suo genitore è visibile.

.. _class_SubViewport_constant_UPDATE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_SubViewport_UpdateMode>` **UPDATE_ALWAYS** = ``4``

Aggiornare sempre la destinazione di rendering.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_SubViewport_property_render_target_clear_mode:

.. rst-class:: classref-property

:ref:`ClearMode<enum_SubViewport_ClearMode>` **render_target_clear_mode** = ``0`` :ref:`🔗<class_SubViewport_property_render_target_clear_mode>`

.. rst-class:: classref-property-setget

- |void| **set_clear_mode**\ (\ value\: :ref:`ClearMode<enum_SubViewport_ClearMode>`\ )
- :ref:`ClearMode<enum_SubViewport_ClearMode>` **get_clear_mode**\ (\ )

La modalità di cancellazione quando la sotto-viewport secondaria è utilizzata come destinazione di rendering.

\ **Nota:** Questa proprietà è progettata per l'uso in 2D.

.. rst-class:: classref-item-separator

----

.. _class_SubViewport_property_render_target_update_mode:

.. rst-class:: classref-property

:ref:`UpdateMode<enum_SubViewport_UpdateMode>` **render_target_update_mode** = ``2`` :ref:`🔗<class_SubViewport_property_render_target_update_mode>`

.. rst-class:: classref-property-setget

- |void| **set_update_mode**\ (\ value\: :ref:`UpdateMode<enum_SubViewport_UpdateMode>`\ )
- :ref:`UpdateMode<enum_SubViewport_UpdateMode>` **get_update_mode**\ (\ )

La modalità di aggiornamento quando la sotto-viewport è utilizzata come destinazione di rendering.

.. rst-class:: classref-item-separator

----

.. _class_SubViewport_property_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **size** = ``Vector2i(512, 512)`` :ref:`🔗<class_SubViewport_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_size**\ (\ )

La larghezza e l'altezza della sotto-viewport. Deve essere impostata su un valore maggiore o uguale a 2 pixel su entrambe le dimensioni. Altrimenti, non sarà visualizzato nulla.

\ **Nota:** se il nodo padre è un :ref:`SubViewportContainer<class_SubViewportContainer>` e il suo :ref:`SubViewportContainer.stretch<class_SubViewportContainer_property_stretch>` è ``true``, la dimensione della viewport non può essere modificata manualmente.

.. rst-class:: classref-item-separator

----

.. _class_SubViewport_property_size_2d_override:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **size_2d_override** = ``Vector2i(0, 0)`` :ref:`🔗<class_SubViewport_property_size_2d_override>`

.. rst-class:: classref-property-setget

- |void| **set_size_2d_override**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_size_2d_override**\ (\ )

Sostituzione delle dimensioni 2D della sotto-viewport. Se la larghezza o l'altezza sono ``0``, la sostituzione è disabilitata.

.. rst-class:: classref-item-separator

----

.. _class_SubViewport_property_size_2d_override_stretch:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **size_2d_override_stretch** = ``false`` :ref:`🔗<class_SubViewport_property_size_2d_override_stretch>`

.. rst-class:: classref-property-setget

- |void| **set_size_2d_override_stretch**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_size_2d_override_stretch_enabled**\ (\ )

Se ``true``, la sostituzione delle dimensioni 2D influisce anche sull'allungamento.

.. rst-class:: classref-item-separator

----

.. _class_SubViewport_property_view_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **view_count** = ``1`` :ref:`🔗<class_SubViewport_property_view_count>`

.. rst-class:: classref-property-setget

- |void| **set_view_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_view_count**\ (\ )

Il numero di livelli di vista su cui stiamo renderizzando. Impostalo su ``2`` per abilitare il rendering stereoscopico.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
