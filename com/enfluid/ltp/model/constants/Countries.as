package com.enfluid.ltp.model.constants
{
   import com.enfluid.ltp.model.vo.CountryVO;
   import mx.collections.ArrayCollection;
   import mx.binding.Binding;
   import flash.utils.Proxy;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import hr.binaria.asx3m.converters.IConverter;
   import flash.filesystem.FileStream;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.filesystem.File;
   import flash.filesystem.FileMode;
   import flash.utils.describeType;
   import mx.binding.utils.ChangeWatcher;
   
   public final class Countries
   {
      
      public static const UNITED_STATES:CountryVO = new CountryVO("United States","us","com","amazon.com");
      
      public static const ALL:ArrayCollection = new ArrayCollection([new CountryVO("Afghanistan","af","com.af"),new CountryVO("Albania","al","al"),new CountryVO("Algeria","dz","dz"),new CountryVO("American Samoa","as","as"),new CountryVO("Andorra","ad","ad"),new CountryVO("Angola","ao","co.ao"),new CountryVO("Anguilla","ai","com.ai"),new CountryVO("Antarctica","aq","aq"),new CountryVO("Antigua and Barbuda","ag","com.ag"),new CountryVO("Argentina","ar","com.ar"),new CountryVO("Armenia","am","am"),new CountryVO("Aruba","aw","aw"),new CountryVO("Australia","au","com.au","amazon.com.au"),new CountryVO("Austria","at","at"),new CountryVO("Azerbaijan","az","az"),new CountryVO("Bahamas","bs","bs"),new CountryVO("Bahrain","bh","combh"),new CountryVO("Bangladesh","bd","com.bd"),new CountryVO("Barbados","bb","bb"),new CountryVO("Belarus","by","by"),new CountryVO("Belgium","be","be"),new CountryVO("Belize","bz","com.bz"),new CountryVO("Benin","bj","bj"),new CountryVO("Bermuda","bm","bm"),new CountryVO("Bhutan","bt","bt"),new CountryVO("Bolivia","bo","com.bo"),new CountryVO("Bosnia and Herzegovina","ba","ba"),new CountryVO("Botswana","bw","co.bw"),new CountryVO("Bouvet Island","bv","bv"),new CountryVO("Brazil","br","com.br","amazon.com.br"),new CountryVO("British Indian Ocean Territory","io","io"),new CountryVO("Brunei Darussalam","bn","com.bn"),new CountryVO("Bulgaria","bg","bg"),new CountryVO("Burkina Faso","bf","bf"),new CountryVO("Burundi","bi","bi"),new CountryVO("Cambodia","kh","com.kh"),new CountryVO("Cameroon","cm","cm"),new CountryVO("Canada","ca","ca","amazon.ca"),new CountryVO("Cape Verde","cv","cv"),new CountryVO("Cayman Islands","ky","ky"),new CountryVO("Central African Republic","cf","cf"),new CountryVO("Chad","td","td"),new CountryVO("Chile","cl","cl"),new CountryVO("China","cn","cn","amazon.cn"),new CountryVO("Christmas Island","cx","cx"),new CountryVO("Cocos (Keeling) Islands","cc","cc"),new CountryVO("Colombia","co","com.co"),new CountryVO("Comoros","km","km"),new CountryVO("Congo","cg","cg"),new CountryVO("Democratic Republic of the Congo","cd","cd"),new CountryVO("Cook Islands","ck","co.ck"),new CountryVO("Costa Rica","cr","co.cr"),new CountryVO("Cote D\'ivoire","ci","ci"),new CountryVO("Croatia","hr","hr"),new CountryVO("Cuba","cu","com.cu"),new CountryVO("Cyprus","cy","com.cy"),new CountryVO("Czech Republic","cz","cz"),new CountryVO("Denmark","dk","dk"),new CountryVO("Djibouti","dj","dj"),new CountryVO("Dominica","dm","dm"),new CountryVO("Dominican Republic","do","com.do"),new CountryVO("Ecuador","ec","com.ec"),new CountryVO("Egypt","eg","com.eg"),new CountryVO("El Salvador","sv","com.sv"),new CountryVO("Equatorial Guinea","gq","gq"),new CountryVO("Eritrea","er","er"),new CountryVO("Estonia","ee","ee"),new CountryVO("Ethiopia","et","com.et"),new CountryVO("Falkland Islands (Malvinas)","fk","fk"),new CountryVO("Faroe Islands","fo","fo"),new CountryVO("Fiji","fj","com.fj"),new CountryVO("Finland","fi","fi"),new CountryVO("France","fr","fr","amazon.fr"),new CountryVO("French Guiana","gf","gf"),new CountryVO("French Polynesia","pf","pf"),new CountryVO("French Southern Territories","tf","tf"),new CountryVO("Gabon","ga","ga"),new CountryVO("Gambia","gm","gm"),new CountryVO("Georgia","ge","ge"),new CountryVO("Germany","de","de","amazon.de"),new CountryVO("Ghana","gh","com.gh"),new CountryVO("Gibraltar","gi","com.gi"),new CountryVO("Greece","gr","gr"),new CountryVO("Greenland","gl","gl"),new CountryVO("Grenada","gd","gd"),new CountryVO("Guadeloupe","gp","gp"),new CountryVO("Guam","gu","gu"),new CountryVO("Guatemala","gt","com.gt"),new CountryVO("Guinea","gn","gn"),new CountryVO("Guinea-Bissau","gw","gw"),new CountryVO("Guyana","gy","gy"),new CountryVO("Haiti","ht","ht"),new CountryVO("Heard Island and Mcdonald Islands","hm","hm"),new CountryVO("Holy See (Vatican City State)","va","va"),new CountryVO("Honduras","hn","hn"),new CountryVO("Hong Kong","hk","com.hk"),new CountryVO("Hungary","hu","hu"),new CountryVO("Iceland","is","is"),new CountryVO("India","in","co.in","amazon.co.in"),new CountryVO("Indonesia","id","co.id"),new CountryVO("Iran, Islamic Republic of","ir","ir"),new CountryVO("Iraq","iq","iq"),new CountryVO("Ireland","ie","ie","amazon.co.uk"),new CountryVO("Israel","il","co.il"),new CountryVO("Italy","it","it","amazon.it"),new CountryVO("Ivory Coast","ci","ci"),new CountryVO("Jamaica","jm","com.jm"),new CountryVO("Japan","jp","co.jp","amazon.co.jp"),new CountryVO("Jordan","jo","jo"),new CountryVO("Kazakhstan","kz","kz"),new CountryVO("Kenya","ke","co.ke"),new CountryVO("Kiribati","ki","ki"),new CountryVO("South Korea","kr","co.kr"),new CountryVO("Kuwait","kw","com.kw"),new CountryVO("Kyrgyzstan","kg","kg"),new CountryVO("Laos","la","la"),new CountryVO("Latvia","lv","lv"),new CountryVO("Lebanon","lb","com.lb"),new CountryVO("Lesotho","ls","co.ls"),new CountryVO("Liberia","lr","lr"),new CountryVO("Libyan Arab Jamahiriya","ly","com.ly"),new CountryVO("Liechtenstein","li","li"),new CountryVO("Lithuania","lt","lt"),new CountryVO("Luxembourg","lu","lu"),new CountryVO("Macao","mo","mo"),new CountryVO("Macedonia (FYROM)","mk","mk"),new CountryVO("Madagascar","mg","mg"),new CountryVO("Malawi","mw","mw"),new CountryVO("Malaysia","my","com.my"),new CountryVO("Maldives","mv","mv"),new CountryVO("Mali","ml","ml"),new CountryVO("Malta","mt","com.mt"),new CountryVO("Marshall Islands","mh","mh"),new CountryVO("Martinique","mq","mq"),new CountryVO("Mauritania","mr","mr"),new CountryVO("Mauritius","mu","mu"),new CountryVO("Mayotte","yt","yt"),new CountryVO("Mexico","mx","com.mx","amazon.com.mx"),new CountryVO("Federated States of Micronesia","fm","fm"),new CountryVO("Moldova","md","md"),new CountryVO("Monaco","mc","mc"),new CountryVO("Mongolia","mn","mn"),new CountryVO("Montenegro","me","me"),new CountryVO("Montserrat","ms","ms"),new CountryVO("Morocco","ma","co.ma"),new CountryVO("Mozambique","mz","co.mz"),new CountryVO("Myanmar","mm","mm"),new CountryVO("Namibia","na","com.na"),new CountryVO("Nauru","nr","nr"),new CountryVO("Nepal","np","com.np"),new CountryVO("Netherlands","nl","nl","amazon.nl"),new CountryVO("Netherlands Antilles","an","an"),new CountryVO("New Caledonia","nc","nc"),new CountryVO("New Zealand","nz","co.nz"),new CountryVO("Nicaragua","ni","com.ni"),new CountryVO("Niger","ne","ne"),new CountryVO("Nigeria","ng","com.ng"),new CountryVO("Niue","nu","nu"),new CountryVO("Norfolk Island","nf","com.nf"),new CountryVO("Northern Mariana Islands","mp","mp"),new CountryVO("Norway","no","no"),new CountryVO("Oman","om","com.om"),new CountryVO("Pakistan","pk","com.pk"),new CountryVO("Palau","pw","pw"),new CountryVO("Palestine","ps","ps"),new CountryVO("Panama","pa","com.pa"),new CountryVO("Papua New Guinea","pg","com.pg"),new CountryVO("Paraguay","py","com.py"),new CountryVO("Peru","pe","com.pe"),new CountryVO("Philippines","ph","com.ph"),new CountryVO("Pitcairn","pn","co.pn"),new CountryVO("Poland","pl","pl"),new CountryVO("Portugal","pt","pt"),new CountryVO("Puerto Rico","pr","com.pr"),new CountryVO("Qatar","qa","com.qa"),new CountryVO("Reunion","re","re"),new CountryVO("Romania","ro","ro"),new CountryVO("Russia","ru","ru"),new CountryVO("Rwanda","rw","rw"),new CountryVO("Saint Helena","sh","sh"),new CountryVO("Saint Kitts and Nevis","kn","kn"),new CountryVO("Saint Lucia","lc","com.lc"),new CountryVO("Saint Pierre and Miquelon","pm","pm"),new CountryVO("Saint Vincent and the Grenadines","vc","com.vc"),new CountryVO("Samoa","ws","ws"),new CountryVO("San Marino","sm","sm"),new CountryVO("Sao Tome and Principe","st","st"),new CountryVO("Saudi Arabia","sa","com.sa"),new CountryVO("Senegal","sn","sn"),new CountryVO("Serbia","rs","rs"),new CountryVO("Seychelles","sc","sc"),new CountryVO("Sierra Leone","sl","com.sl"),new CountryVO("Singapore","sg","com.sg"),new CountryVO("Slovakia","sk","sk"),new CountryVO("Slovenia","si","si"),new CountryVO("Solomon Islands","sb","com.sb"),new CountryVO("Somalia","so","so"),new CountryVO("South Africa","za","co.za"),new CountryVO("South Georgia and the South Sandwich Islands","gs","gs"),new CountryVO("Spain","es","es","amazon.es"),new CountryVO("Sri Lanka","lk","lk"),new CountryVO("Sudan","sd","sd"),new CountryVO("Suriname","sr","sr"),new CountryVO("Svalbard and Jan Mayen","sj","sj"),new CountryVO("Swaziland","sz","sz"),new CountryVO("Sweden","se","se"),new CountryVO("Switzerland","ch","ch"),new CountryVO("Syrian Arab Republic","sy","sy"),new CountryVO("Taiwan","tw","com.tw"),new CountryVO("Tajikistan","tj","com.tj"),new CountryVO("Tanzania, United Republic of","tz","co.tz"),new CountryVO("Thailand","th","co.th"),new CountryVO("Timor-Leste","tl","tl"),new CountryVO("Togo","tg","tg"),new CountryVO("Tokelau","tk","tk"),new CountryVO("Tonga","to","to"),new CountryVO("Trinidad and Tobago","tt","tt"),new CountryVO("Tunisia","tn","com.tn"),new CountryVO("Turkey","tr","com.tr"),new CountryVO("Turkmenistan","tm","tm"),new CountryVO("Turks and Caicos Islands","tc","tc"),new CountryVO("Tuvalu","tv","tv"),new CountryVO("Uganda","ug","co.ug"),new CountryVO("Ukraine","ua","com.ua"),new CountryVO("United Arab Emirates","ae","ae"),new CountryVO("United Kingdom","uk","co.uk","amazon.co.uk"),UNITED_STATES,new CountryVO("United States Minor Outlying Islands","um","um"),new CountryVO("Uruguay","uy","com.uy"),new CountryVO("Uzbekistan","uz","co.uz"),new CountryVO("Vanuatu","vu","vu"),new CountryVO("Venezuela","ve","co.ve"),new CountryVO("Vietnam","vn","com.vn"),new CountryVO("Virgin Islands, British","vg","vg"),new CountryVO("Virgin Islands, U.S.","vi","co.vi"),new CountryVO("Wallis and Futuna","wf","wf"),new CountryVO("Western Sahara","eh","eh"),new CountryVO("Yemen","ye","ye"),new CountryVO("Zambia","zm","co.zm"),new CountryVO("Zimbabwe","zw","co.zw")]);
       
      
      public function Countries()
      {
         super();
      }
      
      public static function findCountryByCode(param1:String) : CountryVO
      {
         var _loc2_:CountryVO = null;
         §§push(0);
         if(_loc6_)
         {
            §§push(§§pop() + 61 - 53 - 86 + 56);
         }
         for each(_loc2_ in ALL)
         {
            if(_loc2_.code == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function findCountryByName(param1:String) : CountryVO
      {
         var _loc2_:CountryVO = null;
         §§push(0);
         if(_loc6_)
         {
            §§push(-((§§pop() * 74 - 21 + 1) * 11) - 10 + 1);
         }
         for each(_loc2_ in ALL)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
