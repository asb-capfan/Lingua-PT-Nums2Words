# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl 1.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 263;

BEGIN { use_ok('Lingua::PT::Nums2Words') };

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

is(num2word(0),'zero');
is(num2word(1),'um');
is(num2word(2),'dois');
is(num2word(3),'tr�s');
is(num2word(4),'quatro');
is(num2word(5),'cinco');
is(num2word(6),'seis');
is(num2word(7),'sete');
is(num2word(8),'oito');
is(num2word(9),'nove');
is(num2word(10),'dez');
is(num2word(11),'onze');
is(num2word(12),'doze');
is(num2word(13),'treze');
is(num2word(14),'catorze');
is(num2word(15),'quinze');
is(num2word(16),'dezasseis');
is(num2word(17),'dezassete');
is(num2word(18),'dezoito');
is(num2word(19),'dezanove');

is(num2word(20),'vinte');
is(num2word(21),'vinte e um');
is(num2word(22),'vinte e dois');
is(num2word(30),'trinta');
is(num2word(33),'trinta e tr�s');
is(num2word(40),'quarenta');
is(num2word(44),'quarenta e quatro');
is(num2word(50),'cinquenta');
is(num2word(55),'cinquenta e cinco');
is(num2word(60),'sessenta');
is(num2word(66),'sessenta e seis');
is(num2word(70),'setenta');
is(num2word(77),'setenta e sete');
is(num2word(80),'oitenta');
is(num2word(88),'oitenta e oito');
is(num2word(90),'noventa');
is(num2word(99),'noventa e nove');

is(num2word(100),'cem');
is(num2word(105),'cento e cinco');
is(num2word(120),'cento e vinte');
is(num2word(134),'cento e trinta e quatro');
is(num2word(176),'cento e setenta e seis');
is(num2word(189),'cento e oitenta e nove');

is(num2word(200),'duzentos');
is(num2word(250),'duzentos e cinquenta');
is(num2word(263),'duzentos e sessenta e tr�s');

is(num2word(300),'trezentos');
is(num2word(400),'quatrocentos');
is(num2word(500),'quinhentos');
is(num2word(600),'seiscentos');
is(num2word(700),'setecentos');
is(num2word(800),'oitocentos');
is(num2word(900),'novecentos');

is(num2word(1000),'mil');

is(num2word(1001),'mil e um');
is(num2word(1010),'mil e dez');
is(num2word(1011),'mil e onze');
is(num2word(1100),'mil e cem');
is(num2word(1101),'mil cento e um');
is(num2word(1110),'mil cento e dez');
is(num2word(1111),'mil cento e onze');

is(num2word(1500),'mil e quinhentos');
is(num2word(1501),'mil quinhentos e um');
is(num2word(1510),'mil quinhentos e dez');
is(num2word(1511),'mil quinhentos e onze');
is(num2word(1550),'mil quinhentos e cinquenta');
is(num2word(1583),'mil quinhentos e oitenta e tr�s');

is(num2word(1807),'mil oitocentos e sete');
is(num2word(1920),'mil novecentos e vinte');
is(num2word(2040),'dois mil e quarenta');
is(num2word(3006),'tr�s mil e seis');
is(num2word(4000),'quatro mil');
is(num2word(4123),'quatro mil cento e vinte e tr�s');
is(num2word(5875),'cinco mil oitocentos e setenta e cinco');
is(num2word(6980),'seis mil novecentos e oitenta');
is(num2word(7009),'sete mil e nove');
is(num2word(8090),'oito mil e noventa');
is(num2word(9101),'nove mil cento e um');

is(num2word(9999),'nove mil novecentos e noventa e nove');

is(num2word(10000),'dez mil');
is(num2word(10001),'dez mil e um');
is(num2word(10010),'dez mil e dez');
is(num2word(10011),'dez mil e onze');
is(num2word(10100),'dez mil e cem');
is(num2word(10101),'dez mil cento e um');
is(num2word(10111),'dez mil cento e onze');
is(num2word(11000),'onze mil');
is(num2word(11001),'onze mil e um');
is(num2word(11011),'onze mil e onze');
is(num2word(11111),'onze mil cento e onze');

