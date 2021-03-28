
require './PlumPott.rb'
require './Okuda.rb'

 $bitwidth = 2.0/25.4
 $halfwidth = $bitwidth/2

class Deerorg < PlumPott
 MARJ = 0.05 #0.25
 @@numero = 1
 def initialize(starx, stary)
  @width = 6
  
  @heigh = $aoxo_switch 
  @depth = 0.55
  @@lipp = 0 #0.1 #was lipp zero
  @zstep = 4
  @dzary = 0
  super(starx, stary)
 end
 def dy(y)
  return @stary-y
 end
 def dx(x)
  return @curxo+x
 end
 def a_screw(x,y)
 looscrew(x,y)
 end
 
  def a_ground(x,y)
 drillus(x,y,0,-@depth)
 end
 def a_johnson(x,y)
 johnson(x,y)
 end
 def a_psalpot(x,y)
  alpspot(x,y,180+163)
 end
 def a_trimcap(x,y)
  pipe(x,y,0.06,0,-@depth)
  #tubo(x,y,3.3/32,0,-@depth,@zstep)
 end
 def SMTLED(x,y)
 tubo(x,y,3.3/32,0,-@depth,@zstep)
end
def a_dwitch(x,y)
 swdpdt(x,y,-17)
 end
  def organoPHORM(arr,x,y,sig)
  skimtoPoint(x+(sig*arr[0][0]),
             y-(sig*arr[0][1]),0.1)
  penetrate(@@engravedeep)
  arr.each{|rr| cutoPoint(x+(sig*rr[0]),y-(sig*rr[1]))}
  arr.reverse_each{|rr| cutoPoint(x+(sig*rr[0]),y-(sig*rr[1]))}
  retrax(0.1)
 end
 
 
 def syck
