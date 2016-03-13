Antenna/OmniAntenna set Gt_ 1              ;
Antenna/OmniAntenna set Gr_ 1              ;
Phy/WirelessPhy set L_ 1.0                 ;
Phy/WirelessPhy set freq_ 2.472e9          ;
Phy/WirelessPhy set bandwidth_ 11Mb        ;
Phy/WirelessPhy set Pt_ 20        	   ;
Phy/WirelessPhy set CPThresh_ 100.0        ;
Phy/WirelessPhy set CSThresh_ 5.011872e-12 ;
Phy/WirelessPhy set RXThresh_ 5.82587e-09  ;
Mac/802_11 set dataRate_ 11Mb              ;
Mac/802_11 set basicRate_ 1Mb              ;
set val(chan)   Channel/WirelessChannel    ;
set val(prop)   Propagation/TwoRayGround   ;
set val(netif)  Phy/WirelessPhy            ;
set val(mac)    Mac/802_11                 ;
set val(ifq)    Queue/DropTail/PriQueue    ;
set val(ll)     LL                         ;
set val(ant)    Antenna/OmniAntenna        ;
set val(ifqlen) 100                        ;
set val(nn)     25                         ;
set val(rp)     LAL                       ;
set val(x)      1030                       ;
set val(y)      650                        ;
set val(stop)   175                        ;
set ns [new Simulator]
set topo       [new Topography]
$topo load_flatgrid $val(x) $val(y)
create-god $val(nn)
set tracefile [open pro_trace w]
$ns trace-all $tracefile
set namfile [open pro_nam w]
$ns namtrace-all $namfile
$ns namtrace-all-wireless $namfile $val(x) $val(y)
set chan [new $val(chan)];
      set dist(5m)  7.69113e-06
      set dist(9m)  2.37381e-06
      set dist(10m) 1.92278e-06
      set dist(11m) 1.58908e-06
      set dist(12m) 1.33527e-06
      set dist(13m) 1.13774e-06
      set dist(14m) 9.81011e-07
      set dist(15m) 8.54570e-07
      set dist(16m) 7.51087e-07
      set dist(20m) 4.80696e-07
      set dist(25m) 3.07645e-07
      set dist(30m) 2.13643e-07
      set dist(35m) 1.56962e-07
      set dist(40m) 1.56962e-10
      set dist(45m) 1.56962e-11
      set dist(50m) 1.20174e-13
  puts "\t\n\nNODE CONFIGURATION SETUP INITIALIZATION\n\n \
                   => CHANNEL $val(chan) \n\n \
                   => ADHOCROUTING $val(rp) \n\n \
                   => LLTYPE $val(ll) \n\n \
                   => MACTYPE $val(mac) \n\n \
                   => IFQTYPE $val(ifq) \n\n \
                   => IFQLEN $val(ifqlen) \n\n \
                   => ANTTYPE $val(ant) \n\n \
                   => PROPTYPE $val(prop) \n\n \
                   => PHYTYPE $val(netif) \n\n"

#  $ns node-config  -energyModel EnergyModel \
                        -initialEnergy 20 \
                        -txPower 0.9 \
                        -rxPower 0.8 \
                        -idlePower 0.0 \
                        -sensePower 0.0175 
$ns node-config -adhocRouting  $val(rp) \
                -llType        $val(ll) \
                -macType       $val(mac) \
                -ifqType       $val(ifq) \
                -ifqLen        $val(ifqlen) \
                -antType       $val(ant) \
                -propType      $val(prop) \
                -phyType       $val(netif) \
                -channel       $chan \
                -topoInstance  $topo \
                -agentTrace    ON \
                -routerTrace   ON \
                -macTrace      ON \
                -movementTrace ON
set n0 [$ns node]
$n0 set X_ 200.343
$n0 set Y_ 316.111
$n0 set Z_ 0.0
$ns initial_node_pos $n0 39
$n0 color RED
$ns at 0.0 "$n0 color RED"
$ns color 0 gold
set n1 [$ns node]
$n1 set X_ 663.977
$n1 set Y_ 179.75
$n1 set Z_ 0.0
$ns initial_node_pos $n1 39
$n1 color RED
$ns at 0.0 "$n1 color RED"
$ns color 0 blue
set n2 [$ns node]
$n2 set X_ 724.845
$n2 set Y_ 498.105
$n2 set Z_ 0.0
$ns initial_node_pos $n2 39
$n2 color RED
$ns at 0.0 "$n2 color RED"
$ns color 0 blue
set n3 [$ns node]
$n3 set X_ 487.118
$n3 set Y_ 357.004	
$n3 set Z_ 0.0
$ns initial_node_pos $n3 40
$n3 color orange
$ns at 0.0 "$n3 color orange"
$ns color 0 blue
set n4 [$ns node]
$n4 set X_ 139.408
$n4 set Y_ 203.138
$n4 set Z_ 0.0
$ns initial_node_pos $n4 28
$n4 color blue
$ns at 0.0 "$n4 color blue"

set n5 [$ns node]
$n5 set X_ 116.147
$n5 set Y_ 428.936
$n5 set Z_ 0.0
$ns initial_node_pos $n5 28
$n5 color blue
$ns at 0.0 "$n5 color blue"


set n6 [$ns node]
$n6 set X_ 261.477
$n6 set Y_ 415.015
$n6 set Z_ 0.0
$ns initial_node_pos $n6 28
$n6 color blue
$ns at 0.0 "$n6 color blue"


set n7 [$ns node]
$n7 set X_ 733.626
$n7 set Y_ 326.844
$n7 set Z_ 0.0
$ns initial_node_pos $n7 28
$n7 color blue
$ns at 0.0 "$n7 color blue"


set n8 [$ns node]
$n8 set X_ 844.071
$n8 set Y_ 426.202
$n8 set Z_ 0.0
$ns initial_node_pos $n8 28
$n8 color blue
$ns at 0.0 "$n8 color blue"


set n9 [$ns node]
$n9 set X_ 525.02
$n9 set Y_ 142.375
$n9 set Z_ 0.0
$ns initial_node_pos $n9 28
$n9 color blue
$ns at 0.0 "$n9 color blue"


set n10 [$ns node]
$n10 set X_ 526.141
$n10 set Y_ 478.128
$n10 set Z_ 0.0
$n10 color blue
$ns at 0.0 "$n10 color blue"


$ns initial_node_pos $n10 28
set n11 [$ns node]
$n11 set X_ 409.22
$n11 set Y_ 309.844
$n11 set Z_ 0.0
$n11 color blue
$ns at 0.0 "$n11 color blue"

$ns initial_node_pos $n11 28
set n12 [$ns node]
$n12 set X_ 25.9626
$n12 set Y_ 331.361
$n12 set Z_ 0.0
$n12 color blue
$ns at 0.0 "$n12 color blue"

$ns initial_node_pos $n12 28
set n13 [$ns node]
$n13 set X_ 832.817
$n13 set Y_ 608.906
$n13 set Z_ 0.0
$n13 color blue
$ns at 0.0 "$n13 color blue"

$ns initial_node_pos $n13 28
set n14 [$ns node]
$n14 set X_ 619.851
$n14 set Y_ 414.348
$n14 set Z_ 0.0
$n14 color blue
$ns at 0.0 "$n14 color blue"

$ns initial_node_pos $n14 28
set n15 [$ns node]
$n15 set X_ 229.438
$n15 set Y_ 545.53
$n15 set Z_ 0.0
$n15 color blue
$ns at 0.0 "$n15 color blue"

$ns initial_node_pos $n15 28
set n16 [$ns node]
$n16 set X_ 316.856
$n16 set Y_ 125.927
$n16 set Z_ 0.0
$n16 color blue
$ns at 0.0 "$n16 color blue"

$ns initial_node_pos $n16 28
set n17 [$ns node]
$n17 set X_ 437.11
$n17 set Y_ 576.448
$n17 set Z_ 0.0
$n17 color blue
$ns at 0.0 "$n17 color blue"

$ns initial_node_pos $n17 28
set n18 [$ns node]
$n18 set X_ 919.951
$n18 set Y_ 319.442
$n18 set Z_ 0.0
$n18 color blue
$ns at 0.0 "$n18 color blue"

$ns initial_node_pos $n18 28
set n19 [$ns node]
$n19 set X_ 811.764 
$n19 set Y_ 93.0278 
$n19 set Z_ 0.0
$n19 color blue
$ns at 0.0 "$n19 color blue"

$ns initial_node_pos $n19 28

set n20 [$ns node]
$n20 set X_ 21.3198 
$n20 set Y_ 89.9027 
$n20 set Z_ 0.0
$n20 color blue
$ns at 0.0 "$n20 color blue"
$ns initial_node_pos $n20 28

set n21 [$ns node]
$n21 set X_ 953.922 
$n21 set Y_ 534.589 
$n21 set Z_ 0.0
$n21 color blue
$ns at 0.0 "$n21 color blue"
$ns initial_node_pos $n21 28

