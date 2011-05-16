INPUT_SORTED = \
	LV-BY.txt \
	LV-NRW.txt \
	LV-BW.txt \
	LV-NDS.txt \
	LV-HE.txt \
	LV-BE.txt \
	LV-HH.txt \
	LV-RP.txt \
	LV-SH.txt \
	LV-SN.txt \
	LV-BB.txt \
	LV-MV.txt \
	LV-LSA.txt \
	LV-TH.txt \
	LV-HB.txt \
	LV-SL.txt \
	OUTSIDE.txt

output.svg: mitglieder.csv plotscript
	./plotscript

mitglieder.csv: $(INPUT_SORTED)
	./plot-stacked.rb $^ > $@