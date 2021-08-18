# Новая ветка из последнего снимка старой

```
git reset $(git commit-tree HEAD^{tree} -m "A new start")
```