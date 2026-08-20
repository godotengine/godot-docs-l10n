:github_url: hide

.. _class_Gradient:

Gradient
========

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una transizione di colore.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa risorsa descrive una transizione di colore definendo un insieme di punti colorati e come interpolare tra di essi.

Vedi anche :ref:`Curve<class_Curve>` che supporta metodi di andamento più complessi, ma non supporta i colori.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------+-------------------------------------------------------------------------------------+----------------------------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>`           | :ref:`colors<class_Gradient_property_colors>`                                       | ``PackedColorArray(0, 0, 0, 1, 1, 1, 1, 1)`` |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------+----------------------------------------------+
   | :ref:`ColorSpace<enum_Gradient_ColorSpace>`               | :ref:`interpolation_color_space<class_Gradient_property_interpolation_color_space>` | ``0``                                        |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------+----------------------------------------------+
   | :ref:`InterpolationMode<enum_Gradient_InterpolationMode>` | :ref:`interpolation_mode<class_Gradient_property_interpolation_mode>`               | ``0``                                        |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------+----------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>`       | :ref:`offsets<class_Gradient_property_offsets>`                                     | ``PackedFloat32Array(0, 1)``                 |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------+----------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`add_point<class_Gradient_method_add_point>`\ (\ offset\: :ref:`float<class_float>`, color\: :ref:`Color<class_Color>`\ ) |
   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`get_color<class_Gradient_method_get_color>`\ (\ point\: :ref:`int<class_int>`\ )                                         |
   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_offset<class_Gradient_method_get_offset>`\ (\ point\: :ref:`int<class_int>`\ )                                       |
   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`get_point_count<class_Gradient_method_get_point_count>`\ (\ ) |const|                                                    |
   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`remove_point<class_Gradient_method_remove_point>`\ (\ point\: :ref:`int<class_int>`\ )                                   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`reverse<class_Gradient_method_reverse>`\ (\ )                                                                            |
   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`sample<class_Gradient_method_sample>`\ (\ offset\: :ref:`float<class_float>`\ )                                          |
   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_color<class_Gradient_method_set_color>`\ (\ point\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ )      |
   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_offset<class_Gradient_method_set_offset>`\ (\ point\: :ref:`int<class_int>`, offset\: :ref:`float<class_float>`\ )   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_Gradient_InterpolationMode:

.. rst-class:: classref-enumeration

enum **InterpolationMode**: :ref:`🔗<enum_Gradient_InterpolationMode>`

.. _class_Gradient_constant_GRADIENT_INTERPOLATE_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`InterpolationMode<enum_Gradient_InterpolationMode>` **GRADIENT_INTERPOLATE_LINEAR** = ``0``

Interpolazione lineare.

.. _class_Gradient_constant_GRADIENT_INTERPOLATE_CONSTANT:

.. rst-class:: classref-enumeration-constant

:ref:`InterpolationMode<enum_Gradient_InterpolationMode>` **GRADIENT_INTERPOLATE_CONSTANT** = ``1``

Interpolazione costante, il colore cambia bruscamente in ogni punto e rimane uniforme nel mezzo. Ciò potrebbe causare un aliasing visibile quando utilizzato per una texture di gradiente in alcuni casi.

.. _class_Gradient_constant_GRADIENT_INTERPOLATE_CUBIC:

.. rst-class:: classref-enumeration-constant

:ref:`InterpolationMode<enum_Gradient_InterpolationMode>` **GRADIENT_INTERPOLATE_CUBIC** = ``2``

Interpolazione cubica.

.. rst-class:: classref-item-separator

----

.. _enum_Gradient_ColorSpace:

.. rst-class:: classref-enumeration

enum **ColorSpace**: :ref:`🔗<enum_Gradient_ColorSpace>`

.. _class_Gradient_constant_GRADIENT_COLOR_SPACE_SRGB:

.. rst-class:: classref-enumeration-constant

:ref:`ColorSpace<enum_Gradient_ColorSpace>` **GRADIENT_COLOR_SPACE_SRGB** = ``0``

Spazio colore sRGB.

.. _class_Gradient_constant_GRADIENT_COLOR_SPACE_LINEAR_SRGB:

.. rst-class:: classref-enumeration-constant

:ref:`ColorSpace<enum_Gradient_ColorSpace>` **GRADIENT_COLOR_SPACE_LINEAR_SRGB** = ``1``

Spazio colore SRGB lineare.

.. _class_Gradient_constant_GRADIENT_COLOR_SPACE_OKLAB:

.. rst-class:: classref-enumeration-constant

:ref:`ColorSpace<enum_Gradient_ColorSpace>` **GRADIENT_COLOR_SPACE_OKLAB** = ``2``

Spazio colore `Oklab <https://bottosson.github.io/posts/oklab/>`__. Questo spazio colore fornisce una transizione fluida e uniforme tra i colori.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Gradient_property_colors:

.. rst-class:: classref-property

:ref:`PackedColorArray<class_PackedColorArray>` **colors** = ``PackedColorArray(0, 0, 0, 1, 1, 1, 1, 1)`` :ref:`🔗<class_Gradient_property_colors>`

.. rst-class:: classref-property-setget

- |void| **set_colors**\ (\ value\: :ref:`PackedColorArray<class_PackedColorArray>`\ )
- :ref:`PackedColorArray<class_PackedColorArray>` **get_colors**\ (\ )

I colori del gradiente come :ref:`PackedColorArray<class_PackedColorArray>`.

