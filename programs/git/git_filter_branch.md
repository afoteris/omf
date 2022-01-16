# git filter-branch…


## Удалить папки и файлы

```
git filter-branch --prune-empty --index-filter "git rm -rf --cached --ignore-unmatch filename dirname" HEAD

--prune-empty удалит образовавшиеся пустые коммиты, которые были связаны с этими файлами/каталогами.

rm -rf .git/refs/original && git gc --aggressive

Удаленим ненужные файлы:
git filter-branch --tree-filter 'rm -f dirname/*.ext' HEAD
git filter-branch --tree-filter 'rm -rf dirname’ HEAD

Проведем очистку от мусора:
git reflog expire --expire=now --all && git gc --prune=now --aggressive

Отправим новую историю веток и тегов на сервер:
git push origin --force --all
git push origin --force --tags
```

## Изменить имя и адрес

```
git filter-branch --commit-filter '
if [ "$GIT_AUTHOR_EMAIL" = "email" ];
then
GIT_AUTHOR_NAME="name";
GIT_AUTHOR_EMAIL="email";
git commit-tree "$@";
else
git commit-tree "$@";
fi' HEAD

git filter-branch --commit-filter '
OLD_EMAIL="email"
CORRECT_NAME="name"
CORRECT_EMAIL="email"
if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
export GIT_COMMITTER_NAME="$CORRECT_NAME"
export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi' HEAD

git filter-branch --commit-filter "GIT_AUTHOR_NAME='name'; GIT_AUTHOR_EMAIL='email'"
```
