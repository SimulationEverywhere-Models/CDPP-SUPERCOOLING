#!/bin/bash
echo '#!/bin/bash' > exp_runner.sh
for d in 7 15 25 49 99; do
	for t in -60 -57 -55 -52 -51 -50 -49 -48 -47 -45 -44 -43 -42 -40 -39 -38 -35 -32; do
		for core in 1 3; do
			echo Creating the MA file Dim: DIM_VAL: ${d}, Temp: INIT_VAL: $((273 + $t)), INIT_CELLS_VAL: ${t}_${d}_${core}
			cat proto_supercooling.ma | sed "s/DIM_VAL/${d}/g" | sed "s/INIT_VAL/$((273+$t))/g" | sed "s/INIT_CELLS_VAL/${t}_${d}_${core}/g" > supercooler_${t}_${d}_${core}.ma
			echo Registering runner
			echo '/cygdrive/c/eclipse/plugins/cdBuilder.simulator_1.0.0.201109022248/internal/simuOrig.exe  -msupercooler_'${t}_${d}_${core}'.ma -lsupercooler_'${t}_${d}_${core}'.log' >> exp_runner.sh
			echo '/cygdrive/c/eclipse/plugins/cdBuilder.simulator_1.0.0.201109022248/internal/drawlog.exe  -msupercooler_'${t}_${d}_${core}'.ma -csupercooling -lsupercooler_'${t}_${d}_${core}'.log > supercooler_'${t}_${d}_${core}'.drw' >> exp_runner.sh
		done
		echo Creating initial vals 
		#size 1
		echo '('$((${d}/2)),$((${d}/2)),$((${d}/2))') = 10'$((${t}+273)) > supercooling_${t}_${d}_1.val
		echo '' >> supercooling_${t}_${d}_1.val
		: > supercooling_${t}_${d}_3.val
		for a in `seq $((${d}/2-1)) 1 $((${d}/2+1))`; do		
			for b in `seq $((${d}/2-1)) 1 $((${d}/2+1))`; do
				for c in `seq $((${d}/2-1)) 1 $((${d}/2+1))`; do
					echo '('${a},${b},${c}') = 10'$((${t}+273)) >> supercooling_${t}_${d}_3.val
				done
			done
		done
		echo '' >> supercooling_${t}_${d}_3.val
	done 
done
