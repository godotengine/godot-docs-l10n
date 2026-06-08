:github_url: hide

.. _class_ShaderMaterial:

ShaderMaterial
==============

**Успадковує:** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Матеріал, визначений за індивідуальною програмою :ref:`Shader<class_Shader>` та значеннями параметрів його шейдера.

.. rst-class:: classref-introduction-group

Опис
--------

Матеріал, який використовує користувацьку програму :ref:`Shader<class_Shader>`, щоб надати візуальні елементи (полотні елементи, сітки, лижі, тумани), або для обробки частинок. У порівнянні з іншими матеріалами, **ShaderMaterial** надає більш глибокий контроль над створеним кодом шейра. Для отримання більш детальної інформації див. індекс документації тінейджерів нижче.

Кілька **ShaderMaterial**\ s може використовувати той же шейдер і налаштовувати різні значення для формувальних уніформ.

\ **Примітка:** З причин виконання :ref:`Resource.changed<class_Resource_signal_changed>` сигнал, що видається тільки при зміні :ref:`ресурсу.resource_name<class_ресурсу_member_resource_name>`. Тільки в редакторі, він також використовується для змін :ref:`shader<class_ShaderMaterial_property_shader>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Індекс документації шейдерів <../tutorials/shaders/index>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------+
   | :ref:`Shader<class_Shader>` | :ref:`shader<class_ShaderMaterial_property_shader>` |
   +-----------------------------+-----------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
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

Описи властивостей
------------------------------------

.. _class_ShaderMaterial_property_shader:

.. rst-class:: classref-property

:ref:`Shader<class_Shader>` **shader** :ref:`🔗<class_ShaderMaterial_property_shader>`

.. rst-class:: classref-property-setget

- |void| **set_shader**\ (\ value\: :ref:`Shader<class_Shader>`\ )
- :ref:`Shader<class_Shader>` **get_shader**\ (\ )

Програма :ref:`Shader<class_Shader>` використовується для рендерингу цього матеріалу.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_ShaderMaterial_method_get_shader_parameter:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_shader_parameter**\ (\ param\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ShaderMaterial_method_get_shader_parameter>`

Повертає поточний набір значення для цього матеріалу уніформи в тіні.

.. rst-class:: classref-item-separator

----

.. _class_ShaderMaterial_method_set_shader_parameter:

.. rst-class:: classref-method

|void| **set_shader_parameter**\ (\ param\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_ShaderMaterial_method_set_shader_parameter>`

Змінює значення, встановлене для цього матеріалу уніформи в шейдері.

\ **Примітка:** ``param`` чутливий до регістру та має точно збігатися з назвою уніформи в коді (не з назвою, написаною з великої літери в інспекторі).

\ **Примітка:** Зміни до уніформи шейдера будуть чинними для всіх екземплярів, що використовують цей **ShaderMaterial**. Щоб запобігти цьому, використовуйте уніформи для кожного екземпляра з :ref:`CanvasItem.set_instance_shader_parameter()<class_CanvasItem_method_set_instance_shader_parameter>`, :ref:`GeometryInstance3D.set_instance_shader_parameter()<class_GeometryInstance3D_method_set_instance_shader_parameter>` або дублюйте ресурс **ShaderMaterial** за допомогою :ref:`Resource.duplicate()<class_Resource_method_duplicate>`. Уніформи для кожного екземпляра дозволяють краще повторно використовувати шейдери і, отже, швидші, тому їм слід надавати перевагу над дублюванням **ShaderMaterial**, коли це можливо.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
