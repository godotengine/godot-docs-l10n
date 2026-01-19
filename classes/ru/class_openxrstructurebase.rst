:github_url: hide

.. _class_OpenXRStructureBase:

OpenXRStructureBase
===================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`OpenXRSpatialContextPersistenceConfig<class_OpenXRSpatialContextPersistenceConfig>`

Object for storing OpenXR structure data.

.. rst-class:: classref-introduction-group

Описание
----------------

Object for storing OpenXR structure data that is passed when calling into OpenXR APIs.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------------------------------+------------------------------------------------------+
   | :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` | :ref:`next<class_OpenXRStructureBase_property_next>` |
   +-------------------------------------------------------+------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`_get_header<class_OpenXRStructureBase_private_method__get_header>`\ (\ next\: :ref:`int<class_int>`\ ) |virtual| |
   +-----------------------+------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_structure_type<class_OpenXRStructureBase_method_get_structure_type>`\ (\ )                                   |
   +-----------------------+------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_OpenXRStructureBase_property_next:

.. rst-class:: classref-property

:ref:`OpenXRStructureBase<class_OpenXRStructureBase>` **next** :ref:`🔗<class_OpenXRStructureBase_property_next>`

.. rst-class:: classref-property-setget

- |void| **set_next**\ (\ value\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>`\ )
- :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` **get_next**\ (\ )

Установка здесь другого структурного объекта связывает эти структуры вместе, расширяя функциональность API. Для получения информации о том, какие структуры можно использовать с конкретным вызовом API, обратитесь к документации OpenXR.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_OpenXRStructureBase_private_method__get_header:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_header**\ (\ next\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_OpenXRStructureBase_private_method__get_header>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_OpenXRStructureBase_method_get_structure_type:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_structure_type**\ (\ ) :ref:`🔗<class_OpenXRStructureBase_method_get_structure_type>`

Returns the structure type (OpenXR ``XrStructureType``) used for this structure.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
