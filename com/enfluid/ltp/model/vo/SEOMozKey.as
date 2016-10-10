package com.enfluid.ltp.model.vo
{
   import com.enfluid.ltp.model.DataModel;
   
   public final class SEOMozKey
   {
       
      
      public var accessID:String;
      
      public var secretKey:String;
      
      public var numSucesses:int = 0;
      
      public var numFailures:int = 0;
      
      public function SEOMozKey(param1:String, param2:String)
      {
         super();
         this.accessID = param1;
         this.secretKey = param2;
      }
   }
}