a_ground(dx(0.250000),dy(0.5))
a_ground(dx(0.250000),dy(1.6))
a_johnson(dx(2.051302),dy(1.099719))
a_johnson(dx(2.487601),dy(0.826511))
a_johnson(dx(2.513769),dy(1.325826))
a_johnson(dx(3.013084),dy(1.299657))
a_johnson(dx(2.986916),dy(0.800343))
a_johnson(dx(3.486231),dy(0.774174))
a_johnson(dx(3.512399),dy(1.273489))
a_johnson(dx(3.948698),dy(1.000281))
a_johnson(dx(4.843959),dy(-0.60672))
a_screw(dx(5.750000),dy(-0.1))
a_trimcap(dx(5.234161),dy(-1.552574))
SMTLED(dx(4.805000),dy(-1.141339))
SMTLED(dx(4.294348),dy(-1.0437))
a_psalpot(dx(3.636594),dy(-0.228966))
a_johnson(dx(2.602639),dy(-0.326346))
a_johnson(dx(4.155098),dy(-1.609634))
a_johnson(dx(4.724935),dy(-1.600323))
a_screw(dx(5.750000),dy(-1.6))
a_johnson(dx(3.520989),dy(-1.569195))
a_johnson(dx(2.868626),dy(-1.50213))
a_psalpot(dx(2.168780),dy(-1.431412))
a_psalpot(dx(1.243476),dy(-1.002385))
#a_trimcap(dx(0.728313),dy(-1.650393))
a_screw(dx(0.250000),dy(-0.1))
a_screw(dx(0.250000),dy(-1.6))
a_dwitch(dx(1.552820),dy(-1.520042))
a_psalpot(dx(1.942459),dy(-0.541086))
a_johnson(dx(4.321917),dy(-0.400778))
a_ground(dx(5.750000),dy(0.5))
a_screw(dx(5.750000),dy(1.6))
end
$syck_horn = [ [2.000000,-0.85], [2.000000,-0.85], [2.119281,-0.781834], [2.215531,-0.736894], [2.313312,-0.69539], [2.412500,-0.657374], [2.512973,-0.622893], [2.614603,-0.59199], [2.717263,-0.564705], [2.820825,-0.541072], [2.925159,-0.521119], [3.030133,-0.504873], [3.135618,-0.492353], [3.241479,-0.483576], [3.347584,-0.478552], [3.453801,-0.477287], [3.559996,-0.479784], [3.666036,-0.486038], [3.771789,-0.496043], [3.877120,-0.509785], [3.981900,-0.527248], [4.085995,-0.548409], [4.137632,-0.560826], [4.240448,-0.587481], [4.291613,-0.601717], [4.392877,-0.633796], [4.492943,-0.669441], [5.140772,-0.913211], [5.284450,-0.589937], [4.428409,-0.238961], [4.332343,-0.201489], [4.235046,-0.167341], [4.136634,-0.136557], [4.037221,-0.109173], [3.936926,-0.085222], [3.835867,-0.064732], [3.734164,-0.047727], [3.631936,-0.034227], [3.529305,-0.024248], [3.426391,-0.017803], [3.323317,-0.014898], [3.220204,-0.015537], [3.105531,-0.018219], [2.998340,-0.022644], [2.891376,-0.0309], [2.784775,-0.042975], [2.678674,-0.058854], [2.573209,-0.078516], [2.468515,-0.101936], [2.364724,-0.129085], [2.261971,-0.159928], [2.160386,-0.194424], [2.060100,-0.232531], [1.961240,-0.274199], [1.863933,-0.319376], [1.768304,-0.368002], [1.674474,-0.420017], [1.582565,-0.475353], [1.420813,-0.576724], [1.338876,-0.629952], [1.258715,-0.685821], [1.180415,-0.74427], [1.104061,-0.805239], [1.029733,-0.868661], [0.957510,-0.934471], [0.887468,-1.002597], [0.564813,-1.326819], [0.629627,-1.789772], [1.305538,-1.41941], [1.399657,-1.725076], [1.806871,-1.66352], [1.736084,-1.22034], [1.791638,-1.206452], [1.821452,-1.275803], [1.842365,-1.319919], [1.866455,-1.362385], [1.893590,-1.402973], [1.923626,-1.441463], [1.956401,-1.47765], [1.991739,-1.511338], [2.029450,-1.542347], [2.069331,-1.57051], [2.111168,-1.595676], [2.154736,-1.617709], [2.199802,-1.636491], [2.246122,-1.651921], [2.293448,-1.663917], [2.341526,-1.672413], [2.390097,-1.677365], [2.438900,-1.678744], [2.999945,-1.674034], [3.120313,-1.359226], [2.574122,-1.28635], [2.527109,-1.278354], [2.480788,-1.267015], [2.435397,-1.252391], [2.391169,-1.234556], [2.348331,-1.213601], [2.307102,-1.189635], [2.267694,-1.16278], [2.230309,-1.133174], [2.195138,-1.100969], [2.162361,-1.06633], [2.132148,-1.029433], [2.104652,-0.99047], [2.080015,-0.949638], [2.000000,-0.85],]
def seck
a_ground(dx(0.250000),dy(-0.75))
#a_trimcap(dx(0.728313),dy(-0.800393))
a_psalpot(dx(1.243476),dy(-0.152385))
a_dwitch(dx(1.552820),dy(-0.670042))
a_ground(dx(0.250000),dy(0.75))
a_psalpot(dx(1.942459),dy(0.308914))
a_psalpot(dx(2.168780),dy(-0.581412))
a_johnson(dx(2.868626),dy(-0.65213))
a_psalpot(dx(3.636594),dy(0.621034))
a_johnson(dx(4.843959),dy(0.24328))
a_ground(dx(5.750000),dy(0.75))
a_johnson(dx(4.155098),dy(-0.759634))
a_johnson(dx(4.321917),dy(0.449222))
a_johnson(dx(2.602639),dy(0.523654))
a_johnson(dx(3.520989),dy(-0.719195))
SMTLED(dx(4.294348),dy(-0.1937))
SMTLED(dx(4.805000),dy(-0.291339))
a_trimcap(dx(5.234161),dy(-0.702574))
a_johnson(dx(4.724935),dy(-0.750323))
a_ground(dx(5.750000),dy(-0.75))
end
$seck_horn = [ [2.000000,-0], [2.000000,-0], [2.119281,0.068166], [2.215531,0.113106], [2.313312,0.15461], [2.412500,0.192626], [2.512973,0.227107], [2.614603,0.25801], [2.717263,0.285295], [2.820825,0.308928], [2.925159,0.328881], [3.030133,0.345127], [3.135618,0.357647], [3.241479,0.366424], [3.347584,0.371448], [3.453801,0.372713], [3.559996,0.370216], [3.666036,0.363962], [3.771789,0.353957], [3.877120,0.340215], [3.981900,0.322752], [4.085995,0.301591], [4.137632,0.289174], [4.240448,0.262519], [4.291613,0.248283], [4.392877,0.216204], [4.492943,0.180559], [5.140772,-0.063211], [5.284450,0.260063], [4.428409,0.611039], [4.332343,0.648511], [4.235046,0.682659], [4.136634,0.713443], [4.037221,0.740827], [3.936926,0.764778], [3.835867,0.785268], [3.734164,0.802273], [3.631936,0.815773], [3.529305,0.825752], [3.426391,0.832197], [3.323317,0.835102], [3.220204,0.834463], [3.105531,0.831781], [2.998340,0.827356], [2.891376,0.8191], [2.784775,0.807025], [2.678674,0.791146], [2.573209,0.771484], [2.468515,0.748064], [2.364724,0.720915], [2.261971,0.690072], [2.160386,0.655576], [2.060100,0.617469], [1.961240,0.575801], [1.863933,0.530624], [1.768304,0.481998], [1.674474,0.429983], [1.582565,0.374647], [1.420813,0.273276], [1.338876,0.220048], [1.258715,0.164179], [1.180415,0.10573], [1.104061,0.044761], [1.029733,-0.018661], [0.957510,-0.084471], [0.887468,-0.152597], [0.564813,-0.476819], [0.629627,-0.939772], [1.305538,-0.56941], [1.399657,-0.875076], [1.806871,-0.81352], [1.736084,-0.37034], [1.791638,-0.356452], [1.821452,-0.425803], [1.842365,-0.469919], [1.866455,-0.512385], [1.893590,-0.552973], [1.923626,-0.591463], [1.956401,-0.62765], [1.991739,-0.661338], [2.029450,-0.692347], [2.069331,-0.72051], [2.111168,-0.745676], [2.154736,-0.767709], [2.199802,-0.786491], [2.246122,-0.801921], [2.293448,-0.813917], [2.341526,-0.822413], [2.390097,-0.827365], [2.438900,-0.828744], [2.999945,-0.824034], [3.120313,-0.509226], [2.574122,-0.43635], [2.527109,-0.428354], [2.480788,-0.417015], [2.435397,-0.402391], [2.391169,-0.384556], [2.348331,-0.363601], [2.307102,-0.339635], [2.267694,-0.31278], [2.230309,-0.283174], [2.195138,-0.250969], [2.162361,-0.21633], [2.132148,-0.179433], [2.104652,-0.14047], [2.080015,-0.099638], [2.000000,-0],]
def surck
a_screw(dx(0.250000),dy(-1.6))
a_johnson(dx(2.051302),dy(-1.000281))
a_johnson(dx(2.487601),dy(-1.273489))
a_johnson(dx(2.513769),dy(-0.774174))
a_johnson(dx(3.013084),dy(-0.800343))
a_johnson(dx(2.986916),dy(-1.299657))
a_johnson(dx(3.486231),dy(-1.325826))
a_johnson(dx(3.512399),dy(-0.826511))
a_johnson(dx(3.948698),dy(-1.099719))
a_trimcap(dx(5.234161),dy(0.147426))
a_johnson(dx(4.843959),dy(1.09328))
SMTLED(dx(4.805000),dy(0.558661))
SMTLED(dx(4.294348),dy(0.6563))
a_psalpot(dx(3.636594),dy(1.471034))
a_johnson(dx(4.321917),dy(1.299222))
a_johnson(dx(4.724935),dy(0.099677))
a_johnson(dx(4.155098),dy(0.090366))
a_johnson(dx(3.520989),dy(0.130805))
a_johnson(dx(2.602639),dy(1.373654))
a_psalpot(dx(1.243476),dy(0.697615))
#a_trimcap(dx(0.728313),dy(0.049607))
a_psalpot(dx(1.942459),dy(1.158914))
a_johnson(dx(2.868626),dy(0.19787))
a_psalpot(dx(2.168780),dy(0.268588))
a_dwitch(dx(1.552820),dy(0.179958))
a_screw(dx(0.250000),dy(0.1))
a_ground(dx(0.250000),dy(-0.5))
a_screw(dx(0.250000),dy(1.6))
a_screw(dx(5.750000),dy(0.1))
a_ground(dx(5.750000),dy(-0.5))
a_ground(dx(5.750000),dy(-1.6))
a_screw(dx(5.750000),dy(1.6))
end
$surck_horn = [ [2.000000,0.85], [2.000000,0.85], [2.119281,0.918166], [2.215531,0.963106], [2.313312,1.00461], [2.412500,1.042626], [2.512973,1.077107], [2.614603,1.10801], [2.717263,1.135295], [2.820825,1.158928], [2.925159,1.178881], [3.030133,1.195127], [3.135618,1.207647], [3.241479,1.216424], [3.347584,1.221448], [3.453801,1.222713], [3.559996,1.220216], [3.666036,1.213962], [3.771789,1.203957], [3.877120,1.190215], [3.981900,1.172752], [4.085995,1.151591], [4.137632,1.139174], [4.240448,1.112519], [4.291613,1.098283], [4.392877,1.066204], [4.492943,1.030559], [5.140772,0.786789], [5.284450,1.110063], [4.428409,1.461039], [4.332343,1.498511], [4.235046,1.532659], [4.136634,1.563443], [4.037221,1.590827], [3.936926,1.614778], [3.835867,1.635268], [3.734164,1.652273], [3.631936,1.665773], [3.529305,1.675752], [3.426391,1.682197], [3.323317,1.685102], [3.220204,1.684463], [3.105531,1.681781], [2.998340,1.677356], [2.891376,1.6691], [2.784775,1.657025], [2.678674,1.641146], [2.573209,1.621484], [2.468515,1.598064], [2.364724,1.570915], [2.261971,1.540072], [2.160386,1.505576], [2.060100,1.467469], [1.961240,1.425801], [1.863933,1.380624], [1.768304,1.331998], [1.674474,1.279983], [1.582565,1.224647], [1.420813,1.123276], [1.338876,1.070048], [1.258715,1.014179], [1.180415,0.95573], [1.104061,0.894761], [1.029733,0.831339], [0.957510,0.765529], [0.887468,0.697403], [0.564813,0.373181], [0.629627,-0.089772], [1.305538,0.28059], [1.399657,-0.025076], [1.806871,0.03648], [1.736084,0.47966], [1.791638,0.493548], [1.821452,0.424197], [1.842365,0.380081], [1.866455,0.337615], [1.893590,0.297027], [1.923626,0.258537], [1.956401,0.22235], [1.991739,0.188662], [2.029450,0.157653], [2.069331,0.12949], [2.111168,0.104324], [2.154736,0.082291], [2.199802,0.063509], [2.246122,0.048079], [2.293448,0.036083], [2.341526,0.027587], [2.390097,0.022635], [2.438900,0.021256], [2.999945,0.025966], [3.120313,0.340774], [2.574122,0.41365], [2.527109,0.421646], [2.480788,0.432985], [2.435397,0.447609], [2.391169,0.465444], [2.348331,0.486399], [2.307102,0.510365], [2.267694,0.53722], [2.230309,0.566826], [2.195138,0.599031], [2.162361,0.63367], [2.132148,0.670567], [2.104652,0.70953], [2.080015,0.750362], [2.000000,0.85],]



 
 def boxo()
  @curxo += MARJ
  if (@heigh==2) then
   #organoPHORM($seck_horn,dx(0),dy(0),1)
   seck
  elsif (@@numero == 0) then
   organoPHORM($syck_horn,dx(0),dy(0),1)
   syck
  else 
   organoPHORM($surck_horn,dx(0),dy(0),1)
   surck 
  end
  @@numero += 1
  @@numero %= 2
  @curxo += @width /2
  @myOkuda = Okuda.new(@curxo,@stary,@width+MARJ*2+$bitwidth,@heigh+@@lipp*2+$bitwidth,0.05)
  @curxo += @width /2
  @curxo += MARJ
  return @curxo
 end

 
 
 
 def numerize
  unless ARGV[2].nil? then @@numero = Integer(ARGV[2]) end
  unless ARGV[3].nil? then @@numero = Integer(ARGV[3]) end
 end
 def ducatop
 end
 def ducabot
  @myOkuda.bokchoy(-@depth,1.0,12,10)
 end
 def duxo
  @curxo += $bitwidth
  return @curxo
 end
end
$rimmer = 0.01

if ARGV[2].nil?  then 
 $aoxo_switch = 2
 
else 
 $aoxo_switch = 3.7
 
end
unless ARGV[3].nil?  then 
 nummerat(Deerorg, Integer(ARGV[3]))
 else
 stutterat(Deerorg) 
end#stutterat(Deerorg)