# Duckterm Themes

## Instructions

First of all, install all of the themes to your duckterm config directory using:

```bash
cd ~/.config/duckterm
git clone https://github.com/liamg/duckterm-themes.git
```

Then select the theme you want to use and create a symlink:

```bash
# backup an existing theme if you have one
mv ~/.config/duckterm/theme.yaml ~/.config/duckterm/theme.yaml.backup

# set the desired theme
ln -sf ~/.config/duckterm/duckterm-themes/themes/3024_Night.yaml ~/.config/duckterm/theme.yaml
```

To change themes in future, just overwrite the symlink, like this:

```bash
ln -sf ~/.config/duckterm/duckterm-themes/themes/3024_Night.yaml ~/.config/duckterm/theme.yaml
```

## Themes

<!--screenshots-->

