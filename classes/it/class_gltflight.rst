:github_url: hide

.. _class_GLTFLight:

GLTFLight
=========

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Rappresenta una luce glTF.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Rappresenta una luce come definita dall'estensione glTF ``KHR_lights_punctual``.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Caricamento e salvataggio di file a tempo di esecuzione <../tutorials/io/runtime_file_loading_and_saving>`

- `Specifiche sull'estensione glTF KHR_lights_punctual <https://github.com/KhronosGroup/glTF/blob/main/extensions/2.0/Khronos/KHR_lights_punctual>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`   | :ref:`color<class_GLTFLight_property_color>`                       | ``Color(1, 1, 1, 1)`` |
   +-----------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`   | :ref:`inner_cone_angle<class_GLTFLight_property_inner_cone_angle>` | ``0.0``               |
   +-----------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`   | :ref:`intensity<class_GLTFLight_property_intensity>`               | ``1.0``               |
   +-----------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`String<class_String>` | :ref:`light_type<class_GLTFLight_property_light_type>`             | ``""``                |
   +-----------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`   | :ref:`outer_cone_angle<class_GLTFLight_property_outer_cone_angle>` | ``0.7853982``         |
   +-----------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`   | :ref:`range<class_GLTFLight_property_range>`                       | ``inf``               |
   +-----------------------------+--------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFLight<class_GLTFLight>`   | :ref:`from_dictionary<class_GLTFLight_method_from_dictionary>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static|                                                     |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFLight<class_GLTFLight>`   | :ref:`from_node<class_GLTFLight_method_from_node>`\ (\ light_node\: :ref:`Light3D<class_Light3D>`\ ) |static|                                                                       |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`get_additional_data<class_GLTFLight_method_get_additional_data>`\ (\ extension_name\: :ref:`StringName<class_StringName>`\ )                                                  |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_additional_data<class_GLTFLight_method_set_additional_data>`\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ ) |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`to_dictionary<class_GLTFLight_method_to_dictionary>`\ (\ ) |const|                                                                                                            |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Light3D<class_Light3D>`       | :ref:`to_node<class_GLTFLight_method_to_node>`\ (\ ) |const|                                                                                                                        |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_GLTFLight_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_GLTFLight_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

Il :ref:`Color<class_Color>` della luce nello spazio lineare. Il valore predefinito è bianco. Un colore nero fa sì che la luce non abbia alcun effetto.

Questo valore è lineare per corrispondere a glTF, ma sarà convertito in sRGB non lineare durante la creazione di un nodo :ref:`Light3D<class_Light3D>` di Godot durante l'importazione, o convertito in lineare all'esportazione di un :ref:`Light3D<class_Light3D>` di Godot in glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_property_inner_cone_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **inner_cone_angle** = ``0.0`` :ref:`🔗<class_GLTFLight_property_inner_cone_angle>`

.. rst-class:: classref-property-setget

- |void| **set_inner_cone_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_inner_cone_angle**\ (\ )

L'angolo interno del cono in una luce spot. Deve essere minore o uguale all'angolo del cono esterno.

All'interno di questo angolo, la luce è a piena luminosità. Tra gli angoli del cono interno ed esterno, c'è una transizione dalla piena luminosità alla luminosità zero. Quando si crea un :ref:`SpotLight3D<class_SpotLight3D>` di Godot, il rapporto tra gli angoli del cono interno ed esterno serve per calcolare l'attenuazione della luce.

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_property_intensity:

.. rst-class:: classref-property

:ref:`float<class_float>` **intensity** = ``1.0`` :ref:`🔗<class_GLTFLight_property_intensity>`

.. rst-class:: classref-property-setget

- |void| **set_intensity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_intensity**\ (\ )

L'intensità della luce. Questa è espressa in candele (lumen per steradiante) per luci puntiformi e spot, e lux (lumen per m²) per luci direzionali. Quando si crea una luce di Godot, questo valore viene convertito in un moltiplicatore senza unità.

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_property_light_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **light_type** = ``""`` :ref:`🔗<class_GLTFLight_property_light_type>`

.. rst-class:: classref-property-setget

- |void| **set_light_type**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_light_type**\ (\ )

Il tipo di luce. I valori accettati da Godot sono "point", "spot" e "directional", che corrispondono rispettivamente a :ref:`OmniLight3D<class_OmniLight3D>`, :ref:`SpotLight3D<class_SpotLight3D>` e :ref:`DirectionalLight3D<class_DirectionalLight3D>` di Godot.

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_property_outer_cone_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **outer_cone_angle** = ``0.7853982`` :ref:`🔗<class_GLTFLight_property_outer_cone_angle>`

.. rst-class:: classref-property-setget

- |void| **set_outer_cone_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_outer_cone_angle**\ (\ )

L'angolo esterno del cono in una luce spot. Deve essere maggiore o uguale all'angolo interno.

A questo angolo, la luce diminuisce a zero luminosità. Tra gli angoli del cono interno ed esterno, c'è una transizione dalla piena luminosità a zero luminosità. Se questo angolo è di mezzo giro, la luce spot emette in tutte le direzioni. Quando si crea un :ref:`SpotLight3D<class_SpotLight3D>` di Godot, l'angolo del cono esterno viene utilizzato come angolo della luce spot.

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_property_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **range** = ``inf`` :ref:`🔗<class_GLTFLight_property_range>`

.. rst-class:: classref-property-setget

- |void| **set_range**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_range**\ (\ )

La portata della luce, oltre la quale la luce non ha effetto. Le luci glTF senza portata definita si comportano come luci fisiche (che hanno portata infinita). Quando si crea una luce di Godot, la portata è limitata a ``4096``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_GLTFLight_method_from_dictionary:

.. rst-class:: classref-method

:ref:`GLTFLight<class_GLTFLight>` **from_dictionary**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| :ref:`🔗<class_GLTFLight_method_from_dictionary>`

Crea una nuova istanza GLTFLight interpretando il :ref:`Dictionary<class_Dictionary>` specificato.

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_method_from_node:

.. rst-class:: classref-method

:ref:`GLTFLight<class_GLTFLight>` **from_node**\ (\ light_node\: :ref:`Light3D<class_Light3D>`\ ) |static| :ref:`🔗<class_GLTFLight_method_from_node>`

Crea una nuova istanza GLTFLight dal nodo :ref:`Light3D<class_Light3D>` di Godot specificato.

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_method_get_additional_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_GLTFLight_method_get_additional_data>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_method_set_additional_data:

.. rst-class:: classref-method

|void| **set_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GLTFLight_method_set_additional_data>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_method_to_dictionary:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **to_dictionary**\ (\ ) |const| :ref:`🔗<class_GLTFLight_method_to_dictionary>`

Serializza questa istanza GLTFLight in un :ref:`Dictionary<class_Dictionary>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_method_to_node:

.. rst-class:: classref-method

:ref:`Light3D<class_Light3D>` **to_node**\ (\ ) |const| :ref:`🔗<class_GLTFLight_method_to_node>`

Converte questa istanza GLTFLight in un nodo :ref:`Light3D<class_Light3D>` di Godot.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
