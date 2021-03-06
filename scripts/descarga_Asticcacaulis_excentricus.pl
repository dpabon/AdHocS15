#!/usr/bin/perl -w
# programa 1.6
#http://161.111.227.80/compbio/material/bioperl/node14.html por: Bruno Contreras-Moreira
#Modificado por: Daniel Pabón, email: daniel.epm12@gmail.com
use strict;
use Bio::Perl;

my @genomas= (
'CP002397.1', #Asticcacaulis excentricus CB 48 plasmid pASTEX01, complete sequence****
'CP002396.1', #Asticcacaulis excentricus CB 48 chromosome 2, complete sequence
'CP002398.1', #Asticcacaulis excentricus CB 48 plasmid pASTEX02, complete sequence
'CP002395.1', #Asticcacaulis excentricus CB 48 chromosome 1, complete sequence
);
foreach my $elemento (@genomas){
  my $gi = $elemento;
  my $fnafile = $gi . '.fna';

  my $secuenciaGenBank = get_sequence( 'genbank', $gi );
  write_sequence(">$fnafile", 'fasta', $secuenciaGenBank);

  printf("# Se Descargo el genoma: $fnafile (%1.1g Mb)\n",(-s $fnafile) / (1024 * 1024));
  sleep 10;

}
