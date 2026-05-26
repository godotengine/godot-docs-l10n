:github_url: hide

.. meta::
	:keywords: switch, toggle

.. _class_CheckButton:

CheckButton
===========

**Hereda:** :ref:`Button<class_Button>` **<** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un botón que representa una elección binaria.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**CheckButton** es un botón de alternancia mostrado como un campo de verificación. Es similar a :ref:`CheckBox<class_CheckBox>` en funcionalidad, pero tiene una apariencia diferente. Para seguir los patrones de UX establecidos, se recomienda usar **CheckButton** cuando su alternancia tiene un efecto **inmediato** en algo. Por ejemplo, puede usarse cuando al presionarlo se muestran u ocultan configuraciones avanzadas, sin pedir al usuario que confirme esta acción.

Véase también :ref:`BaseButton<class_BaseButton>`, que contiene las propiedades y métodos comunes asociados con este nodo.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+-------------+-------------------------------------------------------------------------------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` | alignment   | ``0`` (overrides :ref:`Button<class_Button_property_alignment>`)              |
   +-------------------------------------------------------------------+-------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | toggle_mode | ``true`` (overrides :ref:`BaseButton<class_BaseButton_property_toggle_mode>`) |
   +-------------------------------------------------------------------+-------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Propiedades del Tema
----------------------------------------

.. table::
   :widths: auto

   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`button_checked_color<class_CheckButton_theme_color_button_checked_color>`              | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`button_unchecked_color<class_CheckButton_theme_color_button_unchecked_color>`          | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`check_v_offset<class_CheckButton_theme_constant_check_v_offset>`                       | ``0``                 |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`checked<class_CheckButton_theme_icon_checked>`                                         |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`checked_disabled<class_CheckButton_theme_icon_checked_disabled>`                       |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`checked_disabled_mirrored<class_CheckButton_theme_icon_checked_disabled_mirrored>`     |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`checked_mirrored<class_CheckButton_theme_icon_checked_mirrored>`                       |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`unchecked<class_CheckButton_theme_icon_unchecked>`                                     |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`unchecked_disabled<class_CheckButton_theme_icon_unchecked_disabled>`                   |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`unchecked_disabled_mirrored<class_CheckButton_theme_icon_unchecked_disabled_mirrored>` |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`unchecked_mirrored<class_CheckButton_theme_icon_unchecked_mirrored>`                   |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de las propiedades del tema
----------------------------------------------------------------------------------

.. _class_CheckButton_theme_color_button_checked_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **button_checked_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_CheckButton_theme_color_button_checked_color>`

El color del icono de marca cuando la casilla está presionada.

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_color_button_unchecked_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **button_unchecked_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_CheckButton_theme_color_button_unchecked_color>`

El color del icono sin marcar cuando la casilla de verificación no está presionada.

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_constant_check_v_offset:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **check_v_offset** = ``0`` :ref:`🔗<class_CheckButton_theme_constant_check_v_offset>`

El desplazamiento vertical que se utiliza al renderizar los iconos de conmutación (en píxeles).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_checked:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **checked** :ref:`🔗<class_CheckButton_theme_icon_checked>`

El icono que se muestra cuando el **CheckButton** está marcado (para diseños de izquierda a derecha).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_checked_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **checked_disabled** :ref:`🔗<class_CheckButton_theme_icon_checked_disabled>`

El icono que se muestra cuando el **CheckButton** está marcado y desactivado (para diseños de izquierda a derecha).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_checked_disabled_mirrored:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **checked_disabled_mirrored** :ref:`🔗<class_CheckButton_theme_icon_checked_disabled_mirrored>`

El icono que se muestra cuando el **CheckButton** está marcado y desactivado (para diseños de derecha a izquierda).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_checked_mirrored:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **checked_mirrored** :ref:`🔗<class_CheckButton_theme_icon_checked_mirrored>`

El icono que se muestra cuando el **CheckButton** está marcado (para diseños de derecha a izquierda).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_unchecked:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **unchecked** :ref:`🔗<class_CheckButton_theme_icon_unchecked>`

El icono que se muestra cuando el **CheckButton** está desmarcado (para diseños de izquierda a derecha).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_unchecked_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **unchecked_disabled** :ref:`🔗<class_CheckButton_theme_icon_unchecked_disabled>`

El icono que se muestra cuando el **CheckButton** está desmarcado y desactivado (para diseños de izquierda a derecha).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_unchecked_disabled_mirrored:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **unchecked_disabled_mirrored** :ref:`🔗<class_CheckButton_theme_icon_unchecked_disabled_mirrored>`

El icono que se muestra cuando el **CheckButton** está desmarcado y desactivado (para diseños de derecha a izquierda).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_unchecked_mirrored:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **unchecked_mirrored** :ref:`🔗<class_CheckButton_theme_icon_unchecked_mirrored>`

El icono que se muestra cuando el **CheckButton** está desmarcado (para diseños de derecha a izquierda).

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
