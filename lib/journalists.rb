def how_many(journalists)
    return journalists.count
end

def how_many_with_number(journalists)
    nb = 0
    journalists.each { |i| nb += 1 if i =~ /\d/ }
    return nb
end

def how_many_aude(journalists)
    nb = 0
    journalists.each { |i| nb += 1 if i.downcase  =~ /(aude)/ }
    return nb
end

def how_many_capital_begin(journalists)
    nb = 0
    journalists.each { |i| nb+= 1 if i.delete_prefix("@") =~ /^[A-Z]/ }
    return nb
end

def how_many_with_capital(journalists)
    nb = 0
    journalists.each { |i| nb += 1 if i =~ /[A-Z]/ }
    return nb
end

def how_many_underscore(journalists)
    nb = 0
    journalists.each { |i| nb += i.count("_")}
    return nb
end

def alphabetic(journalists)
    return journalists.sort_by { |word| word.downcase }
end

def fifty_shortest(journalists)
    return journalists.sort_by{|s| s.length }[0...50]
end

def epenser(journalists)
    return journalists.rindex('@epenser')
end

def search(journalists, input)
    input = Regexp.new "(#{input.to_s})"
    journalists.each { |i| puts i + " | index : " + journalists.rindex(i).to_s if i.downcase  =~ input }
end

