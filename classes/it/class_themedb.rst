:github_url: hide

.. _class_ThemeDB:

ThemeDB
=======

**Eredita:** :ref:`Object<class_Object>`

Un singleton che fornisce accesso alle informazioni statiche sulle risorse :ref:`Theme<class_Theme>` utilizzate dal motore e dal tuo progetto.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo singleton fornisce accesso alle informazioni statiche sulle risorse :ref:`Theme<class_Theme>` utilizzate dal motore e dai propri progetti. È possibile recuperare il tema predefinito del motore, così come il tema configurato del proprio progetto.

Il **ThemeDB** contiene anche i valori di riserva per le proprietà del tema.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`         | :ref:`fallback_base_scale<class_ThemeDB_property_fallback_base_scale>` | ``1.0`` |
   +-----------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`Font<class_Font>`           | :ref:`fallback_font<class_ThemeDB_property_fallback_font>`             |         |
   +-----------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`             | :ref:`fallback_font_size<class_ThemeDB_property_fallback_font_size>`   | ``16``  |
   +-----------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`fallback_icon<class_ThemeDB_property_fallback_icon>`             |         |
   +-----------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`fallback_stylebox<class_ThemeDB_property_fallback_stylebox>`     |         |
   +-----------------------------------+------------------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------+
   | :ref:`Theme<class_Theme>` | :ref:`get_default_theme<class_ThemeDB_method_get_default_theme>`\ (\ ) |
   +---------------------------+------------------------------------------------------------------------+
   | :ref:`Theme<class_Theme>` | :ref:`get_project_theme<class_ThemeDB_method_get_project_theme>`\ (\ ) |
   +---------------------------+------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_ThemeDB_signal_fallback_changed:

.. rst-class:: classref-signal

**fallback_changed**\ (\ ) :ref:`🔗<class_ThemeDB_signal_fallback_changed>`

Emesso quando uno dei valori di riserva è stato modificato. Utilizzalo per aggiornare l'aspetto dei controlli che potrebbero basarsi sugli elementi del tema di riserva.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ThemeDB_property_fallback_base_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **fallback_base_scale** = ``1.0`` :ref:`🔗<class_ThemeDB_property_fallback_base_scale>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_base_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fallback_base_scale**\ (\ )

Il fattore di scala base di riserva di ogni nodo :ref:`Control<class_Control>` e risorsa :ref:`Theme<class_Theme>`. Utilizzato quando nessun altro valore è disponibile per il controllo.

Vedi anche :ref:`Theme.default_base_scale<class_Theme_property_default_base_scale>`.

.. rst-class:: classref-item-separator

----

.. _class_ThemeDB_property_fallback_font:

.. rst-class:: classref-property

:ref:`Font<class_Font>` **fallback_font** :ref:`🔗<class_ThemeDB_property_fallback_font>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_font**\ (\ value\: :ref:`Font<class_Font>`\ )
- :ref:`Font<class_Font>` **get_fallback_font**\ (\ )

Il font di riserva di ogni nodo :ref:`Control<class_Control>` e risorsa :ref:`Theme<class_Theme>`. Utilizzato quando nessun altro valore è disponibile per il controllo.

Vedi anche :ref:`Theme.default_font<class_Theme_property_default_font>`.

.. rst-class:: classref-item-separator

----

.. _class_ThemeDB_property_fallback_font_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **fallback_font_size** = ``16`` :ref:`🔗<class_ThemeDB_property_fallback_font_size>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_font_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fallback_font_size**\ (\ )

La dimensione del font di riserva di ogni nodo :ref:`Control<class_Control>` e risorsa :ref:`Theme<class_Theme>`. Utilizzata quando nessun altro valore è disponibile per il controllo.

Vedi anche :ref:`Theme.default_font_size<class_Theme_property_default_font_size>`.

.. rst-class:: classref-item-separator

----

.. _class_ThemeDB_property_fallback_icon:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **fallback_icon** :ref:`🔗<class_ThemeDB_property_fallback_icon>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_icon**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_fallback_icon**\ (\ )

L'icona di riserva di ogni nodo :ref:`Control<class_Control>` e risorsa :ref:`Theme<class_Theme>`. Utilizzata quando nessun altro valore è disponibile per il controllo.

.. rst-class:: classref-item-separator

----

.. _class_ThemeDB_property_fallback_stylebox:

.. rst-class:: classref-property

:ref:`StyleBox<class_StyleBox>` **fallback_stylebox** :ref:`🔗<class_ThemeDB_property_fallback_stylebox>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_stylebox**\ (\ value\: :ref:`StyleBox<class_StyleBox>`\ )
- :ref:`StyleBox<class_StyleBox>` **get_fallback_stylebox**\ (\ )

Lo stylebox di riserva di ogni nodo :ref:`Control<class_Control>` e risorsa :ref:`Theme<class_Theme>`. Utilizzato quando nessun altro valore è disponibile per il controllo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ThemeDB_method_get_default_theme:

.. rst-class:: classref-method

:ref:`Theme<class_Theme>` **get_default_theme**\ (\ ) :ref:`🔗<class_ThemeDB_method_get_default_theme>`

Restituisce un riferimento al :ref:`Theme<class_Theme>` predefinito del motore. Questa risorsa tema è responsabile dell'aspetto predefinito dei nodi :ref:`Control<class_Control>` e non può essere sovrascritta.

.. rst-class:: classref-item-separator

----

.. _class_ThemeDB_method_get_project_theme:

.. rst-class:: classref-method

:ref:`Theme<class_Theme>` **get_project_theme**\ (\ ) :ref:`🔗<class_ThemeDB_method_get_project_theme>`

Restituisce un riferimento al :ref:`Theme<class_Theme>` personalizzato del progetto. Questa risorsa tema consente di sovrascrivere il tema predefinito del motore per ogni nodo di controllo nel progetto.

Per impostare il tema del progetto, vedi :ref:`ProjectSettings.gui/theme/custom<class_ProjectSettings_property_gui/theme/custom>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
