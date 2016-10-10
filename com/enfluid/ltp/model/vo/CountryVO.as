package com.enfluid.ltp.model.vo
{
   import mx.graphics.SolidColor;
   import mx.binding.BindingManager;
   
   public final class CountryVO
   {
       
      
      public var code:String;
      
      public var name:String;
      
      public var domainExtension:String;
      
      public function CountryVO(param1:String, param2:String, param3:String = null)
      {
         super();
         this.name = param1;
         this.code = param2;
         this.domainExtension = param3;
      }
   }
}
