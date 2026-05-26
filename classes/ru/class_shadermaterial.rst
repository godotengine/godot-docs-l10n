:github_url: hide

.. _class_ShaderMaterial:

ShaderMaterial
==============

**Наследует:** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Материал, определенный пользовательской программой :ref:`Shader<class_Shader>` и значениями ее параметров шейдера.

.. rst-class:: classref-introduction-group

Описание
----------------

Материал, который использует пользовательскую программу :ref:`Shader<class_Shader>` для рендеринга визуальных элементов (эл. холста, сеток, неба, тумана) или для обработки частиц. По сравнению с другими материалами **ShaderMaterial** обеспечивает более глубокий контроль над сгенерированным кодом шейдера. Для получения дополнительной информации см. индекс документации шейдеров ниже.

Несколько **ShaderMaterial** могут использовать один и тот же шейдер и настраивать разные значения для униформ шейдера.

\ **Примечание:** Из соображений производительности сигнал :ref:`Resource.changed<class_Resource_signal_changed>` выдается только при изменении :ref:`Resource.resource_name<class_Resource_property_resource_name>`. Только в редакторе он также выдается при изменении :ref:`shader<class_ShaderMaterial_property_shader>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Индекс документации по шейдерам <../tutorials/shaders/index>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------+
   | :ref:`Shader<class_Shader>` | :ref:`shader<class_ShaderMaterial_property_shader>` |
   +-----------------------------+-----------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_shader_parameter<class_ShaderMaterial_method_get_shader_parameter>`\ (\ param\: :ref:`StringName<class_StringName>`\ ) |const|                                |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_shader_parameter<class_ShaderMaterial_method_set_shader_parameter>`\ (\ param\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_ShaderMaterial_property_shader:

.. rst-class:: classref-property

:ref:`Shader<class_Shader>` **shader** :ref:`🔗<class_ShaderMaterial_property_shader>`

.. rst-class:: classref-property-setget

- |void| **set_shader**\ (\ value\: :ref:`Shader<class_Shader>`\ )
- :ref:`Shader<class_Shader>` **get_shader**\ (\ )

Программа :ref:`Shader<class_Shader>`, использованная для рендеринга этого материала.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_ShaderMaterial_method_get_shader_parameter:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_shader_parameter**\ (\ param\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ShaderMaterial_method_get_shader_parameter>`

Возвращает текущее значение, установленное для данного материала униформы в шейдере.

.. rst-class:: classref-item-separator

----

.. _class_ShaderMaterial_method_set_shader_parameter:

.. rst-class:: classref-method

|void| **set_shader_parameter**\ (\ param\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_ShaderMaterial_method_set_shader_parameter>`

Изменяет значение, установленное для этого материала униформы в шейдере.

\ **Примечание:** ``param`` чувствителен к регистру и должен точно соответствовать имени униформы в коде (а не имени, написанному с заглавной буквы в инспекторе).

\ **Примечание:** Изменения в униформе шейдера будут действовать на всех экземплярах, использующих этот **ShaderMaterial**. Чтобы этого избежать, используйте униформы для каждого экземпляра с помощью :ref:`CanvasItem.set_instance_shader_parameter()<class_CanvasItem_method_set_instance_shader_parameter>`, :ref:`GeometryInstance3D.set_instance_shader_parameter()<class_GeometryInstance3D_method_set_instance_shader_parameter>` или дублируйте ресурс **ShaderMaterial** с помощью :ref:`Resource.duplicate()<class_Resource_method_duplicate>`. Униформы для каждого экземпляра обеспечивают лучшее повторное использование шейдера и, следовательно, работают быстрее, поэтому их следует предпочитать дублированию **ShaderMaterial**, когда это возможно.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
