:github_url: hide

.. _class_EditorExportPlatformWeb:

EditorExportPlatformWeb
=======================

**继承：** :ref:`EditorExportPlatform<class_EditorExportPlatform>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Web 导出器。

.. rst-class:: classref-introduction-group

描述
----

Web 导出器能够自定义 web 构建的处理方式。在编辑器的“导出”窗口中，添加“Web”预设时会创建这个导出器。

\ **注意：**\ Web 上的 Godot 是在一个 ``<canvas>`` 标签中渲染的。这个画布是作为程序的主 :ref:`Window<class_Window>` 使用的，但是一般没有办法手动调整位置和大小。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`为 Web 导出 <../tutorials/export/exporting_for_web>`

- :doc:`网页文档索引 <../tutorials/platform/web/index>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`custom_template/debug<class_EditorExportPlatformWeb_property_custom_template/debug>`                                                                         |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`custom_template/release<class_EditorExportPlatformWeb_property_custom_template/release>`                                                                     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`html/canvas_resize_policy<class_EditorExportPlatformWeb_property_html/canvas_resize_policy>`                                                                 |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`html/custom_html_shell<class_EditorExportPlatformWeb_property_html/custom_html_shell>`                                                                       |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`html/experimental_virtual_keyboard<class_EditorExportPlatformWeb_property_html/experimental_virtual_keyboard>`                                               |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`html/export_icon<class_EditorExportPlatformWeb_property_html/export_icon>`                                                                                   |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`html/focus_canvas_on_start<class_EditorExportPlatformWeb_property_html/focus_canvas_on_start>`                                                               |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`html/head_include<class_EditorExportPlatformWeb_property_html/head_include>`                                                                                 |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`   | :ref:`progressive_web_app/background_color<class_EditorExportPlatformWeb_property_progressive_web_app/background_color>`                                           |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`progressive_web_app/display<class_EditorExportPlatformWeb_property_progressive_web_app/display>`                                                             |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`progressive_web_app/enabled<class_EditorExportPlatformWeb_property_progressive_web_app/enabled>`                                                             |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`progressive_web_app/ensure_cross_origin_isolation_headers<class_EditorExportPlatformWeb_property_progressive_web_app/ensure_cross_origin_isolation_headers>` |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`progressive_web_app/icon_144x144<class_EditorExportPlatformWeb_property_progressive_web_app/icon_144x144>`                                                   |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`progressive_web_app/icon_180x180<class_EditorExportPlatformWeb_property_progressive_web_app/icon_180x180>`                                                   |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`progressive_web_app/icon_512x512<class_EditorExportPlatformWeb_property_progressive_web_app/icon_512x512>`                                                   |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`progressive_web_app/offline_page<class_EditorExportPlatformWeb_property_progressive_web_app/offline_page>`                                                   |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`progressive_web_app/orientation<class_EditorExportPlatformWeb_property_progressive_web_app/orientation>`                                                     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`threads/emscripten_pool_size<class_EditorExportPlatformWeb_property_threads/emscripten_pool_size>`                                                           |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`threads/godot_pool_size<class_EditorExportPlatformWeb_property_threads/godot_pool_size>`                                                                     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`variant/extensions_support<class_EditorExportPlatformWeb_property_variant/extensions_support>`                                                               |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`variant/thread_support<class_EditorExportPlatformWeb_property_variant/thread_support>`                                                                       |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`vram_texture_compression/for_desktop<class_EditorExportPlatformWeb_property_vram_texture_compression/for_desktop>`                                           |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`vram_texture_compression/for_mobile<class_EditorExportPlatformWeb_property_vram_texture_compression/for_mobile>`                                             |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_EditorExportPlatformWeb_property_custom_template/debug:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/debug** :ref:`🔗<class_EditorExportPlatformWeb_property_custom_template/debug>`

用于调试构建的自定义导出模板的文件路径。如果留空，则默认模板将被使用。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_custom_template/release:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/release** :ref:`🔗<class_EditorExportPlatformWeb_property_custom_template/release>`

用于发布版本的自定义导出模板的文件路径。如果留空，则默认模板将被使用。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_html/canvas_resize_policy:

.. rst-class:: classref-property

:ref:`int<class_int>` **html/canvas_resize_policy** :ref:`🔗<class_EditorExportPlatformWeb_property_html/canvas_resize_policy>`

决定 Godot 应如何调整画布的大小。

- **None：**\ 画布不会自动调整大小。

- **Project：**\ 画布的大小由 :ref:`ProjectSettings<class_ProjectSettings>` 决定。

- **Adaptive：**\ 画布自动调整到尽可能覆盖 Web 页面的大小。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_html/custom_html_shell:

.. rst-class:: classref-property

:ref:`String<class_String>` **html/custom_html_shell** :ref:`🔗<class_EditorExportPlatformWeb_property_html/custom_html_shell>`

包裹导出后 Web 构建的自定义 HTML 页面。留空时使用默认的 HTML 壳。

详见教程\ :doc:`《自定义 HTML5 壳》 <../tutorials/platform/web/customizing_html5_shell>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_html/experimental_virtual_keyboard:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **html/experimental_virtual_keyboard** :ref:`🔗<class_EditorExportPlatformWeb_property_html/experimental_virtual_keyboard>`

