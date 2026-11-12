:github_url: hide

.. _class_FuzzySearchMatch:

FuzzySearchMatch
================

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Result returned by :ref:`FuzzySearch<class_FuzzySearch>` containing match information.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`       | :ref:`original_index<class_FuzzySearchMatch_property_original_index>` | ``-1`` |
   +-----------------------------+-----------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`       | :ref:`score<class_FuzzySearchMatch_property_score>`                   | ``0``  |
   +-----------------------------+-----------------------------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`target<class_FuzzySearchMatch_property_target>`                 | ``""`` |
   +-----------------------------+-----------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] | :ref:`get_matched_substrings<class_FuzzySearchMatch_method_get_matched_substrings>`\ (\ ) |const| |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_FuzzySearchMatch_property_original_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **original_index** = ``-1`` :ref:`🔗<class_FuzzySearchMatch_property_original_index>`

.. rst-class:: classref-property-setget

- |void| **set_original_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_original_index**\ (\ )

The original index of :ref:`target<class_FuzzySearchMatch_property_target>` in the provided array of targets when using :ref:`FuzzySearch.search_all()<class_FuzzySearch_method_search_all>` otherwise ``-1``.

.. rst-class:: classref-item-separator

----

.. _class_FuzzySearchMatch_property_score:

.. rst-class:: classref-property

:ref:`int<class_int>` **score** = ``0`` :ref:`🔗<class_FuzzySearchMatch_property_score>`

.. rst-class:: classref-property-setget

- |void| **set_score**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_score**\ (\ )

Match score determined by :ref:`FuzzySearch<class_FuzzySearch>`. Scores are not normalized and generally should not be directly compared between different queries.

.. rst-class:: classref-item-separator

----

.. _class_FuzzySearchMatch_property_target:

.. rst-class:: classref-property

:ref:`String<class_String>` **target** = ``""`` :ref:`🔗<class_FuzzySearchMatch_property_target>`

.. rst-class:: classref-property-setget

- |void| **set_target**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_target**\ (\ )

Target string which was matched against.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_FuzzySearchMatch_method_get_matched_substrings:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **get_matched_substrings**\ (\ ) |const| :ref:`🔗<class_FuzzySearchMatch_method_get_matched_substrings>`

Returns each matched substring interval of :ref:`target<class_FuzzySearchMatch_property_target>`. The :ref:`Vector2i.x<class_Vector2i_property_x>` component is the start of the interval and the :ref:`Vector2i.y<class_Vector2i_property_y>` component is the length, corresponding to the arguments for :ref:`String.substr()<class_String_method_substr>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