is(num2word(12873),'doze mil oitocentos e setenta e tr�s');
is(num2word(13000),'treze mil');
is(num2word(14020),'catorze mil e vinte');
is(num2word(15100),'quinze mil e cem');
is(num2word(16605),'dezasseis mil seiscentos e cinco');
is(num2word(17002),'dezassete mil e dois');
is(num2word(18543),'dezoito mil quinhentos e quarenta e tr�s');
is(num2word(19999),'dezanove mil novecentos e noventa e nove');

is(num2word(20000),'vinte mil');
is(num2word(30003),'trinta mil e tr�s');
is(num2word(40040),'quarenta mil e quarenta');
is(num2word(50500),'cinquenta mil e quinhentos');
is(num2word(66000),'sessenta e seis mil');
is(num2word(77070),'setenta e sete mil e setenta');
is(num2word(80808),'oitenta mil oitocentos e oito');
is(num2word(99999),'noventa e nove mil novecentos e noventa e nove');

is(num2word(100000),'cem mil');
is(num2word(111111),'cento e onze mil cento e onze');
is(num2word(222222),'duzentos e vinte e dois mil duzentos e vinte e dois');
is(num2word(202020),'duzentos e dois mil e vinte');
is(num2word(333333),'trezentos e trinta e tr�s mil trezentos e trinta e tr�s');
is(num2word(330033),'trezentos e trinta mil e trinta e tr�s');
is(num2word(444444),'quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro');
is(num2word(444000),'quatrocentos e quarenta e quatro mil');
is(num2word(555555),'quinhentos e cinquenta e cinco mil quinhentos e cinquenta e cinco');
is(num2word(500055),'quinhentos mil e cinquenta e cinco');
is(num2word(666666),'seiscentos e sessenta e seis mil seiscentos e sessenta e seis');
is(num2word(660606),'seiscentos e sessenta mil seiscentos e seis');
is(num2word(777777),'setecentos e setenta e sete mil setecentos e setenta e sete');
is(num2word(707700),'setecentos e sete mil e setecentos');
is(num2word(888888),'oitocentos e oitenta e oito mil oitocentos e oitenta e oito');
is(num2word(808880),'oitocentos e oito mil oitocentos e oitenta');
is(num2word(999999),'novecentos e noventa e nove mil novecentos e noventa e nove');

is(num2word(1000000),'um milh�o');
is(num2word(1000001),'um milh�o e um');
is(num2word(1001000),'um milh�o e mil');
is(num2word(1001001),'um milh�o mil e um');
is(num2word(2020202),'dois milh�es vinte mil duzentos e dois');
is(num2word(3300330),'tr�s milh�es trezentos mil trezentos e trinta');
is(num2word(4004004),'quatro milh�es quatro mil e quatro');
is(num2word(5050055),'cinco milh�es cinquenta mil e cinquenta e cinco');
is(num2word(6660000),'seis milh�es seiscentos e sessenta mil');
is(num2word(7700777),'sete milh�es setecentos mil setecentos e setenta e sete');
is(num2word(8888888),'oito milh�es oitocentos e oitenta e oito mil oitocentos e oitenta e oito');
is(num2word(9999900),'nove milh�es novecentos e noventa e nove mil e novecentos');

is(num2word(10000000),'dez milh�es');
is(num2word(20202020),'vinte milh�es duzentos e dois mil e vinte');
is(num2word(33003300),'trinta e tr�s milh�es tr�s mil e trezentos');
is(num2word(40044004),'quarenta milh�es quarenta e quatro mil e quatro');
is(num2word(55500055),'cinquenta e cinco milh�es quinhentos mil e cinquenta e cinco');
is(num2word(66000000),'sessenta e seis milh�es');
is(num2word(70000007),'setenta milh�es e sete');
is(num2word(88080808),'oitenta e oito milh�es oitenta mil oitocentos e oito');
is(num2word(98989898),'noventa e oito milh�es novecentos e oitenta e nove mil oitocentos e noventa e oito');
is(num2word(99999999),'noventa e nove milh�es novecentos e noventa e nove mil novecentos e noventa e nove');

