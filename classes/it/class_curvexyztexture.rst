:github_url: hide

.. _class_CurveXYZTexture:

CurveXYZTexture
===============

**Eredita:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una texture 1D in cui i canali di colore rosso, verde e blu corrispondono a punti su 3 curve.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una texture 1D in cui i canali di colore rosso, verde e blu corrispondono a punti su 3 risorse :ref:`Curve<class_Curve>` unitarie. In confronto all'utilizzo di :ref:`CurveTexture<class_CurveTexture>` separate, ciò semplifica ulteriormente il compito di salvare le curve come file immagine.

Se hai bisogno di memorizzare solo una curva all'interno di una singola texture, utilizza invece :ref:`CurveTexture<class_CurveTexture>`. Vedi anche :ref:`GradientTexture1D<class_GradientTexture1D>` e :ref:`GradientTexture2D<class_GradientTexture2D>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Curve<class_Curve>` | :ref:`curve_x<class_CurveXYZTexture_property_curve_x>` |                                                                                        |
   +---------------------------+--------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Curve<class_Curve>` | :ref:`curve_y<class_CurveXYZTexture_property_curve_y>` |                                                                                        |
   +---------------------------+--------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Curve<class_Curve>` | :ref:`curve_z<class_CurveXYZTexture_property_curve_z>` |                                                                                        |
   +---------------------------+--------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | resource_local_to_scene                                | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +---------------------------+--------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`width<class_CurveXYZTexture_property_width>`     | ``256``                                                                                |
   +---------------------------+--------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_CurveXYZTexture_property_curve_x:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **curve_x** :ref:`🔗<class_CurveXYZTexture_property_curve_x>`

.. rst-class:: classref-property-setget

- |void| **set_curve_x**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_curve_x**\ (\ )

La :ref:`Curve<class_Curve>` che è renderizzata sul canale rosso della texture. Dovrebbe essere una :ref:`Curve<class_Curve>` unitaria.

.. rst-class:: classref-item-separator

----

.. _class_CurveXYZTexture_property_curve_y:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **curve_y** :ref:`🔗<class_CurveXYZTexture_property_curve_y>`

.. rst-class:: classref-property-setget

- |void| **set_curve_y**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_curve_y**\ (\ )

La :ref:`Curve<class_Curve>` che è renderizzata sul canale verde della texture. Dovrebbe essere una :ref:`Curve<class_Curve>` unitaria.

.. rst-class:: classref-item-separator

----

.. _class_CurveXYZTexture_property_curve_z:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **curve_z** :ref:`🔗<class_CurveXYZTexture_property_curve_z>`

.. rst-class:: classref-property-setget

- |void| **set_curve_z**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_curve_z**\ (\ )

La :ref:`Curve<class_Curve>` che è renderizzata sul canale blu della texture. Dovrebbe essere una :ref:`Curve<class_Curve>` unitaria.

.. rst-class:: classref-item-separator

----

.. _class_CurveXYZTexture_property_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **width** = ``256`` :ref:`🔗<class_CurveXYZTexture_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_width**\ (\ )

Larghezza della texture (in pixel). Valori più alti consentono di rappresentare meglio i dati ad alta frequenza (come i bruschi cambi di direzione), a costo di un aumento del tempo di generazione e dell'utilizzo della memoria.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
