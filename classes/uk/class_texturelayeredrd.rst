:github_url: hide

.. _class_TextureLayeredRD:

TextureLayeredRD
================

**Успадковує:** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`Texture2DArrayRD<class_Texture2DArrayRD>`, :ref:`TextureCubemapArrayRD<class_TextureCubemapArrayRD>`, :ref:`TextureCubemapRD<class_TextureCubemapRD>`

Абстрактний базовий клас для шарованої текстури типу РД.

.. rst-class:: classref-introduction-group

Опис
--------

Базовий клас для :ref:`Texture2DArrayRD<class_Texture2DArrayRD>`, :ref:`TextureCubemapRD<class_TextureCubemapRD>` та :ref:`TextureCubemapArrayRD<class_TextureCubemapArrayRD>`. Не може використовуватися безпосередньо, але містить усі функції, необхідні для доступу до похідних типів ресурсів.

\ **Примітка:** **TextureLayeredRD** призначений для низькорівневого використання з :ref:`RenderingDevice<class_RenderingDevice>`. Для більшості випадків використання використовуйте замість нього :ref:`TextureLayered<class_TextureLayered>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Демонстрація обчислення текстури <https://godotengine.org/asset-library/asset/2764>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------+-----------------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`texture_rd_rid<class_TextureLayeredRD_property_texture_rd_rid>` |
   +-----------------------+-----------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_TextureLayeredRD_property_texture_rd_rid:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **texture_rd_rid** :ref:`🔗<class_TextureLayeredRD_property_texture_rd_rid>`

.. rst-class:: classref-property-setget

- |void| **set_texture_rd_rid**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_texture_rd_rid**\ (\ )

RID текстурного об'єкта, створеного на :ref:`RenderingDevice<class_RenderingDevice>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
