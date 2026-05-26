:github_url: hide

.. _class_CanvasGroup:

CanvasGroup
===========

**Успадковує:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Об’єднує кілька 2D вузлів в одну операцію малювання.

.. rst-class:: classref-introduction-group

Опис
--------

Дочірні вузли :ref:`CanvasItem<class_CanvasItem>` об'єкта **CanvasGroup** малюються як один об'єкт. Це дозволяє, наприклад, малювати перекриваючі напівпрозорі 2D-вузли, не роблячи перекриваючі ділянки більш непрозорими, ніж передбачалося (для досягнення цього ефекту встановіть властивість :ref:`CanvasItem.self_modulate<class_CanvasItem_property_self_modulate>` об'єкта **CanvasGroup**).

\ **Примітка:** Об'єкт **CanvasGroup** використовує власний шейдер для зчитування з бекбуфера для малювання своїх дочірніх об'єктів. Призначення :ref:`Material<class_Material>` об'єкту **CanvasGroup** перевизначає вбудований шейдер. Щоб дублювати поведінку вбудованого шейдера у власному :ref:`Shader<class_Shader>`, використовуйте наступне:

::

    shader_type canvas_item;
    render_mode unshaded;

    uniform sampler2D screen_texture : hint_screen_texture, repeat_disable, filter_nearest;

    void fragment() {
        vec4 c = textureLod(screen_texture, SCREEN_UV, 0.0); 

        if (c.a > 0.0001) {
            c.rgb /= c.a;
        }

        COLOR *= c;
    }

\ **Примітка:** Оскільки **CanvasGroup** та :ref:`CanvasItem.clip_children<class_CanvasItem_property_clip_children>` використовують зворотний буфер, дочірні елементи **CanvasGroup**, у яких :ref:`CanvasItem.clip_children<class_CanvasItem_property_clip_children>` встановлено значення, відмінне від :ref:`CanvasItem.CLIP_CHILDREN_DISABLED<class_CanvasItem_constant_CLIP_CHILDREN_DISABLED>`, не працюватимуть належним чином.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`clear_margin<class_CanvasGroup_property_clear_margin>` | ``10.0``  |
   +---------------------------+--------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`fit_margin<class_CanvasGroup_property_fit_margin>`     | ``10.0``  |
   +---------------------------+--------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`use_mipmaps<class_CanvasGroup_property_use_mipmaps>`   | ``false`` |
   +---------------------------+--------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_CanvasGroup_property_clear_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **clear_margin** = ``10.0`` :ref:`🔗<class_CanvasGroup_property_clear_margin>`

.. rst-class:: classref-property-setget

- |void| **set_clear_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_clear_margin**\ (\ )

Встановлює розмір поля, яке використовується для розширення прямокутника очищення цієї **CanvasGroup**. Це розширить область заднього буфера, яка буде використовуватися **CanvasGroup**. Менший запас зменшить площу використовуваного резервного буфера, що може підвищити продуктивність, однак, якщо :ref:`use_mipmaps<class_CanvasGroup_property_use_mipmaps>` увімкнено, малий запас може призвести до помилок mipmap на краю **CanvasGroup**. Відповідно, його слід залишити якомога меншим, але збільшити, якщо по краях групи полотен з’являються артефакти.

.. rst-class:: classref-item-separator

----

.. _class_CanvasGroup_property_fit_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **fit_margin** = ``10.0`` :ref:`🔗<class_CanvasGroup_property_fit_margin>`

.. rst-class:: classref-property-setget

- |void| **set_fit_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fit_margin**\ (\ )

Встановлює розмір поля, яке використовується для розширення прямокутника, який можна намалювати, цієї **CanvasGroup**. Розмір **CanvasGroup** визначається підгонкою прямокутника навколо його дочірніх елементів, а потім розширенням прямокутника на :ref:`fit_margin<class_CanvasGroup_property_fit_margin>`. Це збільшує як використовувану область зворотного буфера, так і область, охоплену **CanvasGroup**, що може знизити продуктивність. Він має бути якомога меншим і розширюватися лише тоді, коли потрібно збільшити розмір (наприклад, для спеціальних ефектів шейдерів).

.. rst-class:: classref-item-separator

----

.. _class_CanvasGroup_property_use_mipmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_mipmaps** = ``false`` :ref:`🔗<class_CanvasGroup_property_use_mipmaps>`

.. rst-class:: classref-property-setget

- |void| **set_use_mipmaps**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_mipmaps**\ (\ )

Якщо ``true``, перед малюванням **CanvasGroup** обчислюються міп-мапи для буфера відтворення, щоб їх можна було використовувати у власному :ref:`ShaderMaterial<class_ShaderMaterial>`, приєднаному до **CanvasGroup**. Створення міп-мап знижує продуктивність, тому цю опцію слід вмикати лише за необхідності.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
