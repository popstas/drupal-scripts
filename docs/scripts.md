# Drupal scripts docs

## drupal-add-users
Add users to Drupal in current directory via Drush.  
If password not defined, it will be generated.  
login=email  
  
Usage: drupal-add-users email  
        - add new user with login=email and role from USERS_DEFAULT_ROLE in config  
  
       drupal-add-users email [role=] [password=random]  
        - add new user with login=email, defined role and password  
  
       drupal-add-users all [path/to/file]  
        - add all users from file or from USERS_LIST_FILE in config,  
          file in format:  
          email [role] [password]  


## drupal-block-timings
Shows block load time for each block in Drupal.  
Columns: block,time,theme,region  


## drupal-bootstrap-timings
Shows Drupal bootstrap load timings.  
Each time shows bootstrap from previous level.  


## drupal-clear-cache-table



## drupal-cron-add



## drupal-cron-run
Run Drush cron in correct environment.  
  
Usage: drupal-cron-run root_path  
        - run drush cron in root_path  
  
       drupal-cron-run root_path elysia-cron  
        - run drush elysia-cron in root_path  
  
       drupal-cron-run root_path cron domain  
        - run drush cron in root_path using domain.  
          Need for override http://default.  
          Default domain - basename of root_path  


## drupal-database-settings
Shows database credentials from settings.php.  
  
Usage: drupal-database-settings (database|username|password|prefix|host|port)  


## drupal-decode
Decode serialized values from Drupal database.  
Can decode variables and arrays.  
true decodes as 1 and false as 0.  
Arrays decodes as print_r.  
  
Usage: drupal-decode "serialized_string"  
       echo "serialized_string" | drupal-decode  


## drupal-module-doc
block  
blog  
book  
color  
comment  
contact  
contextual  
dashboard  
dblog  
field  
field_ui  
file  
filter  
forum  
help  
image  
locale  
menu  
node  
openid  
overlay  
path  
php  
poll  
profile  
rdf  
search  
shortcut  
simpletest  
statistics  
syslog  
system  
taxonomy  
toolbar  
tracker  
translation  
trigger  
update  
user  
  
number  
options  
  
# подмодули  
admin_menu_toolbar  
context_ui  
ds_ui  
entityform_test  
feeds_ui  
feeds_import  
feeds_tamper_ui  
panels_mini  
xmlsitemap_menu  
xmlsitemap_node  
xmlsitemap_taxonomy  
ctools_custom_content  
panels_node  
views_ui  
  
  
# отсюда и ниже идет копипаста из инструкции  
--------------------------------------------  
# самописное  
viasite_views_exposed_filters - позволяет подменять раскрытые фильтры во вьюшках на кастомные селекты, данные из селектов берутся из специальных вьюшек, поддерживается контекст (данные выбиралки могут зависеть от другой выбиралки). Подробности в readme.txt модуля. Версия 0.2 поддерживает выбиралки терминов по умолчанию и выбиралки любых сущностей после донастройки. В 2 словах, чтобы передать в селект нужные текст и значение для option, нужно назвать поля как option_value и option_text  
viasite_entityform_popup - выводит в colorbox любую entityform, чтобы использовать, надо включить модуль, скопировать ссылку Submission link из списка entityforms, вставить разметку на страницу, что-то вроде этого - <a href="/eform/submit/callme">Заказать звонок</a> . В верстке у всех всплывалок есть класс colorbox-popup , надо привязываться к нему  
viasite_seo_extra - /usr/local/drupal/modules/viasite_seo_extra, модуль для генерации метатегов descriptions и keywords для страниц, на которых их нет (проверяет то, что создал модуль Metatag), кроме того, ограничивает descriptions 160 символами и keywords 250 символами.  
  
  
# последнее испробованное, еще неизвестно, понадобился ли модуль  
https://drupal.org/project/page_manager_pathauto - Позволяет задавать ЧПУ для пользовательских шаблонов страниц (/admin/structure/pages). Желательна dev-версия Pathauto. Есть опечатка в модуле: page_manager_pathauto_permissions (правильно - page_manager_pathauto_permission) - строка 6.  
https://drupal.org/project/fape - inline редактирование полей (не юзал)  
https://drupal.org/project/insert – вставка картинок и файлов в материал и/или в wysiwyg  
https://drupal.org/project/keywords – генерация метатегов из контента (не юзал)  
https://drupal.org/project/filefield_sources – возможность выбора источника файла в редакторе (ддиск, сервер, урл)  
https://drupal.org/project/filefield_sources_plupload - для массовой загрузки фоток в поле картинки (используется на 2города в фотоальбомах)  
https://drupal.org/project/update_advanced - выборочное отключение проверки обновлений для модулей, в связке с modified.txt и git позволяет любому сайту пережить обновление, на megashapka.ru  
  
  
# модули для каталога/магазина  
  
