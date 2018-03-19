#!/bin/bash
#ayhan arda - cron ile her dakika kontrol eder , mining var ise kapatir
if ps aux | grep stratum | grep tcp > /dev/null
then
  ps aux | grep stratum | grep tcp >> /root/silme/zararli.txt && kill -9 `ps ax | grep -v grep | grep stratum | awk '{print $1}'`
else
echo "sorun yok"
fi