**实验性：** 未来版本中可能会修改或移除该属性。

如果为 ``true``\ ，则将对虚拟键盘的支持嵌入到网页中，在触摸屏设备上会在必要时显示。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_html/export_icon:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **html/export_icon** :ref:`🔗<class_EditorExportPlatformWeb_property_html/export_icon>`

如果为 ``true``\ ，则项目图标将用作该应用程序网页的图标。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_html/focus_canvas_on_start:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **html/focus_canvas_on_start** :ref:`🔗<class_EditorExportPlatformWeb_property_html/focus_canvas_on_start>`

如果为 ``true``\ ，则浏览器窗口已经获得焦点，且一旦加载应用程序时，画布就会获得焦点。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_html/head_include:

.. rst-class:: classref-property

:ref:`String<class_String>` **html/head_include** :ref:`🔗<class_EditorExportPlatformWeb_property_html/head_include>`

要在 ``<head>`` 中额外添加的 HTML 标签，例如 ``<meta>`` 标签。

\ **注意：**\ ``<title>`` 标签无须自行添加，会根据项目名称自动添加。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/background_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **progressive_web_app/background_color** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/background_color>`

Web 应用程序后面使用的背景颜色。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/display:

.. rst-class:: classref-property

:ref:`int<class_int>` **progressive_web_app/display** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/display>`

用于该渐进式 Web 应用程序的 `显示模式 <https://developer.mozilla.org/en-US/docs/Web/Manifest/display/>`__\ 。不同的浏览器和平台的行为可能不同。

- **全屏：**\ 全屏显示应用程序并隐藏所有浏览器的 UI 元素。

- **独立：**\ 在单独的窗口中显示应用程序并隐藏所有浏览器的 UI 元素。

- **最小 UI：**\ 在单独的窗口中显示应用程序，并且仅显示浏览器的 UI 元素以进行导航。

- **浏览器：**\ 将应用程序显示为普通网页。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **progressive_web_app/enabled** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/enabled>`

如果为 ``true``\ ，则会将该 Web 构建设置为 `渐进式网络应用程序 <https://zh.wikipedia.org/zh-cn/%E6%B8%90%E8%BF%9B%E5%BC%8F%E7%BD%91%E7%BB%9C%E5%BA%94%E7%94%A8%E7%A8%8B%E5%BA%8F>`__\ （PWA）。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/ensure_cross_origin_isolation_headers:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **progressive_web_app/ensure_cross_origin_isolation_headers** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/ensure_cross_origin_isolation_headers>`

启用后，渐进式 Web 应用程序将确保每个请求都具有跨源隔离标头（COEP/COOP）。

这可以简化设置以服务导出的游戏。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/icon_144x144:

.. rst-class:: classref-property

:ref:`String<class_String>` **progressive_web_app/icon_144x144** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/icon_144x144>`

该 Web 应用程序的最小图标的文件路径。如果未定义，则默认为项目图标。

\ **注意：**\ 如果图标不是 144×144，则它将自动调整大小以适应最终构建。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/icon_180x180:

.. rst-class:: classref-property

:ref:`String<class_String>` **progressive_web_app/icon_180x180** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/icon_180x180>`

该 Web 应用程序的小图标的文件路径。如果未定义，则默认为项目图标。

