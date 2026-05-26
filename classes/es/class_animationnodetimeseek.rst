:github_url: hide

.. _class_AnimationNodeTimeSeek:

AnimationNodeTimeSeek
=====================

**Hereda:** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un nodo de animación de búsqueda de tiempo utilizado en :ref:`AnimationTree<class_AnimationTree>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Este nodo de animación puede ser utilizado para generar un comando de búsqueda en cualquier subelemento de la grafica de animación. Utilizable para reproducir un :ref:`Animation<class_Animation>` desde el inicio o una posición especifica de la repetición dentro de :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

Despues de configurar el tiempo y cambiar la reproducción de la animación, el tiempo que tarda el nodo de búsqueda automaticamente en entrar en modo de reposo en el siguiente cuadro de proceso por defecto es ``seek_request``\ value to ``-1.0``\ 


.. tabs::

 .. code-tab:: gdscript

    #Reproducir animación hija desde el inicio.
    animation_tree.set("parameters/TimeSeek/seek_request",0.0)
    #Sintaxis alternativa(Mismo resultado al de arriba).
    animation_tree.set["parameters/TimeSeek/seek_request"] = 0.0

    #Reproducir animación hija a partir del segundo 12.
    animation_tree.set("parameters/TimeSeek/seek_request",12.0)
    #Sintaxis alternativa(Mismo resultado al de arriba).
    animation_tree.set["parameters/TimeSeek/seek_request"] = 12.0

 .. code-tab:: csharp

    //Reproducir animación hija desde el inicio.
    animation_tree.set("parameters/TimeSeek/seek_request",0.0)

    //Reproducir animación hija a partir del segundo 12.
    animation_tree.set("parameters/TimeSeek/seek_request",12.0)



.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usando AnimationTree <../tutorials/animation/animation_tree>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`explicit_elapse<class_AnimationNodeTimeSeek_property_explicit_elapse>` | ``true`` |
   +-------------------------+------------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_AnimationNodeTimeSeek_property_explicit_elapse:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **explicit_elapse** = ``true`` :ref:`🔗<class_AnimationNodeTimeSeek_property_explicit_elapse>`

.. rst-class:: classref-property-setget

- |void| **set_explicit_elapse**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_explicit_elapse**\ (\ )

Si es ``true``, se ejecutan algunos procesos para manejar las claves entre búsquedas, como el cálculo del movimiento de raíz y la búsqueda de la clave discreta más cercana.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
