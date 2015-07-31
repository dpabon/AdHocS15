#!/bin/bash
#Created: 26-04-20015
#Autor: Daniel Pabón
#email: daniel.epm12@gmail.com
a=$(pwd)
cd  "$(pwd)/genomes"
perl "$a/scripts/descarga.pl"
mv CP000089.1.fna Dechloromonas_aromatica.fna
mv AE016825.1.fna Chromobacterium_violaceum.fna
mv CP009685.1.fna Escherichia_coli.fna
mv CP001280.1.fna Methylocella_silvestri.fna
mv CP001622.1.fna Rhizobium_leguminosarum.fna
mv CP000264.1.fna Jannaschia_sp.fna
mv CP000774.1.fna Parvibaculum_lavamentivorans.fna
mv CP000449.1.fna Maricaulis_maris.fna
mv CP001678.1.fna Hirschia_baltica.fna
mv CP000158.1.fna Hyphomonas_neptunium.fna
mv CP002382.1.fna Micavibrio_aeruginosavorus.fna
mv CP000230.1.fna Rhodospirillum_rubrum.fna
mv AP007255.1.fna Magnetospirillum_magneticum.fna
mv CP000394.1.fna Granulibacter_bethesdensis.fna
mv CP001189.1.fna Gluconabacter_diazotrophicus.fna
mv CP000697.1.fna Acidiphilium_cryptum.fna
mv AE017197.1.fna Rickettsia_typhi.fna
mv CP000107.1.fna Ehrlichia_canis.fna
mv CP000235.1.fna Anaplasma_phagocytophilum.fna
mv CP002130.1.fna Candidatus_Midichloria.fna
mv CP004403.1.fna Endosymbiont_Acanthamoeba.fna
mv ADAC02000001.1.fna Alphaproteobacterium.fna
mv CP001751.1.fna Candidatus_Puniceispirillum.fna
mv AE008692.2.fna Zymomonas_mobilis.fna
mv CP000699.1.fna Sphingomonas_wittichii.fna
mv CP002511.1.fna Candidatus_Pelagibacter.fna
mv CP000377.1.fna Ruegeria_sp.fna
sleep 1m

perl "$a/scripts/descarga_Arabidopsis_thaliana.pl"
cat CP002684.1.fna CP002685.1.fna CP002686.1.fna CP002687.1.fna CP002688.1.fna Y08501.2.fna|grep -v Arabidopsis > Arabidopsis_thaliana.fna
sed -i '1i >Arabidopsis_thaliana_complete_genome CP002684.1.fna CP002685.1.fna CP002686.1.fna CP002687.1.fna CP002688.1.fna' Arabidopsis_thaliana.fna
rm -r CP002684.1.fna CP002685.1.fna CP002686.1.fna CP002687.1.fna CP002688.1.fna Y08501.2.fna
sleep 1m

perl "$a/scripts/descarga_Asticcacaulis_excentricus"
cat CP002397.1.fna CP002396.1.fna CP002398.1.fna CP002395.1.fna |grep -v Asticcacaulis > Asticcacaulis_excentricus.fna
sed -i '1i >Asticcaculis excentricus genome complete CP002397.1.fna CP002396.1.fna CP002398.1.fna CP002395.1.fna' Asticcacaulis_excentricus.fna
rm CP002397.1.fna CP002396.1.fna CP002398.1.fna CP002395.1.fna
sleep 1m

perl "$a/scripts/descarga_Candidatus_Caedibacter_acanthamoebae.pl"
cat CP008936.1.fna CP008940.1.fna |grep -v Candidatus > Candidatus_caedibacter_acanthamoebae.fna
sed -i '1i >Candidatus_caedibacter_acanthamoebae' Candidatus_caedibacter_acanthamoebae.fna
rm -r CP008936.1.fna CP008940.1.fna
sleep 1m

mkdir arn
cd arn
perl "$a/scripts/descarga_Candidatus_Odysella_thessalonicensis.pl"
cat *.fna |grep -v Candidatus > Candidatus_Odysella_thessalonicensis.fna
sed -i '1i >Candidatus_Odysella_thessalonicensis_L13_complete_genome' Candidatus_Odysella_thessalonicensis.fna
mv Candidatus_Odysella_thessalonicensis.fna "$a/genomes/"
cd ..
rm -r arn
sleep 1m

