# Vim setting sync

## Installing new package

Go to the folder and do:

```bash
git submodule add <git-url>
```

## Removing a package

```bash
$ git submodule deinit <path-to-git-submodule>
$ git rm <path-to-git-submodule>
$ rm -Rf .git/modules/<path-to-git-submodule>
$ git commit
```

## coc

installing new language

```
:CocInstall <lang>
```

**options:**

- coc-sh (bash)
