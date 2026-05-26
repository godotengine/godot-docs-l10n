:github_url: hide

.. _class_AimModifier3D:

AimModifier3D
=============

**Hereda:** :ref:`BoneConstraint3D<class_BoneConstraint3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

El **AimModifier3D** gira un hueso para mirar un hueso de referencia.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta es una versión simple de :ref:`LookAtModifier3D<class_LookAtModifier3D>` que solo permite el acceso óseo a la referencia sin opciones avanzadas como la limitación del ángulo o la interpolación basada en el tiempo.

La función se ha simplificado, pero se implementa con un seguimiento suave sin Euler; véase :ref:`set_use_euler()<class_AimModifier3D_method_set_use_euler>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`setting_count<class_AimModifier3D_property_setting_count>` | ``0`` |
   +-----------------------+------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` | :ref:`get_forward_axis<class_AimModifier3D_method_get_forward_axis>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Axis<enum_Vector3_Axis>`                    | :ref:`get_primary_rotation_axis<class_AimModifier3D_method_get_primary_rotation_axis>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                 |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_relative<class_AimModifier3D_method_is_relative>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                             |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_using_euler<class_AimModifier3D_method_is_using_euler>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                       |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_using_secondary_rotation<class_AimModifier3D_method_is_using_secondary_rotation>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                             |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_forward_axis<class_AimModifier3D_method_set_forward_axis>`\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>`\ ) |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_primary_rotation_axis<class_AimModifier3D_method_set_primary_rotation_axis>`\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>`\ )  |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_relative<class_AimModifier3D_method_set_relative>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_use_euler<class_AimModifier3D_method_set_use_euler>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                              |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_use_secondary_rotation<class_AimModifier3D_method_set_use_secondary_rotation>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )    |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_AimModifier3D_property_setting_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_count** = ``0`` :ref:`🔗<class_AimModifier3D_property_setting_count>`

.. rst-class:: classref-property-setget

- |void| **set_setting_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_count**\ (\ )

El número de configuraciones en el modificador.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AimModifier3D_method_get_forward_axis:

.. rst-class:: classref-method

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **get_forward_axis**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AimModifier3D_method_get_forward_axis>`

Devuelve el eje delantero del hueso.

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_get_primary_rotation_axis:

.. rst-class:: classref-method

:ref:`Axis<enum_Vector3_Axis>` **get_primary_rotation_axis**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AimModifier3D_method_get_primary_rotation_axis>`

Devuelve el eje de la primera rotación. Solo se habilita si :ref:`is_using_euler()<class_AimModifier3D_method_is_using_euler>` es ``true``.

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_is_relative:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_relative**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AimModifier3D_method_is_relative>`

Devuelve ``true`` si la opción relativa está habilitada en la configuración en ``index``.

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_is_using_euler:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_using_euler**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AimModifier3D_method_is_using_euler>`

Devuelve ``true`` si proporciona rotación con el uso de Euler.

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_is_using_secondary_rotation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_using_secondary_rotation**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AimModifier3D_method_is_using_secondary_rotation>`

Devuelve ``true`` si proporciona rotación por dos ejes. Solo se habilita si :ref:`is_using_euler()<class_AimModifier3D_method_is_using_euler>` es ``true``.

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_set_forward_axis:

.. rst-class:: classref-method

|void| **set_forward_axis**\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>`\ ) :ref:`🔗<class_AimModifier3D_method_set_forward_axis>`

Establece el eje delantero del hueso.

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_set_primary_rotation_axis:

.. rst-class:: classref-method

|void| **set_primary_rotation_axis**\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>`\ ) :ref:`🔗<class_AimModifier3D_method_set_primary_rotation_axis>`

Establece el eje de la primera rotación. Solo se habilita si :ref:`is_using_euler()<class_AimModifier3D_method_is_using_euler>` es ``true``.

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_set_relative:

.. rst-class:: classref-method

|void| **set_relative**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AimModifier3D_method_set_relative>`

Establece la opción relativa en el ajuste en ``index`` a ``enabled``.

Si estableces ``enabled`` como ``true``, se aplica la rotación relativa a la pose.

Si estableces ``enabled`` como ``false``, se aplica la rotación relativa al resto. Implica reemplazar la pose actual con el resultado de **AimModifier3D**.

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_set_use_euler:

.. rst-class:: classref-method

|void| **set_use_euler**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AimModifier3D_method_set_use_euler>`

Si se establece ``enabled`` en ``true``, se proporciona rotación mediante Euler.

Si se establece ``enabled`` en ``false``, se proporciona rotación mediante la rotación por arco generada desde el vector del eje delantero y el vector hacia la referencia.

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_set_use_secondary_rotation:

.. rst-class:: classref-method

|void| **set_use_secondary_rotation**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AimModifier3D_method_set_use_secondary_rotation>`

Si establece ``enabled`` en ``true``, proporciona rotación por dos ejes. Solo se habilita si :ref:`is_using_euler()<class_AimModifier3D_method_is_using_euler>` es ``true``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
