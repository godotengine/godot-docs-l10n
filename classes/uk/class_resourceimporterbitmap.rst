:github_url: hide

.. _class_ResourceImporterBitMap:

ResourceImporterBitMap
======================

**Успадковує:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Імпорт ресурсу :ref:`BitMap<class_BitMap>` (2D масив значення болеан).

.. rst-class:: classref-introduction-group

Опис
--------

:ref:`BitMap<class_BitMap>` ресурси, як правило, використовуються як маски для натискання в :ref:`TextureButton<class_TextureButton>` і :ref:`TouchScreenButton<class_TouchScreenButton>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Імпорт зображень <../tutorials/assets_pipeline/importing_images>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`create_from<class_ResourceImporterBitMap_property_create_from>` | ``0``   |
   +---------------------------+-----------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`threshold<class_ResourceImporterBitMap_property_threshold>`     | ``0.5`` |
   +---------------------------+-----------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_ResourceImporterBitMap_property_create_from:

.. rst-class:: classref-property

:ref:`int<class_int>` **create_from** = ``0`` :ref:`🔗<class_ResourceImporterBitMap_property_create_from>`

Джерело даних для створення бітмапа.

\ **Black & White:** Пікселі, значення HSV більше, ніж :ref:`threshold<class_ResourceImporterBitMap_property_threshold>` буде розглядатися як "включений" (bit ``true``). Якщо піксель нижчий або дорівнює поріг, він буде вважатися "розмкненим" (bit ``false``).

\ **Alpha:** Пікселі, значення альфа більша, ніж :ref:`threshold<class_ResourceImporterBitMap_property_threshold>` будуть розглядатися як "enabled" (bit ``true``). Якщо піксель нижчий, ніж або дорівнює поріг, він буде вважатися "розмкненим" (bit ``false``).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterBitMap_property_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **threshold** = ``0.5`` :ref:`🔗<class_ResourceImporterBitMap_property_threshold>`

Поріг, який використовується для визначення того, які біти слід вважати ввімкненими або вимкненими. Див. також :ref:`create_from<class_ResourceImporterBitMap_property_create_from>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
