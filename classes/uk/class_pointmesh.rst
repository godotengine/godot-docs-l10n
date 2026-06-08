:github_url: hide

.. _class_PointMesh:

PointMesh
=========

**Успадковує:** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Сітка з примітивом однієї точки.

.. rst-class:: classref-introduction-group

Опис
--------

**PointMesh** – це примітивна сітка, що складається з однієї точки. Замість того, щоб покладатися на трикутники, точки відображаються на екрані як один прямокутник з постійним розміром. Вони призначені для використання з системами частинок, але також можуть бути використані як дешевий спосіб відображення спрайтів на білбордах (наприклад, у хмарі точок).

Для відображення точкові сітки повинні використовуватися з матеріалом, який має розмір у точці. Розмір точки можна отримати в шейдері за допомогою вбудованого ``POINT_SIZE`` або в :ref:`BaseMaterial3D<class_BaseMaterial3D>`, встановивши властивості :ref:`BaseMaterial3D.use_point_size<class_BaseMaterial3D_property_use_point_size>` та :ref:`BaseMaterial3D.point_size<class_BaseMaterial3D_property_point_size>`.

\ **Примітка:** Під час використання точкових сіток властивості, які зазвичай впливають на вершини, будуть ігноруватися, включаючи :ref:`BaseMaterial3D.billboard_mode<class_BaseMaterial3D_property_billboard_mode>`, :ref:`BaseMaterial3D.grow<class_BaseMaterial3D_property_grow>` та :ref:`BaseMaterial3D.cull_mode<class_BaseMaterial3D_property_cull_mode>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