\ **Nota:** Impostando questa proprietà si aggiornano tutti i colori allo stesso tempo. Per aggiornare un colore singolarmente, utilizza :ref:`set_color()<class_Gradient_method_set_color>`.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedColorArray<class_PackedColorArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_Gradient_property_interpolation_color_space:

.. rst-class:: classref-property

:ref:`ColorSpace<enum_Gradient_ColorSpace>` **interpolation_color_space** = ``0`` :ref:`🔗<class_Gradient_property_interpolation_color_space>`

.. rst-class:: classref-property-setget

- |void| **set_interpolation_color_space**\ (\ value\: :ref:`ColorSpace<enum_Gradient_ColorSpace>`\ )
- :ref:`ColorSpace<enum_Gradient_ColorSpace>` **get_interpolation_color_space**\ (\ )

Lo spazio colore utilizzato per interpolare tra i punti del gradiente. Non influisce sui colori restituiti, che useranno sempre la codifica sRGB non lineare.

\ **Nota:** Questa impostazione non ha effetto quando :ref:`interpolation_mode<class_Gradient_property_interpolation_mode>` è impostato su :ref:`GRADIENT_INTERPOLATE_CONSTANT<class_Gradient_constant_GRADIENT_INTERPOLATE_CONSTANT>`.

.. rst-class:: classref-item-separator

----

.. _class_Gradient_property_interpolation_mode:

.. rst-class:: classref-property

:ref:`InterpolationMode<enum_Gradient_InterpolationMode>` **interpolation_mode** = ``0`` :ref:`🔗<class_Gradient_property_interpolation_mode>`

.. rst-class:: classref-property-setget

- |void| **set_interpolation_mode**\ (\ value\: :ref:`InterpolationMode<enum_Gradient_InterpolationMode>`\ )
- :ref:`InterpolationMode<enum_Gradient_InterpolationMode>` **get_interpolation_mode**\ (\ )

L'algoritmo utilizzato per interpolare tra i punti del gradiente.

.. rst-class:: classref-item-separator

----

.. _class_Gradient_property_offsets:

.. rst-class:: classref-property

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **offsets** = ``PackedFloat32Array(0, 1)`` :ref:`🔗<class_Gradient_property_offsets>`

.. rst-class:: classref-property-setget

- |void| **set_offsets**\ (\ value\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )
- :ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_offsets**\ (\ )

Gli offset del gradiente come :ref:`PackedFloat32Array<class_PackedFloat32Array>`.

\ **Nota:** Impostando questa proprietà si aggiornano tutti gli offset allo stesso tempo. Per aggiornare un offset singolarmente, utilizza :ref:`set_offset()<class_Gradient_method_set_offset>`.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat32Array<class_PackedFloat32Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Gradient_method_add_point:

.. rst-class:: classref-method

|void| **add_point**\ (\ offset\: :ref:`float<class_float>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Gradient_method_add_point>`

Aggiunge il colore specificato al gradiente, con l'offset specificato.

.. rst-class:: classref-item-separator

----

.. _class_Gradient_method_get_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_color**\ (\ point\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Gradient_method_get_color>`

Restituisce il colore del gradiente all'indice ``point``.

.. rst-class:: classref-item-separator

----

.. _class_Gradient_method_get_offset:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_offset**\ (\ point\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Gradient_method_get_offset>`

Restituisce l'offset del colore di colore di gradiente all'indice ``point``.

.. rst-class:: classref-item-separator

----

.. _class_Gradient_method_get_point_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_point_count**\ (\ ) |const| :ref:`🔗<class_Gradient_method_get_point_count>`

Restituisce il numero di colori nel gradiente.

.. rst-class:: classref-item-separator

----

.. _class_Gradient_method_remove_point:

.. rst-class:: classref-method

|void| **remove_point**\ (\ point\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Gradient_method_remove_point>`

Rimuove il colore all'indice ``point``.

.. rst-class:: classref-item-separator

----

.. _class_Gradient_method_reverse:

.. rst-class:: classref-method

|void| **reverse**\ (\ ) :ref:`🔗<class_Gradient_method_reverse>`

Inverte/specchia il gradiente.

\ **Nota:** Questo metodo specchia tutti i punti attorno al centro del gradiente, il che potrebbe produrre risultati inaspettati quando :ref:`interpolation_mode<class_Gradient_property_interpolation_mode>` è impostato su :ref:`GRADIENT_INTERPOLATE_CONSTANT<class_Gradient_constant_GRADIENT_INTERPOLATE_CONSTANT>`.

.. rst-class:: classref-item-separator

----

.. _class_Gradient_method_sample:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **sample**\ (\ offset\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Gradient_method_sample>`

Restituisce il colore interpolato specificato da ``offset``. ``offset`` deve essere compreso tra ``0.0`` e ``1.0`` (inclusi). Usando un valore inferiore a ``0.0`` sarà restituito lo stesso colore di ``0.0``, mentre usando un valore superiore a ``1.0`` sarà restituito lo stesso colore di ``1.0``. Se il valore in ingresso non rientra in questo intervallo, si consiglia di utilizzare :ref:`@GlobalScope.remap()<class_@GlobalScope_method_remap>` sul valore di input con i valori di output impostati su ``0.0`` e ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_Gradient_method_set_color:

.. rst-class:: classref-method

|void| **set_color**\ (\ point\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Gradient_method_set_color>`

Imposta il colore del colore di gradiente all'indice ``point``.

.. rst-class:: classref-item-separator

----

.. _class_Gradient_method_set_offset:

.. rst-class:: classref-method

|void| **set_offset**\ (\ point\: :ref:`int<class_int>`, offset\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Gradient_method_set_offset>`

Imposta l'offset per il colore del gradiente all'indice ``point``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