is(num2word(100000000),'cem milh�es');
is(num2word(202020200),'duzentos e dois milh�es vinte mil e duzentos');
is(num2word(303303303),'trezentos e tr�s milh�es trezentos e tr�s mil trezentos e tr�s');
is(num2word(444444444),'quatrocentos e quarenta e quatro milh�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro');
is(num2word(550055000),'quinhentos e cinquenta milh�es e cinquenta e cinco mil');
is(num2word(666600000),'seiscentos e sessenta e seis milh�es e seiscentos mil');
is(num2word(700000007),'setecentos milh�es e sete');
is(num2word(881234599),'oitocentos e oitenta e um milh�es duzentos e trinta e quatro mil quinhentos e noventa e nove');
is(num2word(999999999),'novecentos e noventa e nove milh�es novecentos e noventa e nove mil novecentos e noventa e nove');

is(num2word(1000000000),'mil milh�es');
is(num2word(2020202020),'dois mil e vinte milh�es duzentos e dois mil e vinte');
is(num2word(3033033030),'tr�s mil e trinta e tr�s milh�es trinta e tr�s mil e trinta');
is(num2word(4444444444),'quatro mil quatrocentos e quarenta e quatro milh�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro');
is(num2word(5500550000),'cinco mil e quinhentos milh�es quinhentos e cinquenta mil');
is(num2word(6666600000),'seis mil seiscentos e sessenta e seis milh�es e seiscentos mil');
is(num2word(7000000007),'sete mil milh�es e sete');
is(num2word(8812345999),'oito mil oitocentos e doze milh�es trezentos e quarenta e cinco mil novecentos e noventa e nove');
is(num2word(9999999999),'nove mil novecentos e noventa e nove milh�es novecentos e noventa e nove mil novecentos e noventa e nove');

is(num2word(10000000000),'dez mil milh�es');
is(num2word(20202020200),'vinte mil duzentos e dois milh�es vinte mil e duzentos');
is(num2word(30330330300),'trinta mil trezentos e trinta milh�es trezentos e trinta mil e trezentos');
is(num2word(44444444444),'quarenta e quatro mil quatrocentos e quarenta e quatro milh�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro');
is(num2word(55005500000),'cinquenta e cinco mil e cinco milh�es e quinhentos mil');
is(num2word(66666000000),'sessenta e seis mil seiscentos e sessenta e seis milh�es');
is(num2word(70000000007),'setenta mil milh�es e sete');
is(num2word(88123459999),'oitenta e oito mil cento e vinte e tr�s milh�es quatrocentos e cinquenta e nove mil novecentos e noventa e nove');
is(num2word(99999999999),'noventa e nove mil novecentos e noventa e nove milh�es novecentos e noventa e nove mil novecentos e noventa e nove');

is(num2word(100000000000),'cem mil milh�es');
is(num2word(202020202020),'duzentos e dois mil e vinte milh�es duzentos e dois mil e vinte');
is(num2word(303303303303),'trezentos e tr�s mil trezentos e tr�s milh�es trezentos e tr�s mil trezentos e tr�s');
is(num2word(444444444444),'quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro milh�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro');
is(num2word(550055005500),'quinhentos e cinquenta mil e cinquenta e cinco milh�es cinco mil e quinhentos');
is(num2word(666666000000),'seiscentos e sessenta e seis mil seiscentos e sessenta e seis milh�es');
is(num2word(700000000007),'setecentos mil milh�es e sete');
is(num2word(881234599999),'oitocentos e oitenta e um mil duzentos e trinta e quatro milh�es quinhentos e noventa e nove mil novecentos e noventa e nove');
is(num2word(999999999999),'novecentos e noventa e nove mil novecentos e noventa e nove milh�es novecentos e noventa e nove mil novecentos e noventa e nove');

