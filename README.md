# decent

A command line application for managing cryptocurrency holdings.

## Synopsis

I like doing things from the command line.  And like any command line user worth their
salt, I **hodl** some cryptocurrencies.  I made `decent` so I can quickly, compulsively
access exchange rates and address balances from my highfalutin terminal.  Oh, and it's
de-cent like de-cen-tra-lized, but I guess the synonym for mediocre works as well.

Whenever new data is pulled from the web, the outdated data is stored in historic tables
which could be leveraged for investment strategy / world domination.

Currently (as of 0.1.3) supports Bitcoin (BTC), Ethereum (ETH), and Litecoin (LTC).

## Install

```sh
$ gem install decent
```

## Quickstart

```sh
$ decent
```

![HODL](http://imgh.us/screenshot_77.png)

Note: The first time `decent` runs, it will create a SQLite3 database in your home
directory like so: `~/.decent/decent.db`

## Commands

### Update Exchange Rates

```sh
$ decent exchange_rate update
```

Current exchange rates for all currencies are pulled from Coinbase and stored with a timestamp.
The previous values are copied to the `historic_exchange_rates` table.

### List Exchange Rates

```sh
$ decent exchange_rate list
```

The most recently queried information for each exchange rate will be listed.

### Add Hodling

```sh
$ decent hodling add
```

Creates a prompt asking for a nickname, address, and currency for a new hodling.

### Update Hodlings

```sh
$ decent hodling update
```

Current balances for all locally stored address are pulled from APIs and stored with a timestamp.
The previous values are copied to the `historic_holdings` table.

### List Hodlings

```sh
$ decent hodling list
```

The most recently queried information for each locally stored hodling will be listed.

### Show Hodling

```sh
$ decent hodling show -nickname NICKNAME
```

The most recently queried information for the hodling with nickname NICKNAME will be displayed,
along with its value in USD based on the most recently queried exchange_rate for its respective
currency.

### Remove Hodling

```sh
$ decent hodling remove -nickname NICKNAME
```

The most recently queried information for the hodling with nickname NICKNAME will be removed, and
that hodling will no longer appear in the `holdings` table. Related entries in the
`historic_holdings` table will not be affected.

## Schema

decent uses SQLite3.

### holdings
```SQL
`id` integer,
`nickname` varchar(255),
`address` varchar(255),
`currency` varchar(255),
`balance` doubleprecision,
`created_at` timestamp,
`updated_at` timestamp
```

### historic_holdings
```SQL
`id` integer,
`holding_id` integer,
`address` varchar(255),
`currency` varchar(255),
`balance` doubleprecision,
`recorded_at` timestamp
`created_at` timestamp
```

### exchange_rates
```SQL
`id` integer,
`currency` varchar(255),
`rate` doubleprecision,
`created_at` timestamp,
`updated_at` timestamp
```

### historic_exchange_rates
```SQL
`id` integer,
`exchange_rate_id` integer,
`currency` varchar(255),
`rate` doubleprecision,
`recorded_at` timestamp,
`created_at` timestamp
```

## Donations

I'm not expecting any of these, but here are my public addresses :)

**Bitcoin:** `1MzRX52tmTqdaVbA4nPnbEVpoYgmP5e6dH`

**Ethereum:** `0x11b91e4b6d0e149cbedc213c98d177ac0560abd9`

**Litecoin:** `LXq9vUheGADoSdyHY7HqKWhjixgzYLaJm4`
