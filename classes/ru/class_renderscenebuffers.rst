:github_url: hide

.. _class_RenderSceneBuffers:

RenderSceneBuffers
==================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`RenderSceneBuffersExtension<class_RenderSceneBuffersExtension>`, :ref:`RenderSceneBuffersRD<class_RenderSceneBuffersRD>`

Объект буфера абстрактной сцены, созданный для каждого окна просмотра, для которого выполняется 3D-рендеринг.

.. rst-class:: classref-introduction-group

Описание
----------------

Абстрактный объект буферов сцены, создаваемый для каждого видового окна, для которого выполняется 3D-рендеринг. Он управляет любыми дополнительными буферами, используемыми во время рендеринга, и будет отбрасывать буферы при изменении размера видового окна. См. также :ref:`RenderSceneBuffersRD<class_RenderSceneBuffersRD>`.

\ **Примечание:** Это внутренний объект сервера рендеринга. Не создавайте экземпляр этого класса из скрипта.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`configure<class_RenderSceneBuffers_method_configure>`\ (\ config\: :ref:`RenderSceneBuffersConfiguration<class_RenderSceneBuffersConfiguration>`\ ) |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_RenderSceneBuffers_method_configure:

.. rst-class:: classref-method

|void| **configure**\ (\ config\: :ref:`RenderSceneBuffersConfiguration<class_RenderSceneBuffersConfiguration>`\ ) :ref:`🔗<class_RenderSceneBuffers_method_configure>`

Этот метод вызывается сервером рендеринга при изменении конфигурации соответствующей области просмотра. Он удаляет старые буферы и заново создает используемые внутренние буферы.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