is(num2word(1000000000000),'um bili�o');
is(num2word(2020202020200),'dois bili�es vinte mil duzentos e dois milh�es vinte mil e duzentos');
is(num2word(3033033033030),'tr�s bili�es trinta e tr�s mil e trinta e tr�s milh�es trinta e tr�s mil e trinta');
is(num2word(4444444444444),'quatro bili�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro milh�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro');
is(num2word(5500550055000),'cinco bili�es quinhentos mil quinhentos e cinquenta milh�es e cinquenta e cinco mil');
is(num2word(6666660000000),'seis bili�es seiscentos e sessenta e seis mil seiscentos e sessenta milh�es');
is(num2word(7000000000007),'sete bili�es e sete');
is(num2word(8812345999999),'oito bili�es oitocentos e doze mil trezentos e quarenta e cinco milh�es novecentos e noventa e nove mil novecentos e noventa e nove');
is(num2word(9999999999999),'nove bili�es novecentos e noventa e nove mil novecentos e noventa e nove milh�es novecentos e noventa e nove mil novecentos e noventa e nove');

is(num2word(10000000000000),'dez bili�es');
is(num2word(20202020202020),'vinte bili�es duzentos e dois mil e vinte milh�es duzentos e dois mil e vinte');
is(num2word(30330330330300),'trinta bili�es trezentos e trinta mil trezentos e trinta milh�es trezentos e trinta mil e trezentos');
is(num2word(44444444444444),'quarenta e quatro bili�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro milh�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro');
is(num2word(55005500550000),'cinquenta e cinco bili�es cinco mil e quinhentos milh�es quinhentos e cinquenta mil');
is(num2word(66666660000000),'sessenta e seis bili�es seiscentos e sessenta e seis mil seiscentos e sessenta milh�es');
is(num2word(70000000000007),'setenta bili�es e sete');
is(num2word(88123459999999),'oitenta e oito bili�es cento e vinte e tr�s mil quatrocentos e cinquenta e nove milh�es novecentos e noventa e nove mil novecentos e noventa e nove');
is(num2word(99999999999999),'noventa e nove bili�es novecentos e noventa e nove mil novecentos e noventa e nove milh�es novecentos e noventa e nove mil novecentos e noventa e nove');

is(num2word(100000000000000),'cem bili�es');
is(num2word(202020202020200),'duzentos e dois bili�es vinte mil duzentos e dois milh�es vinte mil e duzentos');
is(num2word(303303303303303),'trezentos e tr�s bili�es trezentos e tr�s mil trezentos e tr�s milh�es trezentos e tr�s mil trezentos e tr�s');
is(num2word(444444444444444),'quatrocentos e quarenta e quatro bili�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro milh�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro');
is(num2word(550055005500000),'quinhentos e cinquenta bili�es cinquenta e cinco mil e cinco milh�es e quinhentos mil');
is(num2word(666666600000000),'seiscentos e sessenta e seis bili�es seiscentos e sessenta e seis mil e seiscentos milh�es');
is(num2word(700000000000007),'setecentos bili�es e sete');
is(num2word(881234599999999),'oitocentos e oitenta e um bili�es duzentos e trinta e quatro mil quinhentos e noventa e nove milh�es novecentos e noventa e nove mil novecentos e noventa e nove');
is(num2word(999999999999999),'novecentos e noventa e nove bili�es novecentos e noventa e nove mil novecentos e noventa e nove milh�es novecentos e noventa e nove mil novecentos e noventa e nove');

