class Pokemon
  def initialize(name, hp, attack)
    @name = name
    @hp = hp
    @attack = attack
  end

  def name
  	 @name
  end

  def hp
	 @hp
  end

  def attack
  	 @attack
  end
end

class Battle
	pika = Pokemon.new("ピカチュウ", 30, 13)
	zeni = Pokemon.new("ゼニガメ", 50, 14)

	pikaName = pika.name
	zeniName = zeni.name
	pikaHp = pika.hp
	zeniHp = zeni.hp
	pikaAttack = pika.attack
	zeniAttack= zeni.attack


	line1 = "************************"
	line2 = "------"


	numberOfBattles = 1

	puts line1
	puts "戦闘開始"
	puts line1

	while true do
		puts line2
		puts "第#{numberOfBattles}戦"
		puts line2
		if pikaAttack > zeniAttack
			zeniHp = zeniHp - pikaAttack
		elsif pikaAttack < zeniAttack
			pikaHp = pikaHp - zeniAttack
		else
			puts "引き分け"
			break
		end

		puts "#{pikaName}の残りHP: #{pikaHp}"
		puts "#{zeniName}の残りHP: #{zeniHp}"
		numberOfBattles +=1
		if pikaHp<=0
			puts line1
			puts "決着!!!"
			puts line1
			puts "#{pikaName}瀕死、、#{zeniName}の勝利！！"
			break
		elsif zeniHp<=0
			puts line1
			puts "決着!!!"
			puts line1
			puts "#{zeniName}瀕死、、#{pikaName}の勝利！！"
			break
		end

	end
end