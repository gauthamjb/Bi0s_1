
#Mirai botnet
- - -
##What is Mirai?
Mirai is malware that infects networked devices and
turns them into a network of remotely controlled bots.
This network of bots, called a botnet, is often used to launch DDoS attacks.

##How botnets work
in a nutshell, a botnet is a collection of internet-connected computers.

>There are two classes of activities that Mirai performs:
>1. Compromising new hosts to force them into the botnet .
>2. Attacking systems worldwide with various types of DDoS attacks.

The computers that have been compromised is controlled by some outside attacker who controls aspects of their functionality without the owners knowing.Because there are many bots, the controllers basically have access to a sort of hacked-together supercomputer that they can use for nefarious purposes, and because the bots are distributed over various parts of the internet, that supercomputer can be hard to stop. 
Another common use and the one the Mirai botnet served is as foot soldiers in a DDoS attack, in which a target server is simply bombarded with web traffic until it's overwhelmed and knocked offline.

![](https://www.imperva.com/blog/wp-content/uploads/sites/9/2017/04/Mirai-botnet-diagram-1.png)

##DDoS attack
A distributed denial-of-service (DDoS) attack is a malicious attempt to disrupt the normal traffic of a targeted server, service or network by overwhelming the target or its surrounding infrastructure with a flood of Internet traffic.

![DDoS](https://www.cloudflare.com/img/learning/ddos/what-is-a-ddos-attack/ddos-attack-traffic-metaphor.png)

DDoS attacks achieve effectiveness by utilizing multiple compromised computer systems(bots) as sources of attack traffic. Exploited machines can include computers and other networked devices such as IoT devices.

##Is Mirai still a threat?
The mirai source code Having been shared on the internet, the Mirai botnet source code continues to evolve as malware , as creators adapt it to create more advanced variants of Mirai. Recent IoT botnet threats such as Okiru, Satori, and Reaper are all based on the Mirai malware source code.

![](http://www.drizgroup.com/uploads/6/4/4/7/6447121/mirai-botnet-ddos_orig.jpg)

Botnets have the potential to impact virtually every aspect of a person's life, whether or not they use IoT devices, or even the Internet. 

Botnets can :
- Attack ISPs, sometimes resulting in denial-of-service to legitimate traffic
- Send spam email
- Launch DDoS attacks and bring down websites and APIs
- Perform click fraud
- Solve weak CAPTCHA challenges on websites in order to imitate human behavior during logins
- Steal credit card information
- Hold companies to ransom with threats of DDoS attacks.

Mirai emerged in September, 2016, with major DDoS attacks on Minecraft gaming 
and hosting service OVH. After the botnet was used to crash the website of the
prominent cybersecurity journalist Brian Krebs . Later, the wave of attacks targeted Dyn,
a cloud-based internet performance management company that overwhelmed its sites such as 
Amazon, Netflix, PayPal, The New York Times, and Verizon. 
The Mirai botnet at present continues to cause damages.

##Mirai botnet detection and analysis
Mirai exploits default usernames and passwords, trying to find the right combination to break in. Rather brute-force attacking a single device, Mirai will simply move on to an easier target. So, your top priority should be **changing the factory setting log-in keys and creating a strong password for your IoT devices.**
Even though cyber threats targeting smart devices are growing in scale and sophistication, built-in IoT security protocols are often relatively weak. All it takes is one compromised device to expose an entire system, so it's important to take additional steps to secure your smart home.

The Mirai botnet is built on top of IoT devices which typically do not have the latest and greatest defensive security mechanisms in place. Actually, it is worse than this. Mirai doesn't need to have any sophisticated exploit capability. it just looks for devices with default administrative credentials left enabled. This is a common problem for network-connected systems in general, but is more common for IoT devices that typically have custom management interfaces that are not as familiar to users
- - -
