:github_url: hide

.. _class_VisualShaderNodeReroute:

VisualShaderNodeReroute
=======================

**Успадковує:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Вузлом, що дозволяє перепланувати з'єднання в графі візуального відтінку.

.. rst-class:: classref-introduction-group

Опис
--------

Автоматично адаптує його тип порту до типу вхідного з'єднання і забезпечує дійсні з'єднання.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`PortType<enum_VisualShaderNode_PortType>` | :ref:`get_port_type<class_VisualShaderNodeReroute_method_get_port_type>`\ (\ ) |const| |
   +-------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_VisualShaderNodeReroute_method_get_port_type:

.. rst-class:: classref-method

:ref:`PortType<enum_VisualShaderNode_PortType>` **get_port_type**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeReroute_method_get_port_type>`

Повертає тип порту переворотного вузла.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
