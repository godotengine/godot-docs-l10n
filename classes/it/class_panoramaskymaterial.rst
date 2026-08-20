:github_url: hide

.. _class_PanoramaSkyMaterial:

PanoramaSkyMaterial
===================

**Eredita:** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un materiale che fornisce una texture speciale a una risorsa :ref:`Sky<class_Sky>`, solitamente un panorama HDR.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una risorsa referenziata in una risorsa :ref:`Sky<class_Sky>` che serve per disegnare uno sfondo. **PanoramaSkyMaterial** funziona in modo simile agli skybox in altri motori, tranne che utilizza una mappa di cielo equirettangolare invece di una :ref:`Cubemap<class_Cubemap>`.

L'utilizzo di un panorama HDR è fortemente consigliato per riflessi accurati e di alta qualità. Godot supporta i formati di immagine Radiance HDR (``.hdr``) e OpenEXR (``.exr``) per questo scopo.

È possibile utilizzare `questo strumento <https://danilw.github.io/GLSL-howto/cubemap_to_panorama_js/cubemap_to_panorama.html>`__ per convertire una cubemap in una mappa di cielo equirettangolare.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`         | :ref:`energy_multiplier<class_PanoramaSkyMaterial_property_energy_multiplier>` | ``1.0``  |
   +-----------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`           | :ref:`filter<class_PanoramaSkyMaterial_property_filter>`                       | ``true`` |
   +-----------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`panorama<class_PanoramaSkyMaterial_property_panorama>`                   |          |
   +-----------------------------------+--------------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_PanoramaSkyMaterial_property_energy_multiplier:

.. rst-class:: classref-property

:ref:`float<class_float>` **energy_multiplier** = ``1.0`` :ref:`🔗<class_PanoramaSkyMaterial_property_energy_multiplier>`

.. rst-class:: classref-property-setget

- |void| **set_energy_multiplier**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_energy_multiplier**\ (\ )

Il moltiplicatore di luminosità complessiva del cielo. Valori più alti risultato in un cielo più luminoso.

.. rst-class:: classref-item-separator

----

.. _class_PanoramaSkyMaterial_property_filter:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **filter** = ``true`` :ref:`🔗<class_PanoramaSkyMaterial_property_filter>`

.. rst-class:: classref-property-setget

- |void| **set_filtering_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_filtering_enabled**\ (\ )

Un valore booleano per determinare se la texture di sfondo deve essere filtrata o meno.

.. rst-class:: classref-item-separator

----

.. _class_PanoramaSkyMaterial_property_panorama:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **panorama** :ref:`🔗<class_PanoramaSkyMaterial_property_panorama>`

.. rst-class:: classref-property-setget

- |void| **set_panorama**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_panorama**\ (\ )

La :ref:`Texture2D<class_Texture2D>` da applicare al **PanoramaSkyMaterial**.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
