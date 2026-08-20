:github_url: hide

.. _class_RDShaderSource:

RDShaderSource
==============

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Codice sorgente dello shader (utilizzato da :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Codice sorgente shader in formato testuale.

Vedi anche :ref:`RDShaderFile<class_RDShaderFile>`. **RDShaderSource** è pensato per essere utilizzato solo con l'API :ref:`RenderingDevice<class_RenderingDevice>`. Non deve essere confuso con la risorsa :ref:`Shader<class_Shader>` di Godot, che è quella che i vari nodi di Godot usano per la programmazione di shader di alto livello.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`ShaderLanguage<enum_RenderingDevice_ShaderLanguage>` | :ref:`language<class_RDShaderSource_property_language>`                                           | ``0``  |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_any_hit<class_RDShaderSource_property_source_any_hit>`                               | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_closest_hit<class_RDShaderSource_property_source_closest_hit>`                       | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_compute<class_RDShaderSource_property_source_compute>`                               | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_fragment<class_RDShaderSource_property_source_fragment>`                             | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_intersection<class_RDShaderSource_property_source_intersection>`                     | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_miss<class_RDShaderSource_property_source_miss>`                                     | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_raygen<class_RDShaderSource_property_source_raygen>`                                 | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_tesselation_control<class_RDShaderSource_property_source_tesselation_control>`       | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_tesselation_evaluation<class_RDShaderSource_property_source_tesselation_evaluation>` | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_vertex<class_RDShaderSource_property_source_vertex>`                                 | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_stage_source<class_RDShaderSource_method_get_stage_source>`\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|                               |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_stage_source<class_RDShaderSource_method_set_stage_source>`\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ ) |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_RDShaderSource_property_language:

.. rst-class:: classref-property

:ref:`ShaderLanguage<enum_RenderingDevice_ShaderLanguage>` **language** = ``0`` :ref:`🔗<class_RDShaderSource_property_language>`

.. rst-class:: classref-property-setget

- |void| **set_language**\ (\ value\: :ref:`ShaderLanguage<enum_RenderingDevice_ShaderLanguage>`\ )
- :ref:`ShaderLanguage<enum_RenderingDevice_ShaderLanguage>` **get_language**\ (\ )

Il linguaggio in cui è scritto lo shader.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_any_hit:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_any_hit** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_any_hit>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Source code for the shader's any hit stage.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_closest_hit:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_closest_hit** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_closest_hit>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Source code for the shader's closest hit stage.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_compute:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_compute** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_compute>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Codice sorgente per la fase di calcolo dello shader.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_fragment:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_fragment** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_fragment>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Codice sorgente per la fase di frammento dello shader.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_intersection:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_intersection** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_intersection>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Codice sorgente per la fase di intersezione dello shader.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_miss:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_miss** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_miss>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Source code for the shader's miss stage.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_raygen:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_raygen** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_raygen>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Source code for the shader's ray generation stage.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_tesselation_control:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_tesselation_control** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_tesselation_control>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Codice sorgente per la fase di controllo della tassellatura dello shader.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_tesselation_evaluation:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_tesselation_evaluation** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_tesselation_evaluation>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Codice sorgente per la fase di valutazione della tassellatura dello shader.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_vertex:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_vertex** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_vertex>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Codice sorgente per la fase di vertice dello shader.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_RDShaderSource_method_get_stage_source:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const| :ref:`🔗<class_RDShaderSource_method_get_stage_source>`

Restituisce il codice sorgente per la fase ``stage`` dello shader. Equivale a ottenere uno tra :ref:`source_compute<class_RDShaderSource_property_source_compute>`, :ref:`source_fragment<class_RDShaderSource_property_source_fragment>`, :ref:`source_tesselation_control<class_RDShaderSource_property_source_tesselation_control>`, :ref:`source_tesselation_evaluation<class_RDShaderSource_property_source_tesselation_evaluation>` o :ref:`source_vertex<class_RDShaderSource_property_source_vertex>`.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_method_set_stage_source:

.. rst-class:: classref-method

|void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ ) :ref:`🔗<class_RDShaderSource_method_set_stage_source>`

Imposta il codice sorgente per la fase ``stage`` dello shader su ``source``. Equivale a impostare uno tra :ref:`source_compute<class_RDShaderSource_property_source_compute>`, :ref:`source_fragment<class_RDShaderSource_property_source_fragment>`, :ref:`source_tesselation_control<class_RDShaderSource_property_source_tesselation_control>`, :ref:`source_tesselation_evaluation<class_RDShaderSource_property_source_tesselation_evaluation>` o :ref:`source_vertex<class_RDShaderSource_property_source_vertex>`.

\ **Nota:** Se imposti il codice sorgente dello shader di calcolo utilizzando questo metodo direttamente, ricordati di rimuovere l'indicazionespecifica di Godot ``#[compute]``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
