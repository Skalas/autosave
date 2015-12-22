# AutoSave
This repo installs a cronjob that will commit everything and push it to the repo, it's only recomended for certain types of workflows. Specifically when you have a `.gitignore` well defined and don't mind automatic pushes to your repo. Also, this will stop working if you don't pull often 
## Usage
To use this set of scripts, you only need to run the following command:
```{bash}
./install.sh /path/to/repo
```
However if you would like to make this for more than one repo, you must run the `install.sh` script once and then run:
```{bash}
./install_another.sh /path/to/the/second/repo
```
This commands will set up an `.autosave` folder in your `$HOME` and install a cronjob that runs the following commands:
```{bash}
cd /path/to/repo && git add . && gc -m 'AutoSave' && git push
```
