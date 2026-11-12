:github_url: hide

.. _class_GLTFAnimation:

GLTFAnimation
=============

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

.. container:: contribute

	There is currently no description for this class. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Загрузка и сохранение файла времени выполнения <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`loop<class_GLTFAnimation_property_loop>`                   | ``false`` |
   +-----------------------------+------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>` | :ref:`original_name<class_GLTFAnimation_property_original_name>` | ``""``    |
   +-----------------------------+------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_additional_data<class_GLTFAnimation_method_get_additional_data>`\ (\ extension_name\: :ref:`StringName<class_StringName>`\ )                                                  |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_additional_data<class_GLTFAnimation_method_set_additional_data>`\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ ) |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_GLTFAnimation_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``false`` :ref:`🔗<class_GLTFAnimation_property_loop>`

.. rst-class:: classref-property-setget

- |void| **set_loop**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_loop**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFAnimation_property_original_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **original_name** = ``""`` :ref:`🔗<class_GLTFAnimation_property_original_name>`

.. rst-class:: classref-property-setget

- |void| **set_original_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_original_name**\ (\ )

Оригинальное название анимации.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_GLTFAnimation_method_get_additional_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_GLTFAnimation_method_get_additional_data>`

Получает дополнительные произвольные данные в этом экземпляре **GLTFAnimation**. Это можно использовать для хранения данных о состоянии каждого узла в классах :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, что важно, поскольку они не имеют состояния.

Аргументом должно быть имя :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` (не обязательно совпадать с именем расширения в файле glTF), а возвращаемое значение может быть любым, которое вы зададите. Если ничего не задано, возвращаемое значение равно ``null``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAnimation_method_set_additional_data:

.. rst-class:: classref-method

|void| **set_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GLTFAnimation_method_set_additional_data>`

Устанавливает дополнительные произвольные данные в этом экземпляре **GLTFAnimation**. Это можно использовать для хранения данных о состоянии каждого узла в классах :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, что важно, поскольку они не имеют состояния.

Первым аргументом должно быть имя :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` (не обязательно совпадать с именем расширения в файле glTF), а вторым аргументом может быть все, что угодно.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
