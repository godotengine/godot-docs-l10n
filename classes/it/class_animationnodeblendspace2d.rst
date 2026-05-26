:github_url: hide

.. _class_AnimationNodeBlendSpace2D:

AnimationNodeBlendSpace2D
=========================

**Eredita:** :ref:`AnimationRootNode<class_AnimationRootNode>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una serie di :ref:`AnimationRootNode<class_AnimationRootNode>` posizionati su coordinate 2D, con dissolvenza incrociata tra i tre adiacenti. Utilizzato da :ref:`AnimationTree<class_AnimationTree>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una risorsa utilizzata da :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

\ **AnimationNodeBlendSpace2D** rappresenta uno spazio 2D virtuale su cui sono posizionati gli :ref:`AnimationRootNode<class_AnimationRootNode>`. Produce la fusione lineare delle tre animazioni adiacenti attraverso un peso di tipo :ref:`Vector2<class_Vector2>`. Adiacente in questo contesto significa i tre :ref:`AnimationRootNode<class_AnimationRootNode>` che compongono il triangolo che contiene il valore attuale.

È possibile aggiungere vertici allo spazio di fusione con :ref:`add_blend_point()<class_AnimationNodeBlendSpace2D_method_add_blend_point>` e triangolarlo automaticamente impostando :ref:`auto_triangles<class_AnimationNodeBlendSpace2D_property_auto_triangles>` su ``true``. Altrimenti, bisogna usare :ref:`add_triangle()<class_AnimationNodeBlendSpace2D_method_add_triangle>` e :ref:`remove_triangle()<class_AnimationNodeBlendSpace2D_method_remove_triangle>` per triangolare manualmente lo spazio di fusione.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzare l'AnimationTree <../tutorials/animation/animation_tree>`

