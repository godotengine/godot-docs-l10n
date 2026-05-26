:github_url: hide

.. _class_AESContext:

AESContext
==========

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Proporciona acceso al cifrado/descifrado AES de datos sin procesar.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta clase contiene la información de contexto necesaria para las operaciones de cifrado y descifrado con AES (Estándar de Cifrado Avanzado). Se admiten los modos AES-ECB y AES-CBC.


.. tabs::

 .. code-tab:: gdscript

    extends Node

    var aes = AESContext.new()

    func _ready():
        var key = "¡¡¡Mi clave secreta!!!" # La clave debe tener 16 o 32 bytes.
        var data = "¡¡¡Mi clave secreta!!!" # El tamaño de los datos debe ser múltiplo de 16 bytes, y aplicar relleno si es necesario.
        # Encrypt ECB
        aes.start(AESContext.MODE_ECB_ENCRYPT, key.to_utf8_buffer())
        var encrypted = aes.update(data.to_utf8_buffer())
        aes.finish()
        # Decrypt ECB
        aes.start(AESContext.MODE_ECB_DECRYPT, key.to_utf8_buffer())
        var decrypted = aes.update(encrypted)
        aes.finish()
        # Check ECB
        assert(decrypted == data.to_utf8_buffer())

        var iv = "¡¡¡Mi IV secreto!!!" # El IV debe tener exactamente 16 bytes.
        # Encrypt CBC
        aes.start(AESContext.MODE_CBC_ENCRYPT, key.to_utf8_buffer(), iv.to_utf8_buffer())
        encrypted = aes.update(data.to_utf8_buffer())
        aes.finish()
        # Decrypt CBC
        aes.start(AESContext.MODE_CBC_DECRYPT, key.to_utf8_buffer(), iv.to_utf8_buffer())
        decrypted = aes.update(encrypted)
        aes.finish()
        # Check CBC
        assert(decrypted == data.to_utf8_buffer())

 .. code-tab:: csharp

    using Godot;
    using System.Diagnostics;

    public partial class MyNode : Node
    {
        private AesContext _aes = new AesContext();

        public override void _Ready()
        {
            string key = "¡¡¡Mi clave secreta!!!"; // La clave debe tener 16 o 32 bytes.
            string data = "¡¡Mi clave secreta!!"; // El tamaño de los datos debe ser múltiplo de 16 bytes, y aplicar relleno si es necesario.
            // Encrypt ECB
            _aes.Start(AesContext.Mode.EcbEncrypt, key.ToUtf8Buffer());
            byte[] encrypted = _aes.Update(data.ToUtf8Buffer());
            _aes.Finish();
            // Decrypt ECB
            _aes.Start(AesContext.Mode.EcbDecrypt, key.ToUtf8Buffer());
            byte[] decrypted = _aes.Update(encrypted);
            _aes.Finish();
            // Check ECB
            Debug.Assert(decrypted == data.ToUtf8Buffer());

            string iv = "¡¡¡¡Mi IV secreto!!!!"; // El IV debe tener exactamente 16 bytes.
            // Encrypt CBC
            _aes.Start(AesContext.Mode.EcbEncrypt, key.ToUtf8Buffer(), iv.ToUtf8Buffer());
            encrypted = _aes.Update(data.ToUtf8Buffer());
            _aes.Finish();
            // Decrypt CBC
            _aes.Start(AesContext.Mode.EcbDecrypt, key.ToUtf8Buffer(), iv.ToUtf8Buffer());
            decrypted = _aes.Update(encrypted);
            _aes.Finish();
            // Check CBC
            Debug.Assert(decrypted == data.ToUtf8Buffer());
        }
    }



.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`finish<class_AESContext_method_finish>`\ (\ )                                                                                                                                                                      |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`get_iv_state<class_AESContext_method_get_iv_state>`\ (\ )                                                                                                                                                          |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`         | :ref:`start<class_AESContext_method_start>`\ (\ mode\: :ref:`Mode<enum_AESContext_Mode>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`, iv\: :ref:`PackedByteArray<class_PackedByteArray>` = PackedByteArray()\ ) |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`update<class_AESContext_method_update>`\ (\ src\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                                 |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_AESContext_Mode:

.. rst-class:: classref-enumeration

enum **Mode**: :ref:`🔗<enum_AESContext_Mode>`

.. _class_AESContext_constant_MODE_ECB_ENCRYPT:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AESContext_Mode>` **MODE_ECB_ENCRYPT** = ``0``

Modo de cifrado ECB (Electronic Codebook) de AES.

.. _class_AESContext_constant_MODE_ECB_DECRYPT:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AESContext_Mode>` **MODE_ECB_DECRYPT** = ``1``

Modo de desencripción AES electronic codebook(ECB).

.. _class_AESContext_constant_MODE_CBC_ENCRYPT:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AESContext_Mode>` **MODE_CBC_ENCRYPT** = ``2``

Modo de cifrado AES en encadenamiento de bloques (CBC).

.. _class_AESContext_constant_MODE_CBC_DECRYPT:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AESContext_Mode>` **MODE_CBC_DECRYPT** = ``3``

Modo de descifrado AES en encadenamiento de bloques (CBC).

.. _class_AESContext_constant_MODE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AESContext_Mode>` **MODE_MAX** = ``4``

Valor máximo para el modo enum.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AESContext_method_finish:

.. rst-class:: classref-method

|void| **finish**\ (\ ) :ref:`🔗<class_AESContext_method_finish>`

Cerrar este contexto AES para que pueda ser iniciado de nuevo. Véase :ref:`start()<class_AESContext_method_start>`.

.. rst-class:: classref-item-separator

----

.. _class_AESContext_method_get_iv_state:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **get_iv_state**\ (\ ) :ref:`🔗<class_AESContext_method_get_iv_state>`

Obtiene el estado actual de IV para este contexto (la IV se actualiza al llamar a :ref:`update()<class_AESContext_method_update>`). Normalmente no necesitas esta función.

\ **Nota:** Esta función solo tiene sentido cuando el contexto se inicia con :ref:`MODE_CBC_ENCRYPT<class_AESContext_constant_MODE_CBC_ENCRYPT>` o :ref:`MODE_CBC_DECRYPT<class_AESContext_constant_MODE_CBC_DECRYPT>`.

.. rst-class:: classref-item-separator

----

.. _class_AESContext_method_start:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start**\ (\ mode\: :ref:`Mode<enum_AESContext_Mode>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`, iv\: :ref:`PackedByteArray<class_PackedByteArray>` = PackedByteArray()\ ) :ref:`🔗<class_AESContext_method_start>`

Inicia el contexto AES en el ``mode`` dado. Siempre se debe proporcionar una ``key`` de 16 o 32 bytes, mientras que una ``iv`` (vector de inicialización) de exactamente 16 bytes, solo se necesita cuando ``mode`` es :ref:`MODE_CBC_ENCRYPT<class_AESContext_constant_MODE_CBC_ENCRYPT>` o :ref:`MODE_CBC_DECRYPT<class_AESContext_constant_MODE_CBC_DECRYPT>`.

.. rst-class:: classref-item-separator

----

.. _class_AESContext_method_update:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **update**\ (\ src\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_AESContext_method_update>`

Ejecuta la operación deseada para este contexto AES. Devolverá un :ref:`PackedByteArray<class_PackedByteArray>` que contiene el resultado de cifrar (o descifrar) la ``src`` dada. Véase :ref:`start()<class_AESContext_method_start>` para el modo de operación.

\ **Nota:** El tamaño de ``src`` debe ser un múltiplo de 16. Aplica algún relleno si es necesario.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
