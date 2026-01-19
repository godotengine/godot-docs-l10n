:github_url: hide

.. _class_RenderSceneBuffers:

RenderSceneBuffers
==================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`RenderSceneBuffersExtension<class_RenderSceneBuffersExtension>`, :ref:`RenderSceneBuffersRD<class_RenderSceneBuffersRD>`

Абстрактна сцена об'єкта буферів, створена для кожного видупорту, для якого проводиться 3D рендеринг.

.. rst-class:: classref-introduction-group

Опис
--------

Абстрактний об'єкт буферів сцени, створений для кожного вікна перегляду, для якого виконується 3D-рендеринг. Він керує будь-якими додатковими буферами, що використовуються під час рендерингу, і відкидає буфери під час зміни розміру вікна перегляду. Див. також :ref:`RenderSceneBuffersRD<class_RenderSceneBuffersRD>`.

\ **Примітка:** Це внутрішній об'єкт сервера рендерингу. Не створюйте екземпляр цього класу зі скрипта.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`configure<class_RenderSceneBuffers_method_configure>`\ (\ config\: :ref:`RenderSceneBuffersConfiguration<class_RenderSceneBuffersConfiguration>`\ ) |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_RenderSceneBuffers_method_configure:

.. rst-class:: classref-method

|void| **configure**\ (\ config\: :ref:`RenderSceneBuffersConfiguration<class_RenderSceneBuffersConfiguration>`\ ) :ref:`🔗<class_RenderSceneBuffers_method_configure>`

Цей метод викликається сервером рендерингу, коли змінюється конфігурація пов'язаного вікна перегляду. Він відкидає старі буфери та відтворює використані внутрішні буфери.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
