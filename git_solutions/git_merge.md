# Решения

**Слияние несвязанных историй**
```
git me --no-ff master_html --allow-unrelated-histories
```

**Новая ветка из последнего снимка старой**
```
git reset $(git commit-tree HEAD^{tree} -m "A new start")
```

**Откат истории**
```
git reflog

git checkout 1234568
или
git checkout HEAD@{3}
```