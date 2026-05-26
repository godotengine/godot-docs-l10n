:github_url: hide

.. _class_Texture3DRD:

Texture3DRD
===========

**Наследует:** :ref:`Texture3D<class_Texture3D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Текстура для 3D, привязанная к текстуре, созданной на :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот класс текстур позволяет использовать 3D-текстуру, созданную непосредственно на :ref:`RenderingDevice<class_RenderingDevice>`, в качестве текстуры для материалов, мешей и т. д.

\ **Примечание:** **Texture3DRD** предназначен для низкоуровневого использования с :ref:`RenderingDevice<class_RenderingDevice>`. В большинстве случаев используйте :ref:`Texture3D<class_Texture3D>` вместо него.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `Демонстрация вычисления текстур <https://godotengine.org/asset-library/asset/2764>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`texture_rd_rid<class_Texture3DRD_property_texture_rd_rid>` |
   +-----------------------+------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Texture3DRD_property_texture_rd_rid:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **texture_rd_rid** :ref:`🔗<class_Texture3DRD_property_texture_rd_rid>`

.. rst-class:: classref-property-setget

- |void| **set_texture_rd_rid**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_texture_rd_rid**\ (\ )

RID объекта текстуры, созданного на :ref:`RenderingDevice<class_RenderingDevice>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
