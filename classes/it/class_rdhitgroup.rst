:github_url: hide

.. _class_RDHitGroup:

RDHitGroup
==========

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Hit group (used by :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Defines a hit group for use with :ref:`RenderingDevice.raytracing_pipeline_create()<class_RenderingDevice_method_raytracing_pipeline_create>`.

A hit group combines shaders that are executed when a ray intersects geometry. It may include a closest-hit shader, any-hit shader, and intersection shader.

Hit groups are referenced by index when populating hit shader binding tables using :ref:`RenderingDevice.hit_sbt_range_update()<class_RenderingDevice_method_hit_sbt_range_update>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`RDPipelineShader<class_RDPipelineShader>` | :ref:`any_hit_shader<class_RDHitGroup_property_any_hit_shader>`           |
   +-------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`RDPipelineShader<class_RDPipelineShader>` | :ref:`closest_hit_shader<class_RDHitGroup_property_closest_hit_shader>`   |
   +-------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`RDPipelineShader<class_RDPipelineShader>` | :ref:`intersection_shader<class_RDHitGroup_property_intersection_shader>` |
   +-------------------------------------------------+---------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_RDHitGroup_property_any_hit_shader:

.. rst-class:: classref-property

:ref:`RDPipelineShader<class_RDPipelineShader>` **any_hit_shader** :ref:`🔗<class_RDHitGroup_property_any_hit_shader>`

.. rst-class:: classref-property-setget

- |void| **set_any_hit_shader**\ (\ value\: :ref:`RDPipelineShader<class_RDPipelineShader>`\ )
- :ref:`RDPipelineShader<class_RDPipelineShader>` **get_any_hit_shader**\ (\ )

Any-hit shader for this hit group. Executed for each potential intersection. Can be ``null``.

.. rst-class:: classref-item-separator

----

.. _class_RDHitGroup_property_closest_hit_shader:

.. rst-class:: classref-property

:ref:`RDPipelineShader<class_RDPipelineShader>` **closest_hit_shader** :ref:`🔗<class_RDHitGroup_property_closest_hit_shader>`

.. rst-class:: classref-property-setget

- |void| **set_closest_hit_shader**\ (\ value\: :ref:`RDPipelineShader<class_RDPipelineShader>`\ )
- :ref:`RDPipelineShader<class_RDPipelineShader>` **get_closest_hit_shader**\ (\ )

Closest-hit shader for this hit group. Executed for the closest intersection. Can be ``null``.

.. rst-class:: classref-item-separator

----

.. _class_RDHitGroup_property_intersection_shader:

.. rst-class:: classref-property

:ref:`RDPipelineShader<class_RDPipelineShader>` **intersection_shader** :ref:`🔗<class_RDHitGroup_property_intersection_shader>`

.. rst-class:: classref-property-setget

- |void| **set_intersection_shader**\ (\ value\: :ref:`RDPipelineShader<class_RDPipelineShader>`\ )
- :ref:`RDPipelineShader<class_RDPipelineShader>` **get_intersection_shader**\ (\ )

Intersection shader for this hit group. Required for non-triangle geometry. Must be ``null`` when using for triangle geometry.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