perl "$a/scripts/descarga_Candidatus_Paracaedibacter_acanthamoebae.pl"
cat CP008941.1.fna CP008942.1.fna |grep -v Candidatus > Candidatus_paracaedibacter_acanthamoebae.fna
sed -i '1i >Candidatus_paracaedibacter_acanthamoebae_complete_genome' Candidatus_paracaedibacter_acanthamoebae.fna
rm -r CP008941.1.fna CP008942.1.fna
sleep 1m

mkdir arn
cd arn
perl "$a/scripts/descarga_Candidatus_paracaedibacter_symbiosus.pl"
cat *.fna |grep -v Candidatus > Candidatus_paracaedibacter_symbiosus.fna
sed -i '1i >Candidatus_paracaedibacter_symbiosus_complete_genome' Candidatus_paracaedibacter_symbiosus.fna
cp Candidatus_paracaedibacter_symbiosus.fna "$a/genomes"
cd ..
rm -r arn
sleep 1m

mkdir g
cd g
perl "$a/scripts/descarga_Candidatus_Pelagibacter_ubique_HTCC1002.pl"
cat *.fna |grep -v Candidatus > Candidatus_Pelagibacter_ubique.fna
sed -i '1i >Candidatus_Pelagibacter_ubique_HTCC1002_complete_genome' Candidatus_Pelagibacter_ubique.fna
mv Candidatus_Pelagibacter_ubique.fna "$a/genomes"
cd ..
rm -r g

perl "$a/scripts/descarga_Cryptococcus_neoformans.pl"
cat AE017341.1.fna AE017342.1.fna AE017343.1.fna AE017344.1.fna AE017345.1.fna AE017346.1.fna AE017347.1.fna AE017348.1.fna AE017349.1.fna AE017350.1.fna AE017351.1.fna AE017352.1.fna AE017353.1.fna AE017356.1.fna |grep -v Cryptococcus > Cryptococcus_neoformans.fna
sed -i '1i >Cryptococcus_neoformans_complete_genome AE017341.1.fna AE017342.1.fna AE017343.1.fna AE017344.1.fna AE017345.1.fna AE017346.1.fna AE017347.1.fna AE017348.1.fna AE017349.1.fna AE017350.1.fna AE017351.1.fna AE017352.1.fna AE017353.1.fna AE017356.1.fna' Cryptococcus_neoformans.fna
rm -r AE017341.1.fna AE017342.1.fna AE017343.1.fna AE017344.1.fna AE017345.1.fna AE017346.1.fna AE017347.1.fna AE017348.1.fna AE017349.1.fna AE017350.1.fna AE017351.1.fna AE017352.1.fna AE017353.1.fna AE017356.1.fna
sleep 1m

perl "$a/scripts/descarga_Methylobacterium_chloromethanicum.pl"
cat CP001299.1.fna CP001300.1.fna CP001298.1.fna |grep -v Methylobacterium > Methylobacterium_chloromethanicum.fna
sed -i '1i >Methylobacterium_chloromethanicum_CM4' Methylobacterium_chloromethanicum.fna
rm -r CP001299.1.fna CP001300.1.fna CP001298.1.fna
sleep 1m

mkdir g
cd g
perl "$a/scripts/descarga_NPH_bacterium.pl"
cat *.fna |grep -v shotgun > NPH_bacterium.fna
sed -i '1i >NPH_bacterium_complete_genome' NPH_bacterium.fna
mv NPH_bacterium.fna "$a/genomes"
cd ..
rm -r g
sleep 1m

perl "$a/scripts/descarga_Paracoccus_denitrificans.pl"
cat CP000489.1.fna CP000490.1.fna CP000491.1.fna | grep -v Paracoccus > Paracoccus_denitrificans.fna
sed -i '1i >Paracoccus_denitrificans_complete_genome CP000489.1.fna CP000490.1.fna CP000491.1.fna' Paracoccus_denitrificans.fna
rm -r CP000489.1.fna CP000490.1.fna CP000491.1.fna
sleep 1m

perl "$a/scripts/descarga_Phenylobacterium_zucineum.pl"
cat CP000747.1.fna CP000748.1.fna |grep -v Phenylobacterium > Phenylobacterium_zucineum.fna
sed -i '1i >Phenylobacterium_zucineum_HLK1_complete_genome CP000747.1 CP000748.1' Phenylobacterium_zucineum.fna
rm -r CP000747.1.fna CP000748.1.fna
sleep 1m

echo "Todos los genomas han sido descargados satisfactoriamente"
