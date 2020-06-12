ALL_FIGURE_NAMES=$(shell cat mooc_naslagwerk180918.figlist)
ALL_FIGURES=$(ALL_FIGURE_NAMES:%=%.pdf)

allimages: $(ALL_FIGURES)
	@echo All images exist now. Use make -B to re-generate them.

FORCEREMAKE:

include $(ALL_FIGURE_NAMES:%=%.dep)

%.dep:
	mkdir -p "$(dir $@)"
	touch "$@" # will be filled later.

module4_2_1_ijk0.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_1_ijk0" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"; convert -density 300 -transparent white "module4_2_1_ijk0.pdf" "module4_2_1_ijk0.png"

module4_2_1_ijk0.pdf: module4_2_1_ijk0.md5
module4_2_1_georienteerdeRechte0.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_1_georienteerdeRechte0" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_1_georienteerdeRechte0.pdf: module4_2_1_georienteerdeRechte0.md5
module4_2_1_natuurlijkGetal0.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_1_natuurlijkGetal0" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_1_natuurlijkGetal0.pdf: module4_2_1_natuurlijkGetal0.md5
module4_2_1_reeelGetal0.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_1_reeelGetal0" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_1_reeelGetal0.pdf: module4_2_1_reeelGetal0.md5
module4_2_1_reeelGetal20.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_1_reeelGetal20" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_1_reeelGetal20.pdf: module4_2_1_reeelGetal20.md5
module4_2_1_abscis0.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_1_abscis0" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_1_abscis0.pdf: module4_2_1_abscis0.md5
module4_2_1_andereIjk0.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_1_andereIjk0" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_1_andereIjk0.pdf: module4_2_1_andereIjk0.md5
module4_2_1_andereIjk20.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_1_andereIjk20" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_1_andereIjk20.pdf: module4_2_1_andereIjk20.md5
module4_2_3_assenstelsel0.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_3_assenstelsel0" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_3_assenstelsel0.pdf: module4_2_3_assenstelsel0.md5
module4_2_3_assenstelselxy0.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_3_assenstelselxy0" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_3_assenstelselxy0.pdf: module4_2_3_assenstelselxy0.md5
module4_2_3_assenstelselEuclidisch0.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_3_assenstelselEuclidisch0" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_3_assenstelselEuclidisch0.pdf: module4_2_3_assenstelselEuclidisch0.md5
module4_2_3_kwadranten0.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_3_kwadranten0" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_3_kwadranten0.pdf: module4_2_3_kwadranten0.md5
module4_2_4_afstandTss2Punten0.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_4_afstandTss2Punten0" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_4_afstandTss2Punten0.pdf: module4_2_4_afstandTss2Punten0.md5
module4_2_4_horizontaleRechte0.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_4_horizontaleRechte0" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_4_horizontaleRechte0.pdf: module4_2_4_horizontaleRechte0.md5
module4_2_4_verticaleRechte0.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_4_verticaleRechte0" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_4_verticaleRechte0.pdf: module4_2_4_verticaleRechte0.md5
module4_2_4_afstandTss2PuntenVb0.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_4_afstandTss2PuntenVb0" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_4_afstandTss2PuntenVb0.pdf: module4_2_4_afstandTss2PuntenVb0.md5
module4_2_4_afstandTss2PuntenVb20.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_4_afstandTss2PuntenVb20" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_4_afstandTss2PuntenVb20.pdf: module4_2_4_afstandTss2PuntenVb20.md5
module4_2_6_vglRechte0.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_6_vglRechte0" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_6_vglRechte0.pdf: module4_2_6_vglRechte0.md5
module4_2_6_vglRechte20.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_6_vglRechte20" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_6_vglRechte20.pdf: module4_2_6_vglRechte20.md5
module4_2_6_hoek0.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_6_hoek0" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_6_hoek0.pdf: module4_2_6_hoek0.md5
module4_2_6_hoek20.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_6_hoek20" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_6_hoek20.pdf: module4_2_6_hoek20.md5
module4_2_6_hoek30.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_6_hoek30" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_6_hoek30.pdf: module4_2_6_hoek30.md5
module4_2_6_illustratieVglRechte0.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_6_illustratieVglRechte0" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_6_illustratieVglRechte0.pdf: module4_2_6_illustratieVglRechte0.md5
module4_2_6_vglRechteVb0.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_6_vglRechteVb0" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_6_vglRechteVb0.pdf: module4_2_6_vglRechteVb0.md5
module4_2_6_vglRechteVb20.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_6_vglRechteVb20" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_6_vglRechteVb20.pdf: module4_2_6_vglRechteVb20.md5
module4_2_10_onderlingeLiggingVb0.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_10_onderlingeLiggingVb0" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_10_onderlingeLiggingVb0.pdf: module4_2_10_onderlingeLiggingVb0.md5
module4_2_10_onderlingeLiggingVb20.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_10_onderlingeLiggingVb20" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_10_onderlingeLiggingVb20.pdf: module4_2_10_onderlingeLiggingVb20.md5
module4_2_10_onderlingeLiggingVb30.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_10_onderlingeLiggingVb30" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_10_onderlingeLiggingVb30.pdf: module4_2_10_onderlingeLiggingVb30.md5
module4_2_14_afstandPuntRechteVb0.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_14_afstandPuntRechteVb0" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_14_afstandPuntRechteVb0.pdf: module4_2_14_afstandPuntRechteVb0.md5
module4_2_14_bissectrice0.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_14_bissectrice0" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_14_bissectrice0.pdf: module4_2_14_bissectrice0.md5
module4_2_14_vglCirkel0.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_14_vglCirkel0" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_14_vglCirkel0.pdf: module4_2_14_vglCirkel0.md5
module4_2_14_vglCirkelVb0.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_14_vglCirkelVb0" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_14_vglCirkelVb0.pdf: module4_2_14_vglCirkelVb0.md5
module4_2_14_ingeschrevenCirkel0.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "module4_2_14_ingeschrevenCirkel0" "\def\tikzexternalrealjob{mooc_naslagwerk180918}\input{mooc_naslagwerk180918}"

module4_2_14_ingeschrevenCirkel0.pdf: module4_2_14_ingeschrevenCirkel0.md5
