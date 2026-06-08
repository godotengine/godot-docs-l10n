:github_url: hide

.. _class_VisualShaderNodeGlobalExpression:

VisualShaderNodeGlobalExpression
================================

**Успадковує:** :ref:`VisualShaderNodeExpression<class_VisualShaderNodeExpression>` **<** :ref:`VisualShaderNodeGroupBase<class_VisualShaderNodeGroupBase>` **<** :ref:`VisualShaderNodeResizableBase<class_VisualShaderNodeResizableBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Спеціальна глобальна візуальна експресія шейдера, написана на мові Godot Shading.

.. rst-class:: classref-introduction-group

Опис
--------

Користувальницьке слово Godot Shader, яке розміщується на вершині створеного шейра. Ви можете розмістити різні визначення функції всередині, щоб викликати пізніше в :ref:`VisualShaderNodeExpression<class_VisualShaderNodeExpression>` (які вводяться в основні функції шейдера). Ви також можете вказати різні форми, форми та глобальні константи.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
