:github_url: hide

.. _class_VisualShaderNodeFrame:

VisualShaderNodeFrame
=====================

**Eredita:** :ref:`VisualShaderNodeResizableBase<class_VisualShaderNodeResizableBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`VisualShaderNodeComment<class_VisualShaderNodeComment>`

Una cornice a cui altri nodi di visual shader può essere attaccati a per una migliore organizzazione.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una cornice rettangolare che può essere utilizzata per raggruppare insieme i nodi dello shader visivo per migliorare l'organizzazione.

I nodi attaccati alla cornice si muoveranno con essa quando viene trascinata e può essere ridimensionata automaticamente per racchiudere tutti i nodi attaccati.

Il suo titolo, la descrizione e il colore possono essere personalizzati.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------------------+------------------------------------------------------------------------------------+--------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`attached_nodes<class_VisualShaderNodeFrame_property_attached_nodes>`         | ``PackedInt32Array()``         |
   +-------------------------------------------------+------------------------------------------------------------------------------------+--------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`autoshrink<class_VisualShaderNodeFrame_property_autoshrink>`                 | ``true``                       |
   +-------------------------------------------------+------------------------------------------------------------------------------------+--------------------------------+
   | :ref:`Color<class_Color>`                       | :ref:`tint_color<class_VisualShaderNodeFrame_property_tint_color>`                 | ``Color(0.3, 0.3, 0.3, 0.75)`` |
   +-------------------------------------------------+------------------------------------------------------------------------------------+--------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`tint_color_enabled<class_VisualShaderNodeFrame_property_tint_color_enabled>` | ``false``                      |
   +-------------------------------------------------+------------------------------------------------------------------------------------+--------------------------------+
   | :ref:`String<class_String>`                     | :ref:`title<class_VisualShaderNodeFrame_property_title>`                           | ``"Title"``                    |
   +-------------------------------------------------+------------------------------------------------------------------------------------+--------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------+--------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_attached_node<class_VisualShaderNodeFrame_method_add_attached_node>`\ (\ node\: :ref:`int<class_int>`\ )       |
   +--------+--------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`remove_attached_node<class_VisualShaderNodeFrame_method_remove_attached_node>`\ (\ node\: :ref:`int<class_int>`\ ) |
   +--------+--------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeFrame_property_attached_nodes:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **attached_nodes** = ``PackedInt32Array()`` :ref:`🔗<class_VisualShaderNodeFrame_property_attached_nodes>`

.. rst-class:: classref-property-setget

- |void| **set_attached_nodes**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_attached_nodes**\ (\ )

La lista dei nodi attaccati alla cornice.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFrame_property_autoshrink:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autoshrink** = ``true`` :ref:`🔗<class_VisualShaderNodeFrame_property_autoshrink>`

.. rst-class:: classref-property-setget

- |void| **set_autoshrink_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_autoshrink_enabled**\ (\ )

Se ``true``, la cornice si ridimensionerà automaticamente per racchiudere tutti i nodi attaccati.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFrame_property_tint_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **tint_color** = ``Color(0.3, 0.3, 0.3, 0.75)`` :ref:`🔗<class_VisualShaderNodeFrame_property_tint_color>`

.. rst-class:: classref-property-setget

- |void| **set_tint_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_tint_color**\ (\ )

Il colore della cornice quando :ref:`tint_color_enabled<class_VisualShaderNodeFrame_property_tint_color_enabled>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFrame_property_tint_color_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **tint_color_enabled** = ``false`` :ref:`🔗<class_VisualShaderNodeFrame_property_tint_color_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_tint_color_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_tint_color_enabled**\ (\ )

Se ``true``, la cornice sarà tinta con il colore specificato in :ref:`tint_color<class_VisualShaderNodeFrame_property_tint_color>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFrame_property_title:

.. rst-class:: classref-property

:ref:`String<class_String>` **title** = ``"Title"`` :ref:`🔗<class_VisualShaderNodeFrame_property_title>`

.. rst-class:: classref-property-setget

- |void| **set_title**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_title**\ (\ )

Il titolo del nodo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_VisualShaderNodeFrame_method_add_attached_node:

.. rst-class:: classref-method

|void| **add_attached_node**\ (\ node\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNodeFrame_method_add_attached_node>`

Aggiunge un nodo alla lista dei nodi attaccati alla cornice. Non dovrebbe essere chiamato direttamente, usa invece il metodo :ref:`VisualShader.attach_node_to_frame()<class_VisualShader_method_attach_node_to_frame>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFrame_method_remove_attached_node:

.. rst-class:: classref-method

|void| **remove_attached_node**\ (\ node\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNodeFrame_method_remove_attached_node>`

Rimuove un nodo dalla lista dei nodi attaccati alla cornice. Non dovrebbe essere chiamato direttamente, usa invece il metodo :ref:`VisualShader.detach_node_from_frame()<class_VisualShader_method_detach_node_from_frame>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
