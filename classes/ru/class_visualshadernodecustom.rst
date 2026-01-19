:github_url: hide

.. _class_VisualShaderNodeCustom:

VisualShaderNodeCustom
======================

**Наследует:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Виртуальный класс для определения пользовательских :ref:`VisualShaderNode<class_VisualShaderNode>`-ов для использования в редакторе визуальных шейдеров.

.. rst-class:: classref-introduction-group

Описание
----------------

Унаследовав этот класс, вы можете создать пользовательский скриптовый аддон :ref:`VisualShader<class_VisualShader>`, который будет автоматически добавлен в редактор визуальных шейдеров. Поведение :ref:`VisualShaderNode<class_VisualShaderNode>` определяется путем переопределения предоставленных виртуальных методов.

Чтобы зарегистрировать узел как редакторский аддон, вы должны использовать аннотацию ``@tool`` и указать ``class_name`` для вашего пользовательского скрипта. Например:

::

    @tool
    extends VisualShaderNodeCustom
    class_name VisualShaderNodeNoise

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Плагины визуальных шейдеров <../tutorials/plugins/editor/visual_shader_plugins>`

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_category<class_VisualShaderNodeCustom_private_method__get_category>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                          |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_code<class_VisualShaderNodeCustom_private_method__get_code>`\ (\ input_vars\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\], output_vars\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\], mode\: :ref:`Mode<enum_Shader_Mode>`, type\: :ref:`Type<enum_VisualShader_Type>`\ ) |virtual| |const| |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_default_input_port<class_VisualShaderNodeCustom_private_method__get_default_input_port>`\ (\ type\: :ref:`PortType<enum_VisualShaderNode_PortType>`\ ) |virtual| |const|                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_description<class_VisualShaderNodeCustom_private_method__get_description>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                    |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_func_code<class_VisualShaderNodeCustom_private_method__get_func_code>`\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`, type\: :ref:`Type<enum_VisualShader_Type>`\ ) |virtual| |const|                                                                                                                                      |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_global_code<class_VisualShaderNodeCustom_private_method__get_global_code>`\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`\ ) |virtual| |const|                                                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_input_port_count<class_VisualShaderNodeCustom_private_method__get_input_port_count>`\ (\ ) |virtual| |const|                                                                                                                                                                                                          |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                     | :ref:`_get_input_port_default_value<class_VisualShaderNodeCustom_private_method__get_input_port_default_value>`\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                            |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_input_port_name<class_VisualShaderNodeCustom_private_method__get_input_port_name>`\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PortType<enum_VisualShaderNode_PortType>`   | :ref:`_get_input_port_type<class_VisualShaderNodeCustom_private_method__get_input_port_type>`\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_name<class_VisualShaderNodeCustom_private_method__get_name>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                  |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_output_port_count<class_VisualShaderNodeCustom_private_method__get_output_port_count>`\ (\ ) |virtual| |const|                                                                                                                                                                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_output_port_name<class_VisualShaderNodeCustom_private_method__get_output_port_name>`\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                            |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PortType<enum_VisualShaderNode_PortType>`   | :ref:`_get_output_port_type<class_VisualShaderNodeCustom_private_method__get_output_port_type>`\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                            |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_property_count<class_VisualShaderNodeCustom_private_method__get_property_count>`\ (\ ) |virtual| |const|                                                                                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_property_default_index<class_VisualShaderNodeCustom_private_method__get_property_default_index>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_property_name<class_VisualShaderNodeCustom_private_method__get_property_name>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_property_options<class_VisualShaderNodeCustom_private_method__get_property_options>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PortType<enum_VisualShaderNode_PortType>`   | :ref:`_get_return_icon_type<class_VisualShaderNodeCustom_private_method__get_return_icon_type>`\ (\ ) |virtual| |const|                                                                                                                                                                                                          |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_is_available<class_VisualShaderNodeCustom_private_method__is_available>`\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`, type\: :ref:`Type<enum_VisualShader_Type>`\ ) |virtual| |const|                                                                                                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_is_highend<class_VisualShaderNodeCustom_private_method__is_highend>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_option_index<class_VisualShaderNodeCustom_method_get_option_index>`\ (\ option\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                      |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_VisualShaderNodeCustom_private_method__get_category:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_category**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_category>`

Переопределите этот метод, чтобы определить путь к связанному пользовательскому узлу в диалоговом окне членов Редактора Визуальных Шейдеров. Путь может выглядеть как ``"MyGame/MyFunctions/Noise"``.

Определение этого метода **необязательно**. Если не переопределить, узел будет помещен в категорию "Дополнения" ("Addons").

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_code:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_code**\ (\ input_vars\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\], output_vars\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\], mode\: :ref:`Mode<enum_Shader_Mode>`, type\: :ref:`Type<enum_VisualShader_Type>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_code>`

Переопределите этот метод, чтобы определить фактический код шейдера связанного пользовательского узла. Код шейдера должен быть возвращен в виде строки, которая может иметь несколько строк (для удобства можно использовать конструкцию многострочной строки ``"""``.

Массивы ``input_vars`` и ``output_vars`` содержат имена строк различных входных и выходных переменных, как определено виртуальными методами ``_get_input_*`` и ``_get_output_*`` в этом классе.

Выходным портам могут быть назначены значения в коде шейдера. Например, ``return output_vars[0] + " = " + input_vars[0] + ";"``.

Вы можете настроить сгенерированный код на основе ``mode`` шейдера и/или ``type``.

Определение этого метода **обязательно**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_default_input_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_default_input_port**\ (\ type\: :ref:`PortType<enum_VisualShaderNode_PortType>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_default_input_port>`

Переопределите этот метод, чтобы определить входной порт, который должен быть подключен по умолчанию, когда этот узел создается в результате перетаскивания соединения из существующего узла в пустое пространство на графике.

Определение этого метода **необязательно**. Если не переопределено, соединение будет создано с первым допустимым портом.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_description:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_description**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_description>`

Переопределите этот метод, чтобы определить описание связанного пользовательского узла в диалоговом окне элементов редактора визуальных шейдеров.

Определение этого метода **необязательно**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_func_code:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_func_code**\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`, type\: :ref:`Type<enum_VisualShader_Type>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_func_code>`

Переопределите этот метод, чтобы добавить код шейдера в начало каждой функции шейдера (один раз). Код шейдера должен быть возвращен в виде строки, которая может иметь несколько строк (для удобства можно использовать конструкцию многострочной строки ``"""``.

Если есть несколько пользовательских узлов разных типов, которые используют эту функцию, порядок каждой вставки не определен.

Вы можете настроить сгенерированный код на основе ``mode`` шейдера и/или ``type``.

Определение этого метода **необязательно**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_global_code:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_global_code**\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_global_code>`

Переопределите этот метод, чтобы добавить код шейдера поверх глобального шейдера, чтобы определить собственную стандартную библиотеку повторно используемых методов, переменных, констант, униформ и т. д. Код шейдера должен быть возвращен в виде строки, которая может иметь несколько строк (для удобства можно использовать конструкцию многострочной строки ``"""``.

Будьте осторожны с этой функциональностью, так как она может вызвать конфликты имен с другими пользовательскими узлами, поэтому обязательно дайте определенным сущностям уникальные имена.

Вы можете настроить сгенерированный код на основе ``mode`` шейдера.

Определение этого метода **необязательно**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_input_port_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_input_port_count**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_input_port_count>`

Переопределите этот метод, чтобы определить количество входных портов связанного пользовательского узла.

Определение этого метода **обязательно**. Если не переопределено, у узла нет входных портов.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_input_port_default_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_input_port_default_value**\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_input_port_default_value>`

Переопределите этот метод, чтобы определить значение по умолчанию для указанного входного порта. Предпочтительнее использовать его вместо :ref:`VisualShaderNode.set_input_port_default_value()<class_VisualShaderNode_method_set_input_port_default_value>`.

Определение этого метода **обязательно**. Если не переопределено, у узла нет значений по умолчанию для входных портов.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_input_port_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_input_port_name**\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_input_port_name>`

Переопределите этот метод, чтобы определить имена входных портов связанного пользовательского узла. Имена используются как для входных слотов в редакторе, так и в качестве идентификаторов в коде шейдера и передаются в массиве ``input_vars`` в :ref:`_get_code()<class_VisualShaderNodeCustom_private_method__get_code>`.

Определение этого метода **необязательно**, но рекомендуется. Если не переопределено, входные порты именуются как ``"in" + str(port)``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_input_port_type:

.. rst-class:: classref-method

:ref:`PortType<enum_VisualShaderNode_PortType>` **_get_input_port_type**\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_input_port_type>`

Переопределите этот метод, чтобы определить возвращаемый тип каждого входного порта связанного пользовательского узла.

Определение этого метода **необязательно**, но рекомендуется. Если не переопределить, входные порты вернут тип :ref:`VisualShaderNode.PORT_TYPE_SCALAR<class_VisualShaderNode_constant_PORT_TYPE_SCALAR>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_name**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_name>`

Переопределите этот метод, чтобы определить имя связанного пользовательского узла в диалоговом окне и графике членов редактора визуальных шейдеров.

Определение этого метода **необязательно**, но рекомендуется. Если не переопределить, узел будет назван как «Безымянный».

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_output_port_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_output_port_count**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_output_port_count>`

Переопределите этот метод, чтобы определить количество выходных портов связанного пользовательского узла.

Определение этого метода **обязательно**. Если не переопределено, у узла нет выходных портов.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_output_port_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_output_port_name**\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_output_port_name>`

Переопределите этот метод, чтобы определить имена выходных портов связанного пользовательского узла. Имена используются как для выходных слотов в редакторе, так и в качестве идентификаторов в коде шейдера и передаются в массиве ``output_vars`` в :ref:`_get_code()<class_VisualShaderNodeCustom_private_method__get_code>`.

Определение этого метода **необязательно**, но рекомендуется. Если не переопределено, выходные порты именуются как ``"out" + str(port)``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_output_port_type:

.. rst-class:: classref-method

:ref:`PortType<enum_VisualShaderNode_PortType>` **_get_output_port_type**\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_output_port_type>`

Переопределите этот метод, чтобы определить возвращаемый тип каждого выходного порта связанного пользовательского узла.

Определение этого метода **необязательно**, но рекомендуется. Если не переопределить, выходные порты вернут тип :ref:`VisualShaderNode.PORT_TYPE_SCALAR<class_VisualShaderNode_constant_PORT_TYPE_SCALAR>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_property_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_property_count**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_property_count>`

Переопределите этот метод, чтобы определить количество свойств.

Определение этого метода **необязательно**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_property_default_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_property_default_index**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_property_default_index>`

Переопределите этот метод, чтобы определить индекс по умолчанию свойства связанного пользовательского узла.

Определение этого метода **необязательно**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_property_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_property_name**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_property_name>`

Переопределите этот метод, чтобы определить имена свойств связанного пользовательского узла.

Определение этого метода **необязательно**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_property_options:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_property_options**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_property_options>`

Переопределите этот метод, чтобы определить параметры внутри раскрывающегося списка свойства связанного пользовательского узла.

Определение этого метода **необязательно**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_return_icon_type:

.. rst-class:: classref-method

:ref:`PortType<enum_VisualShaderNode_PortType>` **_get_return_icon_type**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_return_icon_type>`

Переопределите этот метод, чтобы определить значок возврата связанного пользовательского узла в диалоговом окне элементов редактора визуальных шейдеров.

Определение этого метода **необязательно**. Если не переопределено, значок возврата не отображается.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__is_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_available**\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`, type\: :ref:`Type<enum_VisualShader_Type>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__is_available>`

Переопределите этот метод, чтобы предотвратить отображение узла в диалоговом окне участника для определенного ``mode`` и/или ``type``.

Определение этого метода **необязательно**. Если не переопределено, то ``true``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__is_highend:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_highend**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__is_highend>`

Переопределите этот метод, чтобы включить метку "высококлассовый" в диалоговом окне "Члены" визуального редактора шейдеров. Для узлов, работающих только с рендерами Forward+ и Mobile, должно возвращаться значение ``true``.

Определение этого метода является **необязательным**. Если он не переопределен, значение будет ``false``, что указывает на совместимость этого узла со всеми рендерами (включая Compatibility).

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_method_get_option_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_option_index**\ (\ option\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShaderNodeCustom_method_get_option_index>`

Возвращает выбранный индекс раскрывающегося списка в графе. Вы можете использовать эту функцию для определения конкретного поведения в :ref:`_get_code()<class_VisualShaderNodeCustom_private_method__get_code>` или :ref:`_get_global_code()<class_VisualShaderNodeCustom_private_method__get_global_code>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
