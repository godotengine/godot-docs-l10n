:github_url: hide

.. _class_AESContext:

AESContext
==========

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Предоставляет доступ к шифрованию/дешифрованию необработанных данных по алгоритму AES.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот класс содержит контекстную информацию, необходимую для операций шифрования и дешифрования с помощью AES (Advanced Encryption Standard). Поддерживаются режимы AES-ECB и AES-CBC.


.. tabs::

 .. code-tab:: gdscript

    extends Node

    var aes = AESContext.new()

    func _ready():
        var key = "My secret key!!!" # Ключ должен быть длиной 16 или 32 байта.
        var data = "My secret text!!" # Размер данных должен быть кратен 16 байтам, при необходимости используйте заполнение.
        # Зашифровать ECB
        aes.start(AESContext.MODE_ECB_ENCRYPT, key.to_utf8_buffer())
        var encrypted = aes.update(data.to_utf8_buffer())
        aes.finish()
        # Расшифровать ECB
        aes.start(AESContext.MODE_ECB_DECRYPT, key.to_utf8_buffer())
        var decrypted = aes.update(encrypted)
        aes.finish()
        # Проверить ECB
        assert(decrypted == data.to_utf8_buffer())

        var iv = "My secret iv!!!!" # IV должен состоять ровно из 16 байт.
        # Зашифровать CBC
        aes.start(AESContext.MODE_CBC_ENCRYPT, key.to_utf8_buffer(), iv.to_utf8_buffer())
        encrypted = aes.update(data.to_utf8_buffer())
        aes.finish()
        # Расшифровать CBC
        aes.start(AESContext.MODE_CBC_DECRYPT, key.to_utf8_buffer(), iv.to_utf8_buffer())
        decrypted = aes.update(encrypted)
        aes.finish()
        # Проверить CBC
        assert(decrypted == data.to_utf8_buffer())

 .. code-tab:: csharp

    using Godot;
    using System.Diagnostics;

    public partial class MyNode : Node
    {
        private AesContext _aes = new AesContext();

        public override void _Ready()
        {
            string key = "My secret key!!!"; // Ключ должен быть длиной 16 или 32 байта.
            string data = "My secret text!!"; // Размер данных должен быть кратен 16 байтам, при необходимости используйте заполнение.
            // Зашифровать ECB
            _aes.Start(AesContext.Mode.EcbEncrypt, key.ToUtf8Buffer());
            byte[] encrypted = _aes.Update(data.ToUtf8Buffer());
            _aes.Finish();
            // Расшифровать ECB
            _aes.Start(AesContext.Mode.EcbDecrypt, key.ToUtf8Buffer());
            byte[] decrypted = _aes.Update(encrypted);
            _aes.Finish();
            // Проверить ECB
            Debug.Assert(decrypted == data.ToUtf8Buffer());

            string iv = "My secret iv!!!!"; // IV должен состоять ровно из 16 байт.
            // Зашифровать CBC
            _aes.Start(AesContext.Mode.EcbEncrypt, key.ToUtf8Buffer(), iv.ToUtf8Buffer());
            encrypted = _aes.Update(data.ToUtf8Buffer());
            _aes.Finish();
            // Расшифровать CBC
            _aes.Start(AesContext.Mode.EcbDecrypt, key.ToUtf8Buffer(), iv.ToUtf8Buffer());
            decrypted = _aes.Update(encrypted);
            _aes.Finish();
            // Проверить CBC
            Debug.Assert(decrypted == data.ToUtf8Buffer());
        }
    }



.. rst-class:: classref-reftable-group

Методы
------------

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

Перечисления
------------------------

.. _enum_AESContext_Mode:

.. rst-class:: classref-enumeration

enum **Mode**: :ref:`🔗<enum_AESContext_Mode>`

.. _class_AESContext_constant_MODE_ECB_ENCRYPT:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AESContext_Mode>` **MODE_ECB_ENCRYPT** = ``0``

AES режим шифрования электронной кодовой книги.

.. _class_AESContext_constant_MODE_ECB_DECRYPT:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AESContext_Mode>` **MODE_ECB_DECRYPT** = ``1``

AES режим дешифрования электронной кодовой книги.

.. _class_AESContext_constant_MODE_CBC_ENCRYPT:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AESContext_Mode>` **MODE_CBC_ENCRYPT** = ``2``

Режим шифрования с использованием цепочки блоков AES.

.. _class_AESContext_constant_MODE_CBC_DECRYPT:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AESContext_Mode>` **MODE_CBC_DECRYPT** = ``3``

Режим дешифрования с использованием цепочки блоков шифрования AES.

.. _class_AESContext_constant_MODE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AESContext_Mode>` **MODE_MAX** = ``4``

Максимальное значение для режима перечисления.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_AESContext_method_finish:

.. rst-class:: classref-method

|void| **finish**\ (\ ) :ref:`🔗<class_AESContext_method_finish>`

Закрыть данный AES-контекст, чтобы его можно было запустить заново. См. раздел :ref:`start()<class_AESContext_method_start>`.

.. rst-class:: classref-item-separator

----

.. _class_AESContext_method_get_iv_state:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **get_iv_state**\ (\ ) :ref:`🔗<class_AESContext_method_get_iv_state>`

Получить текущее IV состояние для данного контекста (IV обновляется при вызове :ref:`update()<class_AESContext_method_update>`). Обычно эта функция вам не нужна.

\ **Примечание:** Эта функция имеет смысл только тогда, когда контекст запущен с :ref:`MODE_CBC_ENCRYPT<class_AESContext_constant_MODE_CBC_ENCRYPT>` или :ref:`MODE_CBC_DECRYPT<class_AESContext_constant_MODE_CBC_DECRYPT>`.

.. rst-class:: classref-item-separator

----

.. _class_AESContext_method_start:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start**\ (\ mode\: :ref:`Mode<enum_AESContext_Mode>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`, iv\: :ref:`PackedByteArray<class_PackedByteArray>` = PackedByteArray()\ ) :ref:`🔗<class_AESContext_method_start>`

Запустите контекст AES в заданном ``mode``. Всегда должен быть указан ``key`` из 16 или 32 байт, тогда как ``iv`` (вектор инициализации) из ровно 16 байт требуется только тогда, когда ``mode`` равен :ref:`MODE_CBC_ENCRYPT<class_AESContext_constant_MODE_CBC_ENCRYPT>` или :ref:`MODE_CBC_DECRYPT<class_AESContext_constant_MODE_CBC_DECRYPT>`.

.. rst-class:: classref-item-separator

----

.. _class_AESContext_method_update:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **update**\ (\ src\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_AESContext_method_update>`

Выполнить нужную операцию для этого контекста AES. Вернет :ref:`PackedByteArray<class_PackedByteArray>`, содержащий результат шифрования (или расшифровки) указанного ``src``. См. :ref:`start()<class_AESContext_method_start>` для режима работы.

\ **Примечание:** Размер ``src`` должен быть кратен 16. При необходимости примените некоторое заполнение.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
