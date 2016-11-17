# how to use

### 基本的にはcomposerでpullされるもの。


### pullする側のrepo

```
{
  "name": "iganari/package",
  "type": "project",
  "repositories": [
    {
      "type": "package",
      "package": {
        "name": "package-dockerfile",
        "version": "0.0",
        "source": {
          "url": "ssh://git@bitbucket.org:iganari/package-dockerfile.git",
          "type": "git",
          "reference": "master"
        }
      }
    }
  ],
  "require": {
      "package-dockerfile": "0.0"
  },
  "config": {
    "vendor-dir": "opsfiles/docker/vendor/"
  }
}
```