- `Demo di sparatutto in terza persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+--------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`auto_triangles<class_AnimationNodeBlendSpace2D_property_auto_triangles>` | ``true``              |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+-----------------------+
   | :ref:`BlendMode<enum_AnimationNodeBlendSpace2D_BlendMode>` | :ref:`blend_mode<class_AnimationNodeBlendSpace2D_property_blend_mode>`         | ``0``                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                  | :ref:`cyclic_length<class_AnimationNodeBlendSpace2D_property_cyclic_length>`   | ``0.0``               |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>`                              | :ref:`max_space<class_AnimationNodeBlendSpace2D_property_max_space>`           | ``Vector2(1, 1)``     |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>`                              | :ref:`min_space<class_AnimationNodeBlendSpace2D_property_min_space>`           | ``Vector2(-1, -1)``   |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>`                              | :ref:`snap<class_AnimationNodeBlendSpace2D_property_snap>`                     | ``Vector2(0.1, 0.1)`` |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`sync<class_AnimationNodeBlendSpace2D_property_sync>`                     |                       |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+-----------------------+
   | :ref:`SyncMode<enum_AnimationNodeBlendSpace2D_SyncMode>`   | :ref:`sync_mode<class_AnimationNodeBlendSpace2D_property_sync_mode>`           | ``0``                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+-----------------------+
   | :ref:`String<class_String>`                                | :ref:`x_label<class_AnimationNodeBlendSpace2D_property_x_label>`               | ``"x"``               |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+-----------------------+
   | :ref:`String<class_String>`                                | :ref:`y_label<class_AnimationNodeBlendSpace2D_property_y_label>`               | ``"y"``               |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_blend_point<class_AnimationNodeBlendSpace2D_method_add_blend_point>`\ (\ node\: :ref:`AnimationRootNode<class_AnimationRootNode>`, pos\: :ref:`Vector2<class_Vector2>`, at_index\: :ref:`int<class_int>` = -1, name\: :ref:`StringName<class_StringName>` = &""\ ) |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_triangle<class_AnimationNodeBlendSpace2D_method_add_triangle>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, z\: :ref:`int<class_int>`, at_index\: :ref:`int<class_int>` = -1\ )                                                                       |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`find_blend_point_by_name<class_AnimationNodeBlendSpace2D_method_find_blend_point_by_name>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                   |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_blend_point_count<class_AnimationNodeBlendSpace2D_method_get_blend_point_count>`\ (\ ) |const|                                                                                                                                                                     |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`get_blend_point_name<class_AnimationNodeBlendSpace2D_method_get_blend_point_name>`\ (\ point\: :ref:`int<class_int>`\ ) |const|                                                                                                                                        |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AnimationRootNode<class_AnimationRootNode>` | :ref:`get_blend_point_node<class_AnimationNodeBlendSpace2D_method_get_blend_point_node>`\ (\ point\: :ref:`int<class_int>`\ ) |const|                                                                                                                                        |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                     | :ref:`get_blend_point_position<class_AnimationNodeBlendSpace2D_method_get_blend_point_position>`\ (\ point\: :ref:`int<class_int>`\ ) |const|                                                                                                                                |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_triangle_count<class_AnimationNodeBlendSpace2D_method_get_triangle_count>`\ (\ ) |const|                                                                                                                                                                           |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_triangle_point<class_AnimationNodeBlendSpace2D_method_get_triangle_point>`\ (\ triangle\: :ref:`int<class_int>`, point\: :ref:`int<class_int>`\ )                                                                                                                  |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_blend_point<class_AnimationNodeBlendSpace2D_method_remove_blend_point>`\ (\ point\: :ref:`int<class_int>`\ )                                                                                                                                                    |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_triangle<class_AnimationNodeBlendSpace2D_method_remove_triangle>`\ (\ triangle\: :ref:`int<class_int>`\ )                                                                                                                                                       |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`reorder_blend_point<class_AnimationNodeBlendSpace2D_method_reorder_blend_point>`\ (\ from_index\: :ref:`int<class_int>`, to_index\: :ref:`int<class_int>`\ )                                                                                                           |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_blend_point_name<class_AnimationNodeBlendSpace2D_method_set_blend_point_name>`\ (\ point\: :ref:`int<class_int>`, name\: :ref:`StringName<class_StringName>`\ )                                                                                                    |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_blend_point_node<class_AnimationNodeBlendSpace2D_method_set_blend_point_node>`\ (\ point\: :ref:`int<class_int>`, node\: :ref:`AnimationRootNode<class_AnimationRootNode>`\ )                                                                                      |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_blend_point_position<class_AnimationNodeBlendSpace2D_method_set_blend_point_position>`\ (\ point\: :ref:`int<class_int>`, pos\: :ref:`Vector2<class_Vector2>`\ )                                                                                                   |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_AnimationNodeBlendSpace2D_signal_triangles_updated:

.. rst-class:: classref-signal

**triangles_updated**\ (\ ) :ref:`🔗<class_AnimationNodeBlendSpace2D_signal_triangles_updated>`

Emesso ogni volta che i triangoli dello spazio di fusione vengono creati, rimossi o quando uno dei loro vertici cambia di posizione.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_AnimationNodeBlendSpace2D_BlendMode:

.. rst-class:: classref-enumeration

enum **BlendMode**: :ref:`🔗<enum_AnimationNodeBlendSpace2D_BlendMode>`

.. _class_AnimationNodeBlendSpace2D_constant_BLEND_MODE_INTERPOLATED:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_AnimationNodeBlendSpace2D_BlendMode>` **BLEND_MODE_INTERPOLATED** = ``0``

L'interpolazione tra le animazioni è lineare.

.. _class_AnimationNodeBlendSpace2D_constant_BLEND_MODE_DISCRETE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_AnimationNodeBlendSpace2D_BlendMode>` **BLEND_MODE_DISCRETE** = ``1``

Lo spazio di fusione riproduce l'animazione del nodo di animazione a cui è più vicina la posizione di fusione. Utile per le animazioni 2D fotogramma per fotogramma.

.. _class_AnimationNodeBlendSpace2D_constant_BLEND_MODE_DISCRETE_CARRY:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_AnimationNodeBlendSpace2D_BlendMode>` **BLEND_MODE_DISCRETE_CARRY** = ``2``

Simile a :ref:`BLEND_MODE_DISCRETE<class_AnimationNodeBlendSpace2D_constant_BLEND_MODE_DISCRETE>`, ma avvia la nuova animazione dalla posizione di riproduzione dell'animazione precedente.

.. rst-class:: classref-item-separator

----

.. _enum_AnimationNodeBlendSpace2D_SyncMode:

