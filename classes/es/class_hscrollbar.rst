:github_url: hide

.. _class_HScrollBar:

HScrollBar
==========

**Hereda:** :ref:`ScrollBar<class_ScrollBar>` **<** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una barra de desplazamiento horizontal que va de izquierda (mín) a derecha (máx).

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una barra de desplazamiento horizontal, utilizada típicamente para navegar por contenido que se extiende más allá del ancho visible de un control. Es un control basado en :ref:`Range<class_Range>` y va de izquierda (mín) a derecha (máx).

.. rst-class:: classref-reftable-group

Propiedades del Tema
----------------------------------------

.. table::
   :widths: auto

   +-----------------------+-----------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`padding_bottom<class_HScrollBar_theme_constant_padding_bottom>` | ``0`` |
   +-----------------------+-----------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`padding_top<class_HScrollBar_theme_constant_padding_top>`       | ``0`` |
   +-----------------------+-----------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de las propiedades del tema
----------------------------------------------------------------------------------

.. _class_HScrollBar_theme_constant_padding_bottom:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **padding_bottom** = ``0`` :ref:`🔗<class_HScrollBar_theme_constant_padding_bottom>`

Relleno entre la parte inferior del elemento :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` y el :ref:`ScrollBar.grabber<class_ScrollBar_theme_style_grabber>`.

\ **Nota:** Para aplicar relleno horizontal, modifica los márgenes de contenido izquierdo/derecho de :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_HScrollBar_theme_constant_padding_top:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **padding_top** = ``0`` :ref:`🔗<class_HScrollBar_theme_constant_padding_top>`

Relleno entre la parte superior del elemento :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` y el :ref:`ScrollBar.grabber<class_ScrollBar_theme_style_grabber>`.

\ **Nota:** Para aplicar relleno horizontal, modifica los márgenes de contenido izquierdo/derecho de :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` en su lugar.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