\ **注意：**\ 如果图标不是 180×180，则它将自动调整大小以适应最终构建。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/icon_512x512:

.. rst-class:: classref-property

:ref:`String<class_String>` **progressive_web_app/icon_512x512** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/icon_512x512>`

该 Web 应用程序的最小图标的文件路径。如果未定义，则默认为项目图标。

\ **注意：**\ 如果图标不是 512×512，则它将自动调整大小以适应最终构建。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/offline_page:

.. rst-class:: classref-property

:ref:`String<class_String>` **progressive_web_app/offline_page** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/offline_page>`

如果托管该页面的服务器不可用，则显示该页面。该页面保存在客户端的机器中。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/orientation:

.. rst-class:: classref-property

:ref:`int<class_int>` **progressive_web_app/orientation** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/orientation>`

通过移动设备运行 Web 应用程序时要使用的方向。

- **任意：**\ 不强制方向。

- **横向：**\ 强制水平布局（宽度大于高度）。

- **纵向：**\ 强制垂直布局（高度大于宽度）。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_threads/emscripten_pool_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **threads/emscripten_pool_size** :ref:`🔗<class_EditorExportPlatformWeb_property_threads/emscripten_pool_size>`

Emscripten 在启动时分配的线程数。较小的值将分配较少的线程，消耗较少的系统资源，但可能会面临池中线程用完的风险，需要在运行时分配更多线程，可能导致死锁。

\ **注意：**\ 一些浏览器对可分配的线程数量有严格的限制，因此最好谨慎行事，保持较低的线程数。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_threads/godot_pool_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **threads/godot_pool_size** :ref:`🔗<class_EditorExportPlatformWeb_property_threads/godot_pool_size>`

覆盖 :ref:`WorkerThreadPool<class_WorkerThreadPool>` 的默认大小。该设置在 :ref:`ProjectSettings.threading/worker_pool/max_threads<class_ProjectSettings_property_threading/worker_pool/max_threads>` 设为 ``-1``\ （默认）时生效。该大小必须小于 :ref:`threads/emscripten_pool_size<class_EditorExportPlatformWeb_property_threads/emscripten_pool_size>`\ ，否则可能造成死锁。

在使用线程时，该大小需足以容纳依赖专用线程的特性，例如 :ref:`ProjectSettings.physics/2d/run_on_separate_thread<class_ProjectSettings_property_physics/2d/run_on_separate_thread>` 和 :ref:`ProjectSettings.rendering/driver/threads/thread_model<class_ProjectSettings_property_rendering/driver/threads/thread_model>`\ 。通常，建议确保此值至少为 ``4``\ ，并且至少比 :ref:`threads/emscripten_pool_size<class_EditorExportPlatformWeb_property_threads/emscripten_pool_size>` 小 ``2`` 或 ``3``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_variant/extensions_support:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **variant/extensions_support** :ref:`🔗<class_EditorExportPlatformWeb_property_variant/extensions_support>`

如果为 ``true``\ ，则启用对该 Web 构建的 :ref:`GDExtension<class_GDExtension>` 支持。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_variant/thread_support:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **variant/thread_support** :ref:`🔗<class_EditorExportPlatformWeb_property_variant/thread_support>`

如果为 ``true``\ ，则导出的游戏将支持多线程。多线程支持要求\ `网站支持“跨源隔离” <https://web.dev/articles/coop-coep>`__\ ，设置起来可能比较麻烦，并且可能会由于安全原因而受到限制（例如无法与第三方网站通信）。

如果为 ``false``\ ，则导出的游戏将不支持多线程。因此，游戏会更容易出现性能和音频问题，但只要求在 HTTPS 网站上运行。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_vram_texture_compression/for_desktop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vram_texture_compression/for_desktop** :ref:`🔗<class_EditorExportPlatformWeb_property_vram_texture_compression/for_desktop>`

如果为 ``true``\ ，则允许通过 S3TC/BPTC 算法针对桌面优化纹理。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_vram_texture_compression/for_mobile:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vram_texture_compression/for_mobile** :ref:`🔗<class_EditorExportPlatformWeb_property_vram_texture_compression/for_mobile>`

如果为 ``true``\ ，则允许通过 ETC2/ASTC 算法针对移动设备优化纹理。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
