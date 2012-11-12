#Coffee Characters grid
#coffee --watch --compile E:/Partage/Jonathan/_MISC/coffeesass/script.coffee

$ ->
#Déclarations
body = $('body')

alphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","®","©"]
Scrwidth = document.width
Scrheight = document.height

numHorGrid = 4
numVerGrid = 7
numGrid = numHorGrid*numVerGrid

spanWidth = Scrwidth/numVerGrid
spanHeight = Scrheight/numHorGrid



addSpans = (arg) ->
	coef = Math.floor(arg/(alphabet.length))
	value = alphabet[i-(alphabet.length)*coef]
	spanModel = "<span style='width:"+(spanWidth*0.95)+"px; height:"+spanHeight+"px; font-size:"+spanWidth+"px; line-height:"+spanHeight+"px; display:inline-block;position:relative;text-align:center;'>"+value+"</span>"
	body.append(spanModel)

addSpans(i) for i in [0..numGrid-1] by 1

spanZ = $('span')


spanZ.each ->
	