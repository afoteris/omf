https://www.cyberforum.ru/version-control/thread1684797.html

17.03.2016, 04:43    17

Окончательное решение задачи у меня получилось такое.

    //начальное состояние
    papka_proekta
    —podpapka_1
    ——fajl_a
    ——fajl_b
    ——fajl_v
    —podpapka_2
    ——.git //отдельный репозиторий в этой папке, назовём REP_2
    ——fajl_a
    ——fajl_b
    ——fajl_v
    —podpapka_3
    ——.git //отдельный репозиторий в этой папке, назовём REP_3
    ——fajl_a
    ——fajl_b
    ——fajl_v
    —fajl_1
    —fajl_2

Далее не в Гите, а Тоталом файлы репозиториев поместил в единственные папки, т. е. привёл к тому виду, в котором они должны быть в конечном результате, и закоммитил всё это для каждого репозитория.

    papka_proekta
    —podpapka_1
    ——fajl_a
    ——fajl_b
    ——fajl_v
    —podpapka_2
    ——.git //REP_2
    ——podpapka_2
    ———fajl_a
    ———fajl_b
    ———fajl_v
    —podpapka_3
    ——.git //REP_3
    ——podpapka_3
    ———fajl_a
    ———fajl_b
    ———fajl_v
    —fajl_1
    —fajl_2

Тоталом создал папку для слитого проекта и поместил туда все новые файлы и папки, которые уже не попали в существующие репозитории. Инициализировал новый репозиторий **REP_DLYA_SLITIYA** для слияния двух существующих и сделал первый коммит.

    papka_slitogo_proekta
    —.git //REP_DLYA_SLITIYA
    —podpapka_1
    ——fajl_a
    ——fajl_b
    ——fajl_v
    —fajl_1
    —fajl_2

Теперь дело только за Гитом.

    git remote add -f REP_2 /e/www/papka_proekta/podpapka_2
    git remote add -f REP_3 /e/www/papka_proekta/podpapka_3
    git checkout -b REP_2 REP_2/master
    git checkout -b REP_3 REP_3/master
    git checkout master //REP_DLYA_SLITIYA
    git merge REP_2 -m "Прицепляем REP_2"
    git merge REP_3 -m "Прицепляем REP_3"

Результат.

    papka_slitigo_proekta
    —.git //REP_DLYA_SLITIYA, единый общий репозиторий проекта
    —podpapka_1
    ——fajl_a
    ——fajl_b
    ——fajl_v
    —podpapka_2
    ——fajl_a
    ——fajl_b
    ——fajl_v
    —podpapka_3
    ——fajl_a
    ——fajl_b
    ——fajl_v
    —fajl_1
    —fajl_2

Всё, теперь два проекта стали одним с сохранением истории в отдельных ветках.