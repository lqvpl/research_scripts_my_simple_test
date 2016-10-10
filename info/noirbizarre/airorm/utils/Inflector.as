package info.noirbizarre.airorm.utils
{
   import com.enfluid.ltp.view.popups.SettingsCallout;
   import com.enfluid.ltp.view.renderers.TabRenderer;
   import mx.binding.BindingManager;
   import com.hurlant.crypto.prng.Random;
   import com.hurlant.util.Memory;
   
   public final class Inflector
   {
      
      private static var camelizeExp:RegExp = /(^|_)(.)/g;
      
      private static var underscoreExp1:RegExp = /([A-Z]+)([A-Z])/g;
      
      private static var underscoreExp2:RegExp = /([a-z])([A-Z])/g;
      
      private static var upperWordsExp:RegExp = /(^| )(\w)/g;
      
      protected static var pluralRules:Array = [[/fish$/i,"fish"],[/(x|ch|ss|sh)$/i,"$1es"],[/(series)$/i,"$1"],[/([^aeiouy]|qu)ies$/i,"$1y"],[/([^aeiouy]|qu)y$/i,"$1ies"],[/(?:([^f])fe|([lr])f)$/i,"$1$2ves"],[/sis$/i,"ses"],[/([ti])um$/i,"$1a"],[/person$/i,"people"],[/man$/i,"men"],[/child$/i,"children"],[/s$/i,"s"],[/$/,"s"]];
      
      protected static var singularRules:Array = [[/fish$/i,"fish"],[/(x|ch|ss|sh)es$/i,"$1"],[/movies$/i,"movie"],[/series$/i,"series"],[/([^aeiouy]|qu)ies$/i,"$1y"],[/([lr])ves$/i,"$1f"],[/(tive)s$/i,"$1"],[/([^f])ves$/i,"$1fe"],[/((a)naly|(b)a|(d)iagno|(p)arenthe|(p)rogno|(s)ynop|(t)he)ses$/i,"$1$2sis"],[/([ti])a$/i,"$1um"],[/people$/i,"person"],[/men$/i,"man"],[/status$/i,"status"],[/children$/i,"child"],[/news$/i,"news"],[/s$/i,""]];
       
      
      public function Inflector()
      {
         super();
      }
      
      public static function pluralize(param1:String) : String
      {
         var _loc2_:Array = null;
         var _loc3_:RegExp = null;
         var _loc4_:String = null;
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() + 15 - 1 + 71);
         }
         for each(_loc2_ in pluralRules)
         {
            §§push(_loc2_);
            §§push(0);
            if(_loc8_)
            {
               §§push(-§§pop() + 112 - 1);
            }
            _loc3_ = §§pop()[§§pop()];
            §§push(_loc2_);
            §§push(1);
            if(_loc8_)
            {
               §§push(-(§§pop() + 1 + 75 - 1 + 1) * 66);
            }
            _loc4_ = §§pop()[§§pop()];
            if(_loc3_.test(param1))
            {
               return param1.replace(_loc3_,_loc4_);
            }
         }
         return param1;
      }
      
      public static function singularize(param1:String) : String
      {
         var _loc2_:Array = null;
         var _loc3_:RegExp = null;
         var _loc4_:String = null;
         §§push(0);
         if(_loc8_)
         {
            §§push(§§pop() * 47 + 1 - 48 - 1 - 1);
         }
         for each(_loc2_ in singularRules)
         {
            §§push(_loc2_);
            §§push(0);
            if(_loc7_)
            {
               §§push((-§§pop() - 1) * 100 + 1 - 30 + 105);
            }
            _loc3_ = §§pop()[§§pop()];
            §§push(_loc2_);
            §§push(1);
            if(_loc8_)
            {
               §§push(-§§pop() * 13 * 10 - 1);
            }
            _loc4_ = §§pop()[§§pop()];
            if(_loc3_.test(param1))
            {
               return param1.replace(_loc3_,_loc4_);
            }
         }
         return param1;
      }
      
      public static function camelize(param1:String) : String
      {
         var word:String = param1;
         return word.replace(camelizeExp,function(param1:String, param2:String, param3:String, param4:int, param5:String):String
         {
            return param3.toUpperCase();
         });
      }
      
      public static function underscore(param1:String) : String
      {
         return param1.replace(underscoreExp1,"$1_$2").replace(underscoreExp2,"$1_$2").toLowerCase();
      }
      
      public static function humanize(param1:String, param2:Boolean = false) : String
      {
         var word:String = param1;
         var capitalize:Boolean = param2;
         return underscore(word).replace(camelizeExp,function(param1:String, param2:String, param3:String, param4:int, param5:String):String
         {
            return (!!param4?" ":"") + (!!capitalize?param3.toUpperCase():param3);
         });
      }
      
      public static function upperWords(param1:String) : String
      {
         var phrase:String = param1;
         return phrase.replace(upperWordsExp,function(param1:String, param2:String, param3:String, param4:int, param5:String):String
         {
            return param2 + param3.toUpperCase();
         });
      }
      
      public static function lowerWords(param1:String) : String
      {
         var phrase:String = param1;
         return phrase.replace(upperWordsExp,function(param1:String, param2:String, param3:String, param4:int, param5:String):String
         {
            return param2 + param3.toLowerCase();
         });
      }
      
      public static function upperFirst(param1:String) : String
      {
         §§push(param1);
         §§push(0);
         if(_loc3_)
         {
            §§push((--§§pop() - 1) * 30 - 26 + 1 - 96);
         }
         §§push(§§pop().charAt(§§pop()).toUpperCase());
         §§push(param1);
         §§push(1);
         if(_loc3_)
         {
            §§push(((§§pop() + 1 - 14) * 17 - 1) * 75);
         }
         return §§pop() + §§pop().substr(§§pop());
      }
      
      public static function lowerFirst(param1:String) : String
      {
         §§push(param1);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 27 - 91 - 1 + 110) * 59 + 37);
         }
         §§push(§§pop().charAt(§§pop()).toLowerCase());
         §§push(param1);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() - 42 - 92 + 1);
         }
         return §§pop() + §§pop().substr(§§pop());
      }
   }
}
