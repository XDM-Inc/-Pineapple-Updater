#!/bin/bash
curl -s https://api.github.com/repos/pineappleea/pineapple-src/releases/latest | grep -o "https://.*.AppImage" | head -n1 > .UpdateURL; xargs -a .UpdateURL -L1 wget; rm .UpdateURL yuzu-EA.AppImage; ls -1 *.AppImage | xargs -L1 -I{} mv {} yuzu-EA.AppImage