https://drupal.org/project/commerce - набор модулей для каталога/магазина, в 2 словах: для каталога нужно включать Commerce, Commerce UI, Line Item, Price, Product, Product Reference, Product UI, Commerce Backoffice, Commerce Backoffice Product  
https://drupal.org/project/commerce_autosku – автоартикулы, которые являются обязательными полями  
https://drupal.org/project/commerce_backoffice - весь бэкофис - набор вьюшек, для управления commerce. Commerce Backoffice content - у меня был конфликт его c views admin на privilegia-kuhni.ru, отключил  
https://drupal.org/project/commerce_fancy_attributes – контрол выбиралки цвета, еще какие-то контролы (не юзал)  
https://www.drupal.org/project/commerce_cop - Commerce Custom Offline Payments - учет оффлайновых платежей, например, если нужна заглушка (пока не подключена Робокасса), то можно включить подмодуль Cash On Delivery, переименовать метод оплаты в "Наличными при получении" и при оформлении заказа появится соответствующий пункт выбора оплаты, кроме того, и в админке в заказе можно отметить, что оффлайновый заказ оплачен.  
https://drupal.org/project/commerce_extra_panes - можно создавать доп.блоки для вывода на странице checkout (информация о правилах, лицензия, доп.инфа о доставке и т.п.), надо создать ноду и сделать на нее ссылку во вкладке (Магазин/Конфиг/Настройки оформления заказа)  
https://drupal.org/project/commerce_extra_price_formatters - позволяет форматировать цену (выводить с учетом скидок, сколько сэкономил, вывод без копеек) - как-то криво работает, реально полезно только для скрытия копеек и то под вопросом, проще поменять в хуке для всего сайта сразу  
https://www.drupal.org/project/commerce_rules_extra - добавляет полезные возможности для rules, специфичные для commerce, например, действия при изменении checkout panes, манипуляции с заказом или line items.  
https://drupal.org/project/commerce_stock - ввод кол-ва товара на складе: не дает купить больше, чем на складе, позволяет скрыть кнопку добавления в корзину при нулевом кол-ве (а оно может наступить после оформления кем-то заказа)  
https://drupal.org/project/commerce_custom_order_status - позволяет создавать новые статусы заказа (но все равно зашитые ненужные статусы приходится скрывать в хуке)  
https://drupal.org/project/commerce_fieldgroup_panes - добавление своих полей к заказу (например, комментария), пример: http://xandeadx.ru/blog/drupal/689  
commerce_receipt - https://www.drupal.org/sandbox/ymakux/1887390, Модуль создаёт новый способ оплаты "квитанция". Для генерации квитанций используются простые токены и HTML - шаблоны. Показывает кнопку квитанции прямо в процессе выбора оплаты, что неправильно, нужно закомментить кнопку в commerce_receipt_submit_form. �?спользуется на almaz-gold.ru.  
https://drupal.org/project/customer_profile_type_ui - замена стандартных профилей checkout (Billing Information, Shipping Information) на собственные, например на "�?нформация о доставке" со своими пользовательскими полями.  
https://drupal.org/project/inline_entity_form - обязательно для drupal commerce, встраивает сущность товара в ноду-отображение в админке. Вообще умеет разворачивать в форму любое поле entity reference. Не дружит с inline entity form, в материалах, где есть вложенные редакторы, нужно убирать кнопку Применить.  
https://www.drupal.org/project/commerce_invoice_receipt - печать счета при просмотре заказа а админке, кастомизировать счет приходится через копирование и редактирование commerce-order-invoice-view.tpl.php в sites/all/themes/THEME/templates  
https://drupal.org/project/views_dependent_filters - умные раскрывающиеся фильтры, когда у разных типов товаров разные поля, можно вывести выбиралки всех полей, но в результате будут выводиться только те выбиралки, которые относятся к отфильтрованным типам товаров  
https://drupal.org/project/views_autocomplete_filters - дополнение в выбиралке вьюшки по полю заголовка или текстового поля, как в поиске в шапке на instrument-plus.net  
  
  
# модули для управления доступом  
https://www.drupal.org/node/270000 - список модулей  
https://www.drupal.org/project/project_module?f%5B0%5D=&f%5B1%5D=&f%5B2%5D=im_vid_3%3A13434&f%5B3%5D=&f%5B4%5D=sm_field_project_type%3Afull&text=&solrsort=iss_project_release_usage+desc&op=Search - модули доступа по популярности  
https://www.drupal.org/project/acl - acl api, основа для многих модулей доступа  
https://www.drupal.org/project/content_access - расширенные права доступа по типам нод и по каждой ноде. Сложный интерфейс: отдельная вкладка у ноды (не встроено в редактор ноды), очень много галочек.  В модуль Content Access входит модуль Content Access Rules Integrations, который позволяет назначать права для каждой сущности по правилам.   
https://www.drupal.org/project/menu_admin_per_menu - доступ не ко всем меню, а к конкретным  
https://www.drupal.org/project/nodeaccess_userreference - доступ к ноде по ссылке на юзера из редактора материала  
https://www.drupal.org/project/taxonomy_access - доступ по терминам, настраивается доступ ролей к терминам  
https://www.drupal.org/project/forum_access - позволяет настраивать права доступа для веток форума  
  
  
# модули для ускорения  
  
https://www.drupal.org/project/blockcache_alter - кэширование блоков, можно разделить кэширование в зависимости от юзера, роли, страницы и т.п. Требует включения кэширования блоков на странице настройки производительности.  
https://www.drupal.org/project/filecache - вынос кэша из базы в файловую систему, уменьшает кол-во запросов к базе на 40%, хранит все кэши в одном каталоге (sites/default/files/.ht.filecache/), поэтому можно использовать только на мелких сайтах для уменьшения кол-ва запросов к БД (но на них проще использовать Boost), не прошел проверку на Алмазе, при большом кол-ве файлов очистка кэша в кроне отваливается из-за нехватки памяти.  
https://www.drupal.org/project/entitycache - кэширование базовых сущностей (нод, терминов, комментов, файлов, юзеров), позволяет уменьшить ко-во запросов к БД на 20-30%, дает преимущества только при хранении кэша в памяти (memcached, redis).  
https://www.drupal.org/project/commerce_entitycache - кэширование сущностей Commerce.  
https://www.drupal.org/project/views_content_cache - позволяет настроить кэширование вьюх в зависимости от изменения контента. Кэширование вьюх с раскрытыми фильтрами корректно работает только с Views версии 3.8 и выше. Если товар с модулем добавления в корзину выводится вьюхой и в этой вьюхе выставить любое кэширование, то добавление в корзину не работает.  
https://www.drupal.org/project/boost - кэширование для анонимов, подходит для редко обновляемых нединимичных сайтов (визиток), ускорение в десятки раз (на визитке тест показал увеличение скорости отдачи в 100 раз), известные проблемы: некорректный подсчет просмотров нод, обновление контента требует очистки кэша (если нужно немедленно показать контент). Подходит для сайтов с небольшим кол-вом контента (сотни нод). Для работы требуется изменить .htaccess и отключить кэширование страницы для анонимов на странице настройки производительности. При включенном Boost модуль Yandex Metrika не работает, надо вставлять код метрики просто через панель.  
https://www.drupal.org/project/expire - установка правил для очистки кэша (Boost, Varnish, Memcache). В связке с Boost корректно очищает кэш по крону. Даже при хранении кэша в базе помогает очищать не весь, а только нужный кэш, подробнее http://drupalace.ru/kesh-stranic-snizhenie-nagruzki-na-server-s-pomoshchyu-memcache-storage-page-cache и http://drupalace.ru/novyy-cache-expiration-polnaya-svoboda-v-vybore-pravil-dlya-sbrosa-kesha-stranic  
  
  
Стоят на 2goroda.ru, ничего толком не настроено, надо вспомнить о них, когда сайт загнется от посещаемости:  
https://drupal.org/project/prod_check - немного полезной инфы перед запуском сайта  
https://drupal.org/project/memcache - работает, но кеш с ним сбрасывается не всегда, когда надо. Например, при изменении пункта меню, нужно вручную чистить кеш меню  
https://drupal.org/project/apc  
https://drupal.org/project/profiling - удобный профайлер для просмотра топа страниц, жрущих память и проц, после небольшой обработки в экселе выдает страницы, потребившие больше всех: вставляем таблицу в блокнот, прибираем шапку (делаем заголовки в одну строку, разделители-табы), меняем регуляркой "(\ ms|\.\d* [KM])" (без кавычек, но со скобками) мусор на пустоту, добавляем колонки TIME TOTAL (хиты*TIME AVG/60000) - в минутах и MEM TOTAL (хиты*MEM AVG/1024) - в Гб, вортируем по этим столбцам, получаем топ страниц. Как показала практика (2goroda.ru), смысла нет, самые посещаемые страницы съедают основные ресурсы  
https://drupal.org/project/performance - то же самое, что и profiling, только без группировки по страницам и с показом кол-ва запросов. profiling лучше.  
https://drupal.org/project/xhprof - мощный профайлер, показывает подробную инфу по потреблению функциями на одной странице. Осторожно! Включенный, он собирает данные не только для тех, у кого стоит галочка в настройках прав, а со всех юзеров! Я так 20 гигов за сутки потратил случайно и положил сервер  
http://api.yandex.ru/tank/ - этим можно убить сайт нагрузкой  
  
