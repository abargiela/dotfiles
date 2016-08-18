### Create a symbolic link from your git repo to: 

ln -s ${git_path}/dotfiles/rhythmbox/ ~/.local/share/

### Add to cron

git commit -m "Update podcast file `date +"%Y-%m-%d_%T"`" ~/Documents/git/dotfiles/rhythmbox/ && git push 

it will import all podcasts