journalists = ["@jcunniet","@PaulLampon","@Aziliz31","@ssoumier","@marionsouzeau","@gaellombart","@bendarag","@AurelieLebelle","@julienduffe","@thomaspoupeau","@LilyRossignol","@ClairGuedon","@stephanieauguy","@claw_prolongeau","@_JulieMenard","@LColcomb","@Zlauwereys","@MeLonguet","@DorotheeLN","@NolwennCosson","@ADaboval","@Remibaldy","@bderveaux","@amandechap","@ELODIESOULIE","@nbongarcon","@HeloAb","@Panamorama","@gregplou","@BenoitBerthe","@LauraBruneau89","@Anthony_Lieures","@Sharonwaj","@mcsonkin","@pverduzier","@emiliel3","@Julien_MARION","@SophiFay","@bdelombre","@annalecerf","@AdriaBudry","@DejNikolic","@iJaffre","@CyrusleVirus","@GPardigon","@e_vallerey","@IsabelleSouquet","@AudeDavidRossi","@Yoann_Pa","@CeliaPenavaire","@perraultvincent","@cboulate","@JustineWeyl","@Paulinejacot","@juliechab","@aslechevallier","@phnou","@Seb_Pommier","@Alex_Bensaid","@GuillaumeGaven","@annelaurechouin","@Oliviader","@guerricp","@JMMarchaut","@cyceron","@gregory_raymond","@vhunsinger","@l_peillon","@fannyguinochet","@EAssayag","@KibweAdom","@YvonHerry","@JohanGarciajg","@saidlabidi","@lauranneprov","@LeaDavy","@francois_remy","@CGuicheteau","@FloMaillet","@m_perroud","@oBrunet_TSMF","@MoonVdc","@jc2taille","@NellyMoussu","@VirginK","@b_misa","@FabriceCouste","@barbara_prose","@lelia2m","@brunoaskenazi","@laurenechamp","@ysisbox","@juliengagliardi","@PierreLel","@kdeniau","@_TerraInc","@DominicArpin","@antoinfonteneau","@nanotousch","@jb_roch","@YaniKhezzar","@Anne_Bechet","@NCapart","@SamyBenNaceur","@Joumany","@Julietteraynal","@TGiraudet","@SaraTanit","@HappeFrederic","@antoinellorca","@michelpicot","@Sev_Ryne","@bobdobolino","@murdever","@YGrandmontagne","@Mnyo","@EdKOSCIANSKI","@tnoisette","@jankari","@delbello_rom","@rflechaux","@NadiaSorelli","@IT_Digital","@abarbaux","@PhilippeLeroy","@schaptal","@marionspee","@lisavignoli","@ChloeAeberhardt","@MartineJacot","@JuliaPascualita","@curieusedetout","@sgraveleau","@bif_o","@ElisaPineau","@zinebdryef","@apiquard","@pierrehaski","@StephanieDelmas","@Blandine_Garot","@vergara_i","@evan_lebastard","@SophieVclt","@OlivierLevrault","@alicedorgeval","@LouiseMalnoy","@alix_fx","@pierre_baudis","@LucMagoutier","@AgatheMuller","@SGianninelli","@PaulineBoyer33","@NaomiHalll","@romaindlx","@marionbr","@Burtschy","@JacobEtienne","@as_lizzani","@marie_simon","@LaureDaussy","@FabriceAmedeo","@LoubnaChlaikhy","@PlummerWilliam","@OlivierMarin1","@alaurefremont","@mwesfreid","@ChBaDe","@pmathon","@theobaldmarie","@Lnpagesy","@marclandre","@paoliniesther","@Feertchak","@JBLitzler","@GuillaumeErrard","@quentinperinel","@TristanQM","@mlbo","@constancejamet","@LoraTerrazas","@emiliegeffray","@Mathilde_Sd","@CaroPiquet","@DCanivez","@TIM_7375","@blandinelc","@ivanrioufol","@arthurberdah","@SarahLecoeuvre","@guillaume_gui","@DamienMercereau","@W_Chloe","@Assma_MD","@EugenieBastie","@HiTech_lexpress","@bcondominas","@Laurie_Z_","@jeanfrancgerard","@MathieuPagura","@BGUYF","@AlainPiffaretti","@AudreyKucinskas","@julienhory","@Pierrefalga","@TiphThuillier","@cdaniez","@LigerBaptiste","@D_Peras","@julie_dlb","@Fatiha_Temmouri","@julian2lamancha","@GaetaneDeljurie","@JulianMattei","@M_Vicuna","@DeBruynOlivier","@Nehed_Jendoubi","@antoine_grenapi","@ColonnaGen","@VictoriaGairin","@Clement_Lacombe","@TVigoureux","@MargauxObriot","@solinedelos","@RocheSabine","@dangerkens","@EdouardDutour","@MDondeyne","@DupuisNathalie1","@bouscarel","@Mathieu2jean","@Sophie_T_J","@laurentcalixte","@patrockwilliams","@PascaleKremer","@AlexJaquin","@LauraIsaaz","@cath_robin","@Del_Gautherin","@Isaduriez","@lucietuile","@AugeyBastien","@mcastagnet","@AminaKalache","@mvaudano","@CParrot","@ombelinetips","@_JoinLion","@BarbolosiRose","@ToiBruno1","@FloraClodic","@xjbdx","@AlexiaEy","@Emjy_STARK","@elcoco01","@rabilebon","@pflovens_","@FabriceFrossard","@MorganeSERRES","@MarjolaineKoch","@edgarsnow","@SRNLF","@CChassigneux","@KerinecMoran","@NassiraELM","@NewsRicard","@Sandreene","@Emilezrt","@Pierre_Do","@Micode","@CColumelli","@DavidAbiker","@ClementBergantz","@benjaminrabier","@celinekallmann","@edwyplenel","@C_Barbier","@JJBourdin_RMC","@LaurenceFerrari","@aslapix","@IsaMillet","@MaximeSwitek","@tomjoubert","@jszanchi","@roqueeva","@XavierBiseul","@florencesantrot","@AntoineCrochet","@freeman59","@MaudeML","@philippe_gulpi","@mathieum76","@kiouari","@imanemoustakir","@BenedicteMallet","@Emilie_Brouze","@antoinebarret","@_nicolasbocquet","@remibuhagiar","@CourretB","@AymericRobert","@miraelmartins","@pmaniere","@jesuisraphk","@David_Ingram","@pcelerier","@technomedia","@Geraldinedauver","@ThierryLabro","@Newsdusud","@nrauline","@gbregeras","@SCouasnonBFM","@actualites_nrv","@dimitrimoulins","@oli_aura","@FabieChiche","@Vincent_Raimblt","@ChristophGreuet","@PAlbuchay","@MarrauddesGrot","@vtalmon","@cedric","@olivierfrigara","@Julien_Jay","@LydiaBerroyer","@Shuua","@datisdaz","@Steuph","@ameliecharnay","@Bruno_LesNums","@LelloucheNico","@CciliaDiQuinzio","@Elodie_C","@SylvRolland","@Kocobe","@FL_Debes","@jdupontcalbo","@GarciaVictor_","@NicoRichaud","@RHoueix","@simottel","@DamienLicata","@annabelle_L","@Lea_Lejeune","@axel_deb","@marin_eben","@ptiberry","@MatthieuDelach","@sandrinecassini","@benjaminferran","@ppgarcia75","@NotPatrick","@ivalerio","@FabienneSchmitt","@alexgoude","@JeromeColombain","@manhack","@Capucine_Cousin","@Fsorel","@oliviertesquet","@marjoriepaillon","@ginades","@PierreTran","@DelphineCuny","@reesmarc","@lauratenoudji","@ldupin","@carolinedescham","@Lucile_Quillet","@cgabizon","@Allocab","@epenser","@JAGventeprivee","@frwrds","@Laure__Bourdon","@Xavier75","@maximeverner","@s_jourdain","@LoriHelloc"]

