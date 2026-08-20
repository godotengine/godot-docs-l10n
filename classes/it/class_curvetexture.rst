:github_url: hide

.. _class_CurveTexture:

CurveTexture
============

**Eredita:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una texture 1D in cui la luminosità dei pixel corrisponde ai punti su una curva.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una texture 1D in cui la luminosità dei pixel corrisponde ai punti su una risorsa :ref:`Curve<class_Curve>` unitaria, in scala di grigi o in rosso. Questa rappresentazione visiva semplifica il compito di salvare le curve come file immagine.

Se hai bisogno di memorizzare fino a 3 curve in una singola texture, usa invece :ref:`CurveXYZTexture<class_CurveXYZTexture>`. Vedi anche :ref:`GradientTexture1D<class_GradientTexture1D>` e :ref:`GradientTexture2D<class_GradientTexture2D>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Curve<class_Curve>`                         | :ref:`curve<class_CurveTexture_property_curve>`               |                                                                                        |
   +---------------------------------------------------+---------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | resource_local_to_scene                                       | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +---------------------------------------------------+---------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`TextureMode<enum_CurveTexture_TextureMode>` | :ref:`texture_mode<class_CurveTexture_property_texture_mode>` | ``0``                                                                                  |
   +---------------------------------------------------+---------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`width<class_CurveTexture_property_width>`               | ``256``                                                                                |
   +---------------------------------------------------+---------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_CurveTexture_TextureMode:

.. rst-class:: classref-enumeration

enum **TextureMode**: :ref:`🔗<enum_CurveTexture_TextureMode>`

.. _class_CurveTexture_constant_TEXTURE_MODE_RGB:

.. rst-class:: classref-enumeration-constant

:ref:`TextureMode<enum_CurveTexture_TextureMode>` **TEXTURE_MODE_RGB** = ``0``

Memorizza la curva equamente sui canali rosso, verde, e blu. Questo usa più memoria video, ma è più compatibile con gli shader che leggono solo i valori verde e blu.

.. _class_CurveTexture_constant_TEXTURE_MODE_RED:

.. rst-class:: classref-enumeration-constant

:ref:`TextureMode<enum_CurveTexture_TextureMode>` **TEXTURE_MODE_RED** = ``1``

Memorizza la curva solo nel canale rosso. Questo fa risparmiare memoria video, ma alcuni shader personalizzati potrebbero non essere in grado di funzionare con questo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_CurveTexture_property_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **curve** :ref:`🔗<class_CurveTexture_property_curve>`

.. rst-class:: classref-property-setget

- |void| **set_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_curve**\ (\ )

La :ref:`Curve<class_Curve>` che è renderizzata sulla texture. Dovrebbe essere una :ref:`Curve<class_Curve>` unitaria.

.. rst-class:: classref-item-separator

----

.. _class_CurveTexture_property_texture_mode:

.. rst-class:: classref-property

:ref:`TextureMode<enum_CurveTexture_TextureMode>` **texture_mode** = ``0`` :ref:`🔗<class_CurveTexture_property_texture_mode>`

.. rst-class:: classref-property-setget

- |void| **set_texture_mode**\ (\ value\: :ref:`TextureMode<enum_CurveTexture_TextureMode>`\ )
- :ref:`TextureMode<enum_CurveTexture_TextureMode>` **get_texture_mode**\ (\ )

Il formato con cui la texture deve essere generata. Quando si passa una CurveTexture come input a uno :ref:`Shader<class_Shader>`, potrebbe essere necessario regolarlo.

.. rst-class:: classref-item-separator

----

.. _class_CurveTexture_property_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **width** = ``256`` :ref:`🔗<class_CurveTexture_property_width>`

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