Полезно для прочтения по теме производительности drupal и работе с кэшем:  
http://drupalace.ru/tags/cache  
  
  
# модули для переноса функционала  
https://drupal.org/project/features - фичи, сборка и использование готовых блоков функционала  
https://drupal.org/project/node_export - умение сохранить контент в фичу  
https://drupal.org/project/spaces - какие-то области видимости, я не разобрался, но говорят, что он тоже очень нужен для грамотного использования фич  
https://drupal.org/project/strongarm - умение сохранять переменные друпала и модулей в фичи  
https://drupal.org/project/uuid_features - позволяет экспортировать в фичу конкретный термин таксономии.  
  
  
# языковые модули и мультисайтовость  
https://drupal.org/project/domain - Domain Access, доменная сущность. Читать install.txt модуля! Нужна ручная настройка файла settings.php, прописываем в него, обязательно в самый конец, ниже всех определений, include DRUPAL_ROOT . '/sites/all/modules/domain/settings.inc'; и одну куку на все поддомены: $cookie_domain = '.grosshaus.pro'; Тут большой список сопутствующих модулей - https://drupal.org/node/1068570  
https://drupal.org/project/domain_ctools - правила выбора для Страниц панелей  
https://drupal.org/project/domain_entity - включает разделение по доменам для всех entities, а не только для nodes. Работает только для сущностей с полями. Для entityform не работает, только для entityform_submission  
https://drupal.org/project/domain_fields - доступ к полям в домене  
https://drupal.org/project/domain_fieldable - добавляет поля к сущности Домен, можно через вьюшки вытаскивать поля текущего домена: создаем вьюшку, выводящую домены, в фильтре ставим ID домена=текущий. В панели напрямую нельзя указать контекст текущего домена, только вставкой фрагмента панели. Конфликтует с модулем redirect! Вылазит фатал еррор на странице редактирования полей домена.  
https://drupal.org/project/domain_locale - язык домена  
https://drupal.org/project/domain_menu_access - отключение пунктов на некоторых доменах  
https://drupal.org/project/domain_menu_block - что-то для меню, кажется, создает по копии менюшки для каждого домена  
https://drupal.org/project/domain_path - разные чпу для одной ноды, неизвестна совместимость с pathauto  
https://drupal.org/project/domain_rules - правила работают плохо!  
https://drupal.org/project/domain_taxonomy - domain access для терминов  
https://drupal.org/project/domain_token - токен названия домена, может пригодится для уведомлений, но это dev-модуль с 3 активными сайтами  
https://drupal.org/project/domain_variable - разделение переменных, возможность переопределить переменную в домене. Ему нужен https://drupal.org/project/variable . если включен domain_variable, то ломаются настройки специфичные для домена, которые включает Domain Configuration (domain_conf)      
https://drupal.org/project/domain_views - Provides Views integration for Domain Access  
drush dl -n variable domain domain_ctools domain_entity domain_fields domain_locale domain_menu_access domain_menu_block domain_path domain_variable domain_views  
  
  
https://drupal.org/project/i18n - мультиязычность, список модулей - https://drupal.org/node/1305992  
https://drupal.org/project/i18nviews - перевод строк views, только dev версия, проверено только на заголовках вариантов  
https://drupal.org/project/languageicons - иконки для выбиралки языка  
https://drupal.org/project/languageinterface - отдельная выбиралка языка, взамен стандартной  
https://drupal.org/project/translation_management - чеклист статуса перевода, управление переводами из одного места. Только dev-ветка, после установки везде появляется варнинг от подмодуля local_translations  
https://drupal.org/project/l10n_client - интерфейс перевода, дает переводить на текущий язык все строки на текущей странице. Можно выделять текст и жать Ctrl+Shift+S. На allmodules.viasite.ru выдал кучу ошибок и был удален, на grosshaus.pro установился нормально, причины неизвестны  
https://drupal.org/project/translation_table - быстрый перевод терминов, пунктов меню, названий типов нод и названий полей, без захода в каждый элемент  
�?з статьи луллаботов, непроверенные:  
https://drupal.org/project/entity_translation - перевод полей сущностей, чтобы переводить заголовки, нужен http://drupal.org/project/title  
https://drupal.org/project/translation_overview - таблица переводов нод  
  
  
  
  
# display suite  
https://drupal.org/project/rel - возможность двигать actions (кнопочки сохранения), двигать и раздергивать на части vertical tabs (форма админа перед кнопками  сохранения в редакторе ноды) в формах (не юзал)  
https://drupal.org/project/ds - Display suite, перспективная штука для вывода нод на фронте (displays можно использовать и вместе с views, тогда вместо сборки всего из полей в views, будем собирать поля в стандартной настройке отображения, а во вьюшку вставлять готовую для отображения сущность. Не юзал так, ds использовали на 2goroda.ru для настройки отображения форм нод  
# чтобы по-быстрому собрать болванку макета для ds, в папке модуля выполнить:  
drush ds-build &quot;Small Left Column&quot; --regions=&quot;Left, Right&quot; --css  
  
  
# непроверенные, но походу крутые модули  
https://drupal.org/project/block_class - css classes for any block  
https://drupal.org/project/chart – вывод разных графиков, оберка над google chart  
https://drupal.org/project/checklistapi – возможность создавать чеклисты для сайта (вроде фигня, если уж делать, то на вьюшках или нодах)  
https://drupal.org/project/comment_notify - email уведомления о комментах  
https://drupal.org/project/custom_breadcrumbs - крошки, мне показались монолитными, выбрал в 10 раз менее популярные path_breadcrumbs на admiralnt.ru  
https://drupal.org/project/custom_formatters - позволяет писать в админке код вывода поля в настройках отображения, когда не хватает возможностей ds  
https://drupal.org/project/elements - html5 elements  
https://drupal.org/project/emfield - Embedded Media Field – скорее всего, устаревший модуль  
https://drupal.org/project/ffc - Field formatter conditions, может ставить условия показа полей в Field Api (стандартный вывод полей)  
https://drupal.org/project/field_collection_views - для field_collection  
https://drupal.org/project/friendly_register - login & email ajax check (кажется, используется на 2goroda.ru)  
https://drupal.org/project/google_cse - google site search (не юзал)  
https://drupal.org/project/inlinemanual - контекстное введение в особенности сайта  
https://drupal.org/project/inline_messages - move drupal form messages to form block  
https://drupal.org/project/logintoboggan - Возможность указать пароль при регистрации, залогинить юзера мгновенно, присвоить ему промежуточную группу "неавторизованный", произвести отложенную активацию аккаунта. Конфликтует с field_permissions, на grosshaus.pro в viasite_hooking есть хук, устраняющий конфликт, коммит 17aa6778c70cdb77ef15d491e78d4ecb90767a33. �?спользовал вместе logintoboggan и modal_forms, в logintoboggan нужно убирать галку "Представить единую страницу авторизации / регистрации". При логине/регистрации через всплывалку перестают работать настройки редиректов в logintoboggan и rules, они перехватываются в ctools_modal  
https://drupal.org/project/media_gallery - не подошел для 2города  
https://drupal.org/project/quant - node creation stats  
https://drupal.org/project/semanticviews - человеческая разметка для views  
https://drupal.org/project/seo_checklist – интересный чеклист со списком советов и модулей, но много лишнего, есть на 2goroda.ru  
https://drupal.org/project/styles – какой-то модуль, несущий api хуков для контекстных стилей, не помню, зачем он здесь  
https://drupal.org/project/views_field  
https://drupal.org/project/video_filter  
https://drupal.org/project/views_data_export  
https://drupal.org/project/views_hacks - мелкие улучшения views, что-то из этого пригодилось где-то на 2goroda.ru  
https://drupal.org/project/views_hacks#views_filters_selective  
https://drupal.org/project/yandex_metrics  
https://drupal.org/project/yashare - соц. панель, настраиваемые кнопки разных сервисов, нет мультидоменности (а может и есть)  
  
  
  
  
# карты  
http://xandeadx.ru/blog/drupal/604 - список модулей  
https://drupal.org/project/geofield - поле для хранения гео геометрии, зависит от https://drupal.org/project/geophp  
https://drupal.org/project/openlayers - старый модуль  
https://drupal.org/project/addressfield - рекомендуемый модуль для хранения адресов, импорт через Feeds в него - https://drupal.org/node/1988472, про русские адреса - https://drupal.org/node/1665788, https://drupal.org/node/1152700  
https://drupal.org/project/geocoder - запись в geofield с автодополнением из Google, Yandex, Yahoo, MapQuest  
https://drupal.org/project/leaflet - Формат вывода  в виде карты Leaflet. Модуль leaflet_views сильно тормозит, при переходе в настройки формата. Это вызвано тем, что во всплывалку подгружаются все токены, для grosshaus.pro это 5+ Мб, а потом это еще все парсится  
https://drupal.org/project/leaflet_widget - иджет ввода геоданных, виз. редактор. �?з коробки поддерживает geofield 1.x, но git-версия с патчем начинает работать с geofield 2.x. Допиливать долго, если понадобится, нужно брать модуль с grosshaus.pro. http://geojson.io/ - то же самое, но круче, но без интеграции с друпалом. �?х исходники - https://github.com/mapbox/geojson.io  
https://drupal.org/project/leaflet_markercluster - группировка точек на карте, когда они наезжают друг на друга  
https://drupal.org/project/location_taxonomize - автоматически ведет словарь геоданных (Страна - Область - Город, возможно и подробнее), который берет данные из addressfield, импорт в словарь  
drush dl -n geofield leaflet geocoder  
drush en -y geofield leaflet leaflet_views leaflet_widget geocoder  
https://drupal.org/project/yamaps - карты проезда яндекс, поле без интеграции с друпалом, используется редактор яндекса, данные сохраняются в json  
https://drupal.org/project/geofield_ymap - формат вывода yandex maps из поля geofield, статья - http://xandeadx.ru/blog/drupal/704  
leaflet, markercluster, css, стилизация карты  
- Стили групп маркеров перенесены в /sites/all/themes/viasite/css/MarkerCluster.css  
- Картинка маркера обновлена /sites/all/libraries/leaflet/images/marker-icon.png  
  
  
# Search API (поиск на Drupal, подробности тут -  http://xandeadx.ru/blog/drupal/686)  
https://drupal.org/project/search_api - основа для поиска по сайту, позволяет индексировать материалы на сайте и использовать индекс для поиска (обязательно)  
https://drupal.org/project/search_api_db - использование таблиц базы данных для хранения индекса (обязательно)  
https://drupal.org/project/search_api_views - интеграция Search API и Views, позволяет выводить результаты поиска в представлениях  
https://drupal.org/project/rustemmer - процессор для Search API, улучшающий поиск по русским словам.  
  