def menu(journalists)
    menu_bool = true
    puts "=== Menu ===\n\n"
    puts "1) Combien de journalistes en activité ?"
    puts "2) Combien de journalistes avec un nombre dans leur pseudo ?"
    puts "3) Combien de journalistes avec 'aude' dans leur pseudo ?"
    puts "4) Combien de journalistes ont un pseudo qui commence par une lettre majuscule ?"
    puts "5) Combien de journalistes ont un pseudo qui contient une lettre majuscule ?"
    puts "6) Combien d'underscores dans tous les pseudos des journalistes ?"
    puts "7) Trier les journalistes par ordre alphabétique."
    puts "8) Afficher les 50 pseudos de journalistes les plus court."
    puts "9) Quel est le numéro d'index de @epenser ?"
    puts "10) Chercher un pseudo."
    puts "11) Quitter"
    print "> "
    choice = gets.chomp
    puts "\n\n===\n\n"
    case choice
    when '1'
        puts "Il y a #{how_many(journalists)} journalistes en activité."
        print "\n[Enter] pour continuer"
        gets.chomp
    when '2'
        puts "Il y a #{how_many_with_number(journalists)} journalistes avec un nombre dans leur pseudo."
        print "\n[Enter] pour continuer"
        gets.chomp
    when '3'
        puts "Il y a #{how_many_aude(journalists)} journalistes avec 'aude' dans leur pseudo."
        print "\n[Enter] pour continuer"
        gets.chomp
    when '4'
        puts "Il y a #{how_many_capital_begin(journalists)} journalistes dont le pseudo commence par une majuscule."
        print "\n[Enter] pour continuer"
        gets.chomp
    when '5'
        puts "Il y a #{how_many_with_capital(journalists)} journalistes dont le pseudo contientune majuscule."
        print "\n[Enter] pour continuer"
        gets.chomp
    when '6'
        puts "Il y a en tout  #{how_many_underscore(journalists)} underscores dans les pseudos des journalistes."
        print "\n[Enter] pour continuer"
        gets.chomp
    when '7'
        puts alphabetic(journalists)
        print "\n[Enter] pour continuer"
        gets.chomp
    when '8'
        puts fifty_shortest(journalists)
        print "\n[Enter] pour continuer"
        gets.chomp
    when '9'
        puts epenser(journalists)
        print "\n[Enter] pour continuer"
        gets.chomp
    when '10'
        puts "Rechercher : "
        input = gets.chomp
        search(journalists, input)
        print "\n[Enter] pour continuer"
        gets.chomp
    when '11'
        puts "A plus !"
        menu_bool = false
    else 
        puts "Relis bien, concentres toi"
    end
    puts "\n\n===\n\n"
    menu(journalists) if menu_bool
end

puts "******************************************************************************"
    puts "*** Bienvenue sur notre plate-forme de fichage des journalistes français ! ***"
    puts "******************************************************************************\n\n"
    puts "Toi aussi, comme les renseignements généraux, le ministère de l'interieur et les plus belles dictatures de l'histoire, participe à ficher les journalistes les plus turbulents qui menacent l'intêret national !\n\n"

    menu(journalists)
