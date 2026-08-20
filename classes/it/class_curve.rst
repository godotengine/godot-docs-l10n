:github_url: hide

.. _class_Curve:

Curve
=====

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una curva matematica.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa risorsa descrive una curva matematica definendo una serie di punti e tangenti in ogni punto. Come predefinito, varia tra ``0`` e ``1`` sugli assi X e Y, ma è possibile cambiare questi intervalli.

Si noti che molte risorse e nodi presumono di avere *curve unitarie*. Una curva unitaria è una curva il cui dominio (l'asse X) è compreso tra ``0`` e ``1``. Alcuni esempi di utilizzo di una curva unitaria sono :ref:`CPUParticles2D.angle_curve<class_CPUParticles2D_property_angle_curve>` e :ref:`Line2D.width_curve<class_Line2D_property_width_curve>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`         | :ref:`bake_resolution<class_Curve_property_bake_resolution>`                         | ``100``           |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`max_domain<class_Curve_property_max_domain>`                                   | ``1.0``           |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`max_value<class_Curve_property_max_value>`                                     | ``1.0``           |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`min_domain<class_Curve_property_min_domain>`                                   | ``0.0``           |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`min_value<class_Curve_property_min_value>`                                     | ``0.0``           |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`         | :ref:`point_count<class_Curve_property_point_count>`                                 | ``0``             |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`         | :ref:`point_{index}/left_mode<class_Curve_property_point_{index}/left_mode>`         | ``0``             |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`point_{index}/left_tangent<class_Curve_property_point_{index}/left_tangent>`   | ``0.0``           |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`point_{index}/position<class_Curve_property_point_{index}/position>`           | ``Vector2(0, 0)`` |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`         | :ref:`point_{index}/right_mode<class_Curve_property_point_{index}/right_mode>`       | ``0``             |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`point_{index}/right_tangent<class_Curve_property_point_{index}/right_tangent>` | ``0.0``           |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                      | :ref:`add_point<class_Curve_method_add_point>`\ (\ position\: :ref:`Vector2<class_Vector2>`, left_tangent\: :ref:`float<class_float>` = 0, right_tangent\: :ref:`float<class_float>` = 0, left_mode\: :ref:`TangentMode<enum_Curve_TangentMode>` = 0, right_mode\: :ref:`TangentMode<enum_Curve_TangentMode>` = 0\ ) |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`bake<class_Curve_method_bake>`\ (\ )                                                                                                                                                                                                                                                                           |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`clean_dupes<class_Curve_method_clean_dupes>`\ (\ )                                                                                                                                                                                                                                                             |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`clear_points<class_Curve_method_clear_points>`\ (\ )                                                                                                                                                                                                                                                           |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                  | :ref:`get_domain_range<class_Curve_method_get_domain_range>`\ (\ ) |const|                                                                                                                                                                                                                                           |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TangentMode<enum_Curve_TangentMode>` | :ref:`get_point_left_mode<class_Curve_method_get_point_left_mode>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                      |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                  | :ref:`get_point_left_tangent<class_Curve_method_get_point_left_tangent>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`              | :ref:`get_point_position<class_Curve_method_get_point_position>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                        |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TangentMode<enum_Curve_TangentMode>` | :ref:`get_point_right_mode<class_Curve_method_get_point_right_mode>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                    |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                  | :ref:`get_point_right_tangent<class_Curve_method_get_point_right_tangent>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                              |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                  | :ref:`get_value_range<class_Curve_method_get_value_range>`\ (\ ) |const|                                                                                                                                                                                                                                             |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`remove_point<class_Curve_method_remove_point>`\ (\ index\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                            |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                  | :ref:`sample<class_Curve_method_sample>`\ (\ offset\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                                                                                           |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                  | :ref:`sample_baked<class_Curve_method_sample_baked>`\ (\ offset\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                                                                               |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`set_point_left_mode<class_Curve_method_set_point_left_mode>`\ (\ index\: :ref:`int<class_int>`, mode\: :ref:`TangentMode<enum_Curve_TangentMode>`\ )                                                                                                                                                           |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`set_point_left_tangent<class_Curve_method_set_point_left_tangent>`\ (\ index\: :ref:`int<class_int>`, tangent\: :ref:`float<class_float>`\ )                                                                                                                                                                   |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                      | :ref:`set_point_offset<class_Curve_method_set_point_offset>`\ (\ index\: :ref:`int<class_int>`, offset\: :ref:`float<class_float>`\ )                                                                                                                                                                                |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`set_point_right_mode<class_Curve_method_set_point_right_mode>`\ (\ index\: :ref:`int<class_int>`, mode\: :ref:`TangentMode<enum_Curve_TangentMode>`\ )                                                                                                                                                         |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`set_point_right_tangent<class_Curve_method_set_point_right_tangent>`\ (\ index\: :ref:`int<class_int>`, tangent\: :ref:`float<class_float>`\ )                                                                                                                                                                 |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`set_point_value<class_Curve_method_set_point_value>`\ (\ index\: :ref:`int<class_int>`, y\: :ref:`float<class_float>`\ )                                                                                                                                                                                       |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_Curve_signal_domain_changed:

.. rst-class:: classref-signal

**domain_changed**\ (\ ) :ref:`🔗<class_Curve_signal_domain_changed>`

Emesso quando :ref:`max_domain<class_Curve_property_max_domain>` o :ref:`min_domain<class_Curve_property_min_domain>` vengono modificati.

.. rst-class:: classref-item-separator

----

.. _class_Curve_signal_range_changed:

.. rst-class:: classref-signal

**range_changed**\ (\ ) :ref:`🔗<class_Curve_signal_range_changed>`

Emesso quando :ref:`max_value<class_Curve_property_max_value>` o :ref:`min_value<class_Curve_property_min_value>` viene modificato.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_Curve_TangentMode:

.. rst-class:: classref-enumeration

enum **TangentMode**: :ref:`🔗<enum_Curve_TangentMode>`

.. _class_Curve_constant_TANGENT_FREE:

.. rst-class:: classref-enumeration-constant

:ref:`TangentMode<enum_Curve_TangentMode>` **TANGENT_FREE** = ``0``

La tangente su questo lato del punto è definita dall'utente.

.. _class_Curve_constant_TANGENT_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`TangentMode<enum_Curve_TangentMode>` **TANGENT_LINEAR** = ``1``

La curva calcola la tangente su questo lato del punto come la pendenza a metà strada verso il punto adiacente.

.. _class_Curve_constant_TANGENT_MODE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`TangentMode<enum_Curve_TangentMode>` **TANGENT_MODE_COUNT** = ``2``

Il numero totale di modalità tangenti disponibili.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Curve_property_bake_resolution:

.. rst-class:: classref-property

:ref:`int<class_int>` **bake_resolution** = ``100`` :ref:`🔗<class_Curve_property_bake_resolution>`

.. rst-class:: classref-property-setget

- |void| **set_bake_resolution**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bake_resolution**\ (\ )

Il numero di punti da includere nei dati della curva precalcolati (ovvero memorizzati nella cache).

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_max_domain:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_domain** = ``1.0`` :ref:`🔗<class_Curve_property_max_domain>`

.. rst-class:: classref-property-setget

- |void| **set_max_domain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_domain**\ (\ )

Il dominio massimo (la coordinata x) che i punti possono avere.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_max_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_value** = ``1.0`` :ref:`🔗<class_Curve_property_max_value>`

.. rst-class:: classref-property-setget

- |void| **set_max_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_value**\ (\ )

Il valore massimo (coordinata y) che i punti possono avere. Le tangenti possono causare valori più alti tra i punti.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_min_domain:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_domain** = ``0.0`` :ref:`🔗<class_Curve_property_min_domain>`

.. rst-class:: classref-property-setget

- |void| **set_min_domain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_domain**\ (\ )

Il dominio minimo (la coordinata x) che i punti possono avere.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_min_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_value** = ``0.0`` :ref:`🔗<class_Curve_property_min_value>`

.. rst-class:: classref-property-setget

- |void| **set_min_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_value**\ (\ )

Il valore minimo (coordinata y) che i punti possono avere. Le tangenti possono causare valori più bassi tra i punti.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_point_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **point_count** = ``0`` :ref:`🔗<class_Curve_property_point_count>`

.. rst-class:: classref-property-setget

- |void| **set_point_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_point_count**\ (\ )

Il numero di punti che descrivono la curva.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_point_{index}/left_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **point_{index}/left_mode** = ``0`` :ref:`🔗<class_Curve_property_point_{index}/left_mode>`

La modalità della tangente sinistra (:ref:`TangentMode<enum_Curve_TangentMode>`) per il punto all'indice ``index``.

\ **Nota:** ``index`` è un valore compreso nell'intervallo ``0 .. point_count - 1``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_point_{index}/left_tangent:

.. rst-class:: classref-property

:ref:`float<class_float>` **point_{index}/left_tangent** = ``0.0`` :ref:`🔗<class_Curve_property_point_{index}/left_tangent>`

L'angolo della tangente sinistra (in gradi) per il punto all'indice ``index``.

\ **Nota:** ``index`` è un valore compreso nell'intervallo ``0 .. point_count - 1``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_point_{index}/position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **point_{index}/position** = ``Vector2(0, 0)`` :ref:`🔗<class_Curve_property_point_{index}/position>`

La posizione del punto all'indice ``index``.

\ **Nota:** ``index`` è un valore compreso nell'intervallo ``0 .. point_count - 1``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_point_{index}/right_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **point_{index}/right_mode** = ``0`` :ref:`🔗<class_Curve_property_point_{index}/right_mode>`

La modalità della tangente destra (:ref:`TangentMode<enum_Curve_TangentMode>`) per il punto all'indice ``index``.

\ **Nota:** ``index`` è un valore compreso nell'intervallo ``0 .. point_count - 1``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_point_{index}/right_tangent:

.. rst-class:: classref-property

:ref:`float<class_float>` **point_{index}/right_tangent** = ``0.0`` :ref:`🔗<class_Curve_property_point_{index}/right_tangent>`

L'angolo della tangente destra (in gradi) per il punto all'indice ``index``.

\ **Nota:** ``index`` è un valore compreso nell'intervallo ``0 .. point_count - 1``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Curve_method_add_point:

.. rst-class:: classref-method

:ref:`int<class_int>` **add_point**\ (\ position\: :ref:`Vector2<class_Vector2>`, left_tangent\: :ref:`float<class_float>` = 0, right_tangent\: :ref:`float<class_float>` = 0, left_mode\: :ref:`TangentMode<enum_Curve_TangentMode>` = 0, right_mode\: :ref:`TangentMode<enum_Curve_TangentMode>` = 0\ ) :ref:`🔗<class_Curve_method_add_point>`

Aggiunge un punto alla curva. Per ciascun lato, se il ``*_mode`` è :ref:`TANGENT_LINEAR<class_Curve_constant_TANGENT_LINEAR>`, l'angolo ``*_tangente`` (in gradi) utilizza la pendenza della curva definita rispetto alla semidistanza dal punto adiacente. Consente di specificare tangenti personalizzate con ``*_tangent`` se ``*_mode`` è impostato su :ref:`TANGENT_FREE<class_Curve_constant_TANGENT_FREE>`.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_bake:

.. rst-class:: classref-method

|void| **bake**\ (\ ) :ref:`🔗<class_Curve_method_bake>`

Ricalcola la cache dei punti della curva.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_clean_dupes:

.. rst-class:: classref-method

|void| **clean_dupes**\ (\ ) :ref:`🔗<class_Curve_method_clean_dupes>`

Rimuove i punti duplicati, ossia i punti che sono lontani meno di 0,00001 unità (valore epsilon del motore) dal loro vicino sulla curva.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_clear_points:

.. rst-class:: classref-method

|void| **clear_points**\ (\ ) :ref:`🔗<class_Curve_method_clear_points>`

Rimuove tutti i punti dalla curva.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_get_domain_range:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_domain_range**\ (\ ) |const| :ref:`🔗<class_Curve_method_get_domain_range>`

Restituisce la differenza tra :ref:`min_domain<class_Curve_property_min_domain>` e :ref:`max_domain<class_Curve_property_max_domain>`.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_get_point_left_mode:

.. rst-class:: classref-method

:ref:`TangentMode<enum_Curve_TangentMode>` **get_point_left_mode**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve_method_get_point_left_mode>`

Restituisce il :ref:`TangentMode<enum_Curve_TangentMode>` sinistro per il punto all'indice ``index``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_get_point_left_tangent:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_point_left_tangent**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve_method_get_point_left_tangent>`

Restituisce l'angolo tangente sinistro (in gradi) per il punto all'indice ``index``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_get_point_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_point_position**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve_method_get_point_position>`

Restituisce le coordinate della curva per il punto all'indice ``index``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_get_point_right_mode:

.. rst-class:: classref-method

:ref:`TangentMode<enum_Curve_TangentMode>` **get_point_right_mode**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve_method_get_point_right_mode>`

Restituisce il :ref:`TangentMode<enum_Curve_TangentMode>` destro per il punto all'indice ``index``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_get_point_right_tangent:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_point_right_tangent**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve_method_get_point_right_tangent>`

Restituisce l'angolo tangente destro (in gradi) per il punto all'indice ``index``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_get_value_range:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_value_range**\ (\ ) |const| :ref:`🔗<class_Curve_method_get_value_range>`

Restituisce la differenza tra :ref:`min_value<class_Curve_property_min_value>` e :ref:`max_value<class_Curve_property_max_value>`.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_remove_point:

.. rst-class:: classref-method

|void| **remove_point**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Curve_method_remove_point>`

Rimuove il punto all'indice ``index`` dalla curva.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_sample:

.. rst-class:: classref-method

:ref:`float<class_float>` **sample**\ (\ offset\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Curve_method_sample>`

Restituisce il valore Y per il punto che esisterebbe nell'``offset`` di posizione X lungo la curva.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_sample_baked:

.. rst-class:: classref-method

:ref:`float<class_float>` **sample_baked**\ (\ offset\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Curve_method_sample_baked>`

Restituisce il valore Y per il punto che esisterebbe nell'``offset`` di posizione X lungo la curva usando la cache precalcolata. Precalcola i punti della curva se non sono già stati calcolati.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_set_point_left_mode:

.. rst-class:: classref-method

|void| **set_point_left_mode**\ (\ index\: :ref:`int<class_int>`, mode\: :ref:`TangentMode<enum_Curve_TangentMode>`\ ) :ref:`🔗<class_Curve_method_set_point_left_mode>`

Imposta il :ref:`TangentMode<enum_Curve_TangentMode>` sinistro per il punto all'indice ``index`` su ``mode``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_set_point_left_tangent:

.. rst-class:: classref-method

|void| **set_point_left_tangent**\ (\ index\: :ref:`int<class_int>`, tangent\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Curve_method_set_point_left_tangent>`

Imposta l'angolo tangente sinistro per il punto all'indice ``index`` su ``tangent``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_set_point_offset:

.. rst-class:: classref-method

:ref:`int<class_int>` **set_point_offset**\ (\ index\: :ref:`int<class_int>`, offset\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Curve_method_set_point_offset>`

Assegna la posizione orizzontale ``offset`` al punto all'indice ``index``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_set_point_right_mode:

.. rst-class:: classref-method

|void| **set_point_right_mode**\ (\ index\: :ref:`int<class_int>`, mode\: :ref:`TangentMode<enum_Curve_TangentMode>`\ ) :ref:`🔗<class_Curve_method_set_point_right_mode>`

Imposta il :ref:`TangentMode<enum_Curve_TangentMode>` destro per il punto all'indice ``index`` su ``mode``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_set_point_right_tangent:

.. rst-class:: classref-method

|void| **set_point_right_tangent**\ (\ index\: :ref:`int<class_int>`, tangent\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Curve_method_set_point_right_tangent>`

Imposta l'angolo tangente destro per il punto all'indice ``index`` su ``tangent``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_set_point_value:

.. rst-class:: classref-method

|void| **set_point_value**\ (\ index\: :ref:`int<class_int>`, y\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Curve_method_set_point_value>`

Assegna la posizione verticale ``y`` al punto all'indice ``index``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
