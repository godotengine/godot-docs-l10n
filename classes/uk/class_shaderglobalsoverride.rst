:github_url: hide

.. _class_ShaderGlobalsOverride:

ShaderGlobalsOverride
=====================

**Успадковує:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Вузол, що використовується для перевизначення значень параметрів глобального шейра в сцені.

.. rst-class:: classref-introduction-group

Опис
--------

Подібно до того, як вершина :ref:`WorldEnvironment<class_WorldEnvironment>` може бути використана для перенадання навколишнього середовища, в той час як конкретна сцена завантажується, **ShaderGlobalsOverride** може використовуватися для подолання глобальних параметрів тіні тимчасово. Після того, як вузол видалено, відновлено всі значення проекту для глобальних параметрів шейдера. Див. :ref:`RenderingServer<class_RenderingServer>` ``global_shader_parameter_*`` методи отримання додаткової інформації.

\ **Примітка:** Тільки один **ShaderGlobalsOverride** може бути використаний для сцени. Якщо у вас є більше одного **ShaderGlobalsOverride** вершина на ялинці, буде враховано лише перший вузол (для дерева).

\ **Примітка:** Всі **ShaderGlobalsOverride** вершини зроблені частиною ``"shader_overrides_group"`` групи, коли вони додаються до дерева сцени. В даний час активна **ShaderGlobalsOverride** вершина також має ``"shader_overrides_group_active"`` група додана до неї. Ви можете використовувати це, щоб перевірити, який **ShaderGlobalsOverride** вузол наразі активний.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Штрихування мови <../tutorials/shaders/shader_reference/shading_language>`

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
