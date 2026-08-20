:github_url: hide

.. _class_RootMotionView:

RootMotionView
==============

**Eredita:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Classe di supporto solo per l'editor per configurare il movimento di radice in :ref:`AnimationMixer<class_AnimationMixer>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

*Root motion* si riferisce a una tecnica di animazione in cui lo scheletro di una mesh è utilizzato per dare impulso a un personaggio. Quando si lavora con animazioni in3D, una tecnica popolare per gli animatori è quella di utilizzare l'osso radice dello scheletro per dare movimento al resto dello scheletro. Ciò consente di animare i personaggi in modo che i passi corrispondano effettivamente al pavimento sottostante. Consente inoltre di interagire precisamente con gli oggetti durante le cinematiche. Vedi anche :ref:`AnimationMixer<class_AnimationMixer>`.

\ **Nota:** **RootMotionView** è visibile solo nell'editor. Sarà nascosto automaticamente nel progetto in esecuzione.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Utilizzo di AnimationTree - Root motion <../tutorials/animation/animation_tree.html#root-motion>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------+---------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`animation_path<class_RootMotionView_property_animation_path>` | ``NodePath("")``          |
   +---------------------------------+---------------------------------------------------------------------+---------------------------+
   | :ref:`float<class_float>`       | :ref:`cell_size<class_RootMotionView_property_cell_size>`           | ``1.0``                   |
   +---------------------------------+---------------------------------------------------------------------+---------------------------+
   | :ref:`Color<class_Color>`       | :ref:`color<class_RootMotionView_property_color>`                   | ``Color(0.5, 0.5, 1, 1)`` |
   +---------------------------------+---------------------------------------------------------------------+---------------------------+
   | :ref:`float<class_float>`       | :ref:`radius<class_RootMotionView_property_radius>`                 | ``10.0``                  |
   +---------------------------------+---------------------------------------------------------------------+---------------------------+
   | :ref:`bool<class_bool>`         | :ref:`zero_y<class_RootMotionView_property_zero_y>`                 | ``true``                  |
   +---------------------------------+---------------------------------------------------------------------+---------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_RootMotionView_property_animation_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **animation_path** = ``NodePath("")`` :ref:`🔗<class_RootMotionView_property_animation_path>`

.. rst-class:: classref-property-setget

- |void| **set_animation_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_animation_path**\ (\ )

Percorso verso un nodo :ref:`AnimationMixer<class_AnimationMixer>` da utilizzare come base per il movimento della radice.

.. rst-class:: classref-item-separator

----

.. _class_RootMotionView_property_cell_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **cell_size** = ``1.0`` :ref:`🔗<class_RootMotionView_property_cell_size>`

.. rst-class:: classref-property-setget

- |void| **set_cell_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cell_size**\ (\ )

La dimensione delle celle della griglia in unità 3D.

.. rst-class:: classref-item-separator

----

.. _class_RootMotionView_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(0.5, 0.5, 1, 1)`` :ref:`🔗<class_RootMotionView_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

Il colore della griglia.

.. rst-class:: classref-item-separator

----

.. _class_RootMotionView_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``10.0`` :ref:`🔗<class_RootMotionView_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Il raggio della griglia in unità 3D. L'opacità della griglia svanirà gradualmente man mano che la distanza dall'origine aumenta fino a raggiungere questo :ref:`radius<class_RootMotionView_property_radius>`.

.. rst-class:: classref-item-separator

----

.. _class_RootMotionView_property_zero_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **zero_y** = ``true`` :ref:`🔗<class_RootMotionView_property_zero_y>`

.. rst-class:: classref-property-setget

- |void| **set_zero_y**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_zero_y**\ (\ )

Se ``true``, tutti i punti della griglia saranno sulla stessa coordinata Y (*local* Y = 0). Se ``false``, la coordinata Y originale dei punti è preservata.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
