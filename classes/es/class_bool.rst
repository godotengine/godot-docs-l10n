:github_url: hide

.. _class_bool:

bool
====

Un tipo booleano incorporado.

.. rst-class:: classref-introduction-group

Descripción
----------------------

El **bool** es un tipo :ref:`Variant<class_Variant>` integrado que solo puede almacenar uno de dos valores: ``true`` o ``false``. Puede imaginarlo como un interruptor que puede estar encendido o apagado, o como un dígito binario que puede ser 1 o 0.

Los booleanos pueden utilizarse directamente en ``if`` y otras sentencias condicionales:


.. tabs::

 .. code-tab:: gdscript

    var can_shoot = true
    if can_shoot:
        launch_bullet()

 .. code-tab:: csharp

    bool canShoot = true;
    if (canShoot)
    {
        LaunchBullet();
    }



Todos los operadores de comparación devuelven booleanos (``==``, ``>``, ``<=``, etc.). Como tal, no es necesario comparar los booleanos entre sí. No es necesario añadir ``== true`` o ``== false``.

Los booleanos pueden combinarse con los operadores lógicos ``and``, ``or``, ``not`` para crear condiciones complejas:


.. tabs::

 .. code-tab:: gdscript

    if bullets > 0 and not is_reloading():
        launch_bullet()

    if bullets == 0 or is_reloading():
        play_clack_sound()

 .. code-tab:: csharp

    if (bullets > 0 && !IsReloading())
    {
        LaunchBullet();
    }

    if (bullets == 0 || IsReloading())
    {
        PlayClackSound();
    }



\ **Nota:** En los lenguajes de programación modernos, los operadores lógicos se evalúan en orden. Todas las condiciones restantes se omiten si su resultado no tuviera efecto en el valor final. Este concepto se conoce como `evaluación de cortocircuito <https://es.wikipedia.org/wiki/Evaluaci%C3%B3n_de_cortocircuito>`__ y puede ser útil para evitar la evaluación de condiciones costosas en algunos casos críticos para el rendimiento.

\ **Nota:** Por convención, los métodos y propiedades integrados que devuelven booleanos suelen definirse como preguntas de sí o no, adjetivos simples o similares (:ref:`String.is_empty()<class_String_method_is_empty>`, :ref:`Node.can_process()<class_Node_method_can_process>`, :ref:`Camera2D.enabled<class_Camera2D_property_enabled>`, etc.).

.. rst-class:: classref-reftable-group

Constructores
--------------------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`bool<class_bool_constructor_bool>`\ (\ )                                   |
   +-------------------------+----------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`bool<class_bool_constructor_bool>`\ (\ from\: :ref:`bool<class_bool>`\ )   |
   +-------------------------+----------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`bool<class_bool_constructor_bool>`\ (\ from\: :ref:`float<class_float>`\ ) |
   +-------------------------+----------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`bool<class_bool_constructor_bool>`\ (\ from\: :ref:`int<class_int>`\ )     |
   +-------------------------+----------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operadores
--------------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_bool_operator_neq_bool>`\ (\ right\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator \<<class_bool_operator_lt_bool>`\ (\ right\: :ref:`bool<class_bool>`\ )  |
   +-------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_bool_operator_eq_bool>`\ (\ right\: :ref:`bool<class_bool>`\ )  |
   +-------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ><class_bool_operator_gt_bool>`\ (\ right\: :ref:`bool<class_bool>`\ )   |
   +-------------------------+-----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Constructores
------------------------------------------------------------

.. _class_bool_constructor_bool:

.. rst-class:: classref-constructor

:ref:`bool<class_bool>` **bool**\ (\ ) :ref:`🔗<class_bool_constructor_bool>`

Construye un **bool** establecido en ``false``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`bool<class_bool>` **bool**\ (\ from\: :ref:`bool<class_bool>`\ )

Construye un **bool** como una copia del **bool** dado.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`bool<class_bool>` **bool**\ (\ from\: :ref:`float<class_float>`\ )

Convierte un valor :ref:`float<class_float>` a un valor booleano. Devuelve ``false`` si ``from`` es igual a ``0.0`` (incluyendo ``-0.0``), y ``true`` para todos los demás valores (incluyendo :ref:`@GDScript.INF<class_@GDScript_constant_INF>` y :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>`).

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`bool<class_bool>` **bool**\ (\ from\: :ref:`int<class_int>`\ )

Convierte un valor :ref:`int<class_int>` a un valor booleano. Devuelve ``false`` si ``from`` es igual a ``0``, y ``true`` para todos los demás valores.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Operadores
------------------------------------------------------

.. _class_bool_operator_neq_bool:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_bool_operator_neq_bool>`

Devuelve ``true`` si los dos booleanos no son iguales. Es decir, uno es ``true`` y el otro es ``false``. Esta operación puede verse como un XOR lógico.

.. rst-class:: classref-item-separator

----

.. _class_bool_operator_lt_bool:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_bool_operator_lt_bool>`

Devuelve ``true`` si el operando izquierdo es ``false`` y el operando derecho es ``true``.

.. rst-class:: classref-item-separator

----

.. _class_bool_operator_eq_bool:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_bool_operator_eq_bool>`

Devuelve ``true`` si los dos booleanos son iguales. Es decir, ambos son ``true`` o ambos son ``false``. Esta operación puede verse como un EQ o XNOR lógico.

.. rst-class:: classref-item-separator

----

.. _class_bool_operator_gt_bool:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_bool_operator_gt_bool>`

Devuelve ``true`` si el operando izquierdo es ``true`` y el operando derecho es ``false``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
