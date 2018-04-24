# GTD Network
GTD Cryptocurrency is a motivational coin. Its goal is to motivate people to do their own task in exchange of GTDs. The coins are given by GTD's partners, which are productivity apps.

- Read the story: (coming soon)
- Website: https://gtd.network

## How to earn GTDs?
By using one of these services you can earn GTD Coin by only doing your own tasks:
- Kanbanote - Drag'n'drop your tasks, and get rewarded when they are completed - https://beta.kanbanote.com
- Soon other partners will integrate GTD.

## Dependencies
- *general* - Java 8
- *Ubuntu* - `http://www.webupd8.org/2012/09/install-oracle-java-8-in-ubuntu-via-ppa.html`
- *Debian* - `http://www.webupd8.org/2014/03/how-to-install-oracle-java-8-in-debian.html`
- *FreeBSD* - `pkg install openjdk8`

## Compile
- if necessary with: `sh ./compile.sh`
- you need jdk-8

## Run
- Install with the installer run the Server, then the webwallet
- Or
  - Unix: `sh ./start.sh`
  - Mac: `sh ./start.sh`  
  - Window: `run.bat`
  - wait for the JavaFX wallet window to open
  - on platforms without JavaFX, open http://localhost:37876/ in a browser

## Documentation
- [Build documentation](installer/build-readme.txt)
- API Documentation: doc/api.html