.. rst-class:: classref-enumeration

enum **SyncMode**: :ref:`🔗<enum_AnimationNodeBlendSpace2D_SyncMode>`

.. _class_AnimationNodeBlendSpace2D_constant_SYNC_MODE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`SyncMode<enum_AnimationNodeBlendSpace2D_SyncMode>` **SYNC_MODE_NONE** = ``0``

Inactive animations are frozen and do not advance.

.. _class_AnimationNodeBlendSpace2D_constant_SYNC_MODE_INDEPENDENT:

.. rst-class:: classref-enumeration-constant

:ref:`SyncMode<enum_AnimationNodeBlendSpace2D_SyncMode>` **SYNC_MODE_INDEPENDENT** = ``1``

Inactive animations advance with a weight of ``0``. This is equivalent to the previous ``sync = true`` behavior.

.. _class_AnimationNodeBlendSpace2D_constant_SYNC_MODE_CYCLIC_MUTABLE:

.. rst-class:: classref-enumeration-constant

:ref:`SyncMode<enum_AnimationNodeBlendSpace2D_SyncMode>` **SYNC_MODE_CYCLIC_MUTABLE** = ``2``

All animations are time-scaled so they stay in sync, with the cycle length dynamically computed from active blend weights. This is self-normalizing: a solo animation plays at normal speed.

\ **Note:** If you apply :ref:`AnimationNodeTimeSeek<class_AnimationNodeTimeSeek>` to the result when handling animations of different lengths, synchronization will be broken. In such cases, it is recommended to use :ref:`AnimationNodeAnimation.use_custom_timeline<class_AnimationNodeAnimation_property_use_custom_timeline>` to align the animation lengths.

.. _class_AnimationNodeBlendSpace2D_constant_SYNC_MODE_CYCLIC_CONSTANT:

.. rst-class:: classref-enumeration-constant

:ref:`SyncMode<enum_AnimationNodeBlendSpace2D_SyncMode>` **SYNC_MODE_CYCLIC_CONSTANT** = ``3``

All animations are time-scaled so they complete one cycle in :ref:`cyclic_length<class_AnimationNodeBlendSpace2D_property_cyclic_length>` seconds, keeping them in sync regardless of their individual lengths.

\ **Note:** If you apply :ref:`AnimationNodeTimeSeek<class_AnimationNodeTimeSeek>` to the result when handling animations of different lengths, synchronization will be broken. In such cases, it is recommended to use :ref:`AnimationNodeAnimation.use_custom_timeline<class_AnimationNodeAnimation_property_use_custom_timeline>` to align the animation lengths.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AnimationNodeBlendSpace2D_property_auto_triangles:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **auto_triangles** = ``true`` :ref:`🔗<class_AnimationNodeBlendSpace2D_property_auto_triangles>`

.. rst-class:: classref-property-setget

- |void| **set_auto_triangles**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_auto_triangles**\ (\ )

Se ``true``, lo spazio di fusione è triangolato automaticamente. La mesh si aggiorna ogni volta che aggiungi o rimuovi punti con :ref:`add_blend_point()<class_AnimationNodeBlendSpace2D_method_add_blend_point>` e :ref:`remove_blend_point()<class_AnimationNodeBlendSpace2D_method_remove_blend_point>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_property_blend_mode:

.. rst-class:: classref-property

:ref:`BlendMode<enum_AnimationNodeBlendSpace2D_BlendMode>` **blend_mode** = ``0`` :ref:`🔗<class_AnimationNodeBlendSpace2D_property_blend_mode>`

.. rst-class:: classref-property-setget

- |void| **set_blend_mode**\ (\ value\: :ref:`BlendMode<enum_AnimationNodeBlendSpace2D_BlendMode>`\ )
- :ref:`BlendMode<enum_AnimationNodeBlendSpace2D_BlendMode>` **get_blend_mode**\ (\ )

Controlla l'interpolazione tra le animazioni.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_property_cyclic_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **cyclic_length** = ``0.0`` :ref:`🔗<class_AnimationNodeBlendSpace2D_property_cyclic_length>`

.. rst-class:: classref-property-setget

- |void| **set_cyclic_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cyclic_length**\ (\ )

The cycle length in seconds used by :ref:`SYNC_MODE_CYCLIC_CONSTANT<class_AnimationNodeBlendSpace2D_constant_SYNC_MODE_CYCLIC_CONSTANT>`. All animations are time-scaled so they complete one full cycle in this duration. Must be greater than ``0`` for cyclic sync to take effect.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_property_max_space:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **max_space** = ``Vector2(1, 1)`` :ref:`🔗<class_AnimationNodeBlendSpace2D_property_max_space>`

.. rst-class:: classref-property-setget

- |void| **set_max_space**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_max_space**\ (\ )

Il limite superiore per la posizione dei punti sugli assi X e Y nello spazio di fusione. Vedi :ref:`add_blend_point()<class_AnimationNodeBlendSpace2D_method_add_blend_point>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_property_min_space:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **min_space** = ``Vector2(-1, -1)`` :ref:`🔗<class_AnimationNodeBlendSpace2D_property_min_space>`

.. rst-class:: classref-property-setget

- |void| **set_min_space**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_min_space**\ (\ )

Il limite inferiore per la posizione dei punti sugli assi X e Y nello spazio di fusione. Vedi :ref:`add_blend_point()<class_AnimationNodeBlendSpace2D_method_add_blend_point>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_property_snap:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **snap** = ``Vector2(0.1, 0.1)`` :ref:`🔗<class_AnimationNodeBlendSpace2D_property_snap>`

.. rst-class:: classref-property-setget

- |void| **set_snap**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_snap**\ (\ )

Incremento dello scatto di posizione quando si sposta un punto.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_property_sync:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sync** :ref:`🔗<class_AnimationNodeBlendSpace2D_property_sync>`

.. rst-class:: classref-property-setget

- |void| **set_use_sync**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_sync**\ (\ )

**Deprecato:** Use :ref:`sync_mode<class_AnimationNodeBlendSpace2D_property_sync_mode>` instead.

If ``true``, sync mode is enabled (equivalent to :ref:`SYNC_MODE_INDEPENDENT<class_AnimationNodeBlendSpace2D_constant_SYNC_MODE_INDEPENDENT>`). This property is kept for backward compatibility.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_property_sync_mode:

.. rst-class:: classref-property

:ref:`SyncMode<enum_AnimationNodeBlendSpace2D_SyncMode>` **sync_mode** = ``0`` :ref:`🔗<class_AnimationNodeBlendSpace2D_property_sync_mode>`

.. rst-class:: classref-property-setget

- |void| **set_sync_mode**\ (\ value\: :ref:`SyncMode<enum_AnimationNodeBlendSpace2D_SyncMode>`\ )
- :ref:`SyncMode<enum_AnimationNodeBlendSpace2D_SyncMode>` **get_sync_mode**\ (\ )

Controls how animations are synced when blended. See :ref:`SyncMode<enum_AnimationNodeBlendSpace2D_SyncMode>` for available options.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_property_x_label:

.. rst-class:: classref-property

:ref:`String<class_String>` **x_label** = ``"x"`` :ref:`🔗<class_AnimationNodeBlendSpace2D_property_x_label>`

.. rst-class:: classref-property-setget

- |void| **set_x_label**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_x_label**\ (\ )

Nome dell'asse X nello spazio di fusione.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_property_y_label:

.. rst-class:: classref-property

:ref:`String<class_String>` **y_label** = ``"y"`` :ref:`🔗<class_AnimationNodeBlendSpace2D_property_y_label>`

.. rst-class:: classref-property-setget

- |void| **set_y_label**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_y_label**\ (\ )

Nome dell'asse Y nello spazio di fusione.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_AnimationNodeBlendSpace2D_method_add_blend_point:

.. rst-class:: classref-method

|void| **add_blend_point**\ (\ node\: :ref:`AnimationRootNode<class_AnimationRootNode>`, pos\: :ref:`Vector2<class_Vector2>`, at_index\: :ref:`int<class_int>` = -1, name\: :ref:`StringName<class_StringName>` = &""\ ) :ref:`🔗<class_AnimationNodeBlendSpace2D_method_add_blend_point>`

Adds a new point with ``name`` that represents a ``node`` at the position set by ``pos``. You can insert it at a specific index using the ``at_index`` argument. If you use the default value for ``at_index``, the point is inserted at the end of the blend points array.

\ **Note:** If no name is provided, safe index is used as reference. In the future, empty names will be deprecated, so explicitly passing a name is recommended.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_add_triangle:

.. rst-class:: classref-method

|void| **add_triangle**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, z\: :ref:`int<class_int>`, at_index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_AnimationNodeBlendSpace2D_method_add_triangle>`

Crea un nuovo triangolo usando i tre punti ``x``, ``y`` e ``z``. I triangoli possono sovrapporsi. È possibile inserire il triangolo a un indice specifico tramite l'argomento ``at_index``. Se si usa il valore predefinito per ``at_index``, il punto è inserito alla fine dell'array dei punti di fusione.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_find_blend_point_by_name:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_blend_point_by_name**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNodeBlendSpace2D_method_find_blend_point_by_name>`

Returns the index of the blend point with the given ``name``. Returns ``-1`` if no blend point with that name is found.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_get_blend_point_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_blend_point_count**\ (\ ) |const| :ref:`🔗<class_AnimationNodeBlendSpace2D_method_get_blend_point_count>`

Restituisce il numero di punti nello spazio di fusione.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_get_blend_point_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_blend_point_name**\ (\ point\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeBlendSpace2D_method_get_blend_point_name>`

Returns the name of the blend point at index ``point``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_get_blend_point_node:

.. rst-class:: classref-method

:ref:`AnimationRootNode<class_AnimationRootNode>` **get_blend_point_node**\ (\ point\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeBlendSpace2D_method_get_blend_point_node>`

Restituisce l':ref:`AnimationRootNode<class_AnimationRootNode>` riferito dal punto all'indice ``point``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_get_blend_point_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_blend_point_position**\ (\ point\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeBlendSpace2D_method_get_blend_point_position>`

Restituisce la posizione del punto all'indice ``point``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_get_triangle_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_triangle_count**\ (\ ) |const| :ref:`🔗<class_AnimationNodeBlendSpace2D_method_get_triangle_count>`

Restituisce il numero di triangoli nello spazio di fusione.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_get_triangle_point:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_triangle_point**\ (\ triangle\: :ref:`int<class_int>`, point\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AnimationNodeBlendSpace2D_method_get_triangle_point>`

Restituisce la posizione del punto all'indice ``point`` nel triangolo dell'indice ``triangle``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_remove_blend_point:

.. rst-class:: classref-method

|void| **remove_blend_point**\ (\ point\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AnimationNodeBlendSpace2D_method_remove_blend_point>`

Rimuove il punto all'indice ``point`` dallo spazio di fusione.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_remove_triangle:

.. rst-class:: classref-method

|void| **remove_triangle**\ (\ triangle\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AnimationNodeBlendSpace2D_method_remove_triangle>`

Rimuove il triangolo all'indice ``triangle`` dallo spazio di fusione.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_reorder_blend_point:

.. rst-class:: classref-method

|void| **reorder_blend_point**\ (\ from_index\: :ref:`int<class_int>`, to_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AnimationNodeBlendSpace2D_method_reorder_blend_point>`

Swaps the blend points at indices ``from_index`` and ``to_index``, exchanging their positions and properties.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_set_blend_point_name:

.. rst-class:: classref-method

|void| **set_blend_point_name**\ (\ point\: :ref:`int<class_int>`, name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeBlendSpace2D_method_set_blend_point_name>`

Sets the name of the blend point at index ``point``. If the name conflicts with an existing point, a unique name will be generated automatically.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_set_blend_point_node:

.. rst-class:: classref-method

|void| **set_blend_point_node**\ (\ point\: :ref:`int<class_int>`, node\: :ref:`AnimationRootNode<class_AnimationRootNode>`\ ) :ref:`🔗<class_AnimationNodeBlendSpace2D_method_set_blend_point_node>`

Modifica l':ref:`AnimationNode<class_AnimationNode>` a cui fa riferimento il punto all'indice ``point``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_set_blend_point_position:

.. rst-class:: classref-method

|void| **set_blend_point_position**\ (\ point\: :ref:`int<class_int>`, pos\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_AnimationNodeBlendSpace2D_method_set_blend_point_position>`

Aggiorna la posizione del punto all'indice ``point`` sullo spazio di fusione.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
