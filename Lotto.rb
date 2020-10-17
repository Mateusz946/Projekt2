class SuperLotto
    def initialize 
        system "cls"
        @odpowiedz = ""
        @punktacja = 0
        gra
    end
    def gra
        powitanie
        until @odpowiedz == "koniec"
            @a = rand(1..48)
            @b = rand(1..48)
            @c = rand(1..48)
            @d = rand(1..48)
            @e = rand(1..48)
            @wynik = @a, @b, @c, @d, @e

            print @imie + " wybierz pięć liczb od 1 do 48\n"
            @odpowiedz = gets.chomp
            puts "Twoja odpowiedz: #{@odpowiedz}"
            if @odpowiedz == @wynik.to_s
                print "A wylosowane liczby to #{@wynik}\n\n"
                puts "Super, trafiłeś"
                @punktacja +=1
            elsif @odpowiedz == "koniec"
                koniec
            elsif @odpowiedz != @wynik.to_s
                print "A wylosowane liczby to #{@wynik}\n\n"
                puts "Niestety, nie trafiłeś, spróbuj jeszcze raz\n\n"
                @punktacja -=1
            else
                puts "Niepoprawna wartość"
            end
        end

    end
    def powitanie
        puts print "  Miło mi Cię gościę ;) Jak masz na imię? >> "
        @imie = gets.chomp
        @imie = @imie.capitalize
        puts "************************************************************"
        puts "Witaj #{@imie} w naszej grze o miliardy".center(60)
        puts "************************************************************"
        puts "Podpowiedz: jeśli chcesz zakończyć grę, wpisz słowo 'koniec', jeśli chcesz zagrać podaj wynik i wciśnij klawisz enter. \nJeśli trafisz wszystkie liczby wygrywasz 32 miliardy starych złotych.\n\n"
    end    
    def koniec
        puts "Twój wynik to #{@punktacja} pkt"
        puts "Dziękuję za udział w grze, Do zobaczenia #{@imie}"
        puts "Nasciśnij enter by zakończyć"
        gets
        exit
    end 
end

graj = SuperLotto.new