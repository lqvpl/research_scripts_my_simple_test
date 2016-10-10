package com.enfluid.ltp.model.constants
{
   import system.Reflection;
   import system.serializers.eden.BuiltinSerializer;
   import com.enfluid.ltp.util.KeywordUtil;
   import spark.primitives.Rect;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.LTPComboBoxButtonSkin;
   import mx.binding.BindingManager;
   
   public final class DomainStatuses
   {
      
      public static const AVAILABLE:int = 1;
      
      public static const NOT_FETCHED:int = 0;
      
      public static const UNAVAILABLE:int = -1;
      
      public static const ERROR:int = -100;
       
      
      public function DomainStatuses()
      {
         super();
      }
   }
}
