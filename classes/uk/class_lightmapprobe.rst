:github_url: hide

.. _class_LightmapProbe:

LightmapProbe
=============

**Успадковує:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Представляє собою один ручний розміщений пробок для динамічного освітлення об'єкта :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-introduction-group

Опис
--------

**LightmapProbe** являє собою позицію одного ручного розміщення зонда для динамічного освітлення об'єкта з :ref:`LightmapGI<class_LightmapGI>`. Lightmap зондує вплив на освітлення :ref:`GeometryInstance3D<class_GeometryInstance3D>`-деревих вузлів, які мають їх :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>`, встановлених до :ref:`GeometryInstance3D.GI_MODE_DYNAMIC<class_GeometryInstance3D_constant_GI_MODE_DYNAMIC>`.

Зазвичай, :ref:`LightmapGI<class_LightmapGI>` зонди розміщуються автоматично, встановлюючи :ref:`LightmapGI.generate_probes_subdiv<class_LightmapGI_property_generate_probes_subdiv>` на значення, відмінне від :ref:`LightmapGI.GENERATE_PROBES_DISABLED<class_LightmapGI_constant_GENERATE_PROBES_DISABLED>`. При створенні **LightmapProbe** вузли перед випіканням Lightmaps ви можете додати більше зон в певні області для більш детальної інформації, або вимкнути автоматичне генерування і спиратися тільки на вручну розміщені зонди замість.

\ **Примітка:** **LightmapProbe** вершини, які розміщуються після випікання Lightmap ігноруються динамічними об'єктами. Після створення або модифікації **LightmapProbe** для зон, які повинні бути ефективними.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
