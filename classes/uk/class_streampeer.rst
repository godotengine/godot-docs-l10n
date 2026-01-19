:github_url: hide

.. _class_StreamPeer:

StreamPeer
==========

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`StreamPeerBuffer<class_StreamPeerBuffer>`, :ref:`StreamPeerExtension<class_StreamPeerExtension>`, :ref:`StreamPeerGZIP<class_StreamPeerGZIP>`, :ref:`StreamPeerSocket<class_StreamPeerSocket>`, :ref:`StreamPeerTLS<class_StreamPeerTLS>`

Абстрактний базовий клас взаємодії з потоками.

.. rst-class:: classref-introduction-group

Опис
--------

StreamPeer є абстрактним базовим класом в основному використовується для потокових протоколів (наприклад, TCP). Надання API для відправки та отримання даних через струмки, як сирі дані або рядки.

\ **Note:** При експорті до Android, переконайтеся, що ввімкнути ``INTERNET`` дозвіл на експорт Android перед експортуванням проекту або за допомогою одного кліка розгортання. Інакше, мережевий зв'язок будь-якого роду буде заблокований Android.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`big_endian<class_StreamPeer_property_big_endian>` | ``false`` |
   +-------------------------+---------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_8<class_StreamPeer_method_get_8>`\ (\ )                                                                                            |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_16<class_StreamPeer_method_get_16>`\ (\ )                                                                                          |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_32<class_StreamPeer_method_get_32>`\ (\ )                                                                                          |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_64<class_StreamPeer_method_get_64>`\ (\ )                                                                                          |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_available_bytes<class_StreamPeer_method_get_available_bytes>`\ (\ ) |const|                                                        |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`             | :ref:`get_data<class_StreamPeer_method_get_data>`\ (\ bytes\: :ref:`int<class_int>`\ )                                                       |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_double<class_StreamPeer_method_get_double>`\ (\ )                                                                                  |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_float<class_StreamPeer_method_get_float>`\ (\ )                                                                                    |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_half<class_StreamPeer_method_get_half>`\ (\ )                                                                                      |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`             | :ref:`get_partial_data<class_StreamPeer_method_get_partial_data>`\ (\ bytes\: :ref:`int<class_int>`\ )                                       |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_string<class_StreamPeer_method_get_string>`\ (\ bytes\: :ref:`int<class_int>` = -1\ )                                              |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_u8<class_StreamPeer_method_get_u8>`\ (\ )                                                                                          |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_u16<class_StreamPeer_method_get_u16>`\ (\ )                                                                                        |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_u32<class_StreamPeer_method_get_u32>`\ (\ )                                                                                        |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_u64<class_StreamPeer_method_get_u64>`\ (\ )                                                                                        |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_utf8_string<class_StreamPeer_method_get_utf8_string>`\ (\ bytes\: :ref:`int<class_int>` = -1\ )                                    |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`         | :ref:`get_var<class_StreamPeer_method_get_var>`\ (\ allow_objects\: :ref:`bool<class_bool>` = false\ )                                       |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_8<class_StreamPeer_method_put_8>`\ (\ value\: :ref:`int<class_int>`\ )                                                             |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_16<class_StreamPeer_method_put_16>`\ (\ value\: :ref:`int<class_int>`\ )                                                           |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_32<class_StreamPeer_method_put_32>`\ (\ value\: :ref:`int<class_int>`\ )                                                           |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_64<class_StreamPeer_method_put_64>`\ (\ value\: :ref:`int<class_int>`\ )                                                           |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`put_data<class_StreamPeer_method_put_data>`\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_double<class_StreamPeer_method_put_double>`\ (\ value\: :ref:`float<class_float>`\ )                                               |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_float<class_StreamPeer_method_put_float>`\ (\ value\: :ref:`float<class_float>`\ )                                                 |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_half<class_StreamPeer_method_put_half>`\ (\ value\: :ref:`float<class_float>`\ )                                                   |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`             | :ref:`put_partial_data<class_StreamPeer_method_put_partial_data>`\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_string<class_StreamPeer_method_put_string>`\ (\ value\: :ref:`String<class_String>`\ )                                             |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_u8<class_StreamPeer_method_put_u8>`\ (\ value\: :ref:`int<class_int>`\ )                                                           |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_u16<class_StreamPeer_method_put_u16>`\ (\ value\: :ref:`int<class_int>`\ )                                                         |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_u32<class_StreamPeer_method_put_u32>`\ (\ value\: :ref:`int<class_int>`\ )                                                         |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_u64<class_StreamPeer_method_put_u64>`\ (\ value\: :ref:`int<class_int>`\ )                                                         |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_utf8_string<class_StreamPeer_method_put_utf8_string>`\ (\ value\: :ref:`String<class_String>`\ )                                   |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_var<class_StreamPeer_method_put_var>`\ (\ value\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ ) |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_StreamPeer_property_big_endian:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **big_endian** = ``false`` :ref:`🔗<class_StreamPeer_property_big_endian>`

