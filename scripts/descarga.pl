#!/usr/bin/perl -w
# programa 1.6
#http://161.111.227.80/compbio/material/bioperl/node14.html por: Bruno Contreras-Moreira
#Modificado por: Daniel Pabón, email: daniel.epm12@gmail.com
use strict;
use Bio::Perl;

my @genomas= (
'CP000089.1', #Dechloromonas aromatica RCB
'AE016825.1', #Chromobacterium violaceum ATCC 12472, complete genome
'CP009685.1', #Escherichia coli str. K-12 substr. MG1655
'CP001280.1', #Methylocella silvestris BL2
'CP001622.1', #Rhizobium leguminosarum bv. trifolii WSM1325
'CP000264.1', #Jannaschia sp. CCS1
'CP000774.1', #Parvibaculum lavamentivorans DS-1, complete genome
'CP000449.1', #Maricaulis maris MCS10, complete genome.
'CP001678.1', #Hirschia baltica ATCC 49814
'CP000158.1', #Hyphomonas neptunium ATCC 15444
'CP002382.1', #Micavibrio aeruginosavorus ARL-13
'CP000230.1', #Rhodospirillum rubrum ATCC 11170
'AP007255.1', #Magnetospirillum magneticum AMB-1 DNA, complete genome
'CP000394.1', #Granulibacter bethesdensis CGDNIH1
'CP001189.1', #Gluconabacter diazotrophicus PA15
'CP000697.1', #Acidiphilium cryptum JF-5
'AE017197.1', #Rickettsia typhi str. Wilmington
'CP000107.1', #Ehrlichia canis str. Jake
'CP000235.1', #Anaplasma phagocytophilum HZ
'CP002130.1', #Candidatus Midichloria mitochondrii IricVA
'CP004403.1', #Endosymbiont of Acanthamoeba sp. UWC8 *
'ADAC02000001.1', #Alphaproteobacterium HIMB114
'CP001751.1', #Candidatus Puniceispirillum marinum IMCC1322
'AE008692.2',#Zymomonas mobilis subsp. mobilis ZM4
'CP000699.1',#Sphingomonas wittichii RW1
'CP002511.1', #Candidatus Pelagibacter sp. IMCC9063, complete genome
'CP000377.1', #Ruegeria sp. TM1040
);


foreach my $elemento (@genomas){
  my $gi = $elemento;
  my $fnafile = $gi . '.fna';
  my $secuenciaGenBank = get_sequence( 'genbank', $gi );
  write_sequence(">$fnafile", 'fasta', $secuenciaGenBank);
  printf("# Se Descargo el genoma: $fnafile (%1.1g Mb)\n",(-s $fnafile) / (1024 * 1024));
  sleep 15;

}
