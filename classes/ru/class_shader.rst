:github_url: hide

.. _class_Shader:

Shader
======

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`VisualShader<class_VisualShader>`

Шейдер, реализованный на языке шейдеров Godot.

.. rst-class:: classref-introduction-group

Описание
----------------

Пользовательская программа шейдера, реализованная на языке шейдеров Godot, сохраненная с расширением ``.gdshader``.

Этот класс используется :ref:`ShaderMaterial<class_ShaderMaterial>` и позволяет вам писать собственное пользовательское поведение для рендеринга визуальных элементов или обновления информации о частицах. Подробное объяснение и использование см. в руководствах, ссылки на которые приведены ниже.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Индекс документации по шейдерам <../tutorials/shaders/index>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`code<class_Shader_property_code>` | ``""`` |
   +-----------------------------+-----------------------------------------+--------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture<class_Texture>` | :ref:`get_default_texture_parameter<class_Shader_method_get_default_texture_parameter>`\ (\ name\: :ref:`StringName<class_StringName>`, index\: :ref:`int<class_int>` = 0\ ) |const|                                  |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Mode<enum_Shader_Mode>` | :ref:`get_mode<class_Shader_method_get_mode>`\ (\ ) |const|                                                                                                                                                           |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`     | :ref:`get_shader_uniform_list<class_Shader_method_get_shader_uniform_list>`\ (\ get_groups\: :ref:`bool<class_bool>` = false\ )                                                                                       |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`inspect_native_shader_code<class_Shader_method_inspect_native_shader_code>`\ (\ )                                                                                                                               |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_default_texture_parameter<class_Shader_method_set_default_texture_parameter>`\ (\ name\: :ref:`StringName<class_StringName>`, texture\: :ref:`Texture<class_Texture>`, index\: :ref:`int<class_int>` = 0\ ) |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_Shader_Mode:

.. rst-class:: classref-enumeration

enum **Mode**: :ref:`🔗<enum_Shader_Mode>`

.. _class_Shader_constant_MODE_SPATIAL:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_Shader_Mode>` **MODE_SPATIAL** = ``0``

Режим, используемый для отрисовки всех 3D-объектов.

.. _class_Shader_constant_MODE_CANVAS_ITEM:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_Shader_Mode>` **MODE_CANVAS_ITEM** = ``1``

Режим, используемый для рисования всех 2D-объектов.

.. _class_Shader_constant_MODE_PARTICLES:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_Shader_Mode>` **MODE_PARTICLES** = ``2``

Режим, используемый для расчета информации о частицах на основе каждой частицы. Не используется для рисования.

.. _class_Shader_constant_MODE_SKY:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_Shader_Mode>` **MODE_SKY** = ``3``

Режим, используемый для рисования неба. Работает только с шейдерами, прикрепленными к объектам :ref:`Sky<class_Sky>`.

.. _class_Shader_constant_MODE_FOG:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_Shader_Mode>` **MODE_FOG** = ``4``

Режим, используемый для настройки цвета и плотности эффекта объемного тумана.

.. _class_Shader_constant_MODE_TEXTURE_BLIT:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_Shader_Mode>` **MODE_TEXTURE_BLIT** = ``5``

Mode used for drawing to DrawableTexture resources via blit calls.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Shader_property_code:

.. rst-class:: classref-property

:ref:`String<class_String>` **code** = ``""`` :ref:`🔗<class_Shader_property_code>`

.. rst-class:: classref-property-setget

- |void| **set_code**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_code**\ (\ )

Возвращает код шейдера в том виде, в котором его написал пользователь, а не полный сгенерированный код, используемый внутри.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Shader_method_get_default_texture_parameter:

.. rst-class:: classref-method

:ref:`Texture<class_Texture>` **get_default_texture_parameter**\ (\ name\: :ref:`StringName<class_StringName>`, index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_Shader_method_get_default_texture_parameter>`

Возвращает текстуру, которая установлена по умолчанию для указанного параметра.

\ **Примечание:** ``name`` должно точно соответствовать имени униформы в коде.

\ **Примечание:** Если используется массив сэмплера, используйте ``index`` для доступа к указанной текстуре.

.. rst-class:: classref-item-separator

----

.. _class_Shader_method_get_mode:

.. rst-class:: classref-method

:ref:`Mode<enum_Shader_Mode>` **get_mode**\ (\ ) |const| :ref:`🔗<class_Shader_method_get_mode>`

Возвращает режим шейдера для шейдера.

.. rst-class:: classref-item-separator

----

.. _class_Shader_method_get_shader_uniform_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_shader_uniform_list**\ (\ get_groups\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Shader_method_get_shader_uniform_list>`

Возвращает список шейдерных униформ, которые могут быть назначены :ref:`ShaderMaterial<class_ShaderMaterial>`, для использования с :ref:`ShaderMaterial.set_shader_parameter()<class_ShaderMaterial_method_set_shader_parameter>` и :ref:`ShaderMaterial.get_shader_parameter()<class_ShaderMaterial_method_get_shader_parameter>`. Возвращаемые параметры содержатся в словарях в формате, аналогичном возвращаемым :ref:`Object.get_property_list()<class_Object_method_get_property_list>`.

Если аргумент ``get_groups`` равен ``true``, подсказки по группировке параметров также включаются в список.

.. rst-class:: classref-item-separator

----

.. _class_Shader_method_inspect_native_shader_code:

.. rst-class:: classref-method

|void| **inspect_native_shader_code**\ (\ ) :ref:`🔗<class_Shader_method_inspect_native_shader_code>`

Доступно только при запуске в редакторе. Открывает всплывающее окно, визуализирующее сгенерированный код шейдера, включая все варианты и внутренний код шейдера. См. также :ref:`Material.inspect_native_shader_code()<class_Material_method_inspect_native_shader_code>`.

.. rst-class:: classref-item-separator

----

.. _class_Shader_method_set_default_texture_parameter:

.. rst-class:: classref-method

|void| **set_default_texture_parameter**\ (\ name\: :ref:`StringName<class_StringName>`, texture\: :ref:`Texture<class_Texture>`, index\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Shader_method_set_default_texture_parameter>`

Устанавливает текстуру по умолчанию для использования с униформой текстуры. По умолчанию используется текстура, если в :ref:`ShaderMaterial<class_ShaderMaterial>` не задана текстура.

\ **Примечание:** ``name`` должно точно соответствовать имени униформы текстуры в коде.

\ **Примечание:** Если используется массив сэмплера, используйте ``index`` для доступа к указанной текстуре.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
