:github_url: hide

.. _class_Noise:

Noise
=====

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`FastNoiseLite<class_FastNoiseLite>`

Classe base astratta per generatori di noise.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa classe definisce l'interfaccia da cui ereditare le librerie di generazione del noise.

Un'implementazione predefinita per :ref:`get_seamless_image()<class_Noise_method_get_seamless_image>` è fornita per le librerie che non forniscono noise senza cucitutre. Questa funzione richiede un'immagine più grande dal metodo :ref:`get_image()<class_Noise_method_get_image>`, inverte i quadranti dell'immagine, quindi usa le strisce di larghezza aggiuntive per sfumare sulle cuciture.

Le classi di noise ereditate possono facoltativamente sovrascrivere questa funzione per fornire un algoritmo più ottimale.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Image<class_Image>`                              | :ref:`get_image<class_Noise_method_get_image>`\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>` = false, in_3d_space\: :ref:`bool<class_bool>` = false, normalize\: :ref:`bool<class_bool>` = true\ ) |const|                                                            |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\] | :ref:`get_image_3d<class_Noise_method_get_image_3d>`\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, depth\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>` = false, normalize\: :ref:`bool<class_bool>` = true\ ) |const|                                                                      |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`get_noise_1d<class_Noise_method_get_noise_1d>`\ (\ x\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                                                                                           |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`get_noise_2d<class_Noise_method_get_noise_2d>`\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                                                            |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`get_noise_2dv<class_Noise_method_get_noise_2dv>`\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                                                                                                                     |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`get_noise_3d<class_Noise_method_get_noise_3d>`\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`, z\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                             |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`get_noise_3dv<class_Noise_method_get_noise_3dv>`\ (\ v\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                                                                                                                     |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Image<class_Image>`                              | :ref:`get_seamless_image<class_Noise_method_get_seamless_image>`\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>` = false, in_3d_space\: :ref:`bool<class_bool>` = false, skirt\: :ref:`float<class_float>` = 0.1, normalize\: :ref:`bool<class_bool>` = true\ ) |const| |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\] | :ref:`get_seamless_image_3d<class_Noise_method_get_seamless_image_3d>`\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, depth\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>` = false, skirt\: :ref:`float<class_float>` = 0.1, normalize\: :ref:`bool<class_bool>` = true\ ) |const|           |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Noise_method_get_image:

.. rst-class:: classref-method

:ref:`Image<class_Image>` **get_image**\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>` = false, in_3d_space\: :ref:`bool<class_bool>` = false, normalize\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Noise_method_get_image>`

Restituisce un':ref:`Image<class_Image>` contenente i valori di noise 2D.

\ **Nota:** Con ``normalize`` impostato su ``false``, l'implementazione predefinita si aspetta che il generatore di noise restituisca i valori nell'intervallo ``-1.0`` a ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_image_3d:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\] **get_image_3d**\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, depth\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>` = false, normalize\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Noise_method_get_image_3d>`

Restituisce un :ref:`Array<class_Array>` di :ref:`Image<class_Image>` contenenti i valori di noise 3D da usare con :ref:`ImageTexture3D.create()<class_ImageTexture3D_method_create>`.

\ **Nota:** Con ``normalize`` impostato su ``false``, l'implementazione predefinita si aspetta che il generatore di noise restituisca i valori nell'intervallo ``-1.0`` a ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_noise_1d:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_noise_1d**\ (\ x\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Noise_method_get_noise_1d>`

Restituisce il valore del noise 1D nella coordinata (x) indicata.

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_noise_2d:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_noise_2d**\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Noise_method_get_noise_2d>`

Restituisce il valore del noise 2D nella posizione indicata.

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_noise_2dv:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_noise_2dv**\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Noise_method_get_noise_2dv>`

Restituisce il valore del noise 2D nella posizione indicata.

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_noise_3d:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_noise_3d**\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`, z\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Noise_method_get_noise_3d>`

Restituisce il valore del noise 3D nella posizione indicata.

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_noise_3dv:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_noise_3dv**\ (\ v\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Noise_method_get_noise_3dv>`

Restituisce il valore del noise 3D nella posizione indicata.

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_seamless_image:

.. rst-class:: classref-method

:ref:`Image<class_Image>` **get_seamless_image**\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>` = false, in_3d_space\: :ref:`bool<class_bool>` = false, skirt\: :ref:`float<class_float>` = 0.1, normalize\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Noise_method_get_seamless_image>`

Restituisce un':ref:`Image<class_Image>` contenente i valori di noise continuo 2D.

\ **Nota:** Con ``normalize`` impostato su ``false``, l'implementazione predefinita si aspetta che il generatore di noise restituisca i valori nell'intervallo ``-1.0`` a ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_seamless_image_3d:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\] **get_seamless_image_3d**\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, depth\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>` = false, skirt\: :ref:`float<class_float>` = 0.1, normalize\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Noise_method_get_seamless_image_3d>`

Restituisce un :ref:`Array<class_Array>` di :ref:`Image<class_Image>` contenenti i valori di noise continuo 3D da usare con :ref:`ImageTexture3D.create()<class_ImageTexture3D_method_create>`.

\ **Nota:** Con ``normalize`` impostato su ``false``, l'implementazione predefinita si aspetta che il generatore di noise restituisca i valori nell'intervallo ``-1.0`` a ``1.0``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
