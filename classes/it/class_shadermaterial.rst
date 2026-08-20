:github_url: hide

.. _class_ShaderMaterial:

ShaderMaterial
==============

**Eredita:** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un materiale definito da un programma :ref:`Shader<class_Shader>` personalizzato e dai valori dei relativi parametri di shader.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un materiale che utilizza un programma :ref:`Shader<class_Shader>` personalizzato per il rendering di elementi visivi (elementi canvas, mesh, cieli, nebbia) o per elaborare particelle. Rispetto ad altri materiali, **ShaderMaterial** offre un controllo più approfondito sul codice shader generato. Per ulteriori informazioni, consulta l'indice della documentazione degli shader qui sotto.

Più **ShaderMaterial** possono usare lo stesso shader e configurare valori diversi per le uniformi nello shader.

\ **Nota:** Per motivi di prestazioni, il segnale :ref:`Resource.changed<class_Resource_signal_changed>` viene emesso solo quando cambia :ref:`Resource.resource_name<class_Resource_property_resource_name>`. Solo nell'editor, viene emesso anche per le modifiche di :ref:`shader<class_ShaderMaterial_property_shader>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Indice di documentazione sugli Shader <../tutorials/shaders/index>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------+
   | :ref:`Shader<class_Shader>` | :ref:`shader<class_ShaderMaterial_property_shader>` |
   +-----------------------------+-----------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_shader_parameter<class_ShaderMaterial_method_get_shader_parameter>`\ (\ param\: :ref:`StringName<class_StringName>`\ ) |const|                                |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_shader_parameter<class_ShaderMaterial_method_set_shader_parameter>`\ (\ param\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ShaderMaterial_property_shader:

.. rst-class:: classref-property

:ref:`Shader<class_Shader>` **shader** :ref:`🔗<class_ShaderMaterial_property_shader>`

.. rst-class:: classref-property-setget

- |void| **set_shader**\ (\ value\: :ref:`Shader<class_Shader>`\ )
- :ref:`Shader<class_Shader>` **get_shader**\ (\ )

Il programma :ref:`Shader<class_Shader>` utilizzato per il rendering di questo materiale.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ShaderMaterial_method_get_shader_parameter:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_shader_parameter**\ (\ param\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ShaderMaterial_method_get_shader_parameter>`

Restituisce il valore attuale impostato per questo materiale di un'uniforme nello shader.

.. rst-class:: classref-item-separator

----

.. _class_ShaderMaterial_method_set_shader_parameter:

.. rst-class:: classref-method

|void| **set_shader_parameter**\ (\ param\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_ShaderMaterial_method_set_shader_parameter>`

Modifica il valore impostato per questo materiale di un'uniforme nello shader.

\ **Nota:** ``param`` è sensibile alle maiuscole e alle minuscole e deve corrispondere esattamente al nome dell'uniforme nel codice (non al nome formattato nell'ispettore).

\ **Nota:** Le modifiche all'uniforme dello shader saranno effettive su tutte le istanze che utilizzano questo **ShaderMaterial**. Per evitarlo, usa le uniformi per istanza con :ref:`CanvasItem.set_instance_shader_parameter()<class_CanvasItem_method_set_instance_shader_parameter>`, :ref:`GeometryInstance3D.set_instance_shader_parameter()<class_GeometryInstance3D_method_set_instance_shader_parameter>` o duplica la risorsa **ShaderMaterial** tramite :ref:`Resource.duplicate()<class_Resource_method_duplicate>`. Le uniformi per istanza permettono di riutilizzare meglio gli shader e sono quindi più veloci, pertanto si dovrebbero preferire alla duplicazione dello **ShaderMaterial** quando possibile.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
