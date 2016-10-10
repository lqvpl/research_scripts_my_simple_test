package com.enfluid.ltp.model.vo
{
   import spark.components.Group;
   import mx.binding.BindingManager;
   
   public final class LanguageVO
   {
       
      
      public var code:String;
      
      public var name:String;
      
      public function LanguageVO(param1:String, param2:String)
      {
         super();
         this.name = param1;
         this.code = param2;
      }
   }
}
