:github_url: hide

.. _class_OpenXRCompositionLayerEquirect:

OpenXRCompositionLayerEquirect
==============================

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`OpenXRCompositionLayer<class_OpenXRCompositionLayer>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un livello di composizione OpenXR che è renderizzato come una sezione interna di una sfera.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un livello di composizione OpenXR che consente di renderizzare una :ref:`SubViewport<class_SubViewport>` su una sezione interna di una sfera.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`central_horizontal_angle<class_OpenXRCompositionLayerEquirect_property_central_horizontal_angle>` | ``1.5707964`` |
   +---------------------------+---------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`     | :ref:`fallback_segments<class_OpenXRCompositionLayerEquirect_property_fallback_segments>`               | ``10``        |
   +---------------------------+---------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`lower_vertical_angle<class_OpenXRCompositionLayerEquirect_property_lower_vertical_angle>`         | ``0.7853982`` |
   +---------------------------+---------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`radius<class_OpenXRCompositionLayerEquirect_property_radius>`                                     | ``1.0``       |
   +---------------------------+---------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`upper_vertical_angle<class_OpenXRCompositionLayerEquirect_property_upper_vertical_angle>`         | ``0.7853982`` |
   +---------------------------+---------------------------------------------------------------------------------------------------------+---------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_OpenXRCompositionLayerEquirect_property_central_horizontal_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **central_horizontal_angle** = ``1.5707964`` :ref:`🔗<class_OpenXRCompositionLayerEquirect_property_central_horizontal_angle>`

.. rst-class:: classref-property-setget

- |void| **set_central_horizontal_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_central_horizontal_angle**\ (\ )

L'angolo orizzontale centrale della sfera. Utilizzato per impostare la larghezza.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayerEquirect_property_fallback_segments:

.. rst-class:: classref-property

:ref:`int<class_int>` **fallback_segments** = ``10`` :ref:`🔗<class_OpenXRCompositionLayerEquirect_property_fallback_segments>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_segments**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fallback_segments**\ (\ )

Il numero di segmenti da utilizzare nella mesh di riserva.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayerEquirect_property_lower_vertical_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **lower_vertical_angle** = ``0.7853982`` :ref:`🔗<class_OpenXRCompositionLayerEquirect_property_lower_vertical_angle>`

.. rst-class:: classref-property-setget

- |void| **set_lower_vertical_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lower_vertical_angle**\ (\ )

L'angolo verticale inferiore della sfera. Utilizzato (insieme a :ref:`upper_vertical_angle<class_OpenXRCompositionLayerEquirect_property_upper_vertical_angle>`) per impostare l'altezza.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayerEquirect_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``1.0`` :ref:`🔗<class_OpenXRCompositionLayerEquirect_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Il raggio della sfera.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayerEquirect_property_upper_vertical_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **upper_vertical_angle** = ``0.7853982`` :ref:`🔗<class_OpenXRCompositionLayerEquirect_property_upper_vertical_angle>`

.. rst-class:: classref-property-setget

- |void| **set_upper_vertical_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_upper_vertical_angle**\ (\ )

L'angolo verticale superiore della sfera. Utilizzato (insieme a :ref:`lower_vertical_angle<class_OpenXRCompositionLayerEquirect_property_lower_vertical_angle>`) per impostare l'altezza.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
