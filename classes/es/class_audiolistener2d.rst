:github_url: hide

.. meta::
	:keywords: sound

.. _class_AudioListener2D:

AudioListener2D
===============

**Hereda:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Sobrescribe los sonidos de localización que se escuchan.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una vez añadido al árbol de escena y activado mediante :ref:`make_current()<class_AudioListener2D_method_make_current>`, este nodo sobrescribirá la ubicación desde la que se escuchan los sonidos. Solo un **AudioListener2D** puede estar activo. El uso de :ref:`make_current()<class_AudioListener2D_method_make_current>` desactivará el **AudioListener2D** anterior.

Si no hay ningún **AudioListener2D** activo en el :ref:`Viewport<class_Viewport>` actual, se utilizará el centro de la pantalla como punto de audición para el audio. El **AudioListener2D** debe estar dentro del :ref:`SceneTree<class_SceneTree>` para funcionar.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------+
   | |void|                  | :ref:`clear_current<class_AudioListener2D_method_clear_current>`\ (\ )   |
   +-------------------------+--------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_current<class_AudioListener2D_method_is_current>`\ (\ ) |const| |
   +-------------------------+--------------------------------------------------------------------------+
   | |void|                  | :ref:`make_current<class_AudioListener2D_method_make_current>`\ (\ )     |
   +-------------------------+--------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AudioListener2D_method_clear_current:

.. rst-class:: classref-method

|void| **clear_current**\ (\ ) :ref:`🔗<class_AudioListener2D_method_clear_current>`

Desactiva **AudioListener2D**. Si no está configurado como actual, este método no tendrá efecto.

.. rst-class:: classref-item-separator

----

.. _class_AudioListener2D_method_is_current:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_current**\ (\ ) |const| :ref:`🔗<class_AudioListener2D_method_is_current>`

Devuelve ``true`` si este **AudioListener2D** está actualmente activo.

.. rst-class:: classref-item-separator

----

.. _class_AudioListener2D_method_make_current:

.. rst-class:: classref-method

|void| **make_current**\ (\ ) :ref:`🔗<class_AudioListener2D_method_make_current>`

Activa **AudioListener2D**, estableciéndolo como punto de escucha de los sonidos. Si ya hay otro **AudioListener2D** activo, se deshabilitará.

Este método no tendrá efecto si **AudioListener2D** no se añade a :ref:`SceneTree<class_SceneTree>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
