package com.enfluid.ltp.model.vo
{
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.renderers.headers.CompetitorAnalysisHeaderRenderer;
   import mx.graphics.LinearGradientStroke;
   import com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
   import mx.binding.BindingManager;
   
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
