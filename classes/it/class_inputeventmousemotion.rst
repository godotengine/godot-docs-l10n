:github_url: hide

.. _class_InputEventMouseMotion:

InputEventMouseMotion
=====================

**Eredita:** :ref:`InputEventMouse<class_InputEventMouse>` **<** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Rappresenta movimento del mouse o di penna.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Memorizza informazioni sul movimento di un mouse o di una penna. Ciò include posizione relativa, posizione assoluta e velocità. Vedi :ref:`Node._input()<class_Node_private_method__input>`.

\ **Nota:** Per impostazione predefinita, questo evento è emesso solo una volta per frame renderizzato al massimo. Se hai bisogno di individuare gli input più precisamente, imposta :ref:`Input.use_accumulated_input<class_Input_property_use_accumulated_input>` su ``false`` per assicurare che gli eventi siano emessi il più spesso possibile. Se utilizzi InputEventMouseMotion per disegnare linee, considera anche di implementare `l'algoritmo della linea di Bresenham <https://it.wikipedia.org/wiki/Algoritmo_della_linea_di_Bresenham>`__ per evitare spazi vuoti visibili nelle linee se l'utente muove rapidamente il mouse.

\ **Nota:** Questo evento potrebbe essere emesso anche quando il mouse non si è mosso, sia dal sistema operativo sia da Godot stesso. Se è davvero necessario sapere se il mouse si è mosso (ad esempio per sopprimere la visualizzazione di un tooltip), dovresti controllare che ``relative.is_zero_approx()`` sia ``false``.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo di InputEvent <../tutorials/inputs/inputevent>`

- :doc:`Mouse e coordinate di input <../tutorials/inputs/mouse_and_input_coordinates>`

- `Demo di voxel 3D <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`pen_inverted<class_InputEventMouseMotion_property_pen_inverted>`       | ``false``         |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`pressure<class_InputEventMouseMotion_property_pressure>`               | ``0.0``           |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`relative<class_InputEventMouseMotion_property_relative>`               | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`screen_relative<class_InputEventMouseMotion_property_screen_relative>` | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`screen_velocity<class_InputEventMouseMotion_property_screen_velocity>` | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`tilt<class_InputEventMouseMotion_property_tilt>`                       | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`velocity<class_InputEventMouseMotion_property_velocity>`               | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_InputEventMouseMotion_property_pen_inverted:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pen_inverted** = ``false`` :ref:`🔗<class_InputEventMouseMotion_property_pen_inverted>`

.. rst-class:: classref-property-setget

- |void| **set_pen_inverted**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_pen_inverted**\ (\ )

Restituisce ``true`` quando è in utilizzo la gomma di una penna stilo.

\ **Nota:** Questa proprietà è implementata su Linux, macOS e Windows.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_pressure:

.. rst-class:: classref-property

:ref:`float<class_float>` **pressure** = ``0.0`` :ref:`🔗<class_InputEventMouseMotion_property_pressure>`

.. rst-class:: classref-property-setget

- |void| **set_pressure**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pressure**\ (\ )

Rappresenta la pressione che l'utente esercita sulla penna. Varia da ``0.0`` a ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_relative:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **relative** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_relative>`

.. rst-class:: classref-property-setget

- |void| **set_relative**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_relative**\ (\ )

La posizione del mouse relativa alla posizione precedente (posizione all'ultimo frame).

\ **Nota:** Poiché **InputEventMouseMotion** potrebbe essere emesso solo quando il mouse si muove, non è possibile rilevare affidabilmente quando il mouse ha smesso di muoversi verificando questa proprietà. Potrebbe essere necessario un timer separato di poca durata.

\ **Nota:** :ref:`relative<class_InputEventMouseMotion_property_relative>` è ridimensionato automaticamente in base al fattore di scala del contenuto, definito dalle impostazioni della modalità di stiramento del progetto. Ciò significa che la sensibilità del mouse apparirà diversa a seconda della risoluzione quando si utilizza :ref:`relative<class_InputEventMouseMotion_property_relative>` in uno script che gestisce la mira del mouse con la modalità del mouse :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>`. Per evitare ciò, utilizza invece :ref:`screen_relative<class_InputEventMouseMotion_property_screen_relative>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_screen_relative:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **screen_relative** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_screen_relative>`

.. rst-class:: classref-property-setget

- |void| **set_screen_relative**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_screen_relative**\ (\ )

Posizione del mouse non ridimensionata rispetto alla posizione precedente nel sistema di coordinate dello schermo (posizione all'ultimo frame).

\ **Nota:** Poiché **InputEventMouseMotion** potrebbe essere emesso solo quando il mouse si muove, non è possibile rilevare affidabilmente quando il mouse ha smesso di muoversi verificando questa proprietà. Potrebbe essere necessario un timer separato di poca durata.

\ **Nota:** Queste coordinate *non* sono ridimensionate in base al fattore di scala del contenuto o alle chiamate a :ref:`InputEvent.xformed_by()<class_InputEvent_method_xformed_by>`. Questo dovrebbe essere preferito a :ref:`relative<class_InputEventMouseMotion_property_relative>` per la mira del mouse quando si utilizza la modalità del mouse :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>`, a prescindere dalla modalità di stiramento del progetto.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_screen_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **screen_velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_screen_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_screen_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_screen_velocity**\ (\ )

La velocità del mouse non ridimensionata in pixel al secondo nelle coordinate dello schermo. Questa velocità *non* è ridimensionata in base al fattore di scala del contenuto o alle chiamate a :ref:`InputEvent.xformed_by()<class_InputEvent_method_xformed_by>`.

\ **Nota:** In modalità :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>`, :ref:`screen_velocity<class_InputEventMouseMotion_property_screen_velocity>` restituisce ``(0, 0)`` perché il cursore del mouse è nascosto e bloccato. Usa :ref:`screen_relative<class_InputEventMouseMotion_property_screen_relative>` per mirare con il mouse attraverso la modalità del mouse :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_tilt:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **tilt** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_tilt>`

.. rst-class:: classref-property-setget

- |void| **set_tilt**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_tilt**\ (\ )

Rappresenta gli angoli di inclinazione della penna. Il valore positivo della coordinata X indica un'inclinazione verso destra. Il valore positivo della coordinata Y indica un'inclinazione verso l'utente. Varia da ``-1.0`` a ``1.0`` per entrambi gli assi.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_velocity**\ (\ )

La velocità del mouse in pixel al secondo.

\ **Nota:** :ref:`velocity<class_InputEventMouseMotion_property_velocity>` è automaticamente ridimensionata in base al fattore di scala del contenuto, definito dalle impostazioni della modalità di stiramento del progetto. Ciò significa che la sensibilità del mouse apparirà diversa a seconda della risoluzione.

\ **Nota:** In modalità :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>`, :ref:`velocity<class_InputEventMouseMotion_property_velocity>` restituisce ``(0, 0)`` perché il cursore del mouse è nascosto e bloccato. Usa :ref:`screen_relative<class_InputEventMouseMotion_property_screen_relative>` per mirare con il mouse attraverso la modalità del mouse :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
