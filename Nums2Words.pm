package Lingua::PT::Nums2Words;

require 5.000;

use strict;
use Exporter;
use vars qw(@ISA @EXPORT $VERSION);
use vars qw(%data @data_ord);

@ISA		= qw(Exporter);
@EXPORT		= qw(nums2words);
$VERSION	= '0.2';


# hash com nomes de números-"bases"
%data = qw(
1 um		2 dois		3 três		4 quatro	5 cinco
6 seis		7 sete		8 oito		9 nove		10 dez
11 onze		12 doze		13 treze	14 quatorze	15 quinze
16 dezesseis	17 dezessete	18 dezoito	19 dezenove	20 vinte
30 trinta	40 quarenta	50 cinqüenta	60 sessenta	70 setenta
80 oitenta	90 noventa	100 cento	200 duzentos	300 trezentos
400 quatrocentos 500 quinhentos	600 seissentos	700 setecentos	800 oitocentos
900 novecentos
);
# preprocessa o array inverso de números
@data_ord = sort { $b <=> $a } keys %data;

sub nums2words {
   # salva o parâmetro
   my $n = shift;

   # definição de variáveis/dados
   my ($s, @r);
   my @ord = qw(
	mil		mil
	milhão		milhões
	bilhão		bilhões
	trilhão		trilhões
	quadrilhão	quadrilhões
   );
   # o array @ord deve começar com 2 valores vazios para indicar unidades
   unshift @ord, '', '';
   
   # trata números negativos
   if ($n < 0) {
      $s = "menos ";
      $n *= -1;
   } else {
      $s = '';
   }

   if ($n > 10**18) {
      # se o número à ser convertido for maior de 999 quadrilhões recusa a conversão
      return undef;
   } elsif ($n < 1000) {
      # se o número for menor que 1000 então trata-se de um caso símples
      @r = &ext999 ($n);
   } else {
      # se for maior, quebramos o número em ternas (Ex: 1234567890 => 1,234,567,890)
      my $x = $n;
      for (my $i = 0; $x; $i++) {
         # pega a última terna
         my $y = $x % 1000;

         # se for != 0
         if ($y) {
            # pega a ordem da terna
            my $k = $i * 2;
            $k++ if $y != 1;
            my $ord = $ord[$k];

            # forma string de nome extenso da terna mais ordem
            my $t = &ext999 ($y);
            if ($ord) {
               $t .= " $ord";
            }

            # salva resultado parcial
            unshift @r, $t;
         }

         # continue a redução
         $x = int ($x / 1000);
      }
   }

   # junta as ternas escritas por extenso e retorna o resultado
   return $s . join (' e ', @r);
}

sub ext999 {
   # salva o parâmetro
   my $n = shift;
   # zero é caso especial
   return "zero" if $n == 0;
   # cem também é
   return "cem" if $n == 100;
   
   my @r = ();
   # algoritmo de quebra do valor em partes que possuem nome definido
   # o número é reduzido até se tornar 0
   while ($n) {
      # busca o maior número-"base" aplicavel
      foreach my $x (@data_ord) {
         # tenta redução
         my $y = $n % $x;
         # verifica redução
         if ($x + $y == $n) {
            # OK, redução sucedida!
            $n = $y;
            # salva o número-"base" convertido
            push @r, $data{$x};
            last;
         }
      }
   }
   
   # junta os nomes e retorna
   return join (' e ', @r);
}

1;
__END__


=head1 NOME

Lingua::PT::Nums2Words - converte números decimais em escritos por extenso


=head1 RESUMO

  use Lingua::PT::Nums2Words;
  print &nums2words (65637), "\n";


=head1 DESCRIÇÃO

O nome já diz tudo, sem mais comentários... É vez de exemplos ;)

=over 4

=item *

I<666> - seissentos e sessenta e seis

=item *

I<3128> - três mil e cento e vinte e oito

=back


=head1 UTILIZAÇÃO

=over 4

=item nums2words (C<NUM>)

Número C<NUM> deve ser inteiro na faixa de +/- 999 quadrilhões
(999 * (10^15)). Retorna uma string com o C<NUM> escrito por extenso
em Português.

=back 


=head1 INSTALAÇÃO

  tar xzvf Lingua-PT-Nums2Words-0.2.tar.gz
  cd Lingua-PT-Nums2Words-0.2
  perl Makefile.PL
  make
  make test
  su -c make install


=head1 VERSÃO

0.2


=head1 CHANGELOG

=over 4

=item *

B<0.1> I<(18/Mai/2002)> - primeira versão funcional.

=item *

B<0.2> I<(28/Mai/2002)> - código reescrito visando maior eficiência.

=back


=head1 BUGS

=over 4

=item *

Números acima de 4 quadrilhões não são convertidos corretamente.
Solução: portar para uso do C<Math::BigInt> ou processar escalares
como I<strings>. Se necessidade apertar, fico com C<Math::BigInt>!

=back


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
