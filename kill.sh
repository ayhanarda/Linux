#!/bin/bash
#ayhan arda - cron ile her dakika kontrol eder , mining var ise kapatir
if ps aux | grep -e 'byte' -e 'xmcc' -e 'cxmc' -e 'xmrigMiner' -e 'stratum' | grep -v grep > /dev/null
then
  ps aux | grep -e 'byte' -e 'xmcc' -e 'cxmc' -e 'xmrigMiner' -e 'stratum' | grep -v grep >> /root/silme/zararli.txt && kill -9 `ps aux | grep -e 'byte' -e 'xmcc' -e 'cxmc' -e 'xmrigMiner' -e 'stratum' | grep -v grep | awk '{print $1}'`
else
echo "sorun yok"
fi
