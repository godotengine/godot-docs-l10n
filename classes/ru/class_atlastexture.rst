:github_url: hide

.. _class_AtlasTexture:

AtlasTexture
============

**Наследует:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Текстура, которая вырезает часть другой Texture2D.

.. rst-class:: classref-introduction-group

Описание
----------------

Ресурс :ref:`Texture2D<class_Texture2D>`, который рисует только часть своей текстуры :ref:`atlas<class_AtlasTexture_property_atlas>`, как определено :ref:`region<class_AtlasTexture_property_region>`. Также можно задать дополнительное :ref:`margin<class_AtlasTexture_property_margin>`, что полезно для небольших корректировок.

Множественные ресурсы **AtlasTexture** можно обрезать из одного :ref:`atlas<class_AtlasTexture_property_atlas>`. Упаковка множества меньших текстур в одну большую текстуру помогает оптимизировать затраты видеопамяти и вызовы рендеринга.

\ **Примечание:** **AtlasTexture** нельзя использовать в :ref:`AnimatedTexture<class_AnimatedTexture>`, и он не будет правильно размещаться в таких узлах, как :ref:`TextureRect<class_TextureRect>` или :ref:`Sprite2D<class_Sprite2D>`. Чтобы разместить **AtlasTexture**, измените его :ref:`region<class_AtlasTexture_property_region>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Описания свойств
--------------------------------

.. _class_AtlasTexture_property_atlas:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **atlas** :ref:`🔗<class_AtlasTexture_property_atlas>`

.. rst-class:: classref-property-setget

- |void| **set_atlas**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_atlas**\ (\ )

Текстура, содержащая атлас. Может быть любого типа, наследуемого от :ref:`Texture2D<class_Texture2D>`, включая другой **AtlasTexture**.

.. rst-class:: classref-item-separator

----

.. _class_AtlasTexture_property_filter_clip:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **filter_clip** = ``false`` :ref:`🔗<class_AtlasTexture_property_filter_clip>`

.. rst-class:: classref-property-setget

- |void| **set_filter_clip**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_filter_clip**\ (\ )

Если ``true``, область за пределами :ref:`region<class_AtlasTexture_property_region>` обрезается, чтобы избежать утечки окружающих пикселей текстуры.

.. rst-class:: classref-item-separator

----

.. _class_AtlasTexture_property_margin:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **margin** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_AtlasTexture_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_margin**\ (\ )

Поле вокруг :ref:`region<class_AtlasTexture_property_region>`. Полезно для небольших корректировок. Если задано :ref:`Rect2.size<class_Rect2_property_size>` этого свойства ("w" и "h" в редакторе), нарисованная текстура изменяет размер, чтобы вписаться в поле.

.. rst-class:: classref-item-separator

----

.. _class_AtlasTexture_property_region:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **region** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_AtlasTexture_property_region>`

.. rst-class:: classref-property-setget

- |void| **set_region**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_region**\ (\ )

Область, используемая для построения :ref:`atlas<class_AtlasTexture_property_atlas>`. Если хотя бы один из параметров размера области равен ``0``, то для этой оси будет использоваться значение из :ref:`atlas<class_AtlasTexture_property_atlas>`.

\ **Примечание:** Размер изображения всегда является целым числом, поэтому фактический размер области округляется в меньшую сторону.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