TODO: {
  local $TODO = "haven't got it working for thousands of billions and above yet";

is(num2word(1000000000000000),'mil bili�es');
is(num2word(2020202020202020),'dois mil e vinte bili�es duzentos e dois mil e vinte milh�es duzentos e dois mil e vinte');
is(num2word(3033033033033030),'tr�s mil e trinta e tr�s bili�es trinta e tr�s mil e trinta e tr�s milh�es trinta e tr�s mil e trinta');
is(num2word(4444444444444444),'quatro mil quatrocentos e quarenta e quatro bili�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro milh�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro');
is(num2word(5500550055005500),'cinco mil e quinhentos bili�es quinhentos e cinquenta mil e cinquenta e cinco milh�es e cinco mil e quinhentos');
is(num2word(6666666600000000),'seis mil seiscentos e sessenta e seis bili�es seiscentos e sessenta e seis mil e seiscentos milh�es');
is(num2word(7000000000000007),'sete mil bili�es e sete');
is(num2word(8812345999999999),'oito mil oitocentos e doze bili�es trezentos e quarenta e cinco mil novecentos e noventa e nove mil milh�es novecentos e noventa e nove mil novecentos e noventa e nove');
is(num2word(9999999999999999),'nove mil novecentos e noventa e nove bili�es novecentos e noventa e nove mil novecentos e noventa e nove milh�es novecentos e noventa e nove mil novecentos e noventa e nove');

is(num2word(10000000000000000),'dez mil bili�es');
is(num2word(20202020202020200),'vinte mil duzentos e dois bili�es vinte mil duzentos e dois milh�es vinte mil e duzentos');
is(num2word(30330330330330300),'trinta mil trezentos e trinta bili�es trezentos e trinta mil trezentos e trinta milh�es trezentos e trinta mil e trezentos');
is(num2word(44444444444444444),'quarenta e quatro mil quatrocentos e quarenta e quatro bili�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro milh�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro');
is(num2word(55005500550055000),'cinquenta e cinco mil e cinco bili�es quinhentos mil quinhentos e cinquenta milh�es e cinquenta e cinco mil');
is(num2word(66666666000000000),'sessenta e seis mil seiscentos e sessenta e seis bili�es seiscentos e sessenta e seis mil milh�es');
is(num2word(70000000000000007),'setenta mil bili�es e sete');
is(num2word(88123459999999999),'oitenta e oito mil cento e vinte e tr�s bili�es quatrocentos e cinquenta e nove mil novecentos e noventa e nove milh�es novecentos e noventa e nove mil novecentos e noventa e nove');
is(num2word(99999999999999999),'noventa e nove mil novecentos e noventa e nove bili�es novecentos e noventa e nove mil novecentos e noventa e nove milh�es novecentos e noventa e nove mil novecentos e noventa e nove');

is(num2word(100000000000000000),'cem mil bili�es');
is(num2word(202020202020202020),'duzentos e dois mil e vinte bili�es duzentos e dois mil e vinte milh�es duzentos e dois mil e vinte');
is(num2word(303303303303303303),'trezentos e tr�s mil trezentos e tr�s bili�es trezentos e tr�s mil trezentos e tr�s milh�es trezentos e tr�s mil trezentos e tr�s');
is(num2word(444444444444444444),'quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro bili�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro milh�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro');
is(num2word(550055005500550000),'quinhentos e cinquenta mil e cinquenta e cinco bili�es e cinco mil e quinhentos milh�es e quinhentos e cinquenta mil');
is(num2word(666666666000000000),'seiscentos e sessenta e seis mil seiscentos e sessenta e seis bili�es seiscentos e sessenta e seis mil milh�es');
is(num2word(700000000000000007),'setecentos mil bili�es e sete');
is(num2word(881234599999999999),'oitocentos e oitenta e um mil duzentos e trinta e quatro bili�es quinhentos e noventa e nove mil novecentos e noventa e nove milh�es novecentos e noventa e nove mil novecentos e noventa e nove');
is(num2word(999999999999999999),'novecentos e noventa e nove mil novecentos e noventa e nove bili�es novecentos e noventa e nove mil novecentos e noventa e nove milh�es novecentos e noventa e nove mil novecentos e noventa e nove');

is(num2word(1000000000000000000),'um trili�o');
is(num2word(2020202020202020200),'dois trili�es vinte mil duzentos e dois bili�es vinte mil duzentos e dois milh�es vinte mil e duzentos');
is(num2word(3033033033033033030),'tr�s trili�es e trinta e tr�s mil e trinta e tr�s bili�es trinta e tr�s mil e trinta e tr�s milh�es trinta e tr�s mil e trinta');
is(num2word(4444444444444444444),'quatro trili�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro bili�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro milh�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro');
is(num2word(5500550055005500000),'cinco trili�es e quinhentos mil quinhentos e cinquenta bili�es e cinquenta e cinco mil e cinco milh�es e quinhentos mil');
is(num2word(6666666660000000000),'seis trili�es seiscentos e sessenta e seis mil seiscentos e sessenta e seis bili�es seiscentos e sessenta mil milh�es');
is(num2word(7000000000000000007),'sete trili�es e sete');
is(num2word(8812345999999999999),'oito trili�es oitocentos e doze mil trezentos e quarenta e cinco mil novecentos e noventa e nove bili�es novecentos e noventa e nove mil novecentos e noventa e nove milh�es novecentos e noventa e nove mil novecentos e noventa e nove');
is(num2word(9999999999999999999),'nove trili�es novecentos e noventa e nove mil novecentos e noventa e nove bili�es novecentos e noventa e nove mil novecentos e noventa e nove milh�es novecentos e noventa e nove mil novecentos e noventa e nove');

is(num2word(10000000000000000000),'dez trili�es');
is(num2word(20202020202020202020),'vinte trili�es duzentos e dois mil e vinte bili�es duzentos e dois mil e vinte milh�es duzentos e dois mil e vinte');
is(num2word(30330330330330330300),'trinta trili�es trezentos e trinta mil trezentos e trinta bili�es trezentos e trinta mil trezentos e trinta milh�es trezentos e trinta mil e trezentos');
is(num2word(44444444444444444444),'quarenta e quatro trili�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro bili�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro milh�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro');
is(num2word(55005500550055005500),'cinquenta e cinco trili�es e cinco mil e quinhentos bili�es quinhentos e cinquenta mil e cinquenta e cinco milh�es e cinco mil e quinhentos');
is(num2word(66666666660000000000),'sessenta e seis trili�es seiscentos e sessenta e seis mil seiscentos e sessenta e seis bili�es seiscentos e sessenta mil milh�es');
is(num2word(70000000000000000007),'setenta trili�es e sete');
is(num2word(88123459999999999999),'oitenta e oito trili�es cento e vinte e tr�s mil quatrocentos e cinquenta e nove bili�es novecentos e noventa e nove mil novecentos e noventa e nove milh�es novecentos e noventa e nove mil novecentos e noventa e nove');
is(num2word(99999999999999999999),'noventa e nove trili�es novecentos e noventa e nove mil novecentos e noventa e nove bili�es novecentos e noventa e nove mil novecentos e noventa e nove milh�es novecentos e noventa e nove mil novecentos e noventa e nove');

is(num2word(100000000000000000000),'cem trili�es');
is(num2word(222666555444333222111),'duzentos e vinte e dois trili�es seiscentos e sessenta e seis mil quinhentos e cinquenta e cinco bili�es quatrocentos e quarenta e quatro mil trezentos e trinta e tr�s milh�es duzentos e vinte e dois mil cento e onze');
is(num2word(333222111000999888777),'trezentos e trinta e tr�s trili�es duzentos e vinte e dois mil cento e onze bili�es novecentos e noventa e nove milh�es oitocentos e oitenta e oito mil setecentos e setenta e sete');
is(num2word(432123765890876345839),'quatrocentos e trinta e dois trili�es cento e vinte e tr�s mil setecentos e sessenta e cinco bili�es oitocentos e noventa mil oitocentos e setenta e seis milh�es trezentos e quarenta e cinco mil oitocentos e trinta e nove');
is(num2word(550050050505555555555),'quinhentos e cinquenta trili�es cinquenta mil e cinquenta bili�es quinhentos e cinco mil quinhentos e cinquenta e cinco milh�es quinhentos e cinquenta e cinco mil quinhentos e cinquenta e cinco');
is(num2word(666606000000000006606),'seiscentos e sessenta e seis trili�es seiscentos e seis mil bili�es seis mil seiscentos e seis');
is(num2word(700007070700070077007),'setecentos trili�es sete mil e setenta bili�es setecentos mil e setenta milh�es setenta e sete mil e sete');
is(num2word(808808808808808808808),'oitocentos e oito trili�es oitocentos e oito mil oitocentos e oito bili�es oitocentos e oito mil oitocentos e oito milh�es oitocentos e oito mil oitocentos e oito');
is(num2word(999999999999999999999),'novecentos e noventa e nove trili�es novecentos e noventa e nove mil novecentos e noventa e nove bili�es novecentos e noventa e nove mil novecentos e noventa e nove milh�es novecentos e noventa e nove mil novecentos e noventa e nove');

}
