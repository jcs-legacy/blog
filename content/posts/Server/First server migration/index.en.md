---
weight: 4
title: "First server migration"
date: 2022-09-10T00:00:00+00:00
lastmod: 2022-09-10T00:00:00+00:00
draft: false
author: "Jen-Chieh Shen"
authorLink: "https://www.jcs-profile.com/"
description: ""
images: []
resources:
- name: "featured-image"
  src: "featured-image.png"

tags: ["Server", "migration"]
categories: ["Server"]

lightgallery: true
---

I have always been using AWS as my main web hosting choice. But I
have came to a point that I reckon the price and services aren't
something what I need. Therefore, I have decided to switch to other
web hosting company just for another taste.

<!-- more -->

The main reason are listed below:

1. AWS charges you money when you click on their services without
notifying the user. I dislike how it functions.
2. Price is too high, plus I don't really need it
3. UI is aweful, and UX is bad
4. Jargons aren't transferable (I'm picky)

Now, let's move into details.

### 📋 Transfer the domain name

WIP

WIP

{{< youtube G5KpAflMOng >}}

[Craylor Made](https://www.youtube.com/c/CraylorMade) explains very well!
Big thanks to him!

***NOTE:** It took them 5 days to complete transfer. So I'll have to wait
until the transfer is completed!*

### 📂 Transfer data

WIP

WIP

### 🩹 Restart our server

I have chose [DigitalOcean](https://www.digitalocean.com/) as my new
web hosting company. Reasons are:

1. cheaper (relative to aws)
2. Easier to see what is charged and what not
3. Excellent UI
4. Documentation is great, community seems to be friendly

The only defect is the server's location, there aren't many locations
to chose.

First thing first, after transferring all the date. We need to update
the name servers so it could be redirect to the correct IP address.

The following video say it all. It's amazing!

{{< youtube zOPH54ltGLQ >}}

The old name servers from `AWS`,

```
ns-1375.awsdns-43.org
ns-1685.awsdns-18.co.uk
ns-804.awsdns-36.net
ns-93.awsdns-11.com
```

The new name servers from `DigitalOcean`,

```
ns1.digitalocean.com.
ns2.digitalocean.com.
ns3.digitalocean.com.
```

Then we need to modify the `DNS Records` from DigitalOcean's website.
We add `@` and `www` points to our new server (IP).

| Type | Hostname | Value  | TTL(seconds)   |
|:-----|:---------|:-------|:---------------|
| A    | @        | IP位址 | 3600 (default) |
| A    | www      | IP位址 | 3600 (default) |

Then we are done! Hurray!~ 🥳🎉🎊
