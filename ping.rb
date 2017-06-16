# -*- coding: utf-8 -*-
require 'net/ping'

## Pingの宛て先を指定して下さい
addr = 'google.co.jp'

pinger = Net::Ping::External.new(addr)

## Pingが通るかどうかテストします
if pinger.ping?
  puts 'reachable'
else
  puts 'unreachable'
end