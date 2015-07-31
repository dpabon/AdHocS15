#!/usr/bin/perl -w
# programa 1.6
#http://161.111.227.80/compbio/material/bioperl/node14.html por: Bruno Contreras-Moreira
#Modificado por: Daniel Pabón, email: daniel.epm12@gmail.com
use strict;
use Bio::Perl;

my @genomas= (
'CP000747.1', #Phenylobacterium zucineum  ****
'CP000748.1', #Phenylobacterium zucineum HLK1 plasmido
);
foreach my $elemento (@genomas){
  my $gi = $elemento;
  my $fnafile = $gi . '.fna';

  my $secuenciaGenBank = get_sequence( 'genbank', $gi );
  write_sequence(">$fnafile", 'fasta', $secuenciaGenBank);

  printf("# Se Descargo el genoma: $fnafile (%1.1g Mb)\n",(-s $fnafile) / (1024 * 1024));
  sleep 10;

}
