:github_url: hide

.. _class_RichTextEffect:

RichTextEffect
==============

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un efecto personalizado para un :ref:`RichTextLabel<class_RichTextLabel>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un efecto personalizado para :ref:`RichTextLabel<class_RichTextLabel>`, que puede ser cargado en el inspector de :ref:`RichTextLabel<class_RichTextLabel>` o usando :ref:`RichTextLabel.install_effect()<class_RichTextLabel_method_install_effect>`.

\ **Nota:** Para que un **RichTextEffect** sea utilizable, una etiqueta BBCode debe ser definida como una variable de miembro llamada ``bbcode`` en el script.


.. tabs::

 .. code-tab:: gdscript

    # El RichTextEffect será utilizable así: `[example]Algún texto[/example]`
    var bbcode = "example"

 .. code-tab:: csharp

    // El RichTextEffect será utilizable así: `[example]Algún texto[/example]`
    string bbcode = "example";



\ **Nota:** Tan pronto como un :ref:`RichTextLabel<class_RichTextLabel>` contenga al menos un **RichTextEffect**, procesará continuamente el efecto a menos que el proyecto se pause. Esto puede afectar negativamente la duración de la batería.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`BBCode en RichTextLabel <../tutorials/ui/bbcode_in_richtextlabel>`

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_process_custom_fx<class_RichTextEffect_private_method__process_custom_fx>`\ (\ char_fx\: :ref:`CharFXTransform<class_CharFXTransform>`\ ) |virtual| |const| |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_RichTextEffect_private_method__process_custom_fx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_process_custom_fx**\ (\ char_fx\: :ref:`CharFXTransform<class_CharFXTransform>`\ ) |virtual| |const| :ref:`🔗<class_RichTextEffect_private_method__process_custom_fx>`

Sobrescribe este método para modificar las propiedades en ``char_fx``. El método debe devolver ``true`` si el carácter pudo ser transformado exitosamente. Si el método devuelve ``false``, se saltará la transformación para evitar mostrar texto dañado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
