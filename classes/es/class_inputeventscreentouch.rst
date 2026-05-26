:github_url: hide

.. _class_InputEventScreenTouch:

InputEventScreenTouch
=====================

**Hereda:** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Representa un evento de toque de pantalla.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Almacena información de presión/liberación multitáctil. Soporta presión táctil, liberación táctil y :ref:`index<class_InputEventScreenTouch_property_index>` para el conteo y el orden multitáctil.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usando InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`canceled<class_InputEventScreenTouch_property_canceled>`     | ``false``         |
   +-------------------------------+--------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`double_tap<class_InputEventScreenTouch_property_double_tap>` | ``false``         |
   +-------------------------------+--------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`         | :ref:`index<class_InputEventScreenTouch_property_index>`           | ``0``             |
   +-------------------------------+--------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`position<class_InputEventScreenTouch_property_position>`     | ``Vector2(0, 0)`` |
   +-------------------------------+--------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`pressed<class_InputEventScreenTouch_property_pressed>`       | ``false``         |
   +-------------------------------+--------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_InputEventScreenTouch_property_canceled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **canceled** = ``false`` :ref:`🔗<class_InputEventScreenTouch_property_canceled>`

.. rst-class:: classref-property-setget

- |void| **set_canceled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_canceled**\ (\ )

Si es ``true``, el evento táctil ha sido cancelado.

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenTouch_property_double_tap:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **double_tap** = ``false`` :ref:`🔗<class_InputEventScreenTouch_property_double_tap>`

.. rst-class:: classref-property-setget

- |void| **set_double_tap**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_double_tap**\ (\ )

Si es ``true``, el estado del toque es un doble toque.

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenTouch_property_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **index** = ``0`` :ref:`🔗<class_InputEventScreenTouch_property_index>`

.. rst-class:: classref-property-setget

- |void| **set_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_index**\ (\ )

El índice táctil en el caso de un evento multitáctil. Un índice = un dedo.

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenTouch_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventScreenTouch_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_position**\ (\ )

La posición del toque en la ventanilla donde se encuentra el nodo, usando el sistema de coordenadas de esta ventanilla.

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenTouch_property_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pressed** = ``false`` :ref:`🔗<class_InputEventScreenTouch_property_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pressed**\ (\ )

Si es ``true``, el estado del toque se pulsa. Si es ``false``, el estado del toque se libera.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
