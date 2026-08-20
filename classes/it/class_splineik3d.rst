:github_url: hide

.. _class_SplineIK3D:

SplineIK3D
==========

**Eredita:** :ref:`ChainIK3D<class_ChainIK3D>` **<** :ref:`IKModifier3D<class_IKModifier3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Uno :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` per allineare le ossa lungo un :ref:`Path3D<class_Path3D>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` per allineare le ossa lungo un :ref:`Path3D<class_Path3D>`. La fluidità dell'allineamento dipende da :ref:`Curve3D.bake_interval<class_Curve3D_property_bake_interval>`.

Se si desidera che il :ref:`Path3D<class_Path3D>` si attacchi a un osso specifico, si consiglia di posizionare un :ref:`ModifierBoneTarget3D<class_ModifierBoneTarget3D>` prima dello **SplineIK3D** nell'elenco di :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` (i figli dello :ref:`Skeleton3D<class_Skeleton3D>`), e poi inserire un :ref:`Path3D<class_Path3D>` come figlio del :ref:`ModifierBoneTarget3D<class_ModifierBoneTarget3D>`.

La torsione delle ossa è determinata in base a :ref:`Curve3D.get_point_tilt()<class_Curve3D_method_get_point_tilt>`.

Se l'articolazione dell'osso radice e il punto di partenza della :ref:`Curve3D<class_Curve3D>` sono separati, si presume che ci sia un segmento lineare tra di essi. Ciò significa che il vettore che punta verso il punto di partenza della :ref:`Curve3D<class_Curve3D>` ha la precedenza sul punto di intersezione più breve lungo la :ref:`Curve3D<class_Curve3D>`.

Se l'articolazione dell'osso finale supera la lunghezza del percorso, è piegata il più vicino possibile al punto finale della :ref:`Curve3D<class_Curve3D>`.

\ **Nota:** Tutti i metodi di questa classe accettano un parametro ``index``. Questo parametro specifica quale voce nell'elenco delle impostazioni restituire, se l'IK ha più voci (ad esempio, ``settings/<index>/root_bone_name``).

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`setting_count<class_SplineIK3D_property_setting_count>` | ``0`` |
   +-----------------------+---------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_path_3d<class_SplineIK3D_method_get_path_3d>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                      |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_tilt_fade_in<class_SplineIK3D_method_get_tilt_fade_in>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                            |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_tilt_fade_out<class_SplineIK3D_method_get_tilt_fade_out>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                          |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`is_tilt_enabled<class_SplineIK3D_method_is_tilt_enabled>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                              |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_path_3d<class_SplineIK3D_method_set_path_3d>`\ (\ index\: :ref:`int<class_int>`, path_3d\: :ref:`NodePath<class_NodePath>`\ )   |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_tilt_enabled<class_SplineIK3D_method_set_tilt_enabled>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_tilt_fade_in<class_SplineIK3D_method_set_tilt_fade_in>`\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ )      |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_tilt_fade_out<class_SplineIK3D_method_set_tilt_fade_out>`\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ )    |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_SplineIK3D_property_setting_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_count** = ``0`` :ref:`🔗<class_SplineIK3D_property_setting_count>`

.. rst-class:: classref-property-setget

- |void| **set_setting_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_count**\ (\ )

Il numero di impostazioni.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_SplineIK3D_method_get_path_3d:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_path_3d**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SplineIK3D_method_get_path_3d>`

Restituisce se il percorso di nodo del :ref:`Path3D<class_Path3D>` che descrive il percorso.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_get_tilt_fade_in:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tilt_fade_in**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SplineIK3D_method_get_tilt_fade_in>`

Restituisce il metodo di interpolazione dell'inclinazione utilizzato tra l'osso radice e il punto iniziale della :ref:`Curve3D<class_Curve3D>` quando sono separati. Vedi anche :ref:`set_tilt_fade_in()<class_SplineIK3D_method_set_tilt_fade_in>`.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_get_tilt_fade_out:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tilt_fade_out**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SplineIK3D_method_get_tilt_fade_out>`

Restituisce il metodo di interpolazione dell'inclinazione utilizzato tra l'osso finale e il punto finale della :ref:`Curve3D<class_Curve3D>` quando sono separati. Vedi anche :ref:`set_tilt_fade_out()<class_SplineIK3D_method_set_tilt_fade_out>`.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_is_tilt_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tilt_enabled**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SplineIK3D_method_is_tilt_enabled>`

Restituisce se la proprietà di inclinazione del :ref:`Curve3D<class_Curve3D>` influisce sulla torsione dell'osso.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_set_path_3d:

.. rst-class:: classref-method

|void| **set_path_3d**\ (\ index\: :ref:`int<class_int>`, path_3d\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SplineIK3D_method_set_path_3d>`

Imposta il percorso di nodo del :ref:`Path3D<class_Path3D>` che descrive il percorso.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_set_tilt_enabled:

.. rst-class:: classref-method

|void| **set_tilt_enabled**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SplineIK3D_method_set_tilt_enabled>`

Imposta se la proprietà di inclinazione del :ref:`Curve3D<class_Curve3D>` influisce sulla torsione dell'osso.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_set_tilt_fade_in:

.. rst-class:: classref-method

|void| **set_tilt_fade_in**\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SplineIK3D_method_set_tilt_fade_in>`

Se ``size`` è maggiore di ``0``, l'inclinazione è interpolata tra ``size`` ossa iniziali dal punto iniziale della :ref:`Curve3D<class_Curve3D>` quando sono distanti.

Se ``size`` è uguale a ``0``, le inclinazioni tra la testa dell'osso radice e il punto iniziale della :ref:`Curve3D<class_Curve3D>` sono uniformate con l'inclinazione del punto iniziale della :ref:`Curve3D<class_Curve3D>`.

Se ``size`` è minore di ``0``, le inclinazioni tra l'osso radice e il punto iniziale della :ref:`Curve3D<class_Curve3D>` sono ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_set_tilt_fade_out:

.. rst-class:: classref-method

|void| **set_tilt_fade_out**\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SplineIK3D_method_set_tilt_fade_out>`

Se ``size`` è maggiore di ``0``, l'inclinazione è interpolata tra ``size`` ossa finali dal punto finale della :ref:`Curve3D<class_Curve3D>` quando sono distanti.

Se ``size`` è uguale a ``0``, le inclinazioni tra la coda dell'osso finale e il punto finale della :ref:`Curve3D<class_Curve3D>` sono uniformate con l'inclinazione del punto finale della :ref:`Curve3D<class_Curve3D>`.

Se ``size`` è minore di ``0``, le inclinazioni tra l'osso finale e il punto finale della :ref:`Curve3D<class_Curve3D>` sono ``0.0``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
