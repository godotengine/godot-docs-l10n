:github_url: hide

.. _class_LightmapperRD:

LightmapperRD
=============

**Наследует:** :ref:`Lightmapper<class_Lightmapper>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Встроенный модуль отображения освещения на базе графического процессора для использования с :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-introduction-group

Описание
----------------

LightmapperRD (где RD означает :ref:`RenderingDevice<class_RenderingDevice>`) — это встроенный графический процессор для создания карт освещения, используемый с :ref:`LightmapGI<class_LightmapGI>`. На большинстве выделенных графических процессоров он может создавать карты освещения намного быстрее, чем большинство процессоров. LightmapperRD использует вычислительные шейдеры для создания карт освещения, поэтому для его использования не требуется установка библиотек CUDA или OpenCL.

\ **Примечание:** Для работы этого графического процессора требуется поддержка бэкенда :ref:`RenderingDevice<class_RenderingDevice>` (рендереры Forward+ и Mobile). При использовании рендерера Compatibility для создания карт освещения будет использоваться временный :ref:`RenderingDevice<class_RenderingDevice>`. Поддержка :ref:`RenderingDevice<class_RenderingDevice>` не требуется для *рендеринга* карт освещения, которые уже были созданы ранее.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
