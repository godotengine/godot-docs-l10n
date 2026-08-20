:github_url: hide

.. _class_LightOccluder2D:

LightOccluder2D
===============

**Eredita:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Occlude la luce proiettata da un Light2D, proiettando ombre.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Occlude la luce proiettata da un Light2D, proiettando ombre. Il LightOccluder2D deve essere dotato di un :ref:`OccluderPolygon2D<class_OccluderPolygon2D>` affinché l'ombra possa essere calcolata.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Luci e ombre 2D <../tutorials/2d/2d_lights_and_shadows>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`OccluderPolygon2D<class_OccluderPolygon2D>` | :ref:`occluder<class_LightOccluder2D_property_occluder>`                       |          |
   +---------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`                             | :ref:`occluder_light_mask<class_LightOccluder2D_property_occluder_light_mask>` | ``1``    |
   +---------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`                           | :ref:`sdf_collision<class_LightOccluder2D_property_sdf_collision>`             | ``true`` |
   +---------------------------------------------------+--------------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_LightOccluder2D_property_occluder:

.. rst-class:: classref-property

:ref:`OccluderPolygon2D<class_OccluderPolygon2D>` **occluder** :ref:`🔗<class_LightOccluder2D_property_occluder>`

.. rst-class:: classref-property-setget

- |void| **set_occluder_polygon**\ (\ value\: :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`\ )
- :ref:`OccluderPolygon2D<class_OccluderPolygon2D>` **get_occluder_polygon**\ (\ )

L':ref:`OccluderPolygon2D<class_OccluderPolygon2D>` utilizzato per calcolare l'ombra.

.. rst-class:: classref-item-separator

----

.. _class_LightOccluder2D_property_occluder_light_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **occluder_light_mask** = ``1`` :ref:`🔗<class_LightOccluder2D_property_occluder_light_mask>`

.. rst-class:: classref-property-setget

- |void| **set_occluder_light_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_occluder_light_mask**\ (\ )

Maschera di luce occlusore del LightOccluder2D. Il LightOccluder2D proietterà ombre solo da Light2D che hanno la stessa maschera di luce.

.. rst-class:: classref-item-separator

----

.. _class_LightOccluder2D_property_sdf_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sdf_collision** = ``true`` :ref:`🔗<class_LightOccluder2D_property_sdf_collision>`

.. rst-class:: classref-property-setget

- |void| **set_as_sdf_collision**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_set_as_sdf_collision**\ (\ )

Se abilitato, l'occlusore farà parte di un signed distance field generato in tempo reale che si può usare negli shader personalizzati.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
