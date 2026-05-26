:github_url: hide

.. _class_Material:

Material
========

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`BaseMaterial3D<class_BaseMaterial3D>`, :ref:`BlitMaterial<class_BlitMaterial>`, :ref:`CanvasItemMaterial<class_CanvasItemMaterial>`, :ref:`FogMaterial<class_FogMaterial>`, :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>`, :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>`, :ref:`PhysicalSkyMaterial<class_PhysicalSkyMaterial>`, :ref:`PlaceholderMaterial<class_PlaceholderMaterial>`, :ref:`ProceduralSkyMaterial<class_ProceduralSkyMaterial>`, :ref:`ShaderMaterial<class_ShaderMaterial>`

Віртуальний базовий клас по застосуванню візуальних властивостей об'єкту, таких як колір і грубість.

.. rst-class:: classref-introduction-group

Опис
--------

**Material** - базовий ресурс, який використовується для фарбування та затінення геометрії. Всі матеріали успадкують від неї і майже всі :ref:`VisualInstance3D<class_VisualInstance3D>` отримані вершини носять **Material**. Кілька прапорів і параметрів поділяться між усіма типами матеріалів і налаштовують тут.

Важливо, щоб створити власний тип матеріалу в скрипті або в GDExtension.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `3D Матеріал Тестери Демо <https://godotengine.org/asset-library/asset/2742>`__

- `Демо-версія шутера від третьої особи (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------+
   | :ref:`Material<class_Material>` | :ref:`next_pass<class_Material_property_next_pass>`             |
   +---------------------------------+-----------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`render_priority<class_Material_property_render_priority>` |
   +---------------------------------+-----------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`_can_do_next_pass<class_Material_private_method__can_do_next_pass>`\ (\ ) |virtual| |const|               |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`_can_use_render_priority<class_Material_private_method__can_use_render_priority>`\ (\ ) |virtual| |const| |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Mode<enum_Shader_Mode>`   | :ref:`_get_shader_mode<class_Material_private_method__get_shader_mode>`\ (\ ) |virtual| |required| |const|      |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`           | :ref:`_get_shader_rid<class_Material_private_method__get_shader_rid>`\ (\ ) |virtual| |required| |const|        |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>` | :ref:`create_placeholder<class_Material_method_create_placeholder>`\ (\ ) |const|                               |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`inspect_native_shader_code<class_Material_method_inspect_native_shader_code>`\ (\ )                       |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константи
------------------

.. _class_Material_constant_RENDER_PRIORITY_MAX:

.. rst-class:: classref-constant

**RENDER_PRIORITY_MAX** = ``127`` :ref:`🔗<class_Material_constant_RENDER_PRIORITY_MAX>`

Максимальне значення параметра :ref:`render_priority<class_Material_property_render_priority>`.

.. _class_Material_constant_RENDER_PRIORITY_MIN:

.. rst-class:: classref-constant

**RENDER_PRIORITY_MIN** = ``-128`` :ref:`🔗<class_Material_constant_RENDER_PRIORITY_MIN>`

Мінімальне значення для параметра :ref:`render_priority<class_Material_property_render_priority>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Material_property_next_pass:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **next_pass** :ref:`🔗<class_Material_property_next_pass>`

.. rst-class:: classref-property-setget

- |void| **set_next_pass**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_next_pass**\ (\ )

Налаштовує **Material** для наступного проходу. Цей об'єкт знову за допомогою іншого матеріалу.

\ **Примітка:** :ref:`next_pass<class_Material_property_next_pass>` матеріали не обов'язково витягуються відразу після джерела **Material**. Порядок малювання визначається властивостями матеріалів, :ref:`render_priority<class_Material_property_render_priority>`, і відстань до камери.

\ **Примітка:** Це стосується :ref:`StandardMaterial3D<class_StandardMaterial3D>` і :ref:`ShaderMaterial<class_ShaderMaterial>` з типом "Spatial".

.. rst-class:: classref-item-separator

----

.. _class_Material_property_render_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **render_priority** :ref:`🔗<class_Material_property_render_priority>`

.. rst-class:: classref-property-setget

- |void| **set_render_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_render_priority**\ (\ )

Встановлює пріоритет рендерингу для об'єктів у 3D-сценах. Об'єкти з вищим пріоритетом будуть відсортовані перед об'єктами з нижчим пріоритетом. Іншими словами, всі об'єкти з :ref:`render_priority<class_Material_property_render_priority>` ``1`` будуть відрендерені поверх усіх об'єктів з :ref:`render_priority<class_Material_property_render_priority>` ``0``.

\ **Примітка:** Це стосується лише :ref:`StandardMaterial3D<class_StandardMaterial3D>` та :ref:`ShaderMaterial<class_ShaderMaterial>` з типом "Spatial".

\ **Примітка:** Це не вплине на те, як прозорі об'єкти сортуються відносно непрозорих об'єктів, або як динамічні сітки будуть відсортовані відносно інших непрозорих сіток. Це тому, що всі прозорі об'єкти малюються після всіх непрозорих об'єктів, а всі динамічні непрозорі сітки малюються перед іншими непрозорими сітками.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Material_private_method__can_do_next_pass:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_do_next_pass**\ (\ ) |virtual| |const| :ref:`🔗<class_Material_private_method__can_do_next_pass>`

Тільки схильні до мети переїдання. Ви не можете викликати цю функцію безпосередньо. Використовуються внутрішньо, щоб визначити, чи слід показувати :ref:`next_pass<class_Material_property_next_pass>` в редакторі або ні.

.. rst-class:: classref-item-separator

----

.. _class_Material_private_method__can_use_render_priority:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_use_render_priority**\ (\ ) |virtual| |const| :ref:`🔗<class_Material_private_method__can_use_render_priority>`

Тільки схильні до мети переїдання. Ви не можете викликати цю функцію безпосередньо. Використовуються внутрішньо, щоб визначити, чи слід показувати :ref:`render_priority<class_Material_property_render_priority>` у редакторі або ні.

.. rst-class:: classref-item-separator

----

.. _class_Material_private_method__get_shader_mode:

.. rst-class:: classref-method

:ref:`Mode<enum_Shader_Mode>` **_get_shader_mode**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Material_private_method__get_shader_mode>`

Тільки схильні до мети переїдання. Ви не можете викликати цю функцію безпосередньо. Використовуються внутрішні інструменти редактора.

.. rst-class:: classref-item-separator

----

.. _class_Material_private_method__get_shader_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_shader_rid**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Material_private_method__get_shader_rid>`

Тільки схильні до мети переїдання. Ви не можете викликати цю функцію безпосередньо. Використовуються внутрішні інструменти редактора. Використовується для доступу до **Material** :ref:`Shader<class_Shader>`.

.. rst-class:: classref-item-separator

----

.. _class_Material_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_Material_method_create_placeholder>`

Створює резиденцію вкладника цього ресурсу (``Складацький статут``).

.. rst-class:: classref-item-separator

----

.. _class_Material_method_inspect_native_shader_code:

.. rst-class:: classref-method

|void| **inspect_native_shader_code**\ (\ ) :ref:`🔗<class_Material_method_inspect_native_shader_code>`

Доступно лише під час роботи в редакторі. Відкриває спливаюче вікно, яке візуалізує згенерований код шейдера, включаючи всі варіанти та внутрішній код шейдера. Дивіться також :ref:`Shader.inspect_native_shader_code()<class_Shader_method_inspect_native_shader_code>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
