price = ARGV[0]
users = ARGV[1]
costs = 20000

if price == nil || users == nil
    puts "Debes ingresar al menos un número entero en cada campo para poder calcular tus utilidades."
elsif price >= "a" || users >= "a"
    puts "Por favor, ingresa un número entero en cada campo. Si no ingresas nada o ingresas cualquier otro caracter no se podrán calcular tus utilidades"
elsif price >= "0" && users >= "0"
    realPrice = price.to_i
    realUsers = users.to_i
    earnings = (realPrice * realUsers) - costs
    
    if earnings > 0 
        tax = earnings * 35 / 100
        profit = earnings - tax
        puts "Tus utilidades con el 35% de impuestos aplicado son #{profit}"
    else
        puts "Tus utilidades son #{earnings}"
    end
else
    puts "Debes ingresar en ambos campos un número entero igual o mayor que 0 para calcular tus utilidades."
end
