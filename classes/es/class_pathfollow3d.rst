:github_url: hide

.. _class_PathFollow3D:

PathFollow3D
============

**Hereda:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una muestra de puntos para un :ref:`Path3D<class_Path3D>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Este nodo toma su padre :ref:`Path3D<class_Path3D>`, y devuelve las coordenadas de un punto dentro de él, dada una distancia desde el primer vértice.

Es útil para hacer que otros nodos sigan una ruta, sin codificar el patrón de movimiento. Para ello, los nodos deben ser hijos de este nodo. Los nodos descendientes se moverán en consecuencia al establecer el :ref:`progress<class_PathFollow3D_property_progress>` en este nodo.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                             | :ref:`cubic_interp<class_PathFollow3D_property_cubic_interp>`       | ``true``  |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                           | :ref:`h_offset<class_PathFollow3D_property_h_offset>`               | ``0.0``   |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                             | :ref:`loop<class_PathFollow3D_property_loop>`                       | ``true``  |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                           | :ref:`progress<class_PathFollow3D_property_progress>`               | ``0.0``   |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                           | :ref:`progress_ratio<class_PathFollow3D_property_progress_ratio>`   | ``0.0``   |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`RotationMode<enum_PathFollow3D_RotationMode>` | :ref:`rotation_mode<class_PathFollow3D_property_rotation_mode>`     | ``3``     |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                             | :ref:`tilt_enabled<class_PathFollow3D_property_tilt_enabled>`       | ``true``  |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                             | :ref:`use_model_front<class_PathFollow3D_property_use_model_front>` | ``false`` |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                           | :ref:`v_offset<class_PathFollow3D_property_v_offset>`               | ``0.0``   |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`correct_posture<class_PathFollow3D_method_correct_posture>`\ (\ transform\: :ref:`Transform3D<class_Transform3D>`, rotation_mode\: :ref:`RotationMode<enum_PathFollow3D_RotationMode>`\ ) |static| |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_PathFollow3D_RotationMode:

.. rst-class:: classref-enumeration

enum **RotationMode**: :ref:`🔗<enum_PathFollow3D_RotationMode>`

.. _class_PathFollow3D_constant_ROTATION_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_PathFollow3D_RotationMode>` **ROTATION_NONE** = ``0``

Prohíbe que PathFollow3D rote.

.. _class_PathFollow3D_constant_ROTATION_Y:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_PathFollow3D_RotationMode>` **ROTATION_Y** = ``1``

Permite que PathFollow3D rote sólo en el eje Y.

.. _class_PathFollow3D_constant_ROTATION_XY:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_PathFollow3D_RotationMode>` **ROTATION_XY** = ``2``

Permite que PathFollow3D rote en los ejes X e Y.

.. _class_PathFollow3D_constant_ROTATION_XYZ:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_PathFollow3D_RotationMode>` **ROTATION_XYZ** = ``3``

Permite que PathFollow3D rote en cualquier eje.

.. _class_PathFollow3D_constant_ROTATION_ORIENTED:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_PathFollow3D_RotationMode>` **ROTATION_ORIENTED** = ``4``

Utiliza la información del vector ascendente en una :ref:`Curve3D<class_Curve3D>` para reforzar la orientación. Este modo de rotación requiere que la propiedad :ref:`Curve3D.up_vector_enabled<class_Curve3D_property_up_vector_enabled>` de :ref:`Path3D<class_Path3D>` se establezca como ``true``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_PathFollow3D_property_cubic_interp:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cubic_interp** = ``true`` :ref:`🔗<class_PathFollow3D_property_cubic_interp>`

.. rst-class:: classref-property-setget

- |void| **set_cubic_interpolation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_cubic_interpolation**\ (\ )

Si es ``true``, la posición entre dos puntos cacheados se interpola cúbicamente, y linealmente en caso contrario.

Los puntos a lo largo de la :ref:`Curve3D<class_Curve3D>` del :ref:`Path3D<class_Path3D>` se precalculan antes de su uso, para cálculos más rápidos. El punto en el desplazamiento solicitado se calcula entonces interpolando entre dos puntos cacheados adyacentes. Esto puede presentar un problema si la curva hace giros bruscos, ya que los puntos cacheados pueden no seguir la curva lo suficientemente cerca.

Hay dos respuestas a este problema: o bien aumentar el número de puntos cacheados y aumentar el consumo de memoria, o bien hacer una interpolación cúbica entre dos puntos a costa de cálculos (ligeramente) más lentos.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_h_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **h_offset** = ``0.0`` :ref:`🔗<class_PathFollow3D_property_h_offset>`

.. rst-class:: classref-property-setget

- |void| **set_h_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_h_offset**\ (\ )

El nodo está desplazado a lo largo de la curva.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``true`` :ref:`🔗<class_PathFollow3D_property_loop>`

.. rst-class:: classref-property-setget

- |void| **set_loop**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_loop**\ (\ )

Si es ``true``, cualquier desplazamiento fuera de la longitud del camino se envolverá, en lugar de detenerse en los extremos. Úsalo para los caminos cíclicos.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_progress:

.. rst-class:: classref-property

:ref:`float<class_float>` **progress** = ``0.0`` :ref:`🔗<class_PathFollow3D_property_progress>`

.. rst-class:: classref-property-setget

- |void| **set_progress**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_progress**\ (\ )

La distancia desde el primer vértice, medida en unidades 3D a lo largo del camino. Cambiar este valor establece la posición de este nodo en un punto dentro del camino.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_progress_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **progress_ratio** = ``0.0`` :ref:`🔗<class_PathFollow3D_property_progress_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_progress_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_progress_ratio**\ (\ )

La distancia desde el primer vértice, considerando 0.0 como el primer vértice y 1.0 como el último. Esta es solo otra forma de expresar el progreso dentro de la ruta, ya que el progreso suministrado se multiplica internamente por la longitud de la ruta.

Se puede establecer u obtener solo si el **PathFollow3D** es hijo de un :ref:`Path3D<class_Path3D>` que forma parte del árbol de escenas, y que este :ref:`Path3D<class_Path3D>` tiene una :ref:`Curve3D<class_Curve3D>` con una longitud distinta de cero. De lo contrario, intentar establecer este campo imprimirá un error, y obtener este campo devolverá ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_rotation_mode:

.. rst-class:: classref-property

:ref:`RotationMode<enum_PathFollow3D_RotationMode>` **rotation_mode** = ``3`` :ref:`🔗<class_PathFollow3D_property_rotation_mode>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_mode**\ (\ value\: :ref:`RotationMode<enum_PathFollow3D_RotationMode>`\ )
- :ref:`RotationMode<enum_PathFollow3D_RotationMode>` **get_rotation_mode**\ (\ )

Permite o prohíbe la rotación en uno o más ejes, dependiendo de las constantes :ref:`RotationMode<enum_PathFollow3D_RotationMode>` que se utilicen.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_tilt_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **tilt_enabled** = ``true`` :ref:`🔗<class_PathFollow3D_property_tilt_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_tilt_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_tilt_enabled**\ (\ )

Si es ``true``, la propiedad de inclinación de :ref:`Curve3D<class_Curve3D>` surte efecto.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_use_model_front:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_model_front** = ``false`` :ref:`🔗<class_PathFollow3D_property_use_model_front>`

.. rst-class:: classref-property-setget

- |void| **set_use_model_front**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_model_front**\ (\ )

Si es ``true``, el nodo se mueve a lo largo del trayecto de viaje orientando el eje +Z como adelante. Véase también :ref:`Vector3.FORWARD<class_Vector3_constant_FORWARD>` y :ref:`Vector3.MODEL_FRONT<class_Vector3_constant_MODEL_FRONT>`.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_v_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **v_offset** = ``0.0`` :ref:`🔗<class_PathFollow3D_property_v_offset>`

.. rst-class:: classref-property-setget

- |void| **set_v_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_v_offset**\ (\ )

El nodo está desplazado perpendicularmente a la curva.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_PathFollow3D_method_correct_posture:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **correct_posture**\ (\ transform\: :ref:`Transform3D<class_Transform3D>`, rotation_mode\: :ref:`RotationMode<enum_PathFollow3D_RotationMode>`\ ) |static| :ref:`🔗<class_PathFollow3D_method_correct_posture>`

Corrige la ``transform``. ``rotation_mode`` especifica implícitamente cómo se calcula la postura (dirección hacia adelante, arriba y lateral).

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
