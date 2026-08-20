:github_url: hide

.. _class_WorldBoundaryShape2D:

WorldBoundaryShape2D
====================

**Eredita:** :ref:`Shape2D<class_Shape2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una forma di confine di un mondo 2D (mezzo piano) utilizzata per la collisione fisica.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una forma di confine 2D del mondo, pensata per l'uso in fisica. **WorldBoundaryShape2D** funziona come una linea retta infinita che costringe tutti i corpi fisici a rimanere sopra di essa. La normale della linea determina quale direzione è considerata "sopra" e nell'editor, la linea più piccola sopra di essa rappresenta questa direzione. Può essere utilizzata, ad esempio, per pavimenti piatti infiniti.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------+--------------------+
   | :ref:`float<class_float>`     | :ref:`distance<class_WorldBoundaryShape2D_property_distance>` | ``0.0``            |
   +-------------------------------+---------------------------------------------------------------+--------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`normal<class_WorldBoundaryShape2D_property_normal>`     | ``Vector2(0, -1)`` |
   +-------------------------------+---------------------------------------------------------------+--------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_WorldBoundaryShape2D_property_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance** = ``0.0`` :ref:`🔗<class_WorldBoundaryShape2D_property_distance>`

.. rst-class:: classref-property-setget

- |void| **set_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance**\ (\ )

La distanza dall'origine alla linea, espressa in termini di :ref:`normal<class_WorldBoundaryShape2D_property_normal>` (in base alla sua direzione e magnitudine). La distanza assoluta effettiva dall'origine alla linea può essere calcolata come ``abs(distance) / normal.length()``.

Nell'equazione scalare della linea ``ax + by = d``, questa è ``d``, mentre le coordinate ``(a, b)`` sono rappresentate dalla proprietà :ref:`normal<class_WorldBoundaryShape2D_property_normal>`.

.. rst-class:: classref-item-separator

----

.. _class_WorldBoundaryShape2D_property_normal:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **normal** = ``Vector2(0, -1)`` :ref:`🔗<class_WorldBoundaryShape2D_property_normal>`

.. rst-class:: classref-property-setget

- |void| **set_normal**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_normal**\ (\ )

La normale della linea, in genere un vettore unitario. La sua direzione indica il semipiano che non ha collisione. Può avere qualsiasi lunghezza tranne zero. Il valore predefinito è :ref:`Vector2.UP<class_Vector2_constant_UP>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