set n22 [$ns node]
$n22 set X_ 12.6176 
$n22 set Y_ 621.436 
$n22 set Z_ 0.0
$n22 color blue
$ns at 0.0 "$n22 color blue"
$ns initial_node_pos $n22 28

set n23 [$ns node]
$n23 set X_ 198.768 
$n23 set Y_ 51.5153 
$n23 set Z_ 0.0
$n23 color blue
$ns at 0.0 "$n23 color blue"
$ns initial_node_pos $n23 28

set n24 [$ns node]
$n24 set X_ 594.082 
$n24 set Y_ 633.422 
$n24 set Z_ 0.0
$n24 color blue
$ns at 0.0 "$n24 color blue"
$ns initial_node_pos $n24 28


$ns at 0.2 "$n0 setdest 240.784 403.464  0.6"
$ns at 0.2 "$n1 setdest 728.382 228.902  0.6"
$ns at 0.2 "$n2 setdest  680.778 548.952 0.6"
$ns at 0.2 "$n3 setdest 521.016 312.937  0.6"

$ns at 37.0 "$n0 setdest 200.343 316.111  0.6"
$ns at 35.0 "$n1 setdest 663.977 179.75  0.6"
$ns at 35.0 "$n2 setdest 724.845 498.105  0.6"
$ns at 35.0 "$n3 setdest 487.118 357.004  0.6"

$ns at 80.0 "$n0 setdest 246.105 292.383  0.6"
$ns at 80.0 "$n1 setdest 728.382 228.902  0.6"
$ns at 80.0 "$n2 setdest  680.778 548.952 0.6"
$ns at 80.0 "$n3 setdest 521.016 312.937  0.6"

$ns at 125.0 "$n0 setdest 200.343 316.111  0.5"
$ns at 125.0 "$n1 setdest 663.977 179.75  0.5"
$ns at 125.0 "$n2 setdest 724.845 498.105  0.5"
$ns at 125.0 "$n3 setdest 487.118 357.004  0.5"


$ns at 1.0 "$n20 setdest 446.201 49.3606 2.0"
$ns at 1.0 "$n21 setdest 887.433 369.178 2.0"
$ns at 1.0 "$n22 setdest 66.1331 78.1718 4.0"
$ns at 1.0 "$n23 setdest 435.534 234.766 2.0"
$ns at 1.0 "$n24 setdest 91.36 597.745 2.0"

$ns at 0.0 "$n4 setdest 384.183 571.024 2.0"
$ns at 0.0 "$n5 setdest 46.7882 365.162 2.0"
$ns at 0.0 "$n6 setdest 590.512 478.919 2.0"
$ns at 0.0 "$n7 setdest 653.429 399.103 2.0"
$ns at 0.0 "$n8 setdest 683.514 281.872 2.0"
$ns at 0.0 "$n9 setdest 697.378 71.3531 2.0"
$ns at 0.0 "$n10 setdest 767.957 399.523 3.0"
$ns at 0.0 "$n11 setdest 138.891 214 2.0"
$ns at 0.0 "$n12 setdest 65.0852 364.115 2.0"
$ns at 10.2 "$n12 setdest 353.133 111.474 2.0"
$ns at 0.0 "$n13 setdest 790.003 202.812 2.0"
$ns at 0.0 "$n14 setdest 847.401 480.494 2.0"
$ns at 0.0 "$n15 setdest 260.064 462.098 2.0"
$ns at 0.0 "$n16 setdest 537.832 107.469 2.0"
$ns at 0.0 "$n17 setdest 363.781 326.48 2.0"
$ns at 0.0 "$n18 setdest 703.87 604.917 2.0"
$ns at 0.0 "$n19 setdest 808.033 576.403 2.0"

$ns at 3.0 "$n4 setdest 384.183 571.024 3.0"
$ns at 3.0 "$n5 setdest 46.7882 365.162 3.0"
$ns at 3.0 "$n6 setdest 590.512 478.919 3.0"
$ns at 3.0 "$n7 setdest 653.429 399.103 3.0"
$ns at 3.0 "$n8 setdest 683.514 281.872 3.0"
$ns at 3.0 "$n9 setdest 697.378 71.3531 3.0"
$ns at 3.0 "$n11 setdest 138.891 214 3.0"
#$ns at 3.0 "$n12 setdest 65.0852 364.115 3.0"
#$ns at 10.2 "$n12 setdest 353.133 111.474 3.0"
$ns at 3.0 "$n13 setdest 790.003 202.812 3.0"
$ns at 3.0 "$n14 setdest 847.401 480.494 3.0"
$ns at 3.0 "$n15 setdest 260.064 462.098 3.0"
$ns at 3.0 "$n16 setdest 537.832 107.469 3.0"
$ns at 3.0 "$n17 setdest 363.781 326.48 3.0"
$ns at 3.0 "$n18 setdest 703.87 604.917 3.0"
$ns at 3.0 "$n19 setdest 808.033 576.403 3.0"

$ns at 29.0 "$n4 setdest 83.8345 423.12 3.0"
$ns at 35.0 "$n5 setdest 323.158 603.232 3.0"
$ns at 35.0 "$n6 setdest 463.286 536.95 3.0"
$ns at 35.0 "$n7 setdest 840.354 193.424 3.0"
$ns at 35.0 "$n8 setdest 767.957 399.523 3.0"
$ns at 35.0 "$n9 setdest 697.378 71.3531 3.0"
$ns at 35.0 "$n10 setdest 683.514 281.872 3.0"
$ns at 35.0 "$n11 setdest 138.891 214 3.0"
$ns at 35.0 "$n12 setdest 278.033 82.2505 4.0"
$ns at 35.0 "$n13 setdest 932.578 388.504 3.0"
$ns at 35.0 "$n14 setdest 283.284 511.743 3.0"
$ns at 35.0 "$n15 setdest 602.448 396.678 3.0"
$ns at 35.0 "$n16 setdest 537.832 107.469 3.0"
$ns at 35.0 "$n17 setdest 422.551 602.331 3.0"
$ns at 35.0 "$n18 setdest 703.87 604.917 3.0"
$ns at 35.0 "$n19 setdest 808.033 576.403 3.0"


$ns at 100.0 "$n4 setdest 171.864 460.783 0.5"
$ns at 135.2 "$n5 setdest 421.798 609.902 0.5"
$ns at 90.02 "$n6 setdest 574.752 519.032 0.5"
$ns at 113.8 "$n7 setdest 771.157 191.615 0.5"

$ns at 45.0 "$n8 setdest 593.543 310.308 0.4"

$ns at 75.05 "$n9 setdest 871.821 72.128 0.45"

$ns at 93.89 "$n10 setdest 763.725 371.137 0.5"

$ns at 108.2 "$n11 setdest 68.31 282.726 0.5"

$ns at 111.0 "$n12 setdest 210.121 160.364 0.5"

$ns at 98.0 "$n13 setdest 930.113 237.638 0.5"


$ns at 86.5 "$n16 setdest 683.426 44.5154 0.4"

$ns at 85.0 "$n17 setdest 487.354 173.341 0.5"

$ns at 132.5 "$n18 setdest 617.769 578.998 0.5"

$ns at 150.0 "$n4 setdest 171.864 460.783 5.0"
$ns at 150.0 "$n5 setdest 421.798 609.902 5.0"
$ns at 150.0 "$n6 setdest 574.752 519.032 5.0"


$ns at 150.0 "$n9 setdest 871.821 72.128 5.0"
$ns at 150.0 "$n10 setdest 763.725 371.137 5.0"
$ns at 150.0 "$n11 setdest 68.31 282.726 5.0"
$ns at 150.0 "$n12 setdest 210.121 160.364 5.0"
$ns at 150.0 "$n13 setdest 930.113 237.638 5.0"
$ns at 150.0 "$n16 setdest 683.426 44.5154 5.0"

$ns at 150.0 "$n8 setdest 548.508 225.409 7.0"
$ns at 150.0 "$n17 setdest 335.127 350.691 7.0"


$ns at 150.0 "$n18 setdest 687.191 589.15 3.0"

$ns at 150.0 "$n19 setdest 832.301 551.737 3.0"

#$ns at 75.0 "$n19 setdest 808.033 576.403 3.0"

