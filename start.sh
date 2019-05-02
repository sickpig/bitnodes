#!/bin/bash
# --- bitcoin cash mainnet: e3e1f3e8 (db = 0) ---
python -u crawl.py conf/crawl.e3e1f3e8.conf master > log/crawl.e3e1f3e8.master.out 2>&1 &
python -u crawl.py conf/crawl.e3e1f3e8.conf slave > log/crawl.e3e1f3e8.slave.1.out 2>&1 &
python -u crawl.py conf/crawl.e3e1f3e8.conf slave > log/crawl.e3e1f3e8.slave.2.out 2>&1 &
python -u crawl.py conf/crawl.e3e1f3e8.conf slave > log/crawl.e3e1f3e8.slave.3.out 2>&1 &

python -u ping.py conf/ping.e3e1f3e8.conf master > log/ping.e3e1f3e8.master.out 2>&1 &
python -u ping.py conf/ping.e3e1f3e8.conf slave > log/ping.e3e1f3e8.slave.1.out 2>&1 &
python -u ping.py conf/ping.e3e1f3e8.conf slave > log/ping.e3e1f3e8.slave.2.out 2>&1 &
python -u ping.py conf/ping.e3e1f3e8.conf slave > log/ping.e3e1f3e8.slave.3.out 2>&1 &
python -u ping.py conf/ping.e3e1f3e8.conf slave > log/ping.e3e1f3e8.slave.4.out 2>&1 &
python -u ping.py conf/ping.e3e1f3e8.conf slave > log/ping.e3e1f3e8.slave.5.out 2>&1 &

python -u resolve.py conf/resolve.e3e1f3e8.conf > log/resolve.e3e1f3e8.out 2>&1 &

python -u export.py conf/export.e3e1f3e8.conf > log/export.e3e1f3e8.out 2>&1 &

python -u seeder.py conf/seeder.e3e1f3e8.conf > log/seeder.e3e1f3e8.out 2>&1 &

python -u pcap.py conf/pcap.e3e1f3e8.conf > log/pcap.e3e1f3e8.1.out 2>&1 &
python -u pcap.py conf/pcap.e3e1f3e8.conf > log/pcap.e3e1f3e8.2.out 2>&1 &
python -u pcap.py conf/pcap.e3e1f3e8.conf > log/pcap.e3e1f3e8.3.out 2>&1 &
