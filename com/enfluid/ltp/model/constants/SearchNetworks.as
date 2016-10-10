package com.enfluid.ltp.model.constants
{
   import mx.collections.ArrayList;
   import mx.effects.Parallel;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
   
   public final class SearchNetworks
   {
      
      public static const GOOGLE:String = "Google";
      
      public static const GOOGLE_AND_SEARCH_PARTNERS:String = "Google and search partners";
      
      public static const ALL:ArrayList = new ArrayList([GOOGLE,GOOGLE_AND_SEARCH_PARTNERS]);
       
      
      public function SearchNetworks()
      {
         super();
      }
   }
}