.. rst-class:: classref-property-setget

- |void| **set_big_endian**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_big_endian_enabled**\ (\ )

Якщо ``true``, це **StreamPeer** буде використовувати великий формат кодування та декодування.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_StreamPeer_method_get_8:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_8**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_8>`

Отримує підписаний байт з потоку.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_16:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_16**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_16>`

Отримує підписане 16-бітове значення з потоку.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_32:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_32**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_32>`

Отримує підписану 32-бітну вартість з потоку.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_64:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_64**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_64>`

Отримує підписане 64-розрядне значення з потоку.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_available_bytes:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_available_bytes**\ (\ ) |const| :ref:`🔗<class_StreamPeer_method_get_available_bytes>`

Повертає кількість байтів, доступних **StreamPeer**.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_data:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_data**\ (\ bytes\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_get_data>`

Повертає фрагмент даних з отриманими байтами у вигляді масиву :ref:`Array<class_Array>`, що містить два елементи: константу :ref:`Error<enum_@GlobalScope_Error>` та масив :ref:`PackedByteArray<class_PackedByteArray>`. ``bytes`` – це кількість байтів, які потрібно отримати. Якщо доступних байтів недостатньо, функція блокуватиметься, доки не буде отримано потрібну кількість.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_double:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_double**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_double>`

Gets a double-precision float from the потік.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_float:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_float**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_float>`

Отримує число з плаваючою комою одинарної точності з потоку.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_half:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_half**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_half>`

Отримує плаваюче значення напівточності з потоку.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_partial_data:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_partial_data**\ (\ bytes\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_get_partial_data>`

Повертає фрагмент даних з отриманими байтами у вигляді масиву :ref:`Array<class_Array>`, що містить два елементи: константу :ref:`Error<enum_@GlobalScope_Error>` та масив :ref:`PackedByteArray<class_PackedByteArray>`. ``bytes`` – це кількість байтів, які потрібно отримати. Якщо доступних байтів недостатньо, функція поверне фактичну кількість отриманих байтів..

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_string**\ (\ bytes\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_StreamPeer_method_get_string>`

Gets ASCII string з tote-length ``bytes`` від потоку. Якщо ``bytes`` є негативним (default) довжина буде читати з потоку, використовуючи зворотний процес :ref:`put_string()<class_StreamPeer_method_put_string>`.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_u8:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_u8**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_u8>`

Отримує беззнаковий байт з потоку.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_u16:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_u16**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_u16>`

Отримує беззнакове 16-бітове значення з потоку.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_u32:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_u32**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_u32>`

Отримує беззнакове 32-бітове значення з потоку.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_u64:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_u64**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_u64>`

Отримує беззнакове 64-бітове значення з потоку.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_utf8_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_utf8_string**\ (\ bytes\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_StreamPeer_method_get_utf8_string>`

Отримує рядок UTF-8 з byte-length ``bytes`` з потоку (декодує рядок, надісланий як UTF-8). Якщо ``bytes`` від'ємне (за замовчуванням), довжина буде зчитуватися з потоку за допомогою зворотний процес :ref:`put_utf8_string()<class_StreamPeer_method_put_utf8_string>`.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_var:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_var**\ (\ allow_objects\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_StreamPeer_method_get_var>`

Отримує значення Variant з потоку. Якщо ``allow_objects`` має значення ``true``, декодування об'єктів дозволено.

Внутрішньо використовується той самий механізм декодування, що й метод :ref:`@GlobalScope.bytes_to_var()<class_@GlobalScope_method_bytes_to_var>`.

\ **Попередження:** Десеріалізовані об'єкти можуть містити код, який виконується. Не використовуйте цю опцію, якщо серіалізований об'єкт походить з ненадійних джерел, щоб уникнути потенційних загроз безпеці, таких як віддалене виконання коду.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_8:

.. rst-class:: classref-method

|void| **put_8**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_8>`

Поставила підписану в потік.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_16:

.. rst-class:: classref-method

|void| **put_16**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_16>`

Поставила підписану 16-бітну вартість в потік.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_32:

.. rst-class:: classref-method

|void| **put_32**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_32>`

Поставила підписану 32-бітну вартість в потік.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_64:

.. rst-class:: classref-method

|void| **put_64**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_64>`

Поставила підписану 64-бітну вартість в потік.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_data:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **put_data**\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_StreamPeer_method_put_data>`

Відправляємо роз'єм даних через з'єднання, заблокувавши при необхідності до того моменту, поки дані буде здійснено відправлення. Ця функція повертає код :ref:`Error<enum_@GlobalScope_Error>`.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_double:

.. rst-class:: classref-method

|void| **put_double**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StreamPeer_method_put_double>`

Поставить подвійну точність плавати в потік.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_float:

.. rst-class:: classref-method

|void| **put_float**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StreamPeer_method_put_float>`

Поставить одноточну порцію в потік.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_half:

.. rst-class:: classref-method

|void| **put_half**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StreamPeer_method_put_half>`

Розміщує поплавок напівточності в потік.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_partial_data:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **put_partial_data**\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_StreamPeer_method_put_partial_data>`

Відправляємо роз'єм даних через підключення. Якщо всі дані не можуть бути відправлені один раз, тільки його частина буде. Ця функція повертає два значення, код :ref:`Error<enum_@GlobalScope_Error>` та ціле число, що описує, скільки даних було фактично відправлено.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_string:

.. rst-class:: classref-method

|void| **put_string**\ (\ value\: :ref:`String<class_String>`\ ) :ref:`🔗<class_StreamPeer_method_put_string>`

Розміщує рядок ASCII із нульовим завершенням у потік, перед яким ставиться 32-розрядне ціле число без знаку, що представляє його розмір. 

\ **Примітка.** Щоб розмістити рядок ASCII без додавання його розміру, ви можете використати :ref:`put_data()<class_StreamPeer_method_put_data>`: 


.. tabs:: 

 .. code-tab:: gdscript
 
    put_data("Hello, world".to_ascii_buffer())  

 .. code-tab:: csharp
 
    PutData("Hello World".ToAsciiBuffer());  



.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_u8:

.. rst-class:: classref-method

|void| **put_u8**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_u8>`

Поставить невизнаний байт в потік.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_u16:

.. rst-class:: classref-method

|void| **put_u16**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_u16>`

Поставляє невизнане значення 16-біту в потік.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_u32:

.. rst-class:: classref-method

|void| **put_u32**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_u32>`

Поставляє невизнане значення 32-біту в потік.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_u64:

.. rst-class:: classref-method

|void| **put_u64**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_u64>`

Поставляє невизнане значення 64-біту в потік.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_utf8_string:

.. rst-class:: classref-method

|void| **put_utf8_string**\ (\ value\: :ref:`String<class_String>`\ ) :ref:`🔗<class_StreamPeer_method_put_utf8_string>`

Розміщує рядок UTF-8 із нульовим завершенням у потік із 32-бітовим цілим числом без знаку, що представляє його розмір. 

\ **Примітка.** Щоб розмістити рядок UTF-8 без додавання його розміру, ви можете використати :ref:`put_data()<class_StreamPeer_method_put_data>`: 


.. tabs:: 

 .. code-tab:: gdscript
 
    put_data("Hello world".to_utf8_buffer())  

 .. code-tab:: csharp
 
    PutData("Hello World".ToUtf8Buffer());  



.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_var:

.. rst-class:: classref-method

|void| **put_var**\ (\ value\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_StreamPeer_method_put_var>`

Поставить Варіант в потік. Якщо ``full_objects`` є ``true`` кодування об'єктів дозволено (і може потенційно включати код).

Внутрішня, це використовує той же механізм кодування, як :ref:`GlobalScope.var_to_bytes()<class_GlobalScope_method_var_to_bytes>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
