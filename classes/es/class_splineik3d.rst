:github_url: hide

.. _class_SplineIK3D:

SplineIK3D
==========

**Hereda:** :ref:`ChainIK3D<class_ChainIK3D>` **<** :ref:`IKModifier3D<class_IKModifier3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

A :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` for aligning bones along a :ref:`Path3D<class_Path3D>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` para alinear huesos a lo largo de una :ref:`Path3D<class_Path3D>`. La suavidad del ajuste depende de :ref:`Curve3D.bake_interval<class_Curve3D_property_bake_interval>`.

Si quieres que la :ref:`Path3D<class_Path3D>` se adjunte a un hueso específico, se recomienda colocar un :ref:`ModifierBoneTarget3D<class_ModifierBoneTarget3D>` antes del **SplineIK3D** en la lista de :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` (hijos del :ref:`Skeleton3D<class_Skeleton3D>`), y luego colocar una :ref:`Path3D<class_Path3D>` como hijo del :ref:`ModifierBoneTarget3D<class_ModifierBoneTarget3D>`.

La torsión del hueso se determina basándose en el :ref:`Curve3D.get_point_tilt()<class_Curve3D_method_get_point_tilt>`.

Si la articulación del hueso raíz y el punto de inicio de la :ref:`Curve3D<class_Curve3D>` están separados, asume que hay un segmento de línea recta entre ellos. Esto significa que el vector que apunta hacia el punto de inicio de la :ref:`Curve3D<class_Curve3D>` tiene prioridad sobre el punto de intersección más corto a lo largo de la :ref:`Curve3D<class_Curve3D>`.

Si la articulación del hueso final excede la longitud de la ruta, se dobla lo más cerca posible del punto final de la :ref:`Curve3D<class_Curve3D>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`setting_count<class_SplineIK3D_property_setting_count>` | ``0`` |
   +-----------------------+---------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Descripciones de Propiedades
--------------------------------------------------------

.. _class_SplineIK3D_property_setting_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_count** = ``0`` :ref:`🔗<class_SplineIK3D_property_setting_count>`

.. rst-class:: classref-property-setget

- |void| **set_setting_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_count**\ (\ )

El número de configuraciones.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_SplineIK3D_method_get_path_3d:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_path_3d**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SplineIK3D_method_get_path_3d>`

Devuelve la ruta de nodo de la :ref:`Path3D<class_Path3D>` que describe la trayectoria.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_get_tilt_fade_in:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tilt_fade_in**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SplineIK3D_method_get_tilt_fade_in>`

Devuelve el método de interpolación de inclinación usado entre el hueso raíz y el punto de inicio de la :ref:`Curve3D<class_Curve3D>` cuando están separados. Véase también :ref:`set_tilt_fade_in()<class_SplineIK3D_method_set_tilt_fade_in>`.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_get_tilt_fade_out:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tilt_fade_out**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SplineIK3D_method_get_tilt_fade_out>`

Devuelve el método de interpolación de inclinación usado entre el hueso final y el punto final de la :ref:`Curve3D<class_Curve3D>` cuando están separados. Véase también :ref:`set_tilt_fade_out()<class_SplineIK3D_method_set_tilt_fade_out>`.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_is_tilt_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tilt_enabled**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SplineIK3D_method_is_tilt_enabled>`

Devuelve si la propiedad de inclinación de la :ref:`Curve3D<class_Curve3D>` afecta la torsión del hueso.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_set_path_3d:

.. rst-class:: classref-method

|void| **set_path_3d**\ (\ index\: :ref:`int<class_int>`, path_3d\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SplineIK3D_method_set_path_3d>`

Establece la ruta de nodo de la :ref:`Path3D<class_Path3D>` que describe la trayectoria.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_set_tilt_enabled:

.. rst-class:: classref-method

|void| **set_tilt_enabled**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SplineIK3D_method_set_tilt_enabled>`

Establece si la propiedad de inclinación de la :ref:`Curve3D<class_Curve3D>` debe afectar la torsión del hueso.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_set_tilt_fade_in:

.. rst-class:: classref-method

|void| **set_tilt_fade_in**\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SplineIK3D_method_set_tilt_fade_in>`

Si ``size`` es mayor que ``0``, la inclinación se interpola entre ``size`` huesos iniciales desde el punto inicial de la :ref:`Curve3D<class_Curve3D>` cuando están separados.

Si ``size`` es igual a ``0``, las inclinaciones entre la cabeza del hueso raíz y el punto inicial de la :ref:`Curve3D<class_Curve3D>` se unifican con la inclinación del punto inicial de la :ref:`Curve3D<class_Curve3D>`.

Si ``size`` es menor que ``0``, las inclinaciones entre el hueso raíz y el punto inicial de la :ref:`Curve3D<class_Curve3D>` son ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_set_tilt_fade_out:

.. rst-class:: classref-method

|void| **set_tilt_fade_out**\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SplineIK3D_method_set_tilt_fade_out>`

If ``size`` is greater than ``0``, the tilt is interpolated between ``size`` end bones from the end point of the :ref:`Curve3D<class_Curve3D>` when they are apart.

If ``size`` is equal ``0``, the tilts between the end bone tail and the end point of the :ref:`Curve3D<class_Curve3D>` are unified with a tilt of the end point of the :ref:`Curve3D<class_Curve3D>`.

If ``size`` is less than ``0``, the tilts between the end bone and the end point of the :ref:`Curve3D<class_Curve3D>` are ``0.0``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
