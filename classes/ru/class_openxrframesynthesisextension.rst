:github_url: hide

.. _class_OpenXRFrameSynthesisExtension:

OpenXRFrameSynthesisExtension
=============================

**Наследует:** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

Расширение OpenXR Frame synthesis позволяет выполнять расширенную репроекцию при более низкой частоте кадров.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот класс реализует `расширение синтеза кадров OpenXR <https://registry.khronos.org/OpenXR/specs/1.1/html/xrspec.html#XR_EXT_frame_synthesis>`__. При включении в настройках проекта и поддержке используемой среды выполнения XR синтез кадров использует передовые методы репроекции для внедрения дополнительных кадров, чтобы ваше XR-изображение отображалось с полной частотой кадров устройства.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`enabled<class_OpenXRFrameSynthesisExtension_property_enabled>`                           | ``false`` |
   +-------------------------+------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`relax_frame_interval<class_OpenXRFrameSynthesisExtension_property_relax_frame_interval>` | ``false`` |
   +-------------------------+------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_available<class_OpenXRFrameSynthesisExtension_method_is_available>`\ (\ ) |const| |
   +-------------------------+--------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`skip_next_frame<class_OpenXRFrameSynthesisExtension_method_skip_next_frame>`\ (\ )   |
   +-------------------------+--------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_OpenXRFrameSynthesisExtension_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``false`` :ref:`🔗<class_OpenXRFrameSynthesisExtension_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Включить синтез кадров. Когда ``true`` в среду выполнения XR поступают данные о векторе движения и глубине.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFrameSynthesisExtension_property_relax_frame_interval:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **relax_frame_interval** = ``false`` :ref:`🔗<class_OpenXRFrameSynthesisExtension_property_relax_frame_interval>`

.. rst-class:: classref-property-setget

- |void| **set_relax_frame_interval**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_relax_frame_interval**\ (\ )

Если ``true``, это указывает среде выполнения XR, что мы будем предоставлять кадры со значительно сниженной частотой. Включите эту опцию, если вы ожидаете, что ваше приложение будет работать с низкой частотой кадров, и хотите внедрять несколько перепроецированных кадров.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_OpenXRFrameSynthesisExtension_method_is_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_available**\ (\ ) |const| :ref:`🔗<class_OpenXRFrameSynthesisExtension_method_is_available>`

Возвращает ``true``, если синтез кадров включен в настройках проекта и текущая среда выполнения XR поддерживает синтез кадров. Возвращаемое значение будет действительно только после инициализации OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFrameSynthesisExtension_method_skip_next_frame:

.. rst-class:: classref-method

|void| **skip_next_frame**\ (\ ) :ref:`🔗<class_OpenXRFrameSynthesisExtension_method_skip_next_frame>`

Добавляет в очередь следующий кадр, который будет пропущен при передаче данных о векторе движения и глубине. Вызывайте эту функцию после телепортации игрока или аналогичного действия, которое переместило игрока, чтобы предотвратить некорректные результаты перепроецирования из-за этого движения.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
