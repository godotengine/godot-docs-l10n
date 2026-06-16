:github_url: hide

.. _class_OptimizedTranslation:

OptimizedTranslation
====================

**Наследует:** :ref:`Translation<class_Translation>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Оптимизированный перевод.

.. rst-class:: classref-introduction-group

Описание
----------------

Оптимизированный перевод. Использует сжатые переводы в реальном времени, что приводит к очень небольшим словарям.

Этот класс не хранит непереведенные строки в целях оптимизации. Поэтому :ref:`Translation.get_message_list()<class_Translation_method_get_message_list>` всегда возвращает пустой массив, а :ref:`Translation.get_message_count()<class_Translation_method_get_message_count>` всегда возвращает ``0``.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`generate<class_OptimizedTranslation_method_generate>`\ (\ from\: :ref:`Translation<class_Translation>`\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_OptimizedTranslation_method_generate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **generate**\ (\ from\: :ref:`Translation<class_Translation>`\ ) :ref:`🔗<class_OptimizedTranslation_method_generate>`

Генерирует и устанавливает оптимизированный перевод на основе заданного ресурса :ref:`Translation<class_Translation>`. Возвращает ``true`` в случае успеха.

\ **Примечание:** В сообщениях в ``from`` не следует использовать контекст или множественное число.

\ **Примечание:** Этот метод предназначен для использования в редакторе. Он ничего не делает при вызове из экспортированного проекта.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
