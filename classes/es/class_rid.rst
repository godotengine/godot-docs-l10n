:github_url: hide

.. _class_RID:

RID
===

A handle for a :ref:`Resource<class_Resource>`'s unique identifier.

.. rst-class:: classref-introduction-group

Descripción
----------------------

The RID :ref:`Variant<class_Variant>` type is used to access a low-level resource by its unique ID. RIDs are opaque, which means they do not grant access to the resource by themselves. They are used by the low-level server classes, such as :ref:`DisplayServer<class_DisplayServer>`, :ref:`RenderingServer<class_RenderingServer>`, :ref:`TextServer<class_TextServer>`, etc.

A low-level resource may correspond to a high-level :ref:`Resource<class_Resource>`, such as :ref:`Texture<class_Texture>` or :ref:`Mesh<class_Mesh>`.

\ **Note:** RIDs are only useful during the current session. It won't correspond to a similar resource if sent over a network, or loaded from a file at a later time.

\ **Note:** In a boolean context, an RID will evaluate to ``false`` if it has the invalid ID ``0``. Otherwise, an RID will always evaluate to ``true``. This is equivalent to calling :ref:`is_valid()<class_RID_method_is_valid>`.

.. note::

	Hay diferencias notables cuando usa esta API con C#. Véase :ref:`doc_c_sharp_differences` para más información.

.. rst-class:: classref-reftable-group

Constructores
--------------------------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`RID<class_RID_constructor_RID>`\ (\ )                               |
   +-----------------------+---------------------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`RID<class_RID_constructor_RID>`\ (\ from\: :ref:`RID<class_RID>`\ ) |
   +-----------------------+---------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`get_id<class_RID_method_get_id>`\ (\ ) |const|     |
   +-------------------------+----------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_valid<class_RID_method_is_valid>`\ (\ ) |const| |
   +-------------------------+----------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operadores
--------------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_RID_operator_neq_RID>`\ (\ right\: :ref:`RID<class_RID>`\ )  |
   +-------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator \<<class_RID_operator_lt_RID>`\ (\ right\: :ref:`RID<class_RID>`\ )   |
   +-------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator \<=<class_RID_operator_lte_RID>`\ (\ right\: :ref:`RID<class_RID>`\ ) |
   +-------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_RID_operator_eq_RID>`\ (\ right\: :ref:`RID<class_RID>`\ )   |
   +-------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ><class_RID_operator_gt_RID>`\ (\ right\: :ref:`RID<class_RID>`\ )    |
   +-------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator >=<class_RID_operator_gte_RID>`\ (\ right\: :ref:`RID<class_RID>`\ )  |
   +-------------------------+--------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Constructores
------------------------------------------------------------

.. _class_RID_constructor_RID:

.. rst-class:: classref-constructor

:ref:`RID<class_RID>` **RID**\ (\ ) :ref:`🔗<class_RID_constructor_RID>`

Construye un **RID** vacío con el ID inválido ``0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`RID<class_RID>` **RID**\ (\ from\: :ref:`RID<class_RID>`\ )

Construye un **RID** como copia del **RID** dado.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_RID_method_get_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_id**\ (\ ) |const| :ref:`🔗<class_RID_method_get_id>`

Devuelve el ID del recurso de bajo nivel al que se hace referencia.

.. rst-class:: classref-item-separator

----

.. _class_RID_method_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid**\ (\ ) |const| :ref:`🔗<class_RID_method_is_valid>`

Devuelve ``true`` si el **RID** no es ``0``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Operadores
------------------------------------------------------

.. _class_RID_operator_neq_RID:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RID_operator_neq_RID>`

Devuelve ``true`` si los **RID** no son iguales.

.. rst-class:: classref-item-separator

----

.. _class_RID_operator_lt_RID:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RID_operator_lt_RID>`

Devuelve ``true`` si el ID del **RID** es menor que el ID de ``right``.

.. rst-class:: classref-item-separator

----

.. _class_RID_operator_lte_RID:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RID_operator_lte_RID>`

Devuelve ``true`` si el ID del **RID** es menor o igual que el ID de ``right``.

.. rst-class:: classref-item-separator

----

.. _class_RID_operator_eq_RID:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RID_operator_eq_RID>`

Devuelve ``true`` si ambos **RID** son iguales, lo que significa que ambos se refieren al mismo recurso de bajo nivel.

.. rst-class:: classref-item-separator

----

.. _class_RID_operator_gt_RID:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RID_operator_gt_RID>`

Devuelve ``true`` si el ID del **RID** es mayor que el ID de ``right``.

.. rst-class:: classref-item-separator

----

.. _class_RID_operator_gte_RID:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RID_operator_gte_RID>`

Devuelve ``true`` si el ID del **RID** es mayor o igual que el ID de ``right``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
