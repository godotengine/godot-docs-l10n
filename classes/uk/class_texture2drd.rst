:github_url: hide

.. _class_Texture2DRD:

Texture2DRD
===========

**Успадковує:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Текстура для 2D, що відповідає текстурі, створеній на :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-introduction-group

Опис
--------

Цей клас текстур дозволяє використовувати 2D-текстуру, створену безпосередньо на :ref:`RenderingDevice<class_RenderingDevice>`, як текстуру для матеріалів, сіток тощо.

\ **Примітка:** **Texture2DRD** призначений для низькорівневого використання з :ref:`RenderingDevice<class_RenderingDevice>`. Для більшості випадків використання використовуйте замість нього :ref:`Texture2D<class_Texture2D>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Демонстрація обчислення текстури <https://godotengine.org/asset-library/asset/2764>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | resource_local_to_scene                                          | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-------------------------+------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`texture_rd_rid<class_Texture2DRD_property_texture_rd_rid>` |                                                                                        |
   +-------------------------+------------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Texture2DRD_property_texture_rd_rid:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **texture_rd_rid** :ref:`🔗<class_Texture2DRD_property_texture_rd_rid>`

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