#$ns at 110.0 "$n4 setdest 384.183 571.024 1.8"
#$ns at 110.0 "$n5 setdest 46.7882 365.162 1.8"
#$ns at 110.0 "$n6 setdest 590.512 478.919 1.8"
#$ns at 110.0 "$n7 setdest 847.401 480.494 1.8"
#$ns at 110.0 "$n8 setdest 683.514 281.872 1.8"
#$ns at 110.0 "$n9 setdest 697.378 71.3531 1.8"
#$ns at 110.0 "$n10 setdest 767.957 399.523 1.8"
#$ns at 110.0 "$n11 setdest 138.891 214 1.8"
#$ns at 110.0 "$n12 setdest 536.093 279.288 1.8"
#$ns at 110.0 "$n13 setdest 790.003 202.812 1.8"
#$ns at 110.0 "$n14 setdest 653.429 399.103 1.8"
#$ns at 110.0 "$n15 setdest 260.064 462.098 1.8"
#$ns at 110.0 "$n16 setdest 537.832 107.469 1.8"
#$ns at 110.0 "$n17 setdest 363.781 326.48 1.8"
#$ns at 110.0 "$n18 setdest 703.87 604.917 1.8"
#$ns at 110.0 "$n19 setdest 808.033 576.403 1.8"


$ns at 0.0 "$n0 add-mark N1 RED hexagon"
$ns at 0.0 "$n0 color darkpink"
$ns at 0.0 "$n0 label PB1"
$ns at 0.0 "$n1 add-mark N1 chocolate hexagon"
$ns at 0.0 "$n1 color darkpink"
$ns at 0.0 "$n1 label PB2"
$ns at 0.0 "$n2 add-mark N1 violet hexagon"
$ns at 0.0 "$n2 color darkpink"
$ns at 0.0 "$n2 label PB3"
$ns at 0.0 "$n3 add-mark N1 green hexagon"
$ns at 0.0 "$n3 color darkpink"
$ns at 0.0 "$n3 label PB4"



$ns at 3.0 "$n4 add-mark N2 red circle"
$ns at 3.0 "$n5 add-mark N2 red circle"
$ns at 3.0 "$n12 add-mark N2 red circle"
$ns at 3.0 "$n6 add-mark N2 red circle"

$ns at 3.0 "$n10 add-mark N2 green circle"
$ns at 3.0 "$n11 add-mark N2 green circle"

$ns at 3.0 "$n9 add-mark N2 chocolate circle"
$ns at 3.0 "$n19 add-mark N2 chocolate circle"
$ns at 3.0 "$n7 add-mark N2 chocolate circle"

$ns at 3.0 "$n14 add-mark N2 violet circle"
$ns at 3.0 "$n8 add-mark N2 violet circle"
$ns at 3.0 "$n13 add-mark N2 violet circle"

$ns at 17.0 "$n7 delete-mark N2"
$ns at 17.0 "$n7 add-mark N2 violet circle"

$ns at 18.0 "$n11 delete-mark N2"
$ns at 18.0 "$n11 add-mark N2 red circle"

$ns at 18.5 "$n10 delete-mark N2"
$ns at 18.5 "$n10 add-mark N2 violet circle"

$ns at 21.1 "$n15 add-mark N2 red circle"

$ns at 36.0 "$n18 add-mark N2 violet circle"

$ns at 37.6 "$n17 add-mark N2 green circle"

$ns at 37.6 "$n6 delete-mark N2"
$ns at 37.6 "$n6 add-mark N2 green circle"

$ns at 62.7 "$n15 delete-mark N2"
$ns at 62.7 "$n15 add-mark N2 green circle"

$ns at 62.7 "$n7 delete-mark N2"
$ns at 62.7 "$n7 add-mark N2 chocolate circle"

$ns at 56.5 "$n16 add-mark N2 chocolate circle"

$ns at 66.5 "$n10 delete-mark N2"
$ns at 66.5 "$n10 add-mark N2 chocolate circle"

$ns at 83.6 "$n14 delete-mark N2"
$ns at 83.6 "$n14 add-mark N2 green circle"

$ns at 90.0 "$n19 delete-mark N2"
$ns at 90.0 "$n19 add-mark N2 violet circle"

$ns at 62.7 "$n17 delete-mark N2"
$ns at 62.7 "$n17 add-mark N2 yellow circle"

$ns at 105.0 "$n13 delete-mark N2"
$ns at 105.0 "$n13 add-mark N2 yellow circle"

$ns at 105.0 "$n12 delete-mark N2"
$ns at 105.0 "$n12 add-mark N2 yellow circle"

$ns at 144.0 "$n12 delete-mark N2"
$ns at 144.0 "$n12 add-mark N2 red circle"

$ns at 170.0 "$n17 delete-mark N2"
$ns at 170.0 "$n17 add-mark N2 red circle"

$ns at 156.0 "$n8 delete-mark N2"
$ns at 156.0 "$n8 add-mark N2 violet circle"

$ns at 137.0 "$n5 delete-mark N2"
$ns at 137.0 "$n5 add-mark N2 yellow circle"

$ns at 160.0 "$n10 delete-mark N2"
$ns at 160.0 "$n10 add-mark N2 violet circle"

$ns at 165.0 "$n8 delete-mark N2"
$ns at 165.0 "$n8 add-mark N2 chocolate circle"

$ns at 169.0 "$n6 delete-mark N2"
$ns at 169.0 "$n6 add-mark N2 violet circle"

$ns at 156.0 "$n14 delete-mark N2"
$ns at 156.0 "$n14 add-mark N2 red circle"


$ns at 1.0 "$n20 delete-mark N2"
$ns at 1.0 "$n20 add-mark N2 yellow circle"

$ns at 1.0 "$n21 delete-mark N2"
$ns at 1.0 "$n21 add-mark N2 yellow circle"

$ns at 1.0 "$n22 delete-mark N2"
$ns at 1.0 "$n22 add-mark N2 yellow circle"

$ns at 1.0 "$n23 delete-mark N2"
$ns at 1.0 "$n23 add-mark N2 yellow circle"

$ns at 1.0 "$n24 delete-mark N2"
$ns at 1.0 "$n24 add-mark N2 yellow circle"

#$ns at 0.1 "$n5 add-mark N2 red circle"
#$ns at 0.1 "$n6 delete-mark N2"
#$ns at 0.1 "$n6 add-mark N2 red circle"
#$ns at 6.3 "$n6 delete-mark N2"
#$ns at 6.3 "$n6 add-mark N2 darkgreen circle"
#$ns at 7.5 "$n6 delete-mark N2"
#$ns at 7.5 "$n6 add-mark N2 violet circle"

#$ns at 0.1 "$n12 delete-mark N2"
#$ns at 0.1 "$n12 add-mark N2 red circle"

#$ns at 0.1 "$n7 delete-mark N2"
#$ns at 0.1 "$n7 add-mark N2 chocolate circle"
#$ns at 2.8 "$n7 delete-mark N2"
#$ns at 2.8 "$n7 add-mark N2 darkgreen circle"
#$ns at 3.0 "$n7 delete-mark N2"
#$ns at 3.0 "$n7 add-mark N2 violet circle"

#$ns at 0.1 "$n19 delete-mark N2"
#$ns at 0.1 "$n19 add-mark N2 chocolate circle"
#$ns at 0.1 "$n9 delete-mark N2"
#$ns at 0.1 "$n9 add-mark N2 chocolate circle"

#$ns at 0.1 "$n8 delete-mark N2"
#$ns at 0.1 "$n8 add-mark N2 violet circle"
#$ns at 6.0 "$n8 delete-mark N2"
#$ns at 6.0 "$n8 add-mark N2 darkgreen circle"
#$ns at 6.2 "$n8 delete-mark N2"
#$ns at 6.2 "$n8 add-mark N2 chocolate circle"

#$ns at 0.1 "$n13 delete-mark N2"
#$ns at 0.1 "$n13 add-mark N2 violet circle"
#$ns at 7.0 "$n13 delete-mark N2"
#$ns at 7.0 "$n13 add-mark N2 darkgreen circle"
#$ns at 7.2 "$n13 delete-mark N2"
#$ns at 7.2 "$n13 add-mark N2 chocolate circle"

#$ns at 0.1 "$n14 delete-mark N2"
#$ns at 0.1 "$n14 add-mark N2 violet circle"

#$ns at 15.9 "$n9 delete-mark N2"
#$ns at 15.9 "$n9 add-mark N2 red circle"


#$ns at 12.9 "$n18 delete-mark N2"
#$ns at 12.9 "$n18 add-mark N2 violet circle"

#$ns at 28.0 "$n15 delete-mark N2"
#$ns at 28.0 "$n15 add-mark N2 red circle"

#$ns at 28.0 "$n17 delete-mark N2"
#$ns at 28.0 "$n17 add-mark N2 red circle"

#$ns at 28.0 "$n11 delete-mark N2"
#$ns at 28.0 "$n11 add-mark N2 red circle"

#$ns at 28.0 "$n16 delete-mark N2"
#$ns at 28.0 "$n16 add-mark N2 chocolate circle"

#$ns at 28.0 "$n10 delete-mark N2"
#$ns at 28.0 "$n10 add-mark N2 violet circle"


set tcp [new Agent/TCP]
set sink [new Agent/TCPSink]
$ns attach-agent $n0 $tcp
$ns attach-agent $n3 $sink
$ns connect $tcp $sink
set ftp [new Application/FTP]
$ftp attach-agent $tcp
$ns at 0.1 "$ftp start" 
$ns at 3.0 "$ftp stop"

set tcp1 [new Agent/TCP]
set sink1 [new Agent/TCPSink]
$ns attach-agent $n1 $tcp1
$ns attach-agent $n3 $sink1
$ns connect $tcp1 $sink1
set ftp1 [new Application/FTP]
$ftp1 attach-agent $tcp1
$ns at 0.1 "$ftp1 start" 
$ns at 3.0 "$ftp1 stop"

set tcp2 [new Agent/TCP]
set sink2 [new Agent/TCPSink]
$ns attach-agent $n3 $tcp2
$ns attach-agent $n2 $sink2
$ns connect $tcp2 $sink2
set ftp2 [new Application/FTP]
$ftp2 attach-agent $tcp2
$ns at 0.1 "$ftp2 start" 
$ns at 3.0 "$ftp2 stop"

#-------------------------------------

$ns at 3.0 "$n4 label S1"
$ns at 3.0 "$n6 label D1"

set tcp3 [new Agent/TCP]
set sink3 [new Agent/TCPSink]
$ns attach-agent $n4 $tcp3
$ns attach-agent $n0 $sink3
$ns connect $tcp3 $sink3
set ftp3 [new Application/FTP]
$ftp3 attach-agent $tcp3
$ns at 3.1 "$ftp3 start" 
$ns at 7.0 "$ftp3 stop"

set tcp4 [new Agent/TCP]
set sink4 [new Agent/TCPSink]
$ns attach-agent $n0 $tcp4
$ns attach-agent $n6 $sink4
$ns connect $tcp4 $sink4
set ftp4 [new Application/FTP]
$ftp4 attach-agent $tcp4
$ns at 7.0 "$ftp4 start" 
$ns at 11.0 "$ftp4 stop"

$ns at 3.0 "$n11 label S2"
$ns at 3.0 "$n17 label D2"

set tcp5 [new Agent/TCP]
set sink5 [new Agent/TCPSink]
$ns attach-agent $n11 $tcp5
$ns attach-agent $n3 $sink5
$ns connect $tcp5 $sink5
set ftp5 [new Application/FTP]
$ftp5 attach-agent $tcp5
$ns at 3.0 "$ftp5 start" 
$ns at 7.0 "$ftp5 stop"

set tcp6 [new Agent/TCP]
set sink6 [new Agent/TCPSink]
$ns attach-agent $n3 $tcp6
$ns attach-agent $n10 $sink6
$ns connect $tcp6 $sink6
set ftp6 [new Application/FTP]
$ftp6 attach-agent $tcp6
$ns at 7.0 "$ftp6 start" 
$ns at 11.0 "$ftp6 stop"

set tcp7 [new Agent/TCP]
set sink7 [new Agent/TCPSink]
$ns attach-agent $n10 $tcp7
$ns attach-agent $n17 $sink7
$ns connect $tcp7 $sink7
set ftp7 [new Application/FTP]
$ftp7 attach-agent $tcp7
$ns at 11.0 "$ftp7 start" 
$ns at 15.0 "$ftp7 stop"

#-----------

$ns at 15.0 "$n19 label S3"
$ns at 15.0 "$n9 label D3"


set tcp8 [new Agent/TCP]
set sink8 [new Agent/TCPSink]
$ns attach-agent $n19 $tcp8
$ns attach-agent $n1 $sink8
$ns connect $tcp8 $sink8
set ftp8 [new Application/FTP]
$ftp8 attach-agent $tcp8
$ns at 15.0 "$ftp8 start" 
$ns at 19.0 "$ftp8 stop"

set tcp9 [new Agent/TCP]
set sink9 [new Agent/TCPSink]
$ns attach-agent $n1 $tcp9
$ns attach-agent $n9 $sink9
$ns connect $tcp9 $sink9
set ftp9 [new Application/FTP]
$ftp9 attach-agent $tcp9
$ns at 19.0 "$ftp9 start" 
$ns at 23.0 "$ftp9 stop"

$ns at 15.0 "$n13 label S4"
$ns at 15.0 "$n8 label D4"

set tcp10 [new Agent/TCP]
set sink10 [new Agent/TCPSink]
$ns attach-agent $n13 $tcp10
$ns attach-agent $n2 $sink10
$ns connect $tcp10 $sink10
set ftp10 [new Application/FTP]
$ftp10 attach-agent $tcp10
$ns at 15.0 "$ftp10 start" 
$ns at 19.0 "$ftp10 stop"

set tcp11 [new Agent/TCP]
set sink11 [new Agent/TCPSink]
$ns attach-agent $n2 $tcp11
$ns attach-agent $n8 $sink11
$ns connect $tcp11 $sink11
set ftp11 [new Application/FTP]
$ftp11 attach-agent $tcp11
$ns at 19.0 "$ftp11 start" 
$ns at 23.0 "$ftp11 stop"

#---------
$ns at 23.0 "$n12 label S5"
$ns at 23.0 "$n15 label D5"

set tcp12 [new Agent/TCP]
set sink12 [new Agent/TCPSink]
$ns attach-agent $n0 $tcp12
$ns attach-agent $n12 $sink12
$ns connect $tcp12 $sink12
set ftp12 [new Application/FTP]
$ftp12 attach-agent $tcp12
$ns at 23.0 "$ftp12 start" 
$ns at 26.0 "$ftp12 stop"

set tcp13 [new Agent/TCP]
set sink13 [new Agent/TCPSink]
$ns attach-agent $n0 $tcp13
$ns attach-agent $n15 $sink13
$ns connect $tcp13 $sink13
set ftp13 [new Application/FTP]
$ftp13 attach-agent $tcp13
$ns at 26.0 "$ftp13 start" 
$ns at 29.0 "$ftp13 stop"

$ns at 23.0 "$n5 label S6"
$ns at 23.0 "$n16 label D6"


set tcp14 [new Agent/TCP]
set sink14 [new Agent/TCPSink]
$ns attach-agent $n5 $tcp14
$ns attach-agent $n0 $sink14
$ns connect $tcp14 $sink14
set ftp14 [new Application/FTP]
$ftp14 attach-agent $tcp14
$ns at 26.0 "$ftp14 start" 
$ns at 29.0 "$ftp14 stop"

set tcp15 [new Agent/TCP]
set sink15 [new Agent/TCPSink]
$ns attach-agent $n0 $tcp15
$ns attach-agent $n11 $sink15
$ns connect $tcp15 $sink15
set ftp15 [new Application/FTP]
$ftp15 attach-agent $tcp15
$ns at 29.0 "$ftp15 start" 
$ns at 32.0 "$ftp15 stop"

set tcp16 [new Agent/TCP]
set sink16 [new Agent/TCPSink]
$ns attach-agent $n11 $tcp16
$ns attach-agent $n16 $sink16
$ns connect $tcp16 $sink16
set ftp16 [new Application/FTP]
$ftp16 attach-agent $tcp16
$ns at 32.0 "$ftp16 start" 
$ns at 35.0 "$ftp16 stop"

$ns at 32.0 "$n10 label S7"
$ns at 32.0 "$n18 label D7"

set tcp17 [new Agent/TCP]
set sink17 [new Agent/TCPSink]
$ns attach-agent $n10 $tcp17
$ns attach-agent $n2 $sink17
$ns connect $tcp17 $sink17
set ftp17 [new Application/FTP]
$ftp17 attach-agent $tcp17
$ns at 32.0 "$ftp17 start" 
$ns at 36.0 "$ftp17 stop"


set tcp18 [new Agent/TCP]
set sink18 [new Agent/TCPSink]
$ns attach-agent $n2 $tcp18
$ns attach-agent $n18 $sink18
$ns connect $tcp18 $sink18
set ftp18 [new Application/FTP]
$ftp18 attach-agent $tcp18
$ns at 36.0 "$ftp18 start" 
$ns at 40.0 "$ftp18 stop"


$ns at 32.0 "$n7 label S8"
$ns at 32.0 "$n14 label D8"


set tcp19 [new Agent/TCP]
set sink19 [new Agent/TCPSink]
$ns attach-agent $n7 $tcp19
$ns attach-agent $n14 $sink19
$ns connect $tcp19 $sink19
set ftp19 [new Application/FTP]
$ftp19 attach-agent $tcp19
$ns at 32.0 "$ftp19 start" 
$ns at 35.0 "$ftp19 stop"


#ODL RULE----------
#11-17

set tcp20 [new Agent/TCP]
set sink20 [new Agent/TCPSink]
$ns attach-agent $n11 $tcp20
$ns attach-agent $n0 $sink20
$ns connect $tcp20 $sink20
set ftp20 [new Application/FTP]
$ftp20 attach-agent $tcp20
$ns at 40.0 "$ftp20 start" 
$ns at 43.0 "$ftp20 stop"

set tcp21 [new Agent/TCP]
set sink21 [new Agent/TCPSink]
$ns attach-agent $n0 $tcp21
$ns attach-agent $n3 $sink21
$ns connect $tcp21 $sink21
set ftp21 [new Application/FTP]
$ftp21 attach-agent $tcp21
$ns at 43.0 "$ftp21 start" 
$ns at 46.0 "$ftp21 stop"

set tcp22 [new Agent/TCP]
set sink22 [new Agent/TCPSink]
$ns attach-agent $n3 $tcp22
$ns attach-agent $n17 $sink22
$ns connect $tcp22 $sink22
set ftp22 [new Application/FTP]
$ftp22 attach-agent $tcp22
$ns at 46.0 "$ftp22 start" 
$ns at 49.0 "$ftp22 stop"

#5-16

set tcp23 [new Agent/TCP]
set sink23 [new Agent/TCPSink]
$ns attach-agent $n5 $tcp23
$ns attach-agent $n0 $sink23
$ns connect $tcp23 $sink23
set ftp23 [new Application/FTP]
$ftp23 attach-agent $tcp23
$ns at 49.0 "$ftp23 start" 
$ns at 53.0 "$ftp23 stop"


set tcp24 [new Agent/TCP]
set sink24 [new Agent/TCPSink]
$ns attach-agent $n0 $tcp24
$ns attach-agent $n3 $sink24
$ns connect $tcp24 $sink24
set ftp24 [new Application/FTP]
$ftp24 attach-agent $tcp24
$ns at 53.0 "$ftp24 start" 
$ns at 57.0 "$ftp24 stop"


set tcp25 [new Agent/TCP]
set sink25 [new Agent/TCPSink]
$ns attach-agent $n3 $tcp25
$ns attach-agent $n1 $sink25
$ns connect $tcp25 $sink25
set ftp25 [new Application/FTP]
$ftp25 attach-agent $tcp25
$ns at 57.0 "$ftp25 start" 
$ns at 61.0 "$ftp25 stop"


set tcp26 [new Agent/TCP]
set sink26 [new Agent/TCPSink]
$ns attach-agent $n1 $tcp26
$ns attach-agent $n16 $sink26
$ns connect $tcp26 $sink26
set ftp26 [new Application/FTP]
$ftp26 attach-agent $tcp26
$ns at 61.0 "$ftp26 start" 
$ns at 65.0 "$ftp26 stop"

#-----------

set tcp27 [new Agent/TCP]
set sink27 [new Agent/TCPSink]
$ns attach-agent $n8 $tcp27
$ns attach-agent $n2 $sink27
$ns connect $tcp27 $sink27
set ftp27 [new Application/FTP]
$ftp27 attach-agent $tcp27
$ns at 65.0 "$ftp27 start" 
$ns at 69.0 "$ftp27 stop"

set tcp28 [new Agent/TCP]
set sink28 [new Agent/TCPSink]
$ns attach-agent $n2 $tcp28
$ns attach-agent $n3 $sink28
$ns connect $tcp28 $sink28
set ftp28 [new Application/FTP]
$ftp28 attach-agent $tcp28
$ns at 69.0 "$ftp28 start" 
$ns at 73.0 "$ftp28 stop"

set tcp29 [new Agent/TCP]
set sink29 [new Agent/TCPSink]
$ns attach-agent $n3 $tcp29
$ns attach-agent $n1 $sink29
$ns connect $tcp29 $sink29
set ftp29 [new Application/FTP]
$ftp29 attach-agent $tcp29
$ns at 73.0 "$ftp29 start" 
$ns at 77.0 "$ftp29 stop"

set tcp30 [new Agent/TCP]
set sink30 [new Agent/TCPSink]
$ns attach-agent $n1 $tcp30
$ns attach-agent $n9 $sink30
$ns connect $tcp30 $sink30
set ftp30 [new Application/FTP]
$ftp30 attach-agent $tcp30
$ns at 77.0 "$ftp30 start" 
$ns at 81.0 "$ftp30 stop"

#-----------

set tcp31 [new Agent/TCP]
set sink31 [new Agent/TCPSink]
$ns attach-agent $n4 $tcp31
$ns attach-agent $n0 $sink31
$ns connect $tcp31 $sink31
set ftp31 [new Application/FTP]
$ftp31 attach-agent $tcp31
$ns at 66.0 "$ftp31 start" 
$ns at 70.0 "$ftp31 stop"

set tcp32 [new Agent/TCP]
set sink32 [new Agent/TCPSink]
$ns attach-agent $n0 $tcp32
$ns attach-agent $n3 $sink32
$ns connect $tcp32 $sink32
set ftp32 [new Application/FTP]
$ftp32 attach-agent $tcp32
$ns at 70.0 "$ftp32 start" 
$ns at 74.0 "$ftp32 stop"

set tcp33 [new Agent/TCP]
set sink33 [new Agent/TCPSink]
$ns attach-agent $n3 $tcp33
$ns attach-agent $n6 $sink33
$ns connect $tcp33 $sink33
set ftp33 [new Application/FTP]
$ftp33 attach-agent $tcp33
$ns at 74.0 "$ftp33 start" 
$ns at 78.0 "$ftp33 stop"

#---------

set tcp34 [new Agent/TCP]
set sink34 [new Agent/TCPSink]
$ns attach-agent $n11 $tcp34
$ns attach-agent $n0 $sink34
$ns connect $tcp34 $sink34
set ftp34 [new Application/FTP]
$ftp34 attach-agent $tcp34
$ns at 81.0 "$ftp34 start" 
$ns at 85.0 "$ftp34 stop"

set tcp35 [new Agent/TCP]
set sink35 [new Agent/TCPSink]
$ns attach-agent $n0 $tcp35
$ns attach-agent $n3 $sink35
$ns connect $tcp35 $sink35
set ftp35 [new Application/FTP]
$ftp35 attach-agent $tcp35
$ns at 85.0 "$ftp35 start" 
$ns at 89.0 "$ftp35 stop"

set tcp36 [new Agent/TCP]
set sink36 [new Agent/TCPSink]
$ns attach-agent $n3 $tcp36
$ns attach-agent $n6 $sink36
$ns connect $tcp36 $sink36
set ftp36 [new Application/FTP]
$ftp36 attach-agent $tcp36
$ns at 89.0 "$ftp36 start" 
$ns at 93.0 "$ftp36 stop"

set tcp37 [new Agent/TCP]
set sink37 [new Agent/TCPSink]
$ns attach-agent $n6 $tcp37
$ns attach-agent $n17 $sink37
$ns connect $tcp37 $sink37
set ftp37 [new Application/FTP]
$ftp37 attach-agent $tcp37
$ns at 93.0 "$ftp37 start" 
$ns at 97.0 "$ftp37 stop"

#--

#set tcp38 [new Agent/TCP]
#set sink38 [new Agent/TCPSink]
#$ns attach-agent $n6 $tcp38
#$ns attach-agent $n17 $sink38
#$ns connect $tcp38 $sink38
#set ftp38 [new Application/FTP]
#$ftp38 attach-agent $tcp38
#$ns at 82.0 "$ftp38 start" 
#$ns at 86.0 "$ftp38 stop"

#set tcp39 [new Agent/TCP]
#set sink39 [new Agent/TCPSink]
#$ns attach-agent $n6 $tcp39
#$ns attach-agent $n17 $sink39
#$ns connect $tcp39 $sink39
#set ftp39 [new Application/FTP]
#$ftp39 attach-agent $tcp39
#$ns at 86.0 "$ftp39 start" 
#$ns at 90.0 "$ftp39 stop"

set tcp40 [new Agent/TCP]
set sink40 [new Agent/TCPSink]
$ns attach-agent $n6 $tcp40
$ns attach-agent $n17 $sink40
$ns connect $tcp40 $sink40
set ftp40 [new Application/FTP]
$ftp40 attach-agent $tcp40
$ns at 90.0 "$ftp40 start" 
$ns at 94.0 "$ftp40 stop"


$ns at 94.5 "$n4 label ."
$ns at 94.5 "$n5 label ."
$ns at 94.5 "$n6 label ."
$ns at 94.5 "$n7 label ."
$ns at 94.5 "$n8 label ."
$ns at 94.5 "$n9 label ."
$ns at 94.5 "$n10 label ."
$ns at 94.5 "$n11 label ."
$ns at 94.5 "$n12 label ."
$ns at 94.5 "$n12 label ."
$ns at 94.5 "$n13 label ."
$ns at 94.5 "$n14 label ."
$ns at 94.5 "$n15 label ."
$ns at 94.5 "$n16 label ."
$ns at 94.5 "$n17 label ."
$ns at 94.5 "$n18 label ."
$ns at 94.5 "$n19 label ."

$ns at 95.0 "$n11 label Source"

$ns at 95.0 "$n14 label DES1"

$ns at 95.0 "$n9 label DES2"

$ns at 95.0 "$n18 label DES3"

$ns at 112.2 "$n11 label ."

$ns at 112.2 "$n14 label ."

$ns at 112.2 "$n9 label ."

$ns at 112.2 "$n18 label ."


set tcp41 [new Agent/TCP]
set sink41 [new Agent/TCPSink]
$ns attach-agent $n11 $tcp41
$ns attach-agent $n0 $sink41
$ns connect $tcp41 $sink41
set ftp41 [new Application/FTP]
$ftp41 attach-agent $tcp41
$ns at 95.0 "$ftp41 start" 
$ns at 100.0 "$ftp41 stop"


set tcp42 [new Agent/TCP]
set sink42 [new Agent/TCPSink]
$ns attach-agent $n0 $tcp42
$ns attach-agent $n3 $sink42
$ns connect $tcp42 $sink42
set ftp42 [new Application/FTP]
$ftp42 attach-agent $tcp42
$ns at 100.0 "$ftp42 start" 
$ns at 104.0 "$ftp42 stop"


set tcp43 [new Agent/TCP]
set sink43 [new Agent/TCPSink]
$ns attach-agent $n3 $tcp43
$ns attach-agent $n14 $sink43
$ns connect $tcp43 $sink43
set ftp43 [new Application/FTP]
$ftp43 attach-agent $tcp43
$ns at 104.0 "$ftp43 start" 
$ns at 108.0 "$ftp43 stop"


set tcp44 [new Agent/TCP]
set sink44 [new Agent/TCPSink]
$ns attach-agent $n3 $tcp44
$ns attach-agent $n2 $sink44
$ns connect $tcp44 $sink44
set ftp44 [new Application/FTP]
$ftp44 attach-agent $tcp44
$ns at 104.0 "$ftp44 start" 
$ns at 108.0 "$ftp44 stop"


set tcp45 [new Agent/TCP]
set sink45 [new Agent/TCPSink]
$ns attach-agent $n3 $tcp45
$ns attach-agent $n1 $sink45
$ns connect $tcp45 $sink45
set ftp45 [new Application/FTP]
$ftp45 attach-agent $tcp45
$ns at 104.0 "$ftp45 start" 
$ns at 108.0 "$ftp45 stop"


set tcp46 [new Agent/TCP]
set sink46 [new Agent/TCPSink]
$ns attach-agent $n1 $tcp46
$ns attach-agent $n9 $sink46
$ns connect $tcp46 $sink46
set ftp46 [new Application/FTP]
$ftp46 attach-agent $tcp46
$ns at 108.0 "$ftp46 start" 
$ns at 112.0 "$ftp46 stop"


set tcp47 [new Agent/TCP]
set sink47 [new Agent/TCPSink]
$ns attach-agent $n2 $tcp47
$ns attach-agent $n18 $sink47
$ns connect $tcp47 $sink47
set ftp47 [new Application/FTP]
$ftp47 attach-agent $tcp47
$ns at 108.0 "$ftp47 start" 
$ns at 112.0 "$ftp47 stop"

$ns at 112.5 "$n14 label Source"

$ns at 112.5 "$n4 label DES1"

$ns at 112.5 "$n11 label DES2"

$ns at 112.5 "$n16 label DES3"

$ns at 112.5 "$n9 label DES4"

$ns at 112.5 "$n19 label DES5"

$ns at 112.5 "$n18 label DES6"



set tcp48 [new Agent/TCP]
set sink48 [new Agent/TCPSink]
$ns attach-agent $n14 $tcp48
$ns attach-agent $n3 $sink48
$ns connect $tcp48 $sink48
set ftp48 [new Application/FTP]
$ftp48 attach-agent $tcp48
$ns at 113.0 "$ftp48 start" 
$ns at 117.0 "$ftp48 stop"

set tcp49 [new Agent/TCP]
set sink49 [new Agent/TCPSink]
$ns attach-agent $n3 $tcp49
$ns attach-agent $n1 $sink49
$ns connect $tcp49 $sink49
set ftp49 [new Application/FTP]
$ftp49 attach-agent $tcp49
$ns at 117.0 "$ftp49 start" 
$ns at 121.0 "$ftp49 stop"


set tcp50 [new Agent/TCP]
set sink50 [new Agent/TCPSink]
$ns attach-agent $n3 $tcp50
$ns attach-agent $n2 $sink50
$ns connect $tcp50 $sink50
set ftp50 [new Application/FTP]
$ftp50 attach-agent $tcp50
$ns at 117.0 "$ftp50 start" 
$ns at 121.0 "$ftp50 stop"


set tcp51 [new Agent/TCP]
set sink51 [new Agent/TCPSink]
$ns attach-agent $n3 $tcp51
$ns attach-agent $n0 $sink51
$ns connect $tcp51 $sink51
set ftp51 [new Application/FTP]
$ftp51 attach-agent $tcp51
$ns at 117.0 "$ftp51 start" 
$ns at 121.0 "$ftp51 stop"

set tcp52 [new Agent/TCP]
set sink52 [new Agent/TCPSink]
$ns attach-agent $n0 $tcp52
$ns attach-agent $n4 $sink52
$ns connect $tcp52 $sink52
set ftp52 [new Application/FTP]
$ftp52 attach-agent $tcp52
$ns at 121.0 "$ftp52 start" 
$ns at 126.0 "$ftp52 stop"


set tcp53 [new Agent/TCP]
set sink53 [new Agent/TCPSink]
$ns attach-agent $n0 $tcp53
$ns attach-agent $n11 $sink53
$ns connect $tcp53 $sink53
set ftp53 [new Application/FTP]
$ftp53 attach-agent $tcp53
$ns at 121.0 "$ftp53 start" 
$ns at 126.0 "$ftp53 stop"


set tcp54 [new Agent/TCP]
set sink54 [new Agent/TCPSink]
$ns attach-agent $n1 $tcp54
$ns attach-agent $n9 $sink54
$ns connect $tcp54 $sink54
set ftp54 [new Application/FTP]
$ftp54 attach-agent $tcp54
$ns at 121.0 "$ftp54 start" 
$ns at 126.0 "$ftp54 stop"


set tcp55 [new Agent/TCP]
set sink55 [new Agent/TCPSink]
$ns attach-agent $n1 $tcp55
$ns attach-agent $n16 $sink55
$ns connect $tcp55 $sink55
set ftp55 [new Application/FTP]
$ftp55 attach-agent $tcp55
$ns at 121.0 "$ftp55 start" 
$ns at 126.0 "$ftp55 stop"


set tcp56 [new Agent/TCP]
set sink56 [new Agent/TCPSink]
$ns attach-agent $n2 $tcp56
$ns attach-agent $n18 $sink56
$ns connect $tcp56 $sink56
set ftp56 [new Application/FTP]
$ftp56 attach-agent $tcp56
$ns at 121.0 "$ftp56 start" 
$ns at 126.0 "$ftp56 stop"


set tcp57 [new Agent/TCP]
set sink57 [new Agent/TCPSink]
$ns attach-agent $n2 $tcp57
$ns attach-agent $n19 $sink57
$ns connect $tcp57 $sink57
set ftp57 [new Application/FTP]
$ftp57 attach-agent $tcp57
$ns at 121.0 "$ftp57 start" 
$ns at 126.0 "$ftp57 stop"

#-------

$ns at 126.1 "$n14 label DES1"

$ns at 126.1 "$n4 label DES4"

$ns at 126.1 "$n11 label DES2"

$ns at 126.1 "$n16 label DES3"

$ns at 126.1 "$n9 label Source"

$ns at 126.1 "$n19 label DES5"

$ns at 126.1 "$n18 label DES6"


set tcp58 [new Agent/TCP]
set sink58 [new Agent/TCPSink]
$ns attach-agent $n9 $tcp58
$ns attach-agent $n1 $sink58
$ns connect $tcp58 $sink58
set ftp58 [new Application/FTP]
$ftp58 attach-agent $tcp58
$ns at 127.0 "$ftp58 start" 
$ns at 132.0 "$ftp58 stop"

set tcp59 [new Agent/TCP]
set sink59 [new Agent/TCPSink]
$ns attach-agent $n1 $tcp59
$ns attach-agent $n16 $sink59
$ns connect $tcp59 $sink59
set ftp59 [new Application/FTP]
$ftp59 attach-agent $tcp59
$ns at 132.0 "$ftp59 start" 
$ns at 137.0 "$ftp59 stop"


set tcp60 [new Agent/TCP]
set sink60 [new Agent/TCPSink]
$ns attach-agent $n1 $tcp60
$ns attach-agent $n3 $sink60
$ns connect $tcp60 $sink60
set ftp60 [new Application/FTP]
$ftp60 attach-agent $tcp60
$ns at 132.0 "$ftp60 start" 
$ns at 137.0 "$ftp60 stop"


set tcp61 [new Agent/TCP]
set sink61 [new Agent/TCPSink]
$ns attach-agent $n3 $tcp61
$ns attach-agent $n2 $sink61
$ns connect $tcp61 $sink61
set ftp61 [new Application/FTP]
$ftp61 attach-agent $tcp61
$ns at 137.0 "$ftp61 start" 
$ns at 142.0 "$ftp61 stop"


set tcp62 [new Agent/TCP]
set sink62 [new Agent/TCPSink]
$ns attach-agent $n3 $tcp62
$ns attach-agent $n0 $sink62
$ns connect $tcp62 $sink62
set ftp62 [new Application/FTP]
$ftp62 attach-agent $tcp62
$ns at 137.0 "$ftp62 start" 
$ns at 142.0 "$ftp62 stop"


set tcp63 [new Agent/TCP]
set sink63 [new Agent/TCPSink]
$ns attach-agent $n3 $tcp63
$ns attach-agent $n14 $sink63
$ns connect $tcp63 $sink63
set ftp63 [new Application/FTP]
$ftp63 attach-agent $tcp63
$ns at 137.0 "$ftp63 start" 
$ns at 142.0 "$ftp63 stop"




set tcp64 [new Agent/TCP]
set sink64 [new Agent/TCPSink]
$ns attach-agent $n0 $tcp64
$ns attach-agent $n11 $sink64
$ns connect $tcp64 $sink64
set ftp64 [new Application/FTP]
$ftp64 attach-agent $tcp64
$ns at 142.0 "$ftp64 start" 
$ns at 147.0 "$ftp64 stop"

set tcp64 [new Agent/TCP]
set sink64 [new Agent/TCPSink]
$ns attach-agent $n0 $tcp64
$ns attach-agent $n4 $sink64
$ns connect $tcp64 $sink64
set ftp64 [new Application/FTP]
$ftp64 attach-agent $tcp64
$ns at 142.0 "$ftp64 start" 
$ns at 147.0 "$ftp64 stop"

set tcp64 [new Agent/TCP]
set sink64 [new Agent/TCPSink]
$ns attach-agent $n2 $tcp64
$ns attach-agent $n19 $sink64
$ns connect $tcp64 $sink64
set ftp64 [new Application/FTP]
$ftp64 attach-agent $tcp64
$ns at 142.0 "$ftp64 start" 
$ns at 147.0 "$ftp64 stop"

set tcp64 [new Agent/TCP]
set sink64 [new Agent/TCPSink]
$ns attach-agent $n2 $tcp64
$ns attach-agent $n18 $sink64
$ns connect $tcp64 $sink64
set ftp64 [new Application/FTP]
$ftp64 attach-agent $tcp64
$ns at 142.0 "$ftp64 start" 
$ns at 147.0 "$ftp64 stop"

#-----------------------------
$ns at 64.4 "$n19 label ."

$ns at 64.41 "$n19 label D4"

$ns at 64.4 "$n8 label ."

$ns at 64.41 "$n8 label S3"



$ns at 147.3 "$n14 label ."

$ns at 147.3 "$n4 label source1"

$ns at 147.3 "$n11 label DES2"

$ns at 147.3 "$n16 label source2"

$ns at 147.3 "$n9 label DES1"

$ns at 147.3 "$n7 label DES3"

$ns at 147.3 "$n19 label ."

$ns at 147.3 "$n18 label source3"


set tcp65 [new Agent/TCP]
set sink65 [new Agent/TCPSink]
$ns attach-agent $n4 $tcp65
$ns attach-agent $n0 $sink65
$ns connect $tcp65 $sink65
set ftp65 [new Application/FTP]
$ftp65 attach-agent $tcp65
$ns at 147.5 "$ftp65 start" 
$ns at 152.5 "$ftp65 stop"

set tcp66 [new Agent/TCP]
set sink66 [new Agent/TCPSink]
$ns attach-agent $n18 $tcp66
$ns attach-agent $n2 $sink66
$ns connect $tcp66 $sink66
set ftp66 [new Application/FTP]
$ftp66 attach-agent $tcp66
$ns at 147.5 "$ftp66 start" 
$ns at 152.5 "$ftp66 stop"

set tcp67 [new Agent/TCP]
set sink67 [new Agent/TCPSink]
$ns attach-agent $n16 $tcp67
$ns attach-agent $n1 $sink67
$ns connect $tcp67 $sink67
set ftp67 [new Application/FTP]
$ftp67 attach-agent $tcp67
$ns at 147.5 "$ftp67 start" 
$ns at 152.5 "$ftp67 stop"

#-----
set tcp68 [new Agent/TCP]
set sink68 [new Agent/TCPSink]
$ns attach-agent $n0 $tcp68
$ns attach-agent $n3 $sink68
$ns connect $tcp68 $sink68
set ftp68 [new Application/FTP]
$ftp68 attach-agent $tcp68
$ns at 152.5 "$ftp68 start" 
$ns at 157.5 "$ftp68 stop"



set tcp69 [new Agent/TCP]
set sink69 [new Agent/TCPSink]
$ns attach-agent $n1 $tcp69
$ns attach-agent $n3 $sink69
$ns connect $tcp69 $sink69
set ftp69 [new Application/FTP]
$ftp69 attach-agent $tcp69
$ns at 152.5 "$ftp69 start" 
$ns at 157.5 "$ftp69 stop"


set tcp70 [new Agent/TCP]
set sink70 [new Agent/TCPSink]
$ns attach-agent $n2 $tcp70
$ns attach-agent $n15 $sink70
$ns connect $tcp70 $sink70
set ftp70 [new Application/FTP]
$ftp70 attach-agent $tcp70
$ns at 153.0 "$ftp70 start" 
$ns at 157.0 "$ftp70 stop"

#---------------

set tcp71 [new Agent/TCP]
set sink71 [new Agent/TCPSink]
$ns attach-agent $n3 $tcp71
$ns attach-agent $n0 $sink71
$ns connect $tcp71 $sink71
set ftp71 [new Application/FTP]
$ftp71 attach-agent $tcp71
$ns at 157.0 "$ftp71 start" 
$ns at 162.0 "$ftp71 stop"


set tcp72 [new Agent/TCP]
set sink72 [new Agent/TCPSink]
$ns attach-agent $n3 $tcp72
$ns attach-agent $n1 $sink72
$ns connect $tcp72 $sink72
set ftp72 [new Application/FTP]
$ftp72 attach-agent $tcp72
$ns at 157.0 "$ftp72 start" 
$ns at 162.0 "$ftp72 stop"


set tcp73 [new Agent/TCP]
set sink73 [new Agent/TCPSink]
$ns attach-agent $n15 $tcp73
$ns attach-agent $n3 $sink73
$ns connect $tcp73 $sink73
set ftp73 [new Application/FTP]
$ftp73 attach-agent $tcp73
$ns at 157.0 "$ftp73 start" 
$ns at 162.0 "$ftp73 stop"


#--------

set tcp74 [new Agent/TCP]
set sink74 [new Agent/TCPSink]
$ns attach-agent $n0 $tcp74
$ns attach-agent $n11 $sink74
$ns connect $tcp74 $sink74
set ftp74 [new Application/FTP]
$ftp74 attach-agent $tcp74
$ns at 162.0 "$ftp74 start" 
$ns at 167.0 "$ftp74 stop"


set tcp75 [new Agent/TCP]
set sink75 [new Agent/TCPSink]
$ns attach-agent $n1 $tcp75
$ns attach-agent $n9 $sink75
$ns connect $tcp75 $sink75
set ftp75 [new Application/FTP]
$ftp75 attach-agent $tcp75
$ns at 162.0 "$ftp75 start" 
$ns at 167.0 "$ftp75 stop"

set tcp76 [new Agent/TCP]
set sink76 [new Agent/TCPSink]
$ns attach-agent $n3 $tcp76
$ns attach-agent $n1 $sink76
$ns connect $tcp76 $sink76
set ftp76 [new Application/FTP]
$ftp76 attach-agent $tcp76
$ns at 162.0 "$ftp76 start" 
$ns at 167.0 "$ftp76 stop"

set tcp77 [new Agent/TCP]
set sink77 [new Agent/TCPSink]
$ns attach-agent $n1 $tcp77
$ns attach-agent $n7 $sink77
$ns connect $tcp77 $sink77
set ftp77 [new Application/FTP]
$ftp77 attach-agent $tcp77
$ns at 167.0 "$ftp77 start" 
$ns at 172.0 "$ftp77 stop"


#$ns at 94.5 "$n20 label ."


#$ns at 0.1 "$n4 color RED"
#$ns at 0.1 "$n5 color RED"
#$ns at 0.1 "$n6 color RED"
#$ns at 0.1 "$n12 color RED"

#$ns at 0.1 "$n7 color chocolate"
#$ns at 0.1 "$n9 color chocolate"
#$ns at 0.1 "$n19 color chocolate"
#$ns at 0.1 "$n21 color chocolate"
#$ns at 0.1 "$n22 color chocolate"

#$ns at 0.1 "$n8 color violet"
#$ns at 0.1 "$n13 color violet"
#$ns at 0.1 "$n20 color violet"
#$ns at 0.1 "$n14 color violet"

#$ns at 86.0 "$n5 label OA"
#$ns at 86.0 "$n7 label OA"
#$ns at 86.0 "$n15 label OA"
#$ns at 86.0 "$n14 label OA"
#$ns at 86.0 "$n8 label OA"
#$ns at 86.0 "$n19 label NN"

#$ns at 86.0 "$n18 label OA"
#$ns at 86.0 "$n6 label OA"
#$ns at 86.0 "$n4 label OA"
#$ns at 86.0 "$n9 label OA"
#$ns at 86.0 "$n20 label NN"


#$ns at 86.0 "$n10 label OA"
#$ns at 86.0 "$n11 label OA"
#$ns at 86.0 "$n12 label OA"
#$ns at 86.0 "$n13 label OA"
#$ns at 86.0 "$n16 label NN"
#$ns at 86.0 "$n17 label NN"

#$ns at 86.0 "$n21 label TN"
#$ns at 86.0 "$n22 label TN"
#$ns at 86.0 "$n23 label TN"

#MP RULE

$ns at 0.1 "$ns trace-annotate \" Adaptive Position Update for Geographic Routing \""
$ns at 0.5 "$ns trace-annotate \" All Periodic Beacons Propogation Virtually Cross link for Widest Networks\""
$ns at 3.5 "$ns trace-annotate \"Source1 send control messages to destination1 and \""
$ns at 3.5 "$ns trace-annotate \"Source2 send control messages to destination2 \""
$ns at 6.0 "$ns trace-annotate \"Source1 send Access to the periodic Beacon1 \""
$ns at 6.0 "$ns trace-annotate \"Source1 send Access to the periodic Beacon4 \""
$ns at 8.5 "$ns trace-annotate \"Periodic beacon packets that contain the geographic location coordinates of the nodes\""
$ns at 9.5 "$ns trace-annotate \"geographic routing protocols to maintain neighbor positions\""
$ns at 11.0 "$ns trace-annotate \"Node 17 is Unknown Neighbor. It is Access by coordinate node \""
$ns at 11.1 "$ns trace-annotate \"Unknown neighbor ratio. Node 17 is not aware of Periodic Beacon4, but Node 17 within the radio range of the Periodic Beacon4 to the total number of neighbors.\""
$ns at 11.8 "$ns trace-annotate \"greedy routing always succeeds in finding a next hop node. In other words, a forwarding node can always find a one-hop neighbor that is closer to the destination than itself.\""
$ns at 16.0 "$ns trace-annotate \"Source3 send Access to the periodic Beacon2 \""
$ns at 16.0 "$ns trace-annotate \"Source4 send Access to the periodic Beacon3 \""
$ns at 23.0 "$ns trace-annotate \"Source5 send Access to the periodic Beacon1 \""
$ns at 26.2 "$ns trace-annotate \"Periodic Beacon1 transmit packets to Dest5 and Received Source6 packets simultaniously \""
$ns at 32.0 "$ns trace-annotate \"APU is based on two simple principles: \""
$ns at 32.2 "$ns trace-annotate \"1) nodes whose movements are harder to predict update their positions more frequently\""
$ns at 32.3 "$ns trace-annotate \"(i.e) Node 11 can transmit packets to next periodic Beacon but here, If Node 11 has to predict node 16 positions,\""
$ns at 32.31 "$ns trace-annotate \"Even though node 16 if not any periodic beacon positions. This is Principle one. \""
$ns at 32.5 "$ns trace-annotate \"Node 16 is False Neighbor Ratio. Because Node 16 is not any other periodic Beacon Ratio.\""
$ns at 33.0 "$ns trace-annotate \"Greedy routing always succeeds in finding a next hop node. In other words, a forwarding node can always find a one-hop neighbor that is closer to the destination than itself. \""
$ns at 34.0 "$ns trace-annotate \"2) nodes closer to forwarding paths update their positions more frequently\""
$ns at 34.2 "$ns trace-annotate \"(i.e) Node 7 forwarding packets to Node 14, Because Node 7 closer to predict Node 14. \""
$ns at 43.0 "$ns trace-annotate \"LAL Perimeter Stateless Routing Protocol (LAL) improve the routing performance\""
$ns at 61.0 "$ns trace-annotate \"LAL routing always succeeds in finding a next hop node. In other words, a forwarding node can always find a one-hop neighbor that is closer to the destination than itself.\""
$ns at 104.0 "$ns trace-annotate \"Bounded Distance Forwarding, which excludes nodes in this transition region from being considered as possible forwarders\""
$ns at 152.1 "$ns trace-annotate \"(i.e) Load Balanced Distributed: Periodic Beacon 4 has already received PB1 and PB2 load. So Periodic Beacon 3 load balanced by one hop neighbor node 15.\""
$ns at 152.0 "$ns trace-annotate \"Load Balanced Distributed: Periodic Beacon if not balance multiple load, periodic Beacon takes limited limited load balance only. other load balance by one hop neighbor node.\""

$ns at 158.7 "$ns trace-annotate \"Source1 load Received by PB2 and Source2 load Received by PB1\""

$ns at 159.0 "$ns trace-annotate \"Source3 load Received PB4 by node 15 \""

$ns at 167.0 "$ns trace-annotate \"Finally LAL shows that APU can Optimum transmission from source to Destination and improve the routing performance in terms of packet delivery ratio with periodic beaconing.\""

#$ns at 0.35 "$ns trace-annotate \" Backbone sends Access to the Access point \""
#$ns at 3.58 "$ns trace-annotate \" Road side units give access to their vehicles \""
#$ns at 6.35 "$ns trace-annotate \" Threshold point is vehicle node 15 \""
#$ns at 6.35 "$ns trace-annotate \" change from AP3 to AP2 for optimal Access \""
#$ns at 8.0 "$ns trace-annotate \" Road side unit 1 give access to vehicle 5  \""
#$ns at 10.5 "$ns trace-annotate \" vehicle 23 searching access   \""
#$ns at 11.3 "$ns trace-annotate \" Road side unit 1 give access to vehicle 6  \""
#$ns at 12.7 "$ns trace-annotate \" Road side unit 3 give access to vehicle 12  \""
#$ns at 13.5 "$ns trace-annotate \" vehicle 12 searching access   \""
#$ns at 14.7 "$ns trace-annotate \" Dynamic Random Access   \""
#$ns at 15.1 "$ns trace-annotate \" vehicle 12 change their Access   \""
#$ns at 15.0 "$ns trace-annotate \" vehicle 8 searching access   \""
#$ns at 16.2 "$ns trace-annotate \" vehicle 10 searching access   \""
#$ns at 18.1 "$ns trace-annotate \" vehicle 10 change their Access   \""
#$ns at 17.0 "$ns trace-annotate \" vehicle 8 change their Access   \""
#$ns at 30.0 "$ns trace-annotate \" vehicle 4 searching access   \""
#$ns at 28.5 "$ns trace-annotate \" vehicle 14 and 7 searching access   \""
#$ns at 28.5 "$ns trace-annotate \" vehicle 14 and 7 change their access \""
#$ns at 32.0 "$ns trace-annotate \" vehicle 4  change their access \""
#$ns at 32.4 "$ns trace-annotate \" vehicle 21 searching \""
#$ns at 34.0 "$ns trace-annotate \" Get new Access to the vehicle 13 \""
#$ns at 37.0 "$ns trace-annotate \" Get new Access to the vehicle 11 \""
#$ns at 52.0 "$ns trace-annotate \" vehicle 22 searching their Access \""
#$ns at 54.0 "$ns trace-annotate \" vehicle 5 searching their Access \""
#$ns at 56.0 "$ns trace-annotate \" vehicle 5  change their access  \""
#$ns at 60.0 "$ns trace-annotate \" vehicle 6 searching their Access \""
#$ns at 62.0 "$ns trace-annotate \" vehicle 6 change their access \""
#$ns at 85.0 "$ns trace-annotate \" Optimal Access vehicle -> 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 18 \""
#$ns at 85.0 "$ns trace-annotate \" Threshold Node -> 21, 22, 23 \""
#$ns at 85.0 "$ns trace-annotate \" Normal vehicle node -> 16, 17, 19, 20 \""



proc finish {} {
    global ns tracefile namfile
    $ns flush-trace
    close $tracefile
    close $namfile
   # exec nam gprs.nam &

    exit 0
}
for {set i 0} {$i < $val(nn) } { incr i } {
    $ns at $val(stop) "\$n$i reset"
}
$ns at $val(stop) "$ns nam-end-wireless $val(stop)"
$ns at $val(stop) "finish"
$ns at $val(stop) "puts \"done\" ; $ns halt"
$ns run






