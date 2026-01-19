:github_url: hide

.. _class_VisualShaderNodeCubemap:

VisualShaderNodeCubemap
=======================

**Наследует:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Узел :ref:`Cubemap<class_Cubemap>` для использования в графе визуального шейдера.

.. rst-class:: classref-introduction-group

Описание
----------------

Переводится в ``texture(cubemap, vec3)`` на языке шейдеров. Возвращает вектор цвета и альфа-канал как скаляр.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+
   | :ref:`TextureLayered<class_TextureLayered>`                  | :ref:`cube_map<class_VisualShaderNodeCubemap_property_cube_map>`         |       |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+
   | :ref:`Source<enum_VisualShaderNodeCubemap_Source>`           | :ref:`source<class_VisualShaderNodeCubemap_property_source>`             | ``0`` |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+
   | :ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` | :ref:`texture_type<class_VisualShaderNodeCubemap_property_texture_type>` | ``0`` |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_VisualShaderNodeCubemap_Source:

.. rst-class:: classref-enumeration

enum **Source**: :ref:`🔗<enum_VisualShaderNodeCubemap_Source>`

.. _class_VisualShaderNodeCubemap_constant_SOURCE_TEXTURE:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeCubemap_Source>` **SOURCE_TEXTURE** = ``0``

Используйте :ref:`Cubemap<class_Cubemap>`, установленный через :ref:`cube_map<class_VisualShaderNodeCubemap_property_cube_map>`. Если он установлен на :ref:`source<class_VisualShaderNodeCubemap_property_source>`, порт ``samplerCube`` игнорируется.

.. _class_VisualShaderNodeCubemap_constant_SOURCE_PORT:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeCubemap_Source>` **SOURCE_PORT** = ``1``

Используйте ссылку на сэмплер :ref:`Cubemap<class_Cubemap>`, переданную через порт ``samplerCube``. Если установлено значение :ref:`source<class_VisualShaderNodeCubemap_property_source>`, текстура :ref:`cube_map<class_VisualShaderNodeCubemap_property_cube_map>` игнорируется.

.. _class_VisualShaderNodeCubemap_constant_SOURCE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeCubemap_Source>` **SOURCE_MAX** = ``2``

Представляет размер перечисления :ref:`Source<enum_VisualShaderNodeCubemap_Source>`.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeCubemap_TextureType:

.. rst-class:: classref-enumeration

enum **TextureType**: :ref:`🔗<enum_VisualShaderNodeCubemap_TextureType>`

.. _class_VisualShaderNodeCubemap_constant_TYPE_DATA:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` **TYPE_DATA** = ``0``

Никаких подсказок в единое заявление не добавляется.

.. _class_VisualShaderNodeCubemap_constant_TYPE_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` **TYPE_COLOR** = ``1``

Добавляет ``source_color`` в качестве подсказки к объявлению униформы для корректного преобразования из нелинейного кодирования sRGB в линейное кодирование.

.. _class_VisualShaderNodeCubemap_constant_TYPE_NORMAL_MAP:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` **TYPE_NORMAL_MAP** = ``2``

Добавляет ``hint_normal`` в качестве подсказки к объявлению uniform, которое внутренне преобразует текстуру для правильного использования в качестве карты нормалей.

.. _class_VisualShaderNodeCubemap_constant_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` **TYPE_MAX** = ``3``

Представляет размер перечисления :ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VisualShaderNodeCubemap_property_cube_map:

.. rst-class:: classref-property

:ref:`TextureLayered<class_TextureLayered>` **cube_map** :ref:`🔗<class_VisualShaderNodeCubemap_property_cube_map>`

.. rst-class:: classref-property-setget

- |void| **set_cube_map**\ (\ value\: :ref:`TextureLayered<class_TextureLayered>`\ )
- :ref:`TextureLayered<class_TextureLayered>` **get_cube_map**\ (\ )

Текстура :ref:`Cubemap<class_Cubemap>` для выборки при использовании :ref:`SOURCE_TEXTURE<class_VisualShaderNodeCubemap_constant_SOURCE_TEXTURE>` в качестве :ref:`source<class_VisualShaderNodeCubemap_property_source>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCubemap_property_source:

.. rst-class:: classref-property

:ref:`Source<enum_VisualShaderNodeCubemap_Source>` **source** = ``0`` :ref:`🔗<class_VisualShaderNodeCubemap_property_source>`

.. rst-class:: classref-property-setget

- |void| **set_source**\ (\ value\: :ref:`Source<enum_VisualShaderNodeCubemap_Source>`\ )
- :ref:`Source<enum_VisualShaderNodeCubemap_Source>` **get_source**\ (\ )

Определяет, какой источник следует использовать для выборки.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCubemap_property_texture_type:

.. rst-class:: classref-property

:ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` **texture_type** = ``0`` :ref:`🔗<class_VisualShaderNodeCubemap_property_texture_type>`

.. rst-class:: classref-property-setget

- |void| **set_texture_type**\ (\ value\: :ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>`\ )
- :ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` **get_texture_type**\ (\ )

Определяет тип данных, предоставляемых исходной текстурой.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
