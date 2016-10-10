package com.enfluid.ltp.model.constants
{
   import com.enfluid.ltp.model.vo.LanguageVO;
   import mx.collections.ArrayCollection;
   import com.enfluid.ltp.view.components.ToggleSwitch;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.model.vo.KeywordVO;
   
   public final class Languages
   {
      
      public static const ENGLISH:LanguageVO = new LanguageVO("English","en");
      
      public static const ALL:ArrayCollection = new ArrayCollection([new LanguageVO("Arabic","ar"),new LanguageVO("Bulgarian","bg"),new LanguageVO("Catalan","ca"),new LanguageVO("Chinese (simplified)","zh-CN"),new LanguageVO("Chinese (traditional)","zh-TW"),new LanguageVO("Croatian","hr"),new LanguageVO("Czech","cs"),new LanguageVO("Danish","da"),new LanguageVO("Dutch","nl"),ENGLISH,new LanguageVO("Estonian","et"),new LanguageVO("Finnish","fi"),new LanguageVO("French","fr"),new LanguageVO("German","de"),new LanguageVO("Greek","el"),new LanguageVO("Hebrew","iw"),new LanguageVO("Hungarian","hu"),new LanguageVO("Icelandic","is"),new LanguageVO("Indonesian","id"),new LanguageVO("Italian","it"),new LanguageVO("Japanese","ja"),new LanguageVO("Korean","ko"),new LanguageVO("Latvian","lv"),new LanguageVO("Lithuanian","lt"),new LanguageVO("Norwegian","no"),new LanguageVO("Polish","pl"),new LanguageVO("Portuguese","pt"),new LanguageVO("Romanian","ro"),new LanguageVO("Russian","ru"),new LanguageVO("Serbian","sr"),new LanguageVO("Slovak","sk"),new LanguageVO("Slovenian","sl"),new LanguageVO("Spanish","es"),new LanguageVO("Swedish","sv"),new LanguageVO("Turkish","tr"),new LanguageVO("Filipino","fil"),new LanguageVO("Hindi","hi"),new LanguageVO("Thai","th"),new LanguageVO("Ukrainian","uk"),new LanguageVO("Urdu","ur"),new LanguageVO("Vietnamese","vi")]);
       
      
      public function Languages()
      {
         super();
      }
      
      public static function findLanguageByCode(param1:String) : LanguageVO
      {
         var _loc2_:LanguageVO = null;
         param1 = param1.replace("lang_","");
         §§push(0);
         if(_loc5_)
         {
            §§push(-(§§pop() + 1 + 65 - 116) + 1);
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
      
      public static function findLanguageByName(param1:String) : LanguageVO
      {
         var _loc2_:LanguageVO = null;
         §§push(0);
         if(_loc5_)
         {
            §§push(§§pop() - 26 - 30 - 81 + 1 - 56);
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
