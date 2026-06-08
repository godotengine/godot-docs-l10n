:github_url: hide

.. _class_ResourceImporterSVG:

ResourceImporterSVG
===================

**Успадковує:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Імпортує SVG-файл як автоматично масштабовану текстуру для використання в елементах інтерфейсу користувача та 2D-рендерингу.

.. rst-class:: classref-introduction-group

Опис
--------

Цей імпортер імпортує ресурси :ref:`DPITexture<class_DPITexture>`. Див. також :ref:`ResourceImporterTexture<class_ResourceImporterTexture>` та :ref:`ResourceImporterImage<class_ResourceImporterImage>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`base_scale<class_ResourceImporterSVG_property_base_scale>`             | ``1.0``   |
   +-------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`color_map<class_ResourceImporterSVG_property_color_map>`               | ``{}``    |
   +-------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`compress<class_ResourceImporterSVG_property_compress>`                 | ``true``  |
   +-------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`fix_alpha_border<class_ResourceImporterSVG_property_fix_alpha_border>` | ``false`` |
   +-------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`premult_alpha<class_ResourceImporterSVG_property_premult_alpha>`       | ``false`` |
   +-------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`saturation<class_ResourceImporterSVG_property_saturation>`             | ``1.0``   |
   +-------------------------------------+------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_ResourceImporterSVG_property_base_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **base_scale** = ``1.0`` :ref:`🔗<class_ResourceImporterSVG_property_base_scale>`

Масштаб текстури. ``1.0`` – це оригінальний розмір SVG. Вищі значення призводять до більшого зображення.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterSVG_property_color_map:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **color_map** = ``{}`` :ref:`🔗<class_ResourceImporterSVG_property_color_map>`

Якщо встановлено, перерозподіляє кольори текстур відповідно до карти :ref:`Color<class_Color>`-:ref:`Color<class_Color>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterSVG_property_compress:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress** = ``true`` :ref:`🔗<class_ResourceImporterSVG_property_compress>`

Якщо ``true``, для джерела SVG використовується стиснення без втрат.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterSVG_property_fix_alpha_border:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fix_alpha_border** = ``false`` :ref:`🔗<class_ResourceImporterSVG_property_fix_alpha_border>`

Якщо ``true``, пікселі, що мають той самий колір фону, розміщуються у перехідній зоні між прозорими та непрозорими ділянками. Для текстур, що відображаються з білінійною фільтрацією, це допомагає зменшити ефект контурів під час експорту зображень із графічного редактора.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterSVG_property_premult_alpha:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **premult_alpha** = ``false`` :ref:`🔗<class_ResourceImporterSVG_property_premult_alpha>`

Альтернативою виправленню затемнених країв за допомогою :ref:`fix_alpha_border<class_ResourceImporterSVG_property_fix_alpha_border>` є використання альфа-каналу з попереднім множенням. Увімкнувши цю опцію, текстура буде перетворена у цей формат. Для коректного відображення текстури з попереднім множенням альфа-каналу необхідні спеціальні матеріали:

- У 2D потрібно створити :ref:`CanvasItemMaterial<class_CanvasItemMaterial>` і налаштувати його на використання режиму змішування :ref:`CanvasItemMaterial.BLEND_MODE_PREMULT_ALPHA<class_CanvasItemMaterial_constant_BLEND_MODE_PREMULT_ALPHA>` на :ref:`CanvasItem<class_CanvasItem>`\ s, які використовують цю текстуру. У власних шейдерах ``canvas_item`` слід використовувати ``render_mode blend_premul_alpha;``.

- У 3D потрібно створити :ref:`BaseMaterial3D<class_BaseMaterial3D>` та налаштувати його на використання режиму змішування :ref:`BaseMaterial3D.BLEND_MODE_PREMULT_ALPHA<class_BaseMaterial3D_constant_BLEND_MODE_PREMULT_ALPHA>` для матеріалів, що використовують цю текстуру. У власних шейдерах ``spatial`` слід використовувати ``render_mode blend_premul_alpha;``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterSVG_property_saturation:

.. rst-class:: classref-property

:ref:`float<class_float>` **saturation** = ``1.0`` :ref:`🔗<class_ResourceImporterSVG_property_saturation>`

Замінює насиченість текстури.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
