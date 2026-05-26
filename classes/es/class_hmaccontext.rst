:github_url: hide

.. _class_HMACContext:

HMACContext
===========

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Se usa para crear un HMAC para un mensaje usando una clave.

.. rst-class:: classref-introduction-group

Descripción
----------------------

The HMACContext class is useful for advanced HMAC use cases, such as streaming the message as it supports creating the message over time rather than providing it all at once.


.. tabs::

 .. code-tab:: gdscript

    extends Node
    var ctx = HMACContext.new()

    func _ready():
        var key = "supersecret".to_utf8_buffer()
        var err = ctx.start(HashingContext.HASH_SHA256, key)
        assert(err == OK)
        var msg1 = "this is ".to_utf8_buffer()
        var msg2 = "super duper secret".to_utf8_buffer()
        err = ctx.update(msg1)
        assert(err == OK)
        err = ctx.update(msg2)
        assert(err == OK)
        var hmac = ctx.finish()
        print(hmac.hex_encode())

 .. code-tab:: csharp

    using Godot;
    using System.Diagnostics;

    public partial class MyNode : Node
    {
        private HmacContext _ctx = new HmacContext();

        public override void _Ready()
        {
            byte[] key = "supersecret".ToUtf8Buffer();
            Error err = _ctx.Start(HashingContext.HashType.Sha256, key);
            Debug.Assert(err == Error.Ok);
            byte[] msg1 = "this is ".ToUtf8Buffer();
            byte[] msg2 = "super duper secret".ToUtf8Buffer();
            err = _ctx.Update(msg1);
            Debug.Assert(err == Error.Ok);
            err = _ctx.Update(msg2);
            Debug.Assert(err == Error.Ok);
            byte[] hmac = _ctx.Finish();
            GD.Print(hmac.HexEncode());
        }
    }



.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`finish<class_HMACContext_method_finish>`\ (\ )                                                                                                               |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`         | :ref:`start<class_HMACContext_method_start>`\ (\ hash_type\: :ref:`HashType<enum_HashingContext_HashType>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`         | :ref:`update<class_HMACContext_method_update>`\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                         |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_HMACContext_method_finish:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **finish**\ (\ ) :ref:`🔗<class_HMACContext_method_finish>`

Devuelve el HMAC resultante. Si el HMAC falló, se devuelve un :ref:`PackedByteArray<class_PackedByteArray>` vacío.

.. rst-class:: classref-item-separator

----

.. _class_HMACContext_method_start:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start**\ (\ hash_type\: :ref:`HashType<enum_HashingContext_HashType>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_HMACContext_method_start>`

Inicializa el HMACContext. Este método no puede volver a llamarse en el mismo HMACContext hasta que se haya llamado a :ref:`finish()<class_HMACContext_method_finish>`.

.. rst-class:: classref-item-separator

----

.. _class_HMACContext_method_update:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **update**\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_HMACContext_method_update>`

Actualiza el mensaje a ser HMAC. Esto puede ser llamado múltiples veces antes de que se llame a :ref:`finish()<class_HMACContext_method_finish>` para añadir ``data`` al mensaje, pero no puede ser llamado hasta que se haya llamado a :ref:`start()<class_HMACContext_method_start>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
