:github_url: hide

.. _class_HashingContext:

HashingContext
==============

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Proporciona funcionalidad para calcular hashes criptográficos fragmento a fragmento.

.. rst-class:: classref-introduction-group

Descripción
----------------------

La clase HashingContext proporciona una interfaz para calcular hashes criptográficos en múltiples iteraciones. Esto es útil para calcular hashes de archivos grandes (para no tener que cargarlos todos en la memoria), flujos de red y flujos de datos en general (para no tener que mantener búferes).

El :ref:`HashType<enum_HashingContext_HashType>` enum muestra los algoritmos de hash soportados.


.. tabs::

 .. code-tab:: gdscript

    const TAMANO_FRAGMENTO = 1024

    func hashear_archivo(ruta):
        # Comprueba que el archivo existe.
        if not FileAccess.file_exists(ruta):
            return
        # Inicia un contexto SHA-256.
        var ctx = HashingContext.new()
        contexto.start(HashingContext.HASH_SHA256)
        # Abre el archivo a hashear.
        var archivo = FileAccess.open(ruta, FileAccess.READ)
        # Actualiza el ctx después de leer cada fragmento.
        while archivo.get_position() < archivo.get_length():
            var restante = archivo.get_length() - archivo.get_position()
            contexto.update(archivo.get_buffer(min(restante, TAMANO_FRAGMENTO)))
        # Obtiene el hash computado.
        var res = ctx.finish()
        # Imprime el resultado como una string hexadecimal y un array.
        printt(res.hex_encode(), Array(res))

 .. code-tab:: csharp

    public const int TamanoFragmento = 1024;

    public void HashearArchivo(string ruta)
    {
        // Comprueba que el archivo existe.
        if (!FileAccess.FileExists(ruta))
        {
            return;
        }
        // Inicia un contexto SHA-256.
        var ctx = new HashingContext();
        contexto.Start(HashingContext.HashType.Sha256);
        // Abre el archivo a hashear.
        using var archivo = FileAccess.Open(ruta, FileAccess.ModeFlags.Read);
        // Actualiza el contexto después de leer cada fragmento.
        while (archivo.GetPosition() < archivo.GetLength())
        {
            int restante = (int)(archivo.GetLength() - archivo.GetPosition());
            contexto.Update(archivo.GetBuffer(Mathf.Min(restante, TamanoFragmento)));
        }
        // Obtiene el hash computado.
        byte[] res = ctx.Finish();
        // Imprime el resultado como una string hexadecimal y un array.
        GD.PrintT(res.HexEncode(), (Variant)res);
    }



.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`finish<class_HashingContext_method_finish>`\ (\ )                                                        |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`         | :ref:`start<class_HashingContext_method_start>`\ (\ type\: :ref:`HashType<enum_HashingContext_HashType>`\ )    |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`         | :ref:`update<class_HashingContext_method_update>`\ (\ chunk\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_HashingContext_HashType:

.. rst-class:: classref-enumeration

enum **HashType**: :ref:`🔗<enum_HashingContext_HashType>`

.. _class_HashingContext_constant_HASH_MD5:

.. rst-class:: classref-enumeration-constant

:ref:`HashType<enum_HashingContext_HashType>` **HASH_MD5** = ``0``

Algoritmo de Hasheado: MD5.

.. _class_HashingContext_constant_HASH_SHA1:

.. rst-class:: classref-enumeration-constant

:ref:`HashType<enum_HashingContext_HashType>` **HASH_SHA1** = ``1``

Algoritmo de Hasheado: SHA-1.

.. _class_HashingContext_constant_HASH_SHA256:

.. rst-class:: classref-enumeration-constant

:ref:`HashType<enum_HashingContext_HashType>` **HASH_SHA256** = ``2``

Algoritmo de Hasheado: SHA-256.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_HashingContext_method_finish:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **finish**\ (\ ) :ref:`🔗<class_HashingContext_method_finish>`

Cierra el contexto actual, y devuelve el hash calculado.

.. rst-class:: classref-item-separator

----

.. _class_HashingContext_method_start:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start**\ (\ type\: :ref:`HashType<enum_HashingContext_HashType>`\ ) :ref:`🔗<class_HashingContext_method_start>`

Inicia un nuevo cálculo de hash del ``type`` dado (p. ej., :ref:`HASH_SHA256<class_HashingContext_constant_HASH_SHA256>` para iniciar el cálculo de un SHA-256).

.. rst-class:: classref-item-separator

----

.. _class_HashingContext_method_update:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **update**\ (\ chunk\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_HashingContext_method_update>`

Actualiza el cálculo con el ``chunk`` de datos dado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
