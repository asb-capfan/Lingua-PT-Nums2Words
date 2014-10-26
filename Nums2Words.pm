package Lingua::PT::Nums2Words;

require 5.000;

use strict;
use Exporter;
use vars qw(@ISA @EXPORT $VERSION);

@ISA		= qw(Exporter);
@EXPORT		= qw(nums2words);
$VERSION	= '0.1';

sub nums2words {
   # salva o par�metro
   my $n = shift;
   # defini��o de vari�veis/dados
   my ($s, @r);
   my @ord = qw(
	mil		mil
	milh�o		milh�es
	bilh�o		bilh�es
	trilh�o		trilh�es
	quadrilh�o	quadrilh�es
   );
   # o array @ord deve come�ar com 2 valores vazios para indicar unidades
   unshift @ord, '', '';
   
   # trata n�meros negativos
   if ($n < 0) {
      $s = "menos ";
      $n *= -1;
   } else {
      $s = '';
   }
   
   # se o n�mero � ser convertido for maior de 999 quadrilh�es recusa a convers�o
   return '' unless $n < 10**18;

   if ($n < 1000) {
      # se o n�mero for menor que 1000 ent�o trata-se de um caso s�mples
      @r = &ext999 ($n);
   } else {
      # se for maior, quebramos o n�mero em ternas (Ex: 1234567890 => 1,234,567,890)
      for (my $i = 0, my $j = (length $n) % 3, my $k = int ((length $n) / 3); $j <= length $n; $i = $j, $j += 3, $k--) {
         next if $i == $j; # numero exato de ternas
         # $b = uma terna
         my $b = substr ($n, $i, $j - $i);
         # n�o processa se for 0
         next if $b == 0;
         # decide a ordem da terna
         my $o = $k * 2;
         # faz distin��o singular/plural
         $o += (($b == 1) ? 0 : 1);

         # terna por extenso
         my $r = &ext999 ($b);
         # completa com ordem
         $r .= " $ord[$o]" if $ord[$o];
         # salva o resultado
         push @r, $r;
      }
   }

   # junta as ternas escritas por extenso e retorna o resultado
   return $s . join (' e ', @r);
}

sub ext999 {
   # salva o par�metro
   my $n = shift;
   # zero � caso especial
   return "zero" if $n == 0;
   # hash com nomes de n�meros
   my %data = qw(
	1 um		2 dois		3 tr�s		4 quatro	5 cinco
	6 seis		7 sete		8 oito		9 nove		10 dez
	11 onze		12 doze		13 treze	14 quatorze	15 quinze
	16 dezesseis	17 dezessete	18 dezoito	19 dezenove	20 vinte
	30 trinta	40 quarenta	50 cinq�enta	60 sessenta	70 setenta
	80 oitenta	90 noventa	100 cem		200 duzentos	300 trezentos
	400 quatrocentos 500 quinhentos	600 seissentos	700 setecentos	800 oitocentos
	900 novecentos
   );
   
   my @r;
   # algoritmo de quebra do valor em partes que possuem nome definido
   # o n�mero � reduzido at� se tornar 0
   for (my $i = 0; $n != 0; $i++) {
      # busca o nome do maior n�mero encontrado � esquerda
      foreach my $f (sort { $b <=> $a } keys %data) {
         if ($n =~ m{$f$}) {
            # subtrai o n�mero encontrado
	    $n -= $f;
            # salva o nome
	    unshift @r, $data{$f};
	 }
      }
      # ap�s a 1-a itera��o 100 passa a ser caso especial
      $data{100} = "cento" unless $i;
   }
   
   # junta os nomes e retorna
   return join (' e ', @r);
}

1;
__END__


=head1 NOME

Lingua::PT::Nums2Words - converte n�meros decimais em escritos por extenso

=head1 RESUMO

  use Lingua::PT::Nums2Words;
  print &nums2words (65637), "\n";

=head1 DESCRI��O

O nome j� diz tudo, sem mais coment�rios... � vez de exemplos ;)

=over 4

=item I<666>

seissentos e sessenta e seis

=item I<3128>

tr�s mil e cento e vinte e oito

=back

=head1 USO

=over 4

=item nums2words (C<NUM>)

N�mero C<NUM> deve ser inteiro na faixa de +/- 999 quadrilh�es (10^15;
 s� para ter id�ia: um valor m�ximo que vari�vel de 32 bits aceita �
2,147,483,648). Retorna uma string com o C<NUM> escrito por extenso.

=back 

=head1 INSTALA��O

  tar xzvf Lingua-PT-Nums2Words-0.1.tar.gz
  cd Lingua-PT-Nums2Words-0.1
  perl Makefile.PL
  make
  su -c make install

=head1 VERS�O

0.1

=head1 AUTOR

   Stanislaw Y. Pusep
      E-Mail:	stanis@linuxmail.org
      ICQ UIN:	11979567
      Homepage:	http://sysdlabs.hypermart.net/

=head1 COPYRIGHT

Copyright (c) 1997-2002 by Stas. All rights reserved.
This program is free software; you can redistribute it
and/or modify it under the same terms as Perl itself.

=cut
