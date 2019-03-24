#!/usr/bin/env bash
### INSTALL ZCASH
apt-get install apt-transport-https default-jdk wget gnupg2 -y && wget -qO - https://apt.z.cash/zcash.asc | apt-key add - && echo "deb [arch=amd64] https://apt.z.cash/ jessie main" | tee /etc/apt/sources.list.d/zcash.list && apt-get update && apt-get install zcash -y && wget https://github.com/TheTrunk/zcash-swing-wallet/releases/download/v1.1.1/zcashswingwallet_1.0.0_amd64.deb && dpkg -i zcashswingwallet_1.0.0_amd64.deb && rm zcashswingwallet_1.0.0_amd64.deb
