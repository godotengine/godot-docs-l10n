:github_url: hide

.. _class_AtlasTexture:

AtlasTexture
============

**Успадковує:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Текстура, яка вирізає частину іншої Texture2D.

.. rst-class:: classref-introduction-group

Опис
--------

Ресурс :ref:`Texture2D<class_Texture2D>`, який малює лише частину своєї текстури :ref:`atlas<class_AtlasTexture_property_atlas>`, як визначено :ref:`region<class_AtlasTexture_property_region>`. Також можна встановити додаткову ``маржу члена``, що корисно для невеликих коригувань.

 Кілька ресурсів **AtlasTexture** можна вирізати з одного :ref:`atlas<class_AtlasTexture_property_atlas>`. Упаковка багатьох менших текстур в єдину велику текстуру допомагає оптимізувати витрати на відеопам’ять і рендеринг викликів.

\ **Примітка:** **AtlasTexture** не можна використовувати в :ref:`AnimatedTexture<class_AnimatedTexture>` і може неправильно розміщувати плитки в таких вузлах, як :ref:`TextureRect<class_TextureRect>`, коли вони знаходяться в інших ресурсах **AtlasTexture**.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`atlas<class_AtlasTexture_property_atlas>`             |                                                                                        |
   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`filter_clip<class_AtlasTexture_property_filter_clip>` | ``false``                                                                              |
   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`         | :ref:`margin<class_AtlasTexture_property_margin>`           | ``Rect2(0, 0, 0, 0)``                                                                  |
   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`         | :ref:`region<class_AtlasTexture_property_region>`           | ``Rect2(0, 0, 0, 0)``                                                                  |
   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | resource_local_to_scene                                     | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_AtlasTexture_property_atlas:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **atlas** :ref:`🔗<class_AtlasTexture_property_atlas>`

.. rst-class:: classref-property-setget

- |void| **set_atlas**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_atlas**\ (\ )

Текстура, яка містить атлас. Може бути будь-яким типом, успадкованим від :ref:`Texture2D<class_Texture2D>`, включно з іншим **AtlasTexture**.

.. rst-class:: classref-item-separator

----

.. _class_AtlasTexture_property_filter_clip:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **filter_clip** = ``false`` :ref:`🔗<class_AtlasTexture_property_filter_clip>`

.. rst-class:: classref-property-setget

- |void| **set_filter_clip**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_filter_clip**\ (\ )

Якщо ``true``, область за межами :ref:`region<class_AtlasTexture_property_region>` обрізається, щоб уникнути розмивання навколишніх пікселів текстури.

.. rst-class:: classref-item-separator

----

.. _class_AtlasTexture_property_margin:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **margin** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_AtlasTexture_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_margin**\ (\ )

Поле навколо :ref:`region<class_AtlasTexture_property_region>`. Корисно для невеликих коригувань. Якщо встановлено :ref:`Rect2.size<class_Rect2_property_size>` цієї властивості ("w" і "h" у редакторі), розмір намальованої текстури змінюється відповідно до поля.

.. rst-class:: classref-item-separator

----

.. _class_AtlasTexture_property_region:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **region** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_AtlasTexture_property_region>`

.. rst-class:: classref-property-setget

- |void| **set_region**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_region**\ (\ )

Область, що використовується для малювання :ref:`atlas<class_AtlasTexture_property_atlas>`. Якщо будь-який з вимірів розміру області дорівнює ``0``, для цієї осі буде використано значення з розміру :ref:`atlas<class_AtlasTexture_property_atlas>`.

\ **Примітка:** Розмір зображення завжди є цілим числом, тому фактичний розмір області округляється до меншого значення.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