# Quiz - функционал обучения и тестирования.  
https://www.drupal.org/project/quiz - Основной модуль для создания тестов. Все нижеперечисленное идет в комплекте.  
ajax_quiz - добавляет AJAX к функционалу тестов  
quiz_stats - модуль статистики и вывода результатов теста  
quiz_question - хелпер для создания вопросов теста  
Типы вопросов теста:  
long_answer - многострочный ответ  
matching - вопросы на сопоставление  
multichoise - вопрос с множеством ответов (основной тип)  
quiz_ddlines - вопрос с расстановкой ответов в определенном порядке методом drag'n'drop  
scale, short_answer - типы коротких ответов  
truefalse - вопрос с ответом Да/Нет  
  
Отдельные дополнения к Quiz:  
https://www.drupal.org/project/jquery_countdown - модуль для создания счетчиков, при установке вместе с quiz позволяет задавать время прохождения теста.  
  
  
# Работа с переменными  
https://www.drupal.org/project/variable_realm - позволяет использовать переменные из разных модулей (API-модуль)  
https://www.drupal.org/project/variable_admin - интерфейс для управления переменными  
https://www.drupal.org/project/variable_store - хранение переменных в БД (API-модуль)  
  
  
# все остальные  
https://drupal.org/project/admin_menu – выпадающая админская менюшка, которая стоит везде  
https://drupal.org/project/admin_views - переопределение списка содержимого и юзеров в админке  
https://drupal.org/project/addanother - кнопка «добавить еще» для неограниченных полей (не юзал)  
https://drupal.org/project/advanced_help - возможность писать контекстные инструкции для админок (не юзал, но в нем есть справка по views)  
https://drupal.org/project/ajax_comments – аякс комменты, 2goroda.ru, глючные, но других не нашел  
https://drupal.org/project/ajax_form_entity – аякс entityform, после включения модуля нужно включать аякс для каждой формы отдельно, на /admin/config/content/ajax-form-entity  
https://drupal.org/project/auto_entitylabel - модуль который вырос из модуля Automatic Nodetitles, больше возможностей.  
https://drupal.org/project/auto_nodetitle - скрытие титлов из форм нод, автозаполнение на основе токенов. Смотреть на auto_entitylabel, он применен на oblikvd.ru  
https://drupal.org/project/bean - блоки с полями, замена fieldable_panels_panes, но имеется глюк - при редактировании названия/описания типа блока (Block types) выдает ошибку, можно вручную переименовать в базе в таблице bean_type  
https://drupal.org/project/better_formats - выбор форматов ввода по умолчанию для текстовых полей, нужно, когда на сайте есть комменты или больше одного формата, доступного юзеру. �?спользуется на 2goroda.ru  
https://drupal.org/project/block_access - позволяет выставлять права на отдельные блоки (в т.ч. на перетаскивание, вклю/откл. и др), имеется глюк - для мини-панелей устанавливаются одни права на все мини-панели  
https://drupal.org/project/cacheexclude - позволяет включить кеш для всех страниц, кроме выбраанных  
https://drupal.org/project/captcha - капча  
https://drupal.org/project/chosen - продвинутый selectlist, рекомендуется ставить там, где админу приходится выбирать категорию из большого словаря. Нужна library chosen. Умеет ставить либу через drush chosen-plugin. После установки модуля нужно в настройках очистить поле "Применить Chosen к следующим элементам".  
https://www.drupal.org/project/ckeditor_link - ссылки из wyziwyg на системные урлы друпала (материалы, термины, пункты меню), популярнее, чем linkit и встраивается в кнопку вставки ссылки. В формате ввода надо поставить галочку CKEditor link, чтобы урлы превращались в ЧПУ перед выводом. Не совсем правильно, но можно использовать его только ради этого преобразования на выводе.  
https://drupal.org/project/colorbox - всплывалки для картинок, можно также всплывать фреймы, webforms. Нужна library  
https://drupal.org/project/ctools – api, нужно везде  
https://drupal.org/project/custom_formatters - fapi, кастомный форматер поля, экспортируемый  
https://drupal.org/project/devel - разворачиваемые var_dump, генерация контента любых типов для тестов  
https://drupal.org/project/sar - Drush Search & Replace по всему контенту  
https://drupal.org/project/editablefields - редактор нод прямо в таблице views, используется на aist-tramplin.ru, в участниках соревнований  
https://drupal.org/project/editableviews - редактор нод прямо в таблице views, используется на aist-tramplin.ru, в участниках соревнований  
https://drupal.org/project/email - поле email  
https://drupal.org/project/entity - api, нужно везде  
https://drupal.org/project/entity_rules - уведомления для форм entityform, не разобрался в этой "упрощалке" составления правил  
https://drupal.org/project/entity2text - уведомления для форм entityform, не стал использовать, она может пригодиться, если в токенах будут не все нужные поля. У нас есть патч entity2text-7.x-1.0-alpha2_textexport_fix.patch, который делает вывод текста в email таким, как у нас обычно. Вместо патча рекомендуется использовать пропатченный модуль viasite_entity2text, и вместо токена entity:textexport-email писать entity:viasite-textexport-email  
https://drupal.org/project/entityform - формы на основе Field API и Rules, гибкие, но сложнее, чем webforms.   
https://drupal.org/project/entityform_notifications - набор правил для уведомлений entityform. Если добавляете Переменные в Настройках внизу на странице правила, не меняйте им вес, иначе все сломается! В правилах есть большой глюк: в базе ограничение на системное имя правила 58 символов, а автогенератор создает гораздо более длинные имена, добавляя entityform_notifications_ и entityform_notification_ уж не знаю как оно в базу пишется, но пишется. После этого возникают проблемы с их редактированием, если не сменить структуру БД  
drupal.org/project/entityreference - ссылки на сущности  
https://drupal.org/project/entityreference_view_widget - ervw, всплывающая выбиралка связанных материалов на основе views. Конфликтует с colorbox, из-за z-index и еще чего-то, нужно прятать colorbox, если открываешь поверх ctools modal. Переписана на grosshaus.pro, патча нет, т.к. часть изменений в script.js темы. Чтобы после выбора всплывалка закрывалась, нужно в настройках поля поставить галку "Close modal window after submitting the items", в каждом инстансе  
https://drupal.org/project/extlink - модуль на хуках, чтобы ставить внешним ссылкам значки и/или target="_blank". Работает через js  
https://drupal.org/project/fast_404 - кеш, cache, супербыстрая страница 404, модуль версии 1.3 сломан, но есть патч, я не стал пробовать на 2goroda.ru, поставил reuse_cached_404  
https://drupal.org/project/reuse_cached_404 - быстрая 404, кеширует страницу для гостей, фишка в том, что кеш не привязан к урлу  
https://drupal.org/project/feeds - модуль для импорта из разных источников  
https://drupal.org/project/feeds_tamper - позволяет модифицировать данные перед импортом через feeds  
https://drupal.org/project/feeds_xpathparser - дополнение к feeds, импортировать из xml намного гибче, чем из csv  
https://drupal.org/project/feeds_excel - дополнение к feeds для импорта из файлов excel, требует phpExcelReader, который надо разместить в /sites/all/libraries, для работы с feeds_tamper требуется feeds_excel_tamper (чье-то самописное, см. облик, аист)  
https://drupal.org/project/field-conditional-state – deprecated, использовать вместо него https://drupal.org/project/field_conditional_state, этот модуль не дружит с drush, но зато дружит со ссылками на термины. �?спользуется на imcnt.ru. Ломает админку правил.  
https://drupal.org/project/field_conditional_state - контекстные поля в редакторе ноды, скриптами скрывает или делает обязательными одни поля, пока не выбраны другие. Если нужно работать с полями Ссылка на термин, то использовать устаревший модуль выше  
https://drupal.org/project/field_collection - группы полей, добавляем группу полей как сущность -&gt; возможность добавить несколько групп в один материал, например, группа «офис»: поля адреса, телефона, режима работы и карты проезда. Осторожно! Создает поле field_name  
https://drupal.org/project/field_default_token - использование токенов в значении по умолчанию в полях fapi. Не дружит с shs  
https://drupal.org/project/field_group - группировка полей в настройке полей и отображения друпала  
https://drupal.org/project/field_group_views - для field_group  
https://drupal.org/project/field_permissions - права на уровне полей. Конфликтует с LoginToboggan, на grosshaus.pro в viasite_hooking есть хук, устраняющий конфликт, коммит 17aa6778c70cdb77ef15d491e78d4ecb90767a33  
https://drupal.org/project/field_placeholder - плейсхолдер для fapi. Это текст, который вписан в поле, когда оно пустое. privilegia-kuhni.ru, grosshaus.pro  
https://drupal.org/project/field_tools - удобное управление полями (клонирование, изменение поля во всех сущностях, ставил на все последние сайты)  
https://drupal.org/project/field_validation - валидация полей (нод и др.), в т.ч. для полей делать проверку на уникальность  
https://drupal.org/project/fieldable_panels_panes - группы полей вроде field_group, но в виде отдельной сущности, которую можно вставить в панель, на них делали контакты)  
https://drupal.org/project/globalredirect - редиректы со ссылок типа node/1 на чпу, обязательно  
https://drupal.org/project/google_analytics - вставлялка кода GA  
https://drupal.org/project/google_analytics_reports – просмотр отчетов GA в админке (не юзал)  
https://www.drupal.org/project/iek - стили изображений, разные эффекты, не применялся, 1000 юзеров  
https://www.drupal.org/project/imagecache_actions - стили изображений, разные эффекты, не применялся, 80000 юзеров  
https://drupal.org/project/image_captcha_refresh - кнопочка «показать другой код»  
https://drupal.org/project/image_resize_filter - недооцененный модуль, делает превьюшку + всплывалку для картинки, которой изменили размер стилями в визивиге  
https://drupal.org/project/imagefield_crop - обрезалка fapi с виджетом, без наворотов, без использования эффектов (тупая), сравнение обрезалок - https://drupal.org/node/1179172  
https://drupal.org/project/imagefield_focus - crop, обрезалка с определением значимой части изображения, которая никогда не должна обрезаться и ненужной части, которая обрезается всегда, сравнение обрезалок - https://drupal.org/node/1179172  
https://www.drupal.org/project/image_url_formatter - можно выводить картинку в виде URL (во вьюхе)  
https://drupal.org/project/imce - менеджер картинок, обязателен  
https://drupal.org/project/imce_crop - обрезалка фото в imce  
https://drupal.org/project/imce_mkdir - создание папок в imce, ставим везде  
https://drupal.org/project/imce_wysiwyg - интеграция imce в wysiwyg  
https://drupal.org/project/invisimail - кодирование e-mail адресов в материалах с помощью html entities и яваскрипта (в ckeditor надо включить для форматов этот фильтр), кодирование слабенькое  
https://drupal.org/project/jcarousel – использовалась для каруселей, когда несколько изображений прокручиваются. Может быть заменена модулем views_slideshow. �?спользовалась на center-geniy.ru, privilegia-kuhni.ru (страница одной кухни)  
https://drupal.org/project/jquery_update – jquery+jquery ui, обязателен  
https://drupal.org/project/l10n_update - качалка локализаций для модулей, обязательна  
https://drupal.org/project/libraries - какие-то api, стоит везде  
https://drupal.org/project/link - поле типа ссылка, имеющее валидацию, текст ссылки, target и прочее, в отличие от простого текстового поля  
https://drupal.org/project/linkit - кнопка для wysiwyg для быстрой вставки ссылки на материал/термин в текст. https://www.drupal.org/project/ckeditor_link популярнее и встраивается в кнопку вставки ссылки  
https://drupal.org/project/manualcrop - обрезалка без виджета, требует установки библиотек, лучший выбор, если не нужна автообрезка, используется на admiralnt.ru в товарах, использует эффект, сравнение обрезалок - https://drupal.org/node/1179172  
https://drupal.org/project/media - вставлялка видеороликов, недоосвоена, с ней не дружит ckeditor  
media_internet - идет с модулем Media, позволяет добавлять видео с сайтов Youtube, Vimeo и т. д.  
https://drupal.org/project/media_youtube – модуль для media  
https://drupal.org/project/menu_block – нарезка больших меню на более маленькие  
https://drupal.org/project/menu_expanded - галочка для принудительного разворачивания выбранного пункта меню  
https://drupal.org/project/menu_target - вохможность указать target ссылке пункта меню  
https://drupal.org/project/menu_icons - пункты меню с иконками, можно задать шаблон вывода пункта в templates/menu_icons_css_item.tpl.php  
https://drupal.org/project/menu_views - позволяет засунуть вьюху в пункт меню (или даже в корень меню)  
https://drupal.org/project/metatag - метатеги, обязателен, есть глюк (не исправлен в 7.x-1.0-beta9), Патч для metatag-7.x-1.0-beta7 лежит в папке друпала на сервере, применен на center-geniy.ru. Проблема в том, что в модуле не до конца реализована поддержка языков. Модуль видит, что у entity указан язык ru, зачем-то пытается найти хотя бы одно поле сущности, которое не нейтрально к языку, но они все нейтральны по умолчанию. Не находя русских полей, модуль игнорирует $metatags['ru'] , в котором лежат теги ноды.  
Если сделать эту проверку необязательной, проблема исчезает.  
https://drupal.org/project/mimemail - HTML письма. Нужно в настройках (Конфигурация » Система) убрать галку "Include site style sheets", чтобы не было 100 кб стилей в письмах. В формате выбрать Full HTML (source), если все письма сверстаны, если нет, лучше оставить Простой текст, чтобы переводы строк работали и ссылки были ссылками. Замечено, что если стоит галка Включать css в письма и выключено сжатие css файлов в системе, то стили в письма не включались (2goroda.ru)  
https://drupal.org/project/modal_forms - всплывалки для форм входа/регистрации/восстановления, формы коммента и стандартной формы контактов. Все работает, но нужно допиливать стили всплывалок. 2goroda.ru, grosshaus.pro, imcnt.ru  
https://drupal.org/project/module_filter - фильтр для списка модулей в админке, без него неудобно  
https://www.drupal.org/project/multifield - создание групп полей наподобие field_collection, но не создает доп.сущность, что положительно сказывается на производительности, на 01.2015 требует применения 2 патчей для нормального использования во вьюхах  
https://drupal.org/project/multiupload_filefield_widget - поле со списком файлов  
https://drupal.org/project/multiupload_imagefield_widget - поле со списком ккартинок  
https://drupal.org/project/node_clone - клонирование нод, бывает нужно контентщику, в зависимости от сайта  
https://drupal.org/project/node_clone_tab - вкладка «клонировать»  
https://drupal.org/project/nodequeue - навороченная ручная drag-n-drop сортировка материалов, не осилил, но точно где-то придется делать  
https://drupal.org/project/nodereference_url - контекстный редактор ноды, через урл передается сущность, к которой относится создаваемый объект  
https://drupal.org/project/opengraph_meta - добавление метатегов для правильного определения соц. сетями заголовка, картинки и текста материала  
https://drupal.org/project/panels - панели, 1. в mini-panels наблюдается глюк (неуловимый) - если есть несколько мини-панелей на странице и несколько entityform в них, то может не отправлять данные из формы. 2. Нашел в них баг: Например, страница /mainpage не привязана ни к чему, кроме урла, в правилах выбора пусто. Тогда она будет открываться по любому урлу /mainpage/* Решение такое: в правилах выбора такой страницы указываем "Текущий URL: mainpage", т.е. дублируем из "Настройки - Базовый". Решение странное, нужно не забывать про него, если понадобится изменить урл такой страницы.  
https://drupal.org/project/path_breadcrumbs - хорошо настраиваются контекстами и токенами, в отличие от монолитного custom_breadcrumbs, страница токенов сломана, когда в Jquery update выбран Google CDN, нужно отключать CDN  
https://drupal.org/project/pathauto - чпу, обязателен. Массового удаления урлов нет, но это решается через bulk_operations: <?php path_node_delete($entity); pathauto_node_update_alias($entity, 'insert'); ?>  
https://www.drupal.org/project/patch_manager - управляемые патчи  
https://drupal.org/project/permission_grid - сетка прав для страницы прав, удобно, когда много групп юзеров и типов контента  
https://drupal.org/project/plupload - крутая загружалка картинок. Нужна library  
https://drupal.org/project/popup_onload - он умеет выводить всплывалку (colorbox) после загрузки страницы, при определенных условиях (rules). Создает свою сущность для всплывалки, из коробки умеет выводить только одно текстовое поле. В папке друпала есть патч popup_onload-7.x-1.0_entity_fields_support.patch, который позволяет добавлять в нее поля и отображать как готовую сущность во всплывалке. Поля можно было и раньше добавлять, но они не отображались. После патча стандартное текстовое поле исчезает. Всплывалка без полей всплывет с глюком.  
https://www.drupal.org/project/purr_messages - красивые самоисчезающие вспылающие в углу информационные сообщения (growl)  
https://drupal.org/project/quicktabs - вкладки, есть интеграция с views, у вкладок и панелей есть конфликт: чтобы добавить сущность quicktabs в виде блока в панель, нужно поставить патч на ctools: https://drupal.org/node/1910434 . Вьюшка в формате вкладок не конфликтует с панелью  
https://www.drupal.org/project/rabbit_hole - не использовать! Дополнительные хуки перед просмотром одной сущности (можно в св-вах сущности применять правила при просмотре страницы). Можно полностью заменить через Rules, у этого модуля были конфликты с content_access.  
https://drupal.org/project/redirect - админка редиректов, контекстное добавление в каждой ноде, отдельная админка, поддерживаются разные коды. Конфликтует с модулем domain_fieldable! Вылазит фатал еррор на странице редактирования полей домена.  
https://drupal.org/project/reference_option_limit - views exposed filter entity reference, модуль, который позволяет соединять разные поля терминов и делать раскрытые фильтры на этой основе  
https://www.drupal.org/project/reroute_email - позволяет глобально переопределить на сайте email получателя для всех писем. Приходит письмо на целевой email, в начале письма указан оригинальный адресат, можно указывать через запятую адреса, которые не переопределяются, например, если указать "popstas@tagilcity.ru, p1@tagilcity.ru", все письма направятся на popstas@tagilcity.ru, кроме тех, которые отправлены на p1@tagilcity.ru  
https://drupal.org/project/rpt - Registration Password Token, возможность указать пароль юзера в уведомлении о регистрации. Работает с Login tobogan  
https://drupal.org/project/rules - правила. Выбор условий в правилах работает, когда отключен Google CDN в Jquery Update, работает правильно, когда для админской части версия Jquery 1.5, для клиентской = 1.7. Но на некоторых сайтах это решение не работает (новый Алмаз - появляется ошибка в панелях), тогда требуется установить патч https://www.drupal.org/node/1810656#comment-8010431 и для всех сделать версию 1.7. Если удалить в правилах действие, которое извлекает переменные, и эти переменные используются в дальнейших действиях, то страница редактирования правила начнет уходить в рекурсию, это можно исправить, вернув действие, либо удалив правило, нужно смотреть на это. В редакторе компонента правила пункт Настройки внизу не раскрывается, чтобы изменить настройки, нужно через F12 вручную показать блок настроек. �?ли добавить стиль .page-admin-config-workflow-rules-components-manage #edit-settings .fieldset-wrapper{ display:block; }  
https://drupal.org/project/rules_conditional - добавляет условия (if, else, switch) в действия правил. Это позволяет писать правила без копипаста и создания компонентов правил. Пример: при изменении профиля юзера надо проверить, изменилось ли поле-чекбокс, и выполнить действие в зависимости от галочки. Без этого модуля пришлось бы создать 2 правила с одинаковым событием и одним одинаковым условием, а с этим модулем всё уместилось в одно правило  
https://drupal.org/project/save_edit - кнопочка «применить», обязательна. Внимание, у кнопочки есть глюк: она не дружит с inline entity form, в материалах, где есть вложенные редакторы, нужно ее убирать.  
https://drupal.org/project/session_cache - api для запоминания переменных в куках, сессии, на сервере в файле, в БД  
https://drupal.org/project/shs - Simple hierarchical select - выбиралка для редактора и для фильтра вьюшек. Например, есть дерево терминов Марка->Модель, через этот модуль можно их удобно выбирать. Минус - в поле сохраняется только конечный термин, а не вся иерархия.  
https://drupal.org/project/smartcrop - умная обрезалка, пытается на автомате определить значимую часть изображения, сравнение обрезалок - https://drupal.org/node/1179172  
https://drupal.org/project/special_menu_items - пункты меню-заглушки  
https://drupal.org/project/style_usage - выводит сводную таблицу по использованию всех стилей изображений, полезно, чтобы посмотреть, где стоят неправильные стили. Полезный, но глючный модуль, без патча не работает, требует file_entity, а file_entity после установки у меня сломал весь сайт, я его (модуль) удалял из папки вручную  
https://drupal.org/project/superfish - меню, самое продвинутое, на нем делали admiralnt.ru  
https://drupal.org/project/taxonomy_access - доступ к нодам/терминам на основе терминов. На нем работает доступ к материалам школ на imcnt.ru: у юзера и у ноды есть один и тот же термин, на этой связи работает доступ. Модуль дописывался, см. modified.txt на imcnt.ru  
https://drupal.org/project/taxonomy_manager - крутой, но глючный менеджер терминов, очень удобно через нее добавлять большие деревья терминов  
https://drupal.org/project/taxonomy_menu - генерация меню из словарей  
https://drupal.org/project/taxonomy_menu_trails - подсветка текущего термина в меню на странице одной ноды  
https://drupal.org/project/textformatter - fapi formatter, выодит список (ul) элементов в настройках отображения  
https://drupal.org/project/token - токены  
https://drupal.org/project/token_tweaks - позволяет выводить не все токены, а определенный уровень дерева, облегчая загрузку страниц со списком токенов  
https://drupal.org/project/token_custom - возможность создавать свои токены. Были проблемы с кешированием на center-geniy.ru, возможно, модуль не дружит с галочкой Кешировать страницы для анонимов  
https://drupal.org/project/token_filter - возможность использовать токены в форматах ввода  
https://drupal.org/project/transliteration - транслит, делает нормальные названия файлам и чпу, обязателен  
https://drupal.org/project/user_registrationpassword - возможность указать пароль при регистрации (по умолчанию друпал шлет его в письме)  
https://drupal.org/project/viewfield - view as field, возможность вставлять вьюку как поле другой вьюшки, используем этот модуль  
https://drupal.org/project/viewport - указание viewport для сайта, для верстки под мобильники. Скорее всего, это будет: width=device-width, scale=1.0, Selected pages:* , остальное по умолчанию  
https://drupal.org/project/views - вьюшки  
https://drupal.org/project/views_between_dates_filter - позволяет во вьюхе сделать фильтр по диапазону дат (between date1 and date2)  
https://drupal.org/project/Views_bulk_operations - групповые операции над элементами вьюшки-таблицы, обязателен  
https://drupal.org/project/views_distinct - если есть связь к полю/сущности со множественным выбором, то DISTINCT у вьюхи не поможет реально показать 1 запись, этот модуль поможет, но есть проблема: счетчик кол-ва записей не изменяется и, если данные выводятся в 2 колонки, то в конце могут быть дыры  
https://drupal.org/project/views_export_xls - выгрузка данных вьюшки в эксель, поддерживаются фильтры. Как делается: 1. создаем обычную вьюшку-таблицу с фильтрами, все данные желательно заполнять в общем отображении. 2. Создаем отображение типа Лента (Feed), формат вывода xls feed. 3. В настройках ленты посередине, указываем чпу для файла excel, в поле Attach (Прикрепить к) указываем отображение, от которого зависит xls. В листалке ставим отображать все элементы. 4. Меняем формат для всех мультиполей, нужно выводить не списком, а простым текстом с разделителем, иначе в xls будет пустота. После этого внизу таблицы основной вьюшки появляется ссылка на xls. Фильтры и поля лучше всего не переопределять, либо делать это в последнюю очередь. Фильтры, которых нет в отображении ленты, не будут работать, даже если они есть в основном отображении. Модуль, похоже, поддерживает только текст, картинки точно не экспортирует.  
https://drupal.org/project/views_field_view - view as field (another)  
https://drupal.org/project/views_limit_grouping - группировка во вьюхе, позволяет вывести несколько записей из каждой группы, для D7 только dev-версия  
https://drupal.org/project/global_filter - фильтр, стоящий в отдельном блоке, выбор в нем влияет на все вьюшки сайта. Отлично подходит для выбранного юзером города и т.п. http://www.itassist.net.ua/e-book/modul-views-global-filter. Требует https://drupal.org/project/session_cache  
https://drupal.org/project/views_megarow - продвинутая таблица вьюшки (формат вывода), позволяет настроить редактирование нод прямо из списка  
https://drupal.org/project/views_php - возможность писать на php в форматах ввода  
https://drupal.org/project/views_slideshow - слайд-шоу (когда на экране одна картинка заменяет другую. Нужна library jquery.cycle). Контролы настраиваются модулем vscc. Может полностью заменить модуль jcarousel, надо пробовать  
https://drupal.org/project/votingapi - рейтинги для нод  
https://drupal.org/project/vscc - контролы для слайд-шоу  
https://drupal.org/project/webform - монолитные, но понятные формы  
https://drupal.org/project/webform_hints - placeholders for webforms  
https://drupal.org/project/wysiwyg - встраивание wyziwig редактора в формат ввода. Нужна library для ckeditor  
https://drupal.org/project/wysiwyg_template - какие-то шаблоны для визивига, не освоил, но может пригодиться, когда один тип материала контентится по-разному  
https://drupal.org/project/yandex_captcha - яндекс капча, ставим везде ее  
https://www.drupal.org/project/ajaxblocks - позволяет любой блок грузить через Ajax, настройки в свойствах блока  
https://www.drupal.org/project/blockcache_alter - позволяет грузить не кешированные блоки  
https://www.drupal.org/project/pollanon - настройка стандартного опросника, позволяет убирать привязку по IP и ставит по Cookie  
https://www.drupal.org/project/views_term_path - позволяет доставать URL термина таксономии, в виде поля, во вьюшке.  
https://www.drupal.org/project/sort_comments - позволяется сортировать комменты.  
https://www.drupal.org/project/views_datasource - выводит Views  в одном из четырёх форматов (JSON, RDF, XML, XHTML)  
https://www.drupal.org/project/menu_attributes - позволяет добавлять атрибуты такие как классы, id, к отдельным пунктам меню.  
https://www.drupal.org/project/menu_per_role - позволяет показывать отдельный пункт меню для определенных ролей.  
https://www.drupal.org/project/conditional_fields - позволяет настраивать зависимы поля. Установок в 1000 раз больше чем у Fields condition states.  
https://www.drupal.org/project/ulogin - авторизация через соц. сети. Я слышал, что https://www.drupal.org/project/hybridauth лучше  
www.drupal.org/project/entityform_block - добавляет на страницу редактирования формы, галочку которая позволяет выводить Entity Form в блоках.  
https://www.drupal.org/project/uc_extra_fields_pane - позволяет добавлять дополнительные поля в форму заказу Ubercart.  
�?спользуется на мегашапке.  
https://www.drupal.org/project/user_import - импорт пользователей из CSV  
https://www.drupal.org/project/xmlsitemap - генерит карту сайта. Может включать ссылки на ноды по типам, термины по словарям, пункты меню. По умолчанию он ничего не выводит, нужно настраивать по инструкции - https://www.drupal.org/documentation/modules/xmlsitemap  
https://www.drupal.org/project/eva - увеличивает потребление оперативной памяти почти в 3 раза, даже если нигде не используется а просто включен.  
https://www.drupal.org/project/rolereference - ссылка на роли пользователя. Можно рулить выводимыми ролями пользователя в Role References, через настройку поля, но дело в том, что этими ролями можно рулить только при создании поля, потом он пишет поле уже используется.  
https://www.drupal.org/project/rules_image_styles - позволяет генерировать изображения определенного стиля для полей ноды.  
https://www.drupal.org/project/field_remove_item - добавляет кнопку удаления к мультиполю, удаляет по AJAX.  
https://www.drupal.org/project/views_conditional - позволяет выводить поля в зависимости от значения других полей.  
https://www.drupal.org/project/views_accelerator - модуль ускоряет вьюшки в два раза. �?спользуется на GrossHause, при простых тестах глюков не было. Включается в настройках кеширования вьюшки.  
https://www.drupal.org/project/entityreference_filter - модуль который позволяет организовывать раскрытые фильтры вьюшек по полю Entity Reference без каких либо связей в виде выпадающих списков на основе вьюшек. (�?спользуется на grosshaus'e в фильтрах пользователей).  
https://www.drupal.org/project/imagefield_tokens - позволяет использовать токены в атрибутах (alt, title), поля типа Image. �?спользуется на Мегашапке. К сожалению пока только DEV версия.  
https://www.drupal.org/project/noindex_block - небольшой модуль с небольших рейтингом. Позволяет оборачивать блоки в тег noindex, настраивается на странице настройки блока одной галочкой.   
https://www.drupal.org/project/pdf - модуль позволяет вывод поля с загруженным pdf файлом в виде отрендеренного pdf файла, на основе библиотеки pdf.js.  
https://www.drupal.org/project/taxonomy_field_menu - позволяет выводить в меню ссылки на ноды, основываясь на полях taxonomy_reference.  
https://www.drupal.org/project/views_rules - позволяет использовать результат Views в правилах. Добавлять отдельный action "loop view", в котором можно перебирать результаты.  
https://www.drupal.org/project/qtip - позволяет привязывать всплывающие сообщения. �?з коробки есть модули для Views и Field. Правда для Field нужно пачтчить шаблон и часть модуля.  
https://www.drupal.org/project/clientside_validation - модуль позволяет проводить валидацию на стороне клиента, работает с любыми видами форм, в то числе кастомными просто указывая ID формы. Позволяет работать со states API, но к сожалению не дружит с Entity View Widget.  
https://www.drupal.org/project/print - позволяет создавать версии страниц для печати. С ним идет подмодуль print_ui, обеспечивающий интерфейс для настройки.  
https://www.drupal.org/project/subpathauto - расширяет возможности Pathauto, создавая ЧПУ для подпутей (например страниц редактирования ноды: для node/[nid]/edit будет создан алиас [node-name]/edit)  
https://www.drupal.org/project/url_unpublish - создает ссылки, переход по которым вызывает снятие ноды с публикации (патчем добавляется возможность публикации ноды)  
https://www.drupal.org/project/masquerade - позволяет просматривать сайт от имени любого другого пользователя, удобно для тестирования  
https://www.drupal.org/project/simpleads - модуль для создания рассылок  
https://www.drupal.org/project/node_reference - добавляет поле-ссылку на ноду  
https://www.drupal.org/project/masked_input - модуль позволяющий добавлять маску к полям, использует для работы jquery библиотеку masked_input.  
https://www.drupal.org/project/chosen_ajax - превщает стандартный Drupal Autocomplete в Chosen.  
https://www.drupal.org/project/views_calc - добавляет тип отображения вьюшки который, позволяет выводить результирующие операции по полям вьюшки (MAX, COUNT и.т.д.).  
https://www.drupal.org/sandbox/jchin1968/2061005r - block_timer, выводит на каждый блок время его генерации. Ставился в декабре 2014 на grosshaus, не работал из коробки, на ГХ он доработанный.  
https://www.drupal.org/project/bootstrap_optimizer - лечит сайт, если на нем неправильно удаляли модули. Если просто удалить папку модуля, записи о модуле остаются в базе и замедляют drupal_bootstrap. Если модули удаляются через drush, никакого ускорения не произойдет.  
https://www.drupal.org/project/bud - добавляет в каждый блок ссылки Вверх, Вниз и Выключить, позволяет менять местами модули, не заходя в Структура - Блоки  
https://www.drupal.org/project/cache_inspector - просмотр расшифрованных данных таблиц кеша, выбираем таблицу, модуль выводит список dpm по каждому ряду таблицы.  
https://www.drupal.org/project/prod_check - подсказывает основные чекбоксы, типа включения сжатия, полезно посмотреть один раз перед запуском сайта и удалить.  
https://www.drupal.org/project/content_taxonomy - добавляет к виджету "Автодополнение", настройки позволяющие запретить создание новых терминов.  
https://www.drupal.org/project/node_revision_delete - позволяет ограничивать количество создаваемых ревизий для каждого типа материала. Старые ревизии (существовавшие до включения модуля) удаляются по крону.  


## drupal-module-enable-add-git



## drupal-module-enabled



## drupal-modules-enabled



## drupal-modules-undoc



## drupal-module-uninstall



## drupal-module-version



## drupal-patch



## drupal-scripts-init



## drupal-sql



## drupal-table-count



## drupal-vget



