
# EroIzzy Theme for oh-my-posh

This repo was made to store my changes and also to share with the community if interested.

## Requirements

* Install any Nerd font to use with oh-my-posh. [Nerd Fonts](https://www.nerdfonts.com/)
* Install Windows Terminal from the Microsoft Store. [Windows Terminal](https://www.microsoft.com/store/productId/9N0DX20HK701)
* Install Powershell from the Microsoft Store. [Powershell](https://www.microsoft.com/store/productId/9MZ1SNWT0N5D)

## Setup

1. Set Windows Terminal to be default terminal application in Windows Terminal settings.
2. Make the Powershell you installed be the default profile for Windows Terminal.
3. Go to Appearance settings and enable "Show acrylic in tab row (requires relaunch)
4. Restart Windows Terminal and Modify the default profile to use the font you installed and enable "Acrylic"
5. Install Scoop
```bash
iwr -user get.scoop.sh | iex
```

## Installation

We need to install the posh modules. Run the following commands:

```bash
Install-Module posh-git -Scope CurrentUser -Force
Install-Module oh-my-posh -Scope CurrentUser -Force
Install-Module -Name Terminal-Icons -Repository PSGallery
Install-Module -name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
scoop install fzf
Install-Module -name PSFzf -Scope CurrentUser -Force
```

Then create a folder name `.config` in your windows User folder (if you do not have it already) 

```bash
mkdir .config
```

Now we need to copy over the repo files into this folder. Once copied, we need to enable the custom .ps1 profile. In this repo, it is the ./powershell/user_profile.ps1 file. Feel free to name this whatever you want, just make sure you change the name in the following documents.

```bash
vim $PROFILE.CurrentUserCurrentHost
```

and write this in the file

```
. $env:USERPROFILE\.config\powershell\user_profile.ps1
```

## Author

- [@EroIzzy](https://github.com/eroizzy)

## Acknowledgements
 - [oh-my-posh Repo](https://github.com/JanDeDobbeleer/oh-my-posh)
 - [oh-my-posh Documentation](https://ohmyposh.dev/)
 - [Nerd Fonts](https://www.nerdfonts.com/)
 - [How to set up PowerShell prompt with Oh My Posh on Windows 11 - Takuya Matsuyama](https://www.youtube.com/watch?v=5-aK2_WwrmM)
 - [My Ultimate PowerShell prompt with Oh My Posh and the Windows Terminal](https://www.hanselman.com/blog/my-ultimate-powershell-prompt-with-oh-my-posh-and-the-windows-terminal)
 This would not have been possible without the work from the follow:
- [@JanDeDobbeleer](https://github.com/JanDeDobbeleer)
- [@Takuya Matsuyama](https://github.com/craftzdog)
- [@Ryan L McIntyre](https://github.com/ryanoasis)