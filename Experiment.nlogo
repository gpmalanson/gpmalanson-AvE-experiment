globals [ maxmax maxclim maxsoils maxelev   AvgAsq Asqcount  xAlpha minergy maxergy renergy
    percent occupy1 counter1 counter2 counter3 counterArea counterFrag  counterGrass countfrag
  counterN  counterP counterQ ;counterR counterS counterT counterA counterB counterC counterD counterE
  dispd dista
  direct grad limit
  mean1 mean2 median1 median2 std1 std2 max1 max2 min1 min2  logAreaG
   Si Sj BCij
 topping smooth gamma climbase


             year mq1 mq2 cq1 cq2
      extracount
               ]
breed [Sp1s Sp1]

breed [Sp2s Sp2]

breed [Sp3s Sp3]

breed [Sp4s Sp4]

breed [Sp5s Sp5]
breed [Sp6s Sp6]
breed [Sp7s Sp7]
breed [Sp8s Sp8]

breed [Sp9s Sp9]

breed [Sp10s Sp10]

breed [Sp11s Sp11]

breed [sp12s Sp12]
breed [Sp13s Sp13]

breed [Sp14s Sp14]

breed [Sp15s Sp15]
breed [Sp16s Sp16]

breed [Sp17s Sp17]
breed [Sp18s Sp18]

breed [Sp19s Sp19]
breed [Sp20s Sp20]

breed [Sp21s Sp21]
breed [Sp22s Sp22]
breed [Sp23s Sp23]
breed [Sp24s Sp24]

breed [Sp25s Sp25]

breed [Sp26s Sp26]

breed [Sp27s Sp27]

breed [Sp28s Sp28]
breed [Sp29s Sp29]
breed [Sp30s Sp30]
breed [Sp31s Sp31]

breed [Sp32s Sp32]

breed [Sp33s Sp33]

breed [Sp34s Sp34]

breed [Sp35s Sp35]
breed [Sp36s Sp36]

breed [Sp37s Sp37]

breed [Sp38s Sp38]
breed [Sp39s Sp39]

breed [Sp40s Sp40]
breed [Sp41s Sp41]

breed [Sp42s Sp42]

breed [Sp43s Sp43]

breed [Sp44s Sp44]

breed [Sp45s Sp45]
breed [Sp46s Sp46]

breed [Sp47s Sp47]

breed [Sp48s Sp48]
breed [Sp49s Sp49]
breed [Sp50s Sp50]
breed [Sp51s Sp51]

breed [Sp52s Sp52]

breed [Sp53s Sp53]
breed [Sp54s Sp54]

breed [Sp55s Sp55]
breed [Sp56s Sp56]

breed [Sp57s Sp57]

breed [Sp58s Sp58]
breed [Sp59s Sp59]
breed [Sp60s Sp60]
breed [Sp61s Sp61]

breed [Sp62s Sp62]

breed [Sp63s Sp63]
breed [Sp64s Sp64]

breed [Sp65s Sp65]
breed [Sp66s Sp66]

breed [Sp67s Sp67]

breed [Sp68s Sp68]
breed [Sp69s Sp69]

breed [Sp70s Sp70]
breed [Sp71s Sp71]

breed [Sp72s Sp72]

breed [Sp73s Sp73]
breed [Sp74s Sp74]

breed [Sp75s Sp75]
breed [Sp76s Sp76]

breed [Sp77s Sp77]

breed [Sp78s Sp78]
breed [Sp79s Sp79]

breed [Sp80s Sp80]
breed [Sp81s Sp81]

breed [Sp82s Sp82]

breed [Sp83s Sp83]
breed [Sp84s Sp84]

breed [Sp85s Sp85]
breed [Sp86s Sp86]

breed [Sp87s Sp87]

breed [Sp88s Sp88]
breed [Sp89s Sp89]

breed [Sp90s Sp90]
breed [Sp91s Sp91]

breed [Sp92s Sp92]

breed [Sp93s Sp93]
breed [Sp94s Sp94]

breed [Sp95s Sp95]
breed [Sp96s Sp96]

breed [Sp97s Sp97]

breed [Sp98s Sp98]
breed [Sp99s Sp99]
breed [Sp100s Sp100]



  patches-own [   SorsN1   SorsT1 SorsS1 climate1
        ASq1 ASq2 ASq3 Asq4 ASq5 ASq6 ASq7 ASq8 ASq9 ASq10 ASq11 ASq12 ASq13 ASq14 ASq15 ASq16 ASq17 ASq18 ASq19 ASq20 ASq21 ASq22 ASq23
            ASq24 ASq25 ASq26 ASq27 ASq28 ASq29 ASq30 ASq31 ASq32 ASq33 ASq34 ASq35 ASq36 ASq37 ASq38 ASq39 ASq40 ASq41 ASq42 ASq43 ASq44 ASq45 ASq46 ASq47 ASq48 ASq49 ASq50
         ASq51 ASq52 ASq53 ASq54 ASq55 ASq56 ASq57 ASq58 ASq59 ASq60 ASq61 ASq62 ASq63 ASq64 ASq65 ASq66 ASq67 ASq68 ASq69 ASq70 ASq71 ASq72 ASq73
            ASq74 ASq75 ASq76 ASq77 ASq78 ASq79 ASq80 ASq81 ASq82 ASq83 ASq84 ASq85 ASq86 ASq87 ASq88 ASq89 ASq90 ASq91 ASq92 ASq93 ASq94 ASq95 ASq96 ASq97 ASq98 ASq99 ASq100

  habitat
  intercount

   energy

 ]

to go
  clear-all
set counter3 0
;set radi2 ((radii * 2)
 repeat 1 [

  setup1 ;setup1 initializes the grid
  setup2 ; setup2 distributes the species to the cells
    progo ; progo iterates the Monte Carlo processes of reproduction, dispersal, and mortality
set xAlpha 0

    set gamma 0
    set extracount 0


 rich ;rich computes the number of species extant on the grid at this time
   ; print gamma

   ]

  stop
end

to setup1
  set limit 9
  random-seed seed

ask patches [
set pcolor 49.3
set smooth axaxis
    set topping  (axaxis * axaxis) / 50
    set dista 5
    set climate1 0

            set ASq1 0 set ASq2 0 set ASq3 0 set ASq4 0 set ASq5 0 set ASq6 0 set ASq7 0 set ASq8 0 set ASq9 0 set ASq10 0 set ASq11 0 set ASq12 0 set ASq13 0 set ASq14 0 set ASq15 0 set ASq16 0 set ASq17 0 set ASq18 0 set ASq19 0 set ASq20 0 set ASq21 0 set ASq22 0 set ASq23     0 set ASq24 0 set ASq25 0 set ASq26 0 set ASq27 0 set ASq28 0 set ASq29 0 set ASq30 0 set ASq31 0 set ASq32 0 set ASq33 0 set ASq34 0 set ASq35 0 set ASq36 0 set ASq37 0 set ASq38 0 set ASq39 0 set ASq40 0 set ASq41 0 set ASq42 0 set ASq43 0 set ASq44 0 set ASq45 0 set ASq46 0 set ASq47 0 set ASq48 0 set ASq49 0 set ASq50 0
        set ASq51 0 set ASq52 0 set ASq53 0 set ASq54 0 set ASq55 0 set ASq56 0 set ASq57 0 set ASq58 0 set ASq59 0 set ASq60 0 set ASq61 0 set ASq62 0 set ASq63 0 set ASq64 0 set ASq65 0 set ASq66 0 set ASq67 0 set ASq68 0 set ASq69 0 set ASq70 0 set ASq71 0 set ASq72 0 set ASq73 0 set ASq74 0 set ASq75 0 set ASq76 0 set ASq77 0 set ASq78 0 set ASq79 0 set ASq80 0 set ASq81 0 set ASq82 0 set ASq83 0 set ASq84 0 set ASq85 0 set ASq86 0 set ASq87 0 set ASq88 0 set ASq89 0 set ASq90 0 set ASq91 0 set ASq92 0 set ASq93 0 set ASq94 0 set ASq95 0 set ASq96 0 set ASq97 0 set ASq98 0 set ASq99 0 set ASq100 0

                set Asq51 0 set Asq52 0 set Asq53 0 set Asq54 0 set Asq55 0 set Asq56 0 set Asq57 0 set Asq58 0 set Asq59 0 set Asq60 0 set Asq61 0 set Asq62 0 set Asq63 0 set Asq64 0 set Asq65 0 set Asq66 0 set Asq67 0 set Asq68 0 set Asq69 0 set Asq70 0 set Asq71 0 set Asq72 0 set Asq73 0 set Asq74 0 set Asq75 0 set Asq76 0 set Asq77 0 set Asq78 0 set Asq79 0 set Asq80 0 set Asq81 0 set Asq82 0 set Asq83 0 set Asq84 0 set Asq85 0 set Asq86 0 set Asq87 0 set Asq88 0 set Asq89 0 set Asq90 0 set Asq91 0 set Asq92 0 set Asq93 0 set Asq94 0 set Asq95 0 set Asq96 0 set Asq97 0 set Asq98 0 set Asq99 0 set Asq100 0

  ]
 ; clear-all

  set year 0
set counter1 0
set counter2 0


  ask patches [set habitat 1]






; the following is the hilltop subroutine that creates a hilly, fractal landscape

 set climbase .5 - .5 * climvar

 ask n-of topping patches
     [set energy  10000
    ]

   repeat smooth [diffuse energy .5 ]
  set maxergy max [energy] of patches
  set minergy min [energy] of patches
  set renergy maxergy - minergy
  if (renergy = 0) [set renergy 1]
  ask patches [

    set climate1 climbase + ( climvar * ((energy - minergy) / renergy))

                  ]

    ask patches [
    set pcolor ((climate1 * 100 ) )

   ]
set counterArea count patches with [habitat > 0]


set counterGrass count patches with [habitat = 1]



; the following assigns a response (~fitness) variable for each species to each cell
   ask patches  [



   set ASq1  exp( ( ( (( climate1 -  0.01 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq2  exp( ( ( (( climate1 -  0.02 ) ^ 2 )   /  0.001 )) * -.5)

       set ASq3  exp( ( ( (( climate1 -  0.03 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq4  exp( ( ( (( climate1 -  0.04 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq5  exp( ( ( (( climate1 -  0.05 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq6  exp( ( ( (( climate1 -  0.06 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq7  exp( ( ( (( climate1 -  0.07 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq8  exp( ( ( (( climate1 -  0.08 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq9  exp( ( ( (( climate1 -  0.09 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq10  exp( ( ( (( climate1 -  0.1 ) ^ 2 )   /  0.001 )) * -.5)

       set ASq11  exp( ( ( (( climate1 -  0.11 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq12  exp( ( ( (( climate1 -  0.12 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq13  exp( ( ( (( climate1 -  0.13 ) ^ 2 )   /  0.001 )) * -.5)
        set ASq14  exp( ( ( (( climate1 -  0.14 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq15  exp( ( ( (( climate1 -  0.15 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq16  exp( ( ( (( climate1 -  0.16 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq17  exp( ( ( (( climate1 -  0.17 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq18  exp( ( ( (( climate1 -  0.18 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq19  exp( ( ( (( climate1 -  0.19 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq20  exp( ( ( (( climate1 -  0.2 ) ^ 2 )   /  0.001 )) * -.5)

       set ASq21  exp( ( ( (( climate1 -  0.21 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq22  exp( ( ( (( climate1 -  0.22 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq23  exp( ( ( (( climate1 -  0.23 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq24  exp( ( ( (( climate1 -  0.24 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq25  exp( ( ( (( climate1 -  0.25 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq26  exp( ( ( (( climate1 -  0.26 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq27  exp( ( ( (( climate1 -  0.27 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq28  exp( ( ( (( climate1 -  0.28 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq29  exp( ( ( (( climate1 -  0.29 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq30  exp( ( ( (( climate1 -  0.39 ) ^ 2 )   /  0.001 )) * -.5)

       set ASq31  exp( ( ( (( climate1 -  0.31 ) ^ 2 )   /  0.001 )) * -.5)

       set ASq32  exp( ( ( (( climate1 -  0.32 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq33  exp( ( ( (( climate1 -  0.33 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq34  exp( ( ( (( climate1 -  0.34 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq35  exp( ( ( (( climate1 -  0.35 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq36    exp( ( ( (( climate1 -  0.36 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq37    exp( ( ( (( climate1 -  0.37 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq38  exp( ( ( (( climate1 -  0.38 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq39  exp( ( ( (( climate1 -  0.39 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq40  exp( ( ( (( climate1 -  0.40 ) ^ 2 )   /  0.001 )) * -.5)

       set ASq41  exp( ( ( (( climate1 -  0.41 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq42    exp( ( ( (( climate1 -  0.42 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq43    exp( ( ( (( climate1 -  0.43 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq44    exp( ( ( (( climate1 -  0.44 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq45    exp( ( ( (( climate1 -  0.45 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq46    exp( ( ( (( climate1 -  0.46 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq47    exp( ( ( (( climate1 -  0.47 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq48  exp( ( ( (( climate1 -  0.48 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq49  exp( ( ( (( climate1 -  0.49 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq50  exp( ( ( (( climate1 -  0.5 ) ^ 2 )   /  0.001 )) * -.5)

       set ASq51  exp( ( ( (( climate1 -  0.51 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq52    exp( ( ( (( climate1 -  0.52 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq53    exp( ( ( (( climate1 -  0.53 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq54    exp( ( ( (( climate1 -  0.54 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq55    exp( ( ( (( climate1 -  0.55 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq56    exp( ( ( (( climate1 -  0.56 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq57    exp( ( ( (( climate1 -  0.57 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq58  exp( ( ( (( climate1 -  0.58 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq59  exp( ( ( (( climate1 -  0.59 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq60  exp( ( ( (( climate1 -  0.60 ) ^ 2 )   /  0.001 )) * -.5)

       set ASq61  exp( ( ( (( climate1 -  0.61 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq62    exp( ( ( (( climate1 -  0.62 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq63    exp( ( ( (( climate1 -  0.63 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq64    exp( ( ( (( climate1 -  0.64 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq65    exp( ( ( (( climate1 -  0.65 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq66    exp( ( ( (( climate1 -  0.66 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq67    exp( ( ( (( climate1 -  0.67 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq68  exp( ( ( (( climate1 -  0.68 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq69  exp( ( ( (( climate1 -  0.69 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq70  exp( ( ( (( climate1 -  0.70 ) ^ 2 )   /  0.001 )) * -.5)

       set ASq71  exp( ( ( (( climate1 -  0.71 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq72  exp( ( ( (( climate1 -  0.72 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq73  exp( ( ( (( climate1 -  0.73 ) ^ 2 )   /  0.001 )) * -.5)
        set ASq74  exp( ( ( (( climate1 -  0.74 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq75  exp( ( ( (( climate1 -  0.75 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq76  exp( ( ( (( climate1 -  0.76 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq77  exp( ( ( (( climate1 -  0.77 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq78  exp( ( ( (( climate1 -  0.78 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq79  exp( ( ( (( climate1 -  0.79 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq80  exp( ( ( (( climate1 -  0.80 ) ^ 2 )   /  0.001 )) * -.5)

       set ASq81  exp( ( ( (( climate1 -  0.81 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq82  exp( ( ( (( climate1 -  0.82 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq83  exp( ( ( (( climate1 -  0.83 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq84  exp( ( ( (( climate1 -  0.84 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq85  exp( ( ( (( climate1 -  0.85 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq86  exp( ( ( (( climate1 -  0.86 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq87  exp( ( ( (( climate1 -  0.87 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq88  exp( ( ( (( climate1 -  0.88 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq89  exp( ( ( (( climate1 -  0.89 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq90  exp( ( ( (( climate1 -  0.9 ) ^ 2 )   /  0.001 )) * -.5)

       set ASq91  exp( ( ( (( climate1 -  0.91 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq92  exp( ( ( (( climate1 -  0.92 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq93  exp( ( ( (( climate1 -  0.93 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq94  exp( ( ( (( climate1 -  0.94 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq95  exp( ( ( (( climate1 -  0.95 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq96    exp( ( ( (( climate1 -  0.96 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq97    exp( ( ( (( climate1 -  0.97 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq98  exp( ( ( (( climate1 -  0.98 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq99  exp( ( ( (( climate1 -  0.99 ) ^ 2 )   /  0.001 )) * -.5)
       set ASq100  exp( ( ( (( climate1 -  1) ^ 2 )   /  0.001 )) * -.5)

  ]



 reset-ticks
end

to setup2
 random-seed (seed + 25)
 repeat 2 [
    ask patches   [


          if (random-float 1 < Asq1) [ sprout-Sp1s 1 [

             set size 1  set color 5
           ]]

            if (random-float 1 < Asq2) [ sprout-Sp2s 1 [

             set size 1  set color 5
           ]]

           if (random-float 1 < Asq3) [  sprout-Sp3s 1 [

             set size 1  set color 5
           ]]


            if (random-float 1 < Asq4) [  sprout-Sp4s 1 [

             set size 1  set color 5
           ]]

           if (random-float 1 < Asq5) [  sprout-Sp5s 1 [

             set size 1  set color 5
           ]]

          if (random-float 1 < Asq6) [   sprout-Sp6s 1 [

             set size 1  set color 5
           ]]

          if (random-float 1 < Asq7) [   sprout-Sp7s 1 [

             set size 1  set color 5
             ; ;print 111
           ]]


          if (random-float 1 < Asq8) [   sprout-Sp8s 1 [

             set size 1  set color 5
           ]]

           if (random-float 1 < Asq9) [  sprout-Sp9s 1 [

             set size 1  set color 5
           ]]


          if (random-float 1 < Asq10) [    sprout-Sp10s 1 [

             set size 1  set color 5
            ]]


          if (random-float 1 < Asq11) [    sprout-Sp11s 1 [

             set size 1  set color 15
            ]]

          if (random-float 1 < Asq12) [   sprout-Sp12s 1 [

             set size 1  set color 15
           ]]

          if (random-float 1 < Asq13) [   sprout-Sp13s 1 [

             set size 1  set color 15
             ]   ]

              if (random-float 1 < Asq14) [   sprout-Sp14s 1 [

             set size 1  set color 15
             ]   ]

                 if (random-float 1 < Asq15) [   sprout-Sp15s 1 [

             set size 1  set color 15
             ]   ]

                    if (random-float 1 < Asq16) [   sprout-Sp16s 1 [

             set size 1  set color 25
             ]   ]

                 if (random-float 1 < Asq17) [   sprout-Sp17s 1 [

             set size 1  set color 25
             ]   ]

                 if (random-float 1 < Asq18) [   sprout-Sp18s 1 [

             set size 1  set color 25
             ]   ]

                          if (random-float 1 < Asq19) [   sprout-Sp19s 1 [

             set size 1  set color 25
             ]   ]

                         if (random-float 1 < Asq20) [   sprout-Sp20s 1 [

             set size 1  set color 25
             ]   ]

                          if (random-float 1 < Asq21) [   sprout-Sp21s 1 [

             set size 1  set color 25
             ]   ]
                         if (random-float 1 < Asq22) [   sprout-Sp22s 1 [

             set size 1  set color 25
             ]   ]

       if (random-float 1 < Asq23) [ sprout-Sp23s 1 [

             set size 1  set color 25
          ]]

          if (random-float 1 < Asq24) [ sprout-Sp24s 1 [

             set size 1  set color 25
           ]]

            if (random-float 1 < Asq25) [ sprout-Sp25s 1 [

             set size 1  set color 25
           ]]

           if (random-float 1 < Asq26) [  sprout-Sp26s 1 [

             set size 1  set color 35
           ]]


            if (random-float 1 < Asq27) [  sprout-Sp27s 1 [

             set size 1  set color 35
           ]]

           if (random-float 1 < Asq28) [  sprout-Sp28s 1 [

             set size 1  set color 35
           ]]

          if (random-float 1 < Asq29) [   sprout-Sp29s 1 [

             set size 1  set color 35
           ]]

          if (random-float 1 < Asq30) [   sprout-Sp30s 1 [

             set size 1  set color 35
             ; ;print 111
           ]]


          if (random-float 1 < Asq31) [   sprout-Sp31s 1 [

             set size 1  set color 35
           ]]

           if (random-float 1 < Asq32) [  sprout-Sp32s 1 [

             set size 1  set color 35
           ]]


          if (random-float 1 < Asq33) [    sprout-Sp33s 1 [

             set size 1  set color 35
            ]]

          if (random-float 1 < Asq34) [    sprout-Sp34s 1 [

             set size 1  set color 35
            ]]

          if (random-float 1 < Asq35) [   sprout-Sp35s 1 [

             set size 1  set color 35
           ]]

          if (random-float 1 < Asq36) [   sprout-Sp36s 1 [

             set size 1  set color 45
             ]   ]

              if (random-float 1 < Asq37) [   sprout-Sp37s 1 [

             set size 1  set color 45
             ]   ]

                 if (random-float 1 < Asq38) [   sprout-Sp38s 1 [

             set size 1  set color 45
             ]   ]

                    if (random-float 1 < Asq39) [   sprout-Sp39s 1 [

             set size 1  set color 45
             ]   ]

          if (random-float 1 < Asq40) [   sprout-Sp40s 1 [

             set size 1  set color 45
             ; ;print 111
           ]]

          if (random-float 1 < Asq41) [   sprout-Sp41s 1 [

             set size 1  set color 45
           ]]

           if (random-float 1 < Asq42) [  sprout-Sp42s 1 [

             set size 1  set color 45
           ]]

          if (random-float 1 < Asq43) [    sprout-Sp43s 1 [

             set size 1  set color 45
            ]]

          if (random-float 1 < Asq44) [    sprout-Sp44s 1 [

             set size 1  set color 45
            ]]

          if (random-float 1 < Asq45) [   sprout-Sp45s 1 [

             set size 1  set color 45
           ]]

          if (random-float 1 < Asq46) [   sprout-Sp46s 1 [

             set size 1  set color 55
             ]   ]

              if (random-float 1 < Asq47) [   sprout-Sp47s 1 [

             set size 1  set color 55
             ]   ]

                 if (random-float 1 < Asq48) [   sprout-Sp48s 1 [

             set size 1  set color 55
             ]   ]

                    if (random-float 1 < Asq49) [   sprout-Sp49s 1 [

             set size 1  set color 55
             ]   ]



          if (random-float 1 < Asq50) [   sprout-Sp50s 1 [

             set size 1  set color 55
             ; ;print 111
           ]]

          if (random-float 1 < Asq51) [   sprout-Sp51s 1 [

             set size 1  set color 55
           ]]

           if (random-float 1 < Asq52) [  sprout-Sp52s 1 [

             set size 1  set color 55
           ]]

          if (random-float 1 < Asq53) [    sprout-Sp53s 1 [

             set size 1  set color 55
            ]]

          if (random-float 1 < Asq54) [    sprout-Sp54s 1 [

             set size 1  set color 55
            ]]

          if (random-float 1 < Asq55) [   sprout-Sp55s 1 [

             set size 1  set color 55
           ]]

          if (random-float 1 < Asq56) [   sprout-Sp56s 1 [

             set size 1  set color 65
             ]   ]

              if (random-float 1 < Asq57) [   sprout-Sp57s 1 [

             set size 1  set color 65
             ]   ]

                 if (random-float 1 < Asq58) [   sprout-Sp58s 1 [

             set size 1  set color 65
             ]   ]

                    if (random-float 1 < Asq59) [   sprout-Sp59s 1 [

             set size 1  set color 65
             ]   ]

          if (random-float 1 < Asq60) [   sprout-Sp60s 1 [

             set size 1  set color 65
             ; ;print 111
           ]]

          if (random-float 1 < Asq61) [   sprout-Sp61s 1 [

             set size 1  set color 65
           ]]

           if (random-float 1 < Asq62) [  sprout-Sp62s 1 [

             set size 1  set color 65
           ]]

          if (random-float 1 < Asq63) [    sprout-Sp63s 1 [

             set size 1  set color 65
            ]]

          if (random-float 1 < Asq64) [    sprout-Sp64s 1 [

             set size 1  set color 65
            ]]

          if (random-float 1 < Asq65) [   sprout-Sp65s 1 [

             set size 1  set color 65
           ]]

          if (random-float 1 < Asq66) [   sprout-Sp66s 1 [

             set size 1  set color 75
             ]   ]

              if (random-float 1 < Asq67) [   sprout-Sp67s 1 [

             set size 1  set color 75
             ]   ]

                 if (random-float 1 < Asq68) [   sprout-Sp68s 1 [

             set size 1  set color 75
             ]   ]

                    if (random-float 1 < Asq69) [   sprout-Sp69s 1 [

             set size 1  set color 75
             ]   ]

          if (random-float 1 < Asq70) [   sprout-Sp70s 1 [

             set size 1  set color 75
             ; ;print 111
           ]]

          if (random-float 1 < Asq71) [   sprout-Sp71s 1 [

             set size 1  set color 75
           ]]

           if (random-float 1 < Asq72) [  sprout-Sp72s 1 [

             set size 1  set color 75
           ]]

          if (random-float 1 < Asq73) [    sprout-Sp73s 1 [

             set size 1  set color 75
            ]]

          if (random-float 1 < Asq74) [    sprout-Sp74s 1 [

             set size 1  set color 75
            ]]

          if (random-float 1 < Asq75) [   sprout-Sp75s 1 [

             set size 1  set color 75
           ]]

          if (random-float 1 < Asq76) [   sprout-Sp76s 1 [

             set size 1  set color 85
             ]   ]

              if (random-float 1 < Asq77) [   sprout-Sp77s 1 [

             set size 1  set color 85
             ]   ]

                 if (random-float 1 < Asq78) [   sprout-Sp78s 1 [

             set size 1  set color 85
             ]   ]

                    if (random-float 1 < Asq79) [   sprout-Sp79s 1 [

             set size 1  set color 85
             ]   ]

          if (random-float 1 < Asq80) [   sprout-Sp80s 1 [

             set size 1  set color 85
           ]]

          if (random-float 1 < Asq81) [   sprout-Sp81s 1 [

             set size 1  set color 85
           ]]

           if (random-float 1 < Asq82) [  sprout-Sp82s 1 [

             set size 1  set color 85
           ]]

          if (random-float 1 < Asq83) [    sprout-Sp83s 1 [

             set size 1  set color 85
            ]]

          if (random-float 1 < Asq84) [    sprout-Sp84s 1 [

             set size 1  set color 85
            ]]

          if (random-float 1 < Asq85) [   sprout-Sp85s 1 [

             set size 1  set color 85
           ]]

          if (random-float 1 < Asq86) [   sprout-Sp86s 1 [

             set size 1  set color 95
             ]   ]

              if (random-float 1 < Asq87) [   sprout-Sp87s 1 [

             set size 1  set color 95
             ]   ]

                 if (random-float 1 < Asq88) [   sprout-Sp88s 1 [

             set size 1  set color 95
             ]   ]

                    if (random-float 1 < Asq89) [   sprout-Sp89s 1 [

             set size 1  set color 95
             ]   ]

          if (random-float 1 < Asq90) [   sprout-Sp90s 1 [

             set size 1  set color 95
             ; ;print 111
           ]]

          if (random-float 1 < Asq91) [   sprout-Sp91s 1 [

             set size 1  set color 95
           ]]

           if (random-float 1 < Asq92) [  sprout-Sp92s 1 [

             set size 1  set color 95
           ]]

          if (random-float 1 < Asq93) [    sprout-Sp93s 1 [

             set size 1  set color 95
            ]]

          if (random-float 1 < Asq94) [    sprout-Sp94s 1 [

             set size 1  set color 95
            ]]

          if (random-float 1 < Asq95) [   sprout-Sp95s 1 [

             set size 1  set color 95
           ]]

          if (random-float 1 < Asq96) [   sprout-Sp96s 1 [

             set size 1  set color 105
             ]   ]

              if (random-float 1 < Asq97) [   sprout-Sp97s 1 [

             set size 1  set color 105
             ]   ]

                 if (random-float 1 < Asq98) [   sprout-Sp98s 1 [

             set size 1  set color 105
             ]   ]

                    if (random-float 1 < Asq99) [   sprout-Sp99s 1 [

             set size 1  set color 105
             ]   ]

                    if (random-float 1 < Asq100) [   sprout-Sp100s 1 [

             set size 1  set color 105
             ]   ]

    ]

; next, the number of individuals per cell is limited
     ask turtles [

     if (count other turtles-here > limit) [die]


  ]



 set counterN count turtles


  ]





 reset-ticks
end

to progo
  random-seed (seed + 50)
  repeat 10000 [
    estab
    death
    ;set counterN count turtles
    ;set counterP count patches with [count turtles-here > 0]


    tick
  ]
end


to estab ;this subroutine creates copies of individuals and disperses them to a ransom cell within a limited distance and in a random direction to a cell
;print 222
 repeat 1 [
         ask turtles [

          set dispd random dista
            set direct random 360
             ;  hatch 1  [
           ;    ifelse (patch-at-heading-and-distance direct dista = nobody OR [habitat] of patch-at-heading-and-distance direct dista = 0) [die]
           ;       [move-to  patch-at-heading-and-distance direct dista]
            ;  ]
            hatch 1 [ move-to  patch-at-heading-and-distance direct dispd]



      ]
  ]

end


to death
 ; print 333
ask turtles [
  ; first, random individuals die if density is high
    if (count other turtles-here > limit) [die]


  ]

   ; second, individuals die stochastically if the environment of the cell is not one to which they are adapted (their response value or fitness)

   ask Sp1s [
    if (     random-float 1 >  Asq1   )
      [ die ]
   ]
  ask Sp2s [
  if (      random-float 1 >    Asq2    )
      [ die ]
   ]
  ask Sp3s [
  if (      random-float 1 >    Asq3    )
      [ die ]
       ]
  ask Sp4s [
      if (      random-float 1 >   Asq4     )
      [ die ]
       ]
    ask Sp5s [
      if (      random-float 1 >   Asq5     )
      [ die ]
       ]
  ask Sp6s [
     if (      random-float 1 >    Asq6    )
      [ die ]
       ]
  ask Sp7s [
     if (      random-float 1 >    Asq7    )
      [ die ]
       ]
   ask Sp8s [
     if (      random-float 1 >    Asq8    )
      [ die ]
   ]
  ask Sp9s [
     if (      random-float 1 >    Asq9    )
      [ die
       ]
   ]
   ask Sp10s [
     if (      random-float 1 >   Asq10     )
      [ die ]
   ]
   ask Sp11s [
     if (      random-float 1 >   Asq11     )
      [ die ]
       ]
  ask Sp12s [
      if (      random-float 1 >   Asq12     )
      [ die ]
       ]
    ask Sp13s [
      if (      random-float 1 >   Asq13     )
      [ die ]
       ]
  ask Sp14s [
     if (      random-float 1 >    Asq14     )
      [ die ]
       ]
  ask Sp15s [
     if (      random-float 1 >    Asq15    )
      [ die ]
       ]
   ask Sp16s [
     if (      random-float 1 >    Asq16     )
      [ die ]
   ]
  ask Sp17s [
     if (      random-float 1 >    Asq17    )
      [ die ]
       ]
   ask Sp18s [
     if (      random-float 1 >    Asq18     )
      [ die ]
   ]
   ask Sp19s [
     if (      random-float 1 >    Asq19    )
      [ die ]
   ]
  ask Sp20s [
     if (       random-float 1 >   Asq20     )
      [ die ]
   ]
  ask Sp21s [
     if (       random-float 1 >   Asq21     )
      [ die ]
       ]
  ask Sp22s [
      if (       random-float 1 >   Asq22     )
      [ die ]
       ]
    ask Sp23s [
      if (       random-float 1 >   Asq23     )
      [ die ]
       ]
  ask Sp24s [
     if (       random-float 1 >    Asq24    )
      [ die ]
       ]
  ask Sp25s [
     if (       random-float 1 >    Asq25    )
      [ die ]
       ]
   ask Sp26s [
     if (       random-float 1 >    Asq26    )
      [ die ]
   ]
  ask Sp27s [
     if (       random-float 1 >    Asq27    )
      [ die
       ]
   ]
   ask Sp28s [
     if (       random-float 1 >   Asq28     )
      [ die ]
   ]
   ask Sp29s [
     if (       random-float 1 >   Asq29     )
      [ die ]
       ]

  ask Sp30s [
     if (       random-float 1 >   Asq30     )
      [ die ]
   ]
  ask Sp31s [
     if (       random-float 1 >   Asq31     )
      [ die ]
       ]
  ask Sp32s [
      if (       random-float 1 >   Asq32     )
      [ die ]
       ]
    ask Sp33s [
      if (       random-float 1 >   Asq33     )
      [ die ]
       ]
  ask Sp34s [
     if (       random-float 1 >    Asq34    )
      [ die ]
       ]
  ask Sp35s [
     if (       random-float 1 >    Asq35    )
      [ die ]
       ]
   ask Sp36s [
     if (       random-float 1 >    Asq36    )
      [ die ]
   ]
  ask Sp37s [
     if (       random-float 1 >    Asq37    )
      [ die
       ]
   ]
   ask Sp38s [
     if (       random-float 1 >   Asq38     )
      [ die ]
   ]
   ask Sp39s [
     if (       random-float 1 >   Asq39     )
      [ die ]
       ]

  ask Sp40s [
     if (       random-float 1 >   Asq40     )
      [ die ]
   ]
  ask Sp41s [
     if (       random-float 1 >   Asq41     )
      [ die ]
       ]
  ask Sp42s [
      if (       random-float 1 >   Asq42     )
      [ die ]
       ]
    ask Sp43s [
      if (       random-float 1 >   Asq43     )
      [ die ]
       ]
  ask Sp44s [
     if (       random-float 1 >    Asq44    )
      [ die ]
       ]
  ask Sp45s [

     if (       random-float 1 >    Asq45    )
      [ die ]
       ]
   ask Sp46s [
     if (       random-float 1 >    Asq46    )
      [ die ]
   ]
  ask Sp47s [
     if (       random-float 1 >    Asq47    )
      [ die
       ]
   ]
   ask Sp48s [
     if (       random-float 1 >   Asq48     )
      [ die ]
   ]
   ask Sp49s [
     if (       random-float 1 >   Asq49     )
      [ die ]
       ]
  ask Sp50s [
     if (       random-float 1 >   Asq50     )
      [ die ]
   ]
  ask Sp51s [
     if (       random-float 1 >   Asq51     )
      [ die ]
       ]
  ask Sp52s [
      if (       random-float 1 >   Asq52     )
      [ die ]
       ]
    ask Sp53s [
      if (       random-float 1 >   Asq53     )
      [ die ]
       ]
  ask Sp54s [
     if (       random-float 1 >    Asq54    )
      [ die ]
       ]
  ask Sp55s [
     if (       random-float 1 >    Asq55    )
      [ die ]
       ]
   ask Sp56s [
     if (       random-float 1 >    Asq56    )
      [ die ]
   ]
  ask Sp57s [
     if (       random-float 1 >    Asq57    )
      [ die
       ]
   ]
   ask Sp58s [
     if (       random-float 1 >   Asq58     )
      [ die ]
   ]
   ask Sp59s [
     if (       random-float 1 >   Asq59     )
      [ die ]
       ]

  ask Sp60s [
     if (       random-float 1 >   Asq60     )
      [ die ]
   ]
  ask Sp61s [
     if (       random-float 1 >   Asq61     )
      [ die ]
       ]
  ask Sp62s [
      if (       random-float 1 >   Asq62     )
      [ die ]
       ]
    ask Sp63s [
      if (       random-float 1 >   Asq63     )
      [ die ]
       ]
  ask Sp64s [
     if (       random-float 1 >    Asq64    )
      [ die ]
       ]
  ask Sp65s [
     if (       random-float 1 >    Asq65    )
      [ die ]
       ]
   ask Sp66s [
     if (       random-float 1 >    Asq66    )
      [ die ]
   ]
  ask Sp67s [
     if (       random-float 1 >    Asq67    )
      [ die
       ]
   ]
   ask Sp68s [
     if (       random-float 1 >   Asq68     )
      [ die ]
   ]
   ask Sp69s [
     if (       random-float 1 >   Asq69     )
      [ die ]
       ]

  ask Sp70s [
     if (       random-float 1 >   Asq70     )
      [ die ]
   ]
  ask Sp71s [
     if (       random-float 1 >   Asq71     )
      [ die ]
       ]
  ask Sp72s [
      if (       random-float 1 >   Asq72     )
      [ die ]
       ]
    ask Sp73s [
      if (       random-float 1 >   Asq73     )
      [ die ]
       ]
  ask Sp74s [
     if (       random-float 1 >    Asq74    )
      [ die ]
       ]
  ask Sp75s [
     if (       random-float 1 >    Asq75    )
      [ die ]
       ]
   ask Sp76s [
     if (       random-float 1 >    Asq76    )
      [ die ]
   ]
  ask Sp77s [
     if (       random-float 1 >    Asq77    )
      [ die
       ]
   ]
   ask Sp78s [
     if (       random-float 1 >   Asq78     )
      [ die ]
   ]
   ask Sp79s [
     if (       random-float 1 >   Asq79     )
      [ die ]
       ]

  ask Sp80s [
     if (       random-float 1 >   Asq80     )
      [ die ]
   ]
  ask Sp81s [
     if (       random-float 1 >   Asq81     )
      [ die ]
       ]
  ask Sp82s [
      if (       random-float 1 >   Asq82     )
      [ die ]
       ]
    ask Sp83s [
      if (       random-float 1 >   Asq83     )
      [ die ]
       ]
  ask Sp84s [
     if (       random-float 1 >    Asq84    )
      [ die ]
       ]
  ask Sp85s [
     if (       random-float 1 >    Asq85    )
      [ die ]
       ]
   ask Sp86s [
     if (       random-float 1 >    Asq86    )
      [ die ]
   ]
  ask Sp87s [
     if (       random-float 1 >    Asq87    )
      [ die
       ]
   ]
   ask Sp88s [
     if (       random-float 1 >   Asq88     )
      [ die ]
   ]
   ask Sp89s [
     if (       random-float 1 >   Asq89     )
      [ die ]
       ]

  ask Sp90s [
     if (       random-float 1 >   Asq90     )
      [ die ]
   ]
  ask Sp91s [
     if (       random-float 1 >   Asq91     )
      [ die ]
       ]
  ask Sp92s [
      if (       random-float 1 >   Asq92     )
      [ die ]
       ]
    ask Sp93s [
      if (       random-float 1 >   Asq93     )
      [ die ]
       ]
  ask Sp94s [
     if (       random-float 1 >    Asq94    )
      [ die ]
       ]
  ask Sp95s [
     if (       random-float 1 >    Asq95    )
      [ die ]
       ]
   ask Sp96s [
     if (       random-float 1 >    Asq96    )
      [ die ]
   ]
  ask Sp97s [
     if (       random-float 1 >    Asq97    )
      [ die
       ]
   ]
   ask Sp98s [
     if (       random-float 1 >   Asq98     )
      [ die ]
   ]
   ask Sp99s [
     if (       random-float 1 >   Asq99     )
      [ die ]
       ]
   ask Sp100s [
     if (       random-float 1 >   Asq100     )
      [ die ]
       ]




 ; the rest computes output

 set counterN count turtles
end

to rich

set gamma 0


if ( count  Sp1s > 0) [set gamma gamma + 1]
if ( count  Sp2s > 0) [set gamma gamma + 1]
if ( count  Sp3s > 0) [set gamma gamma + 1]
if ( count  Sp4s > 0) [set gamma gamma + 1]
if ( count  Sp5s > 0) [set gamma gamma + 1]
if ( count  Sp6s > 0) [set gamma gamma + 1]
if ( count  Sp7s > 0) [set gamma gamma + 1]
if ( count  Sp8s > 0) [set gamma gamma + 1]
if ( count  Sp9s > 0) [set gamma gamma + 1]
if ( count  Sp10s > 0) [set gamma gamma + 1]
if ( count  Sp11s > 0) [set gamma gamma + 1]
if ( count  Sp12s > 0) [set gamma gamma + 1]
if ( count  Sp13s > 0) [set gamma gamma + 1]
if ( count  Sp14s > 0) [set gamma gamma + 1]
if ( count  Sp18s > 0) [set gamma gamma + 1]
if ( count  Sp16s > 0) [set gamma gamma + 1]
if ( count  Sp17s > 0) [set gamma gamma + 1]
if ( count  Sp18s > 0) [set gamma gamma + 1]
if ( count  Sp19s > 0) [set gamma gamma + 1]
if ( count  Sp20s > 0) [set gamma gamma + 1]
if ( count  Sp21s > 0) [set gamma gamma + 1]
if ( count  Sp22s > 0) [set gamma gamma + 1]
 if ( count  Sp23s > 0) [set gamma gamma + 1]
if ( count  Sp24s > 0) [set gamma gamma + 1]
if ( count  Sp25s > 0) [set gamma gamma + 1]
if ( count  Sp26s > 0) [set gamma gamma + 1]
if ( count  Sp27s > 0) [set gamma gamma + 1]
if ( count  Sp28s > 0) [set gamma gamma + 1]
if ( count  Sp29s > 0) [set gamma gamma + 1]
if ( count  Sp30s > 0) [set gamma gamma + 1]
if ( count  Sp31s > 0) [set gamma gamma + 1]
if ( count  Sp32s > 0) [set gamma gamma + 1]
if ( count  Sp33s > 0) [set gamma gamma + 1]
if ( count  Sp34s > 0) [set gamma gamma + 1]
if ( count  Sp35s > 0) [set gamma gamma + 1]
if ( count  Sp36s > 0) [set gamma gamma + 1]
if ( count  Sp37s > 0) [set gamma gamma + 1]
if ( count  Sp38s > 0) [set gamma gamma + 1]
if ( count  Sp39s > 0) [set gamma gamma + 1]
if ( count  Sp40s > 0) [set gamma gamma + 1]
if ( count  Sp41s > 0) [set gamma gamma + 1]
if ( count  Sp42s > 0) [set gamma gamma + 1]
 if ( count  Sp43s > 0) [set gamma gamma + 1]
if ( count  Sp44s > 0) [set gamma gamma + 1]
if ( count  Sp45s > 0) [set gamma gamma + 1]
if ( count  Sp46s > 0) [set gamma gamma + 1]
if ( count  Sp47s > 0) [set gamma gamma + 1]
if ( count  Sp48s > 0) [set gamma gamma + 1]
if ( count  Sp49s > 0) [set gamma gamma + 1]
if ( count  Sp50s > 0) [set gamma gamma + 1]
if ( count  Sp51s > 0) [set gamma gamma + 1]
if ( count  Sp52s > 0) [set gamma gamma + 1]
 if ( count  Sp53s > 0) [set gamma gamma + 1]
if ( count  Sp54s > 0) [set gamma gamma + 1]
if ( count  Sp55s > 0) [set gamma gamma + 1]
if ( count  Sp56s > 0) [set gamma gamma + 1]
if ( count  Sp57s > 0) [set gamma gamma + 1]
if ( count  Sp58s > 0) [set gamma gamma + 1]
if ( count  Sp59s > 0) [set gamma gamma + 1]
if ( count  Sp60s > 0) [set gamma gamma + 1]
if ( count  Sp61s > 0) [set gamma gamma + 1]
if ( count  Sp62s > 0) [set gamma gamma + 1]
 if ( count  Sp63s > 0) [set gamma gamma + 1]
if ( count  Sp64s > 0) [set gamma gamma + 1]
if ( count  Sp65s > 0) [set gamma gamma + 1]
if ( count  Sp66s > 0) [set gamma gamma + 1]
if ( count  Sp67s > 0) [set gamma gamma + 1]
if ( count  Sp68s > 0) [set gamma gamma + 1]
if ( count  Sp69s > 0) [set gamma gamma + 1]
if ( count  Sp70s > 0) [set gamma gamma + 1]
if ( count  Sp71s > 0) [set gamma gamma + 1]
if ( count  Sp72s > 0) [set gamma gamma + 1]
 if ( count  Sp73s > 0) [set gamma gamma + 1]
if ( count  Sp74s > 0) [set gamma gamma + 1]
if ( count  Sp75s > 0) [set gamma gamma + 1]
if ( count  Sp76s > 0) [set gamma gamma + 1]
if ( count  Sp77s > 0) [set gamma gamma + 1]
if ( count  Sp78s > 0) [set gamma gamma + 1]
if ( count  Sp79s > 0) [set gamma gamma + 1]
if ( count  Sp80s > 0) [set gamma gamma + 1]
if ( count  Sp81s > 0) [set gamma gamma + 1]
if ( count  Sp82s > 0) [set gamma gamma + 1]
 if ( count  Sp83s > 0) [set gamma gamma + 1]
if ( count  Sp84s > 0) [set gamma gamma + 1]
if ( count  Sp85s > 0) [set gamma gamma + 1]
if ( count  Sp86s > 0) [set gamma gamma + 1]
if ( count  Sp87s > 0) [set gamma gamma + 1]
if ( count  Sp88s > 0) [set gamma gamma + 1]
if ( count  Sp89s > 0) [set gamma gamma + 1]
if ( count  Sp90s > 0) [set gamma gamma + 1]
if ( count  Sp91s > 0) [set gamma gamma + 1]
if ( count  Sp92s > 0) [set gamma gamma + 1]
 if ( count  Sp93s > 0) [set gamma gamma + 1]
if ( count  Sp94s > 0) [set gamma gamma + 1]
if ( count  Sp95s > 0) [set gamma gamma + 1]
if ( count  Sp96s > 0) [set gamma gamma + 1]
if ( count  Sp97s > 0) [set gamma gamma + 1]
if ( count  Sp98s > 0) [set gamma gamma + 1]
if ( count  Sp99s > 0) [set gamma gamma + 1]
if ( count  Sp100s > 0) [set gamma gamma + 1]



 ; print gamma

end
@#$#@#$#@
GRAPHICS-WINDOW
343
61
651
370
-1
-1
5.0
1
10
1
1
1
0
1
1
1
0
59
0
59
1
1
1
ticks
30.0

SLIDER
97
61
304
94
axaxis
axaxis
0
130
60.0
1
1
NIL
HORIZONTAL

BUTTON
189
10
276
58
setup / clear
setup2
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
97
10
177
58
setup terrain
setup1
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
22
12
85
45
NIL
go
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

SLIDER
97
99
286
132
climvar
climvar
0
1
0.1
.01
1
NIL
HORIZONTAL

SLIDER
289
10
461
43
seed
seed
0
2000
150.0
5
1
NIL
HORIZONTAL

@#$#@#$#@
OOD OVERVIEW

Purpose and patterns. 
A comparison of different combinations of area and heterogeneity configurations using virtual species adapted to an environmental gradient can elucidate how diversity responds to control by geography vs. environment. Our purpose is to determine the relative roles of the two factors in generating patterns of species richness (gamma diversity of regions) in a general framework. 

The simulation was parameterized for each of the 23 alpine regions of southern and central Europe (Jimenez-Alfaro et al. 2021). These simulations had number of cells and the environmental heterogeneity scaled to observations, and a parameter (Limit) accounted for the possibility of limits on the density (number of individuals per cell) to incorporate differences in productivity.  Each region was initiated with a fractal pattern of habitat using the NetLogo Hill Climbing Example.

We implemented the simulation model in an experimental mode.  These simulation experiments used all combinations of 10 levels of area and 10 levels of environmental heterogeneity, and held Limit constant. The experimental designs were run independently, and their results are compared.

Entities, state variables, and scales. 
In the first set of simulations the model represents each of the 23 mountain ranges in SACEU.  In more general analyses, the model is any area with environmental heterogeneity. The model does not have a specified spatial scale because the simulation experiments address relative effects of the parameters. Each cell of habitat has a value for an environmental gradient that is initialized in one of three spatial patterns. The plant communities of these alpine habitats are represented by 100 individual species, the agents, each differently adapted to the environmental gradient in even increments so that they had the potential to fill all niches and occupy all locations. 

Process overview and scheduling. 
Within each simulation, at each iteration agents reproduce, and the offspring disperse across the grid; agents are removed randomly to maintain a maximum density; and agents are removed depending on their adaptation to the grid cell climate or location. The gamma diversity of the areas of habitat are calculated at the end of all iterations (following equilibrium). The simulations appear to equilibrate (no change through 1000 itertions) by 6000 iterations, and data were drawn after 10000. The simulations were replicated 10 times using the same 10 random number seeds for all combinations.

DESIGN CONCEPTS
The simulations separate the effects of area and environmental heterogeneity. 
The agents are not goal-oriented; behavior is random; the agents sense the environment of the grid cell they occupy and their fitness relative to it determines probabilities of reproduction and death. 

Agents compete indirectly for space via random deletion of agents when cell density is greater than a set value. 

The central processes are Monte Carlo reproduction and mortality so that the species are selected by the environment of the grid cells (i.e., fitness). 

The plant diversity of the alpine region, represented by the presence of species on all its grid cells, is the object of analysis. 

The diversity for the simulated area is the sole output of the simulation. 

The agents do not adapt, learn, or predict, nor is there emergent behavior.

DETAILS
Initialization
The environment of each cell of the grid was initialized in a fractal pattern (hills). A topography subroutine in NetLogo is used. It assigns peaks to random cells and successively divides the height of all cells to its neighbors. We scaled the number of peaks and the number of divisions to the area of the grid. 

The range of environmental heterogeneity, centered on 0.5, is scaled to the range of elevations and assigned to each cell. Each grid was wrapped into a torus to eliminate edge effects.

Each cell is assigned response value for each of 100 virtual species with Gaussian response functions of the environment of the cell:

Rix = e-( ((Ex – x)2 / 2σ2)) 

where the full-script x and y are the gradients, 0.01-1.0 in increments of 0.01, that define the 100 species; Ex is the position of the cell on the environmental gradient; subscripts i and x refer to the i-th species, x-th relative environmental position. Thus, 100 such equations define 100 virtual species. 

To initialize the distributions, the species were stochastically allotted on each active cell if a uniform random number (0,1) was less than their response value for that cell. Individuals were randomly selected and removed while the number per cell exceeded 100.
The above steps of initialization were first applied to 23 independent areas with parameters derived from observations of SACEU.  Then, in experimental mode, three spatial conditions were represented.  The first was a set of 1000 independent islands from 10 areas (100, 400, 900, 1600, 2500, 3600, 4900, 6400, 8100, and 10000 cells), 10 levels of heterogeneity (0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0), and 10 replicates (using the same 10 random number seeds: 50, 150, 250, 350, 450, 550, 650, 750, 850, 950).  The second was 10 replicate areas of 12,544 cells using the same random number seeds with the same 10 levels of heterogeneity divided into 10 concentric circles with areas matching the previous set of 10 areas.  Thus, 1000 units were defined. The third was a single rectangle of 9600 cells, again with the same 10 levels of heterogeneity and 10 replicates, divided into 6 quadrats, each of which had 4 nested subquadrats of areas matching the smaller units of the previous sets (100, 400, 900, 1600).  The quadrats were accumulated as further nested areas of 3200, 6400, and 9600 cells.  Here, 2700 units were defined.

Submodels
The models cycle through two submodels or procedures at each iteration: reproduction with dispersal and mortality. In reproduction with dispersal, in each iteration individuals produce an offspring that is dispersed in a random direction at a distance (integer number of cells) randomly selected from an even distribution varying 0-4 at each instance (after preliminary analyses found no significant differences among different dispersal ranges, this constant range was retained to simplify the comparisons). For mortality, individuals were removed at each iteration if a uniform random number (0,1) was greater than their response value for that cell. Additionally, individuals were randomly selected and removed while the number of individuals per cell exceeded a limit (here, Limit).  Limit represents the maximum number of individuals that a cell can support.  Limit can represent productivity.  In our simulations of the 23 ranges we set Limit scaled in relation to the product of warm quarter temperature and warm quarter precipitation with a minimum of 2 and a maximum of 15 (Baetic System and W. Carpathians). In the experimental mode, Limit is constant at 9. 

Output
The diversity for each spatial unit of the simulated areas at the end of each 10000 iteration replication is the output of the simulation.  Additional code to record species richness per cell and the Sorenson similarity and its turnover and nestedness components as a measures of beta diversity are available as subroutines, which were not called in this version, at the end of the code.


@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

ant
true
0
Polygon -7500403 true true 136 61 129 46 144 30 119 45 124 60 114 82 97 37 132 10 93 36 111 84 127 105 172 105 189 84 208 35 171 11 202 35 204 37 186 82 177 60 180 44 159 32 170 44 165 60
Polygon -7500403 true true 150 95 135 103 139 117 125 149 137 180 135 196 150 204 166 195 161 180 174 150 158 116 164 102
Polygon -7500403 true true 149 186 128 197 114 232 134 270 149 282 166 270 185 232 171 195 149 186
Polygon -7500403 true true 225 66 230 107 159 122 161 127 234 111 236 106
Polygon -7500403 true true 78 58 99 116 139 123 137 128 95 119
Polygon -7500403 true true 48 103 90 147 129 147 130 151 86 151
Polygon -7500403 true true 65 224 92 171 134 160 135 164 95 175
Polygon -7500403 true true 235 222 210 170 163 162 161 166 208 174
Polygon -7500403 true true 249 107 211 147 168 147 168 150 213 150

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

bee
true
0
Polygon -1184463 true false 151 152 137 77 105 67 89 67 66 74 48 85 36 100 24 116 14 134 0 151 15 167 22 182 40 206 58 220 82 226 105 226 134 222
Polygon -16777216 true false 151 150 149 128 149 114 155 98 178 80 197 80 217 81 233 95 242 117 246 141 247 151 245 177 234 195 218 207 206 211 184 211 161 204 151 189 148 171
Polygon -7500403 true true 246 151 241 119 240 96 250 81 261 78 275 87 282 103 277 115 287 121 299 150 286 180 277 189 283 197 281 210 270 222 256 222 243 212 242 192
Polygon -16777216 true false 115 70 129 74 128 223 114 224
Polygon -16777216 true false 89 67 74 71 74 224 89 225 89 67
Polygon -16777216 true false 43 91 31 106 31 195 45 211
Line -1 false 200 144 213 70
Line -1 false 213 70 213 45
Line -1 false 214 45 203 26
Line -1 false 204 26 185 22
Line -1 false 185 22 170 25
Line -1 false 169 26 159 37
Line -1 false 159 37 156 55
Line -1 false 157 55 199 143
Line -1 false 200 141 162 227
Line -1 false 162 227 163 241
Line -1 false 163 241 171 249
Line -1 false 171 249 190 254
Line -1 false 192 253 203 248
Line -1 false 205 249 218 235
Line -1 false 218 235 200 144

bird1
false
0
Polygon -7500403 true true 2 6 2 39 270 298 297 298 299 271 187 160 279 75 276 22 100 67 31 0

bird2
false
0
Polygon -7500403 true true 2 4 33 4 298 270 298 298 272 298 155 184 117 289 61 295 61 105 0 43

boat1
false
0
Polygon -1 true false 63 162 90 207 223 207 290 162
Rectangle -6459832 true false 150 32 157 162
Polygon -13345367 true false 150 34 131 49 145 47 147 48 149 49
Polygon -7500403 true true 158 33 230 157 182 150 169 151 157 156
Polygon -7500403 true true 149 55 88 143 103 139 111 136 117 139 126 145 130 147 139 147 146 146 149 55

boat2
false
0
Polygon -1 true false 63 162 90 207 223 207 290 162
Rectangle -6459832 true false 150 32 157 162
Polygon -13345367 true false 150 34 131 49 145 47 147 48 149 49
Polygon -7500403 true true 157 54 175 79 174 96 185 102 178 112 194 124 196 131 190 139 192 146 211 151 216 154 157 154
Polygon -7500403 true true 150 74 146 91 139 99 143 114 141 123 137 126 131 129 132 139 142 136 126 142 119 147 148 147

boat3
false
0
Polygon -1 true false 63 162 90 207 223 207 290 162
Rectangle -6459832 true false 150 32 157 162
Polygon -13345367 true false 150 34 131 49 145 47 147 48 149 49
Polygon -7500403 true true 158 37 172 45 188 59 202 79 217 109 220 130 218 147 204 156 158 156 161 142 170 123 170 102 169 88 165 62
Polygon -7500403 true true 149 66 142 78 139 96 141 111 146 139 148 147 110 147 113 131 118 106 126 71

box
true
0
Polygon -7500403 true true 45 255 255 255 255 45 45 45

butterfly1
true
0
Polygon -16777216 true false 151 76 138 91 138 284 150 296 162 286 162 91
Polygon -7500403 true true 164 106 184 79 205 61 236 48 259 53 279 86 287 119 289 158 278 177 256 182 164 181
Polygon -7500403 true true 136 110 119 82 110 71 85 61 59 48 36 56 17 88 6 115 2 147 15 178 134 178
Polygon -7500403 true true 46 181 28 227 50 255 77 273 112 283 135 274 135 180
Polygon -7500403 true true 165 185 254 184 272 224 255 251 236 267 191 283 164 276
Line -7500403 true 167 47 159 82
Line -7500403 true 136 47 145 81
Circle -7500403 true true 165 45 8
Circle -7500403 true true 134 45 6
Circle -7500403 true true 133 44 7
Circle -7500403 true true 133 43 8

circle
false
0
Circle -7500403 true true 34 34 230

link
true
0
Line -7500403 true 150 0 150 300

link direction
true
0
Line -7500403 true 150 150 30 225
Line -7500403 true 150 150 270 225

person
false
0
Circle -7500403 true true 155 20 63
Rectangle -7500403 true true 158 79 217 164
Polygon -7500403 true true 158 81 110 129 131 143 158 109 165 110
Polygon -7500403 true true 216 83 267 123 248 143 215 107
Polygon -7500403 true true 167 163 145 234 183 234 183 163
Polygon -7500403 true true 195 163 195 233 227 233 206 159

spacecraft
true
0
Polygon -7500403 true true 150 0 180 135 255 255 225 240 150 180 75 240 45 255 120 135

thin-arrow
true
0
Polygon -7500403 true true 150 0 0 150 120 150 120 293 180 293 180 150 300 150

truck-down
false
0
Polygon -7500403 true true 225 30 225 270 120 270 105 210 60 180 45 30 105 60 105 30
Polygon -8630108 true false 195 75 195 120 240 120 240 75
Polygon -8630108 true false 195 225 195 180 240 180 240 225

truck-left
false
0
Polygon -7500403 true true 120 135 225 135 225 210 75 210 75 165 105 165
Polygon -8630108 true false 90 210 105 225 120 210
Polygon -8630108 true false 180 210 195 225 210 210

truck-right
false
0
Polygon -7500403 true true 180 135 75 135 75 210 225 210 225 165 195 165
Polygon -8630108 true false 210 210 195 225 180 210
Polygon -8630108 true false 120 210 105 225 90 210

turtle
true
0
Polygon -7500403 true true 138 75 162 75 165 105 225 105 225 142 195 135 195 187 225 195 225 225 195 217 195 202 105 202 105 217 75 225 75 195 105 187 105 135 75 142 75 105 135 105

wolf-left
false
3
Polygon -6459832 true true 117 97 91 74 66 74 60 85 36 85 38 92 44 97 62 97 81 117 84 134 92 147 109 152 136 144 174 144 174 103 143 103 134 97
Polygon -6459832 true true 87 80 79 55 76 79
Polygon -6459832 true true 81 75 70 58 73 82
Polygon -6459832 true true 99 131 76 152 76 163 96 182 104 182 109 173 102 167 99 173 87 159 104 140
Polygon -6459832 true true 107 138 107 186 98 190 99 196 112 196 115 190
Polygon -6459832 true true 116 140 114 189 105 137
Rectangle -6459832 true true 109 150 114 192
Rectangle -6459832 true true 111 143 116 191
Polygon -6459832 true true 168 106 184 98 205 98 218 115 218 137 186 164 196 176 195 194 178 195 178 183 188 183 169 164 173 144
Polygon -6459832 true true 207 140 200 163 206 175 207 192 193 189 192 177 198 176 185 150
Polygon -6459832 true true 214 134 203 168 192 148
Polygon -6459832 true true 204 151 203 176 193 148
Polygon -6459832 true true 207 103 221 98 236 101 243 115 243 128 256 142 239 143 233 133 225 115 214 114

wolf-right
false
3
Polygon -6459832 true true 170 127 200 93 231 93 237 103 262 103 261 113 253 119 231 119 215 143 213 160 208 173 189 187 169 190 154 190 126 180 106 171 72 171 73 126 122 126 144 123 159 123
Polygon -6459832 true true 201 99 214 69 215 99
Polygon -6459832 true true 207 98 223 71 220 101
Polygon -6459832 true true 184 172 189 234 203 238 203 246 187 247 180 239 171 180
Polygon -6459832 true true 197 174 204 220 218 224 219 234 201 232 195 225 179 179
Polygon -6459832 true true 78 167 95 187 95 208 79 220 92 234 98 235 100 249 81 246 76 241 61 212 65 195 52 170 45 150 44 128 55 121 69 121 81 135
Polygon -6459832 true true 48 143 58 141
Polygon -6459832 true true 46 136 68 137
Polygon -6459832 true true 45 129 35 142 37 159 53 192 47 210 62 238 80 237
Line -16777216 false 74 237 59 213
Line -16777216 false 59 213 59 212
Line -16777216 false 58 211 67 192
Polygon -6459832 true true 38 138 66 149
Polygon -6459832 true true 46 128 33 120 21 118 11 123 3 138 5 160 13 178 9 192 0 199 20 196 25 179 24 161 25 148 45 140
Polygon -6459832 true true 67 122 96 126 63 144
@#$#@#$#@
NetLogo 6.1.1
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
<experiments>
  <experiment name="RS10a.60r" repetitions="1" runMetricsEveryStep="false">
    <go>go</go>
    <metric>gamma</metric>
    <enumeratedValueSet variable="climvar">
      <value value="0.1"/>
      <value value="0.2"/>
      <value value="0.3"/>
      <value value="0.4"/>
      <value value="0.5"/>
      <value value="0.6"/>
      <value value="0.7"/>
      <value value="0.8"/>
      <value value="0.9"/>
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="axaxis">
      <value value="60"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="seed">
      <value value="50"/>
      <value value="150"/>
      <value value="250"/>
      <value value="350"/>
      <value value="450"/>
      <value value="550"/>
      <value value="650"/>
      <value value="750"/>
      <value value="850"/>
      <value value="950"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="RS10a.50r" repetitions="1" runMetricsEveryStep="false">
    <go>go</go>
    <metric>gamma</metric>
    <enumeratedValueSet variable="climvar">
      <value value="0.1"/>
      <value value="0.2"/>
      <value value="0.3"/>
      <value value="0.4"/>
      <value value="0.5"/>
      <value value="0.6"/>
      <value value="0.7"/>
      <value value="0.8"/>
      <value value="0.9"/>
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="axaxis">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="seed">
      <value value="50"/>
      <value value="150"/>
      <value value="250"/>
      <value value="350"/>
      <value value="450"/>
      <value value="550"/>
      <value value="650"/>
      <value value="750"/>
      <value value="850"/>
      <value value="950"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="RS10a.10X1" repetitions="1" runMetricsEveryStep="false">
    <go>go</go>
    <metric>gamma</metric>
    <enumeratedValueSet variable="climvar">
      <value value="0.1"/>
      <value value="0.2"/>
      <value value="0.3"/>
      <value value="0.4"/>
      <value value="0.5"/>
      <value value="0.6"/>
      <value value="0.7"/>
      <value value="0.8"/>
      <value value="0.9"/>
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="axaxis">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="seed">
      <value value="50"/>
      <value value="150"/>
      <value value="250"/>
      <value value="350"/>
      <value value="450"/>
      <value value="550"/>
      <value value="650"/>
      <value value="750"/>
      <value value="850"/>
      <value value="950"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="RS10a.20X" repetitions="1" runMetricsEveryStep="false">
    <go>go</go>
    <metric>gamma</metric>
    <enumeratedValueSet variable="climvar">
      <value value="0.1"/>
      <value value="0.2"/>
      <value value="0.3"/>
      <value value="0.4"/>
      <value value="0.5"/>
      <value value="0.6"/>
      <value value="0.7"/>
      <value value="0.8"/>
      <value value="0.9"/>
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="axaxis">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="seed">
      <value value="50"/>
      <value value="150"/>
      <value value="250"/>
      <value value="350"/>
      <value value="450"/>
      <value value="550"/>
      <value value="650"/>
      <value value="750"/>
      <value value="850"/>
      <value value="950"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="RS10a.30r" repetitions="1" runMetricsEveryStep="false">
    <go>go</go>
    <metric>gamma</metric>
    <enumeratedValueSet variable="climvar">
      <value value="0.1"/>
      <value value="0.2"/>
      <value value="0.3"/>
      <value value="0.4"/>
      <value value="0.5"/>
      <value value="0.6"/>
      <value value="0.7"/>
      <value value="0.8"/>
      <value value="0.9"/>
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="axaxis">
      <value value="30"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="seed">
      <value value="50"/>
      <value value="150"/>
      <value value="250"/>
      <value value="350"/>
      <value value="450"/>
      <value value="550"/>
      <value value="650"/>
      <value value="750"/>
      <value value="850"/>
      <value value="950"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="RS10s10a40r" repetitions="1" runMetricsEveryStep="false">
    <go>go</go>
    <metric>gamma</metric>
    <enumeratedValueSet variable="climvar">
      <value value="0.1"/>
      <value value="0.2"/>
      <value value="0.3"/>
      <value value="0.4"/>
      <value value="0.5"/>
      <value value="0.6"/>
      <value value="0.7"/>
      <value value="0.8"/>
      <value value="0.9"/>
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="axaxis">
      <value value="40"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="seed">
      <value value="50"/>
      <value value="150"/>
      <value value="250"/>
      <value value="350"/>
      <value value="450"/>
      <value value="550"/>
      <value value="650"/>
      <value value="750"/>
      <value value="850"/>
      <value value="950"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="RS10a.70" repetitions="1" runMetricsEveryStep="false">
    <go>go</go>
    <metric>gamma</metric>
    <enumeratedValueSet variable="climvar">
      <value value="0.1"/>
      <value value="0.2"/>
      <value value="0.3"/>
      <value value="0.4"/>
      <value value="0.5"/>
      <value value="0.6"/>
      <value value="0.7"/>
      <value value="0.8"/>
      <value value="0.9"/>
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="axaxis">
      <value value="70"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="seed">
      <value value="50"/>
      <value value="150"/>
      <value value="250"/>
      <value value="350"/>
      <value value="450"/>
      <value value="550"/>
      <value value="650"/>
      <value value="750"/>
      <value value="850"/>
      <value value="950"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="RS10a.80" repetitions="1" runMetricsEveryStep="false">
    <go>go</go>
    <metric>gamma</metric>
    <enumeratedValueSet variable="climvar">
      <value value="0.1"/>
      <value value="0.2"/>
      <value value="0.3"/>
      <value value="0.4"/>
      <value value="0.5"/>
      <value value="0.6"/>
      <value value="0.7"/>
      <value value="0.8"/>
      <value value="0.9"/>
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="axaxis">
      <value value="80"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="seed">
      <value value="50"/>
      <value value="150"/>
      <value value="250"/>
      <value value="350"/>
      <value value="450"/>
      <value value="550"/>
      <value value="650"/>
      <value value="750"/>
      <value value="850"/>
      <value value="950"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="RS10a.70revens" repetitions="1" runMetricsEveryStep="false">
    <go>go</go>
    <metric>gamma</metric>
    <enumeratedValueSet variable="climvar">
      <value value="0.2"/>
      <value value="0.4"/>
      <value value="0.6"/>
      <value value="0.8"/>
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="axaxis">
      <value value="70"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="seed">
      <value value="50"/>
      <value value="250"/>
      <value value="450"/>
      <value value="650"/>
      <value value="850"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="RS10a.05rB" repetitions="1" runMetricsEveryStep="false">
    <go>go</go>
    <metric>gamma</metric>
    <enumeratedValueSet variable="climvar">
      <value value="0.1"/>
      <value value="0.2"/>
      <value value="0.3"/>
      <value value="0.4"/>
      <value value="0.5"/>
      <value value="0.6"/>
      <value value="0.7"/>
      <value value="0.8"/>
      <value value="0.9"/>
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="axaxis">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="seed">
      <value value="50"/>
      <value value="150"/>
      <value value="250"/>
      <value value="350"/>
      <value value="450"/>
      <value value="550"/>
      <value value="650"/>
      <value value="750"/>
      <value value="850"/>
      <value value="950"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="RS10a.80reven150" repetitions="1" runMetricsEveryStep="false">
    <go>go</go>
    <metric>gamma</metric>
    <enumeratedValueSet variable="climvar">
      <value value="0.2"/>
      <value value="0.4"/>
      <value value="0.6"/>
      <value value="0.8"/>
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="axaxis">
      <value value="80"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="seed">
      <value value="150"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="RS10a.40redo" repetitions="1" runMetricsEveryStep="false">
    <go>go</go>
    <metric>gamma</metric>
    <enumeratedValueSet variable="climvar">
      <value value="0.1"/>
      <value value="0.2"/>
      <value value="0.3"/>
      <value value="0.4"/>
      <value value="0.5"/>
      <value value="0.6"/>
      <value value="0.7"/>
      <value value="0.8"/>
      <value value="0.9"/>
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="axaxis">
      <value value="40"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="seed">
      <value value="50"/>
      <value value="150"/>
      <value value="250"/>
      <value value="350"/>
      <value value="450"/>
      <value value="550"/>
      <value value="650"/>
      <value value="750"/>
      <value value="850"/>
      <value value="950"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="RS10a.70R" repetitions="1" runMetricsEveryStep="false">
    <go>go</go>
    <metric>gamma</metric>
    <enumeratedValueSet variable="climvar">
      <value value="0.1"/>
      <value value="0.2"/>
      <value value="0.3"/>
      <value value="0.4"/>
      <value value="0.5"/>
      <value value="0.6"/>
      <value value="0.7"/>
      <value value="0.8"/>
      <value value="0.9"/>
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="axaxis">
      <value value="70"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="seed">
      <value value="50"/>
      <value value="150"/>
      <value value="250"/>
      <value value="350"/>
      <value value="450"/>
      <value value="550"/>
      <value value="650"/>
      <value value="750"/>
      <value value="850"/>
      <value value="950"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="RS10a.30rdc" repetitions="1" runMetricsEveryStep="false">
    <go>go</go>
    <metric>gamma</metric>
    <enumeratedValueSet variable="climvar">
      <value value="0.1"/>
      <value value="0.2"/>
      <value value="0.3"/>
      <value value="0.4"/>
      <value value="0.5"/>
      <value value="0.6"/>
      <value value="0.7"/>
      <value value="0.8"/>
      <value value="0.9"/>
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="axaxis">
      <value value="30"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="seed">
      <value value="50"/>
      <value value="150"/>
      <value value="250"/>
      <value value="350"/>
      <value value="450"/>
      <value value="550"/>
      <value value="650"/>
      <value value="750"/>
      <value value="850"/>
      <value value="950"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="RS.70.rdc" repetitions="1" runMetricsEveryStep="false">
    <go>go</go>
    <metric>gamma</metric>
    <enumeratedValueSet variable="climvar">
      <value value="0.1"/>
      <value value="0.2"/>
      <value value="0.3"/>
      <value value="0.4"/>
      <value value="0.5"/>
      <value value="0.6"/>
      <value value="0.7"/>
      <value value="0.8"/>
      <value value="0.9"/>
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="axaxis">
      <value value="70"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="seed">
      <value value="50"/>
      <value value="150"/>
      <value value="250"/>
      <value value="350"/>
      <value value="450"/>
      <value value="550"/>
      <value value="650"/>
      <value value="750"/>
      <value value="850"/>
      <value value="950"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="RS.last5.x30" repetitions="1" runMetricsEveryStep="false">
    <go>go</go>
    <metric>gamma</metric>
    <enumeratedValueSet variable="climvar">
      <value value="0.6"/>
      <value value="0.7"/>
      <value value="0.8"/>
      <value value="0.9"/>
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="axaxis">
      <value value="30"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="seed">
      <value value="50"/>
      <value value="150"/>
      <value value="250"/>
      <value value="350"/>
      <value value="450"/>
      <value value="550"/>
      <value value="650"/>
      <value value="750"/>
      <value value="850"/>
      <value value="950"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="RS.1.2.x10.next10" repetitions="1" runMetricsEveryStep="false">
    <go>go</go>
    <metric>gamma</metric>
    <enumeratedValueSet variable="climvar">
      <value value="0.1"/>
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="axaxis">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="seed">
      <value value="1050"/>
      <value value="1150"/>
      <value value="1250"/>
      <value value="1350"/>
      <value value="1450"/>
      <value value="1550"/>
      <value value="1650"/>
      <value value="1750"/>
      <value value="1850"/>
      <value value="1950"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="RS.1.2.3.x20.next10" repetitions="1" runMetricsEveryStep="false">
    <go>go</go>
    <metric>gamma</metric>
    <enumeratedValueSet variable="climvar">
      <value value="0.1"/>
      <value value="0.2"/>
      <value value="0.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="axaxis">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="seed">
      <value value="1050"/>
      <value value="1150"/>
      <value value="1250"/>
      <value value="1350"/>
      <value value="1450"/>
      <value value="1550"/>
      <value value="1650"/>
      <value value="1750"/>
      <value value="1850"/>
      <value value="1950"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="RS.1.2.3.x30.next10" repetitions="1" runMetricsEveryStep="false">
    <go>go</go>
    <metric>gamma</metric>
    <enumeratedValueSet variable="climvar">
      <value value="0.2"/>
      <value value="0.3"/>
      <value value="0.4"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="axaxis">
      <value value="30"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="seed">
      <value value="1050"/>
      <value value="1150"/>
      <value value="1250"/>
      <value value="1350"/>
      <value value="1450"/>
      <value value="1550"/>
      <value value="1650"/>
      <value value="1750"/>
      <value value="1850"/>
      <value value="1950"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="RS.1.2.3.x40.next10" repetitions="1" runMetricsEveryStep="false">
    <go>go</go>
    <metric>gamma</metric>
    <enumeratedValueSet variable="climvar">
      <value value="0.3"/>
      <value value="0.4"/>
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="axaxis">
      <value value="40"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="seed">
      <value value="1050"/>
      <value value="1150"/>
      <value value="1250"/>
      <value value="1350"/>
      <value value="1450"/>
      <value value="1550"/>
      <value value="1650"/>
      <value value="1750"/>
      <value value="1850"/>
      <value value="1950"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="RS.4.5.6.x50.next10" repetitions="1" runMetricsEveryStep="false">
    <go>go</go>
    <metric>gamma</metric>
    <enumeratedValueSet variable="climvar">
      <value value="0.4"/>
      <value value="0.5"/>
      <value value="0.6"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="axaxis">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="seed">
      <value value="1050"/>
      <value value="1150"/>
      <value value="1250"/>
      <value value="1350"/>
      <value value="1450"/>
      <value value="1550"/>
      <value value="1650"/>
      <value value="1750"/>
      <value value="1850"/>
      <value value="1950"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="RS.6.7.8.x70.next10" repetitions="1" runMetricsEveryStep="false">
    <go>go</go>
    <metric>gamma</metric>
    <enumeratedValueSet variable="climvar">
      <value value="0.6"/>
      <value value="0.7"/>
      <value value="0.8"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="axaxis">
      <value value="70"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="seed">
      <value value="1050"/>
      <value value="1150"/>
      <value value="1250"/>
      <value value="1350"/>
      <value value="1450"/>
      <value value="1550"/>
      <value value="1650"/>
      <value value="1750"/>
      <value value="1850"/>
      <value value="1950"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="RS.6.7.8.x60.next10" repetitions="1" runMetricsEveryStep="false">
    <go>go</go>
    <metric>gamma</metric>
    <enumeratedValueSet variable="climvar">
      <value value="0.5"/>
      <value value="0.6"/>
      <value value="0.7"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="axaxis">
      <value value="60"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="seed">
      <value value="1050"/>
      <value value="1150"/>
      <value value="1250"/>
      <value value="1350"/>
      <value value="1450"/>
      <value value="1550"/>
      <value value="1650"/>
      <value value="1750"/>
      <value value="1850"/>
      <value value="1950"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="Re.1.x60.1st5" repetitions="1" runMetricsEveryStep="false">
    <go>go</go>
    <metric>gamma</metric>
    <enumeratedValueSet variable="climvar">
      <value value="0.1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="axaxis">
      <value value="60"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="seed">
      <value value="50"/>
      <value value="150"/>
      <value value="250"/>
      <value value="350"/>
      <value value="450"/>
    </enumeratedValueSet>
  </experiment>
</experiments>
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180
@#$#@#$#@
0
@#$#@#$#@
