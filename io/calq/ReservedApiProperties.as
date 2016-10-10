package io.calq
{
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.MigrateButtonSkin;
   import mx.binding.BindingManager;
   import mx.binding.Binding;
   import mx.collections.IList;
   import com.enfluid.ltp.model.DataModel;
   
   public final class ReservedApiProperties
   {
      
      public static const ACTION_NAME:String = "action_name";
      
      public static const ACTOR:String = "actor";
      
      public static const IP_ADDRESS:String = "ip_address";
      
      public static const OLD_ACTOR:String = "old_actor";
      
      public static const NEW_ACTOR:String = "new_actor";
      
      public static const USER_PROPERTIES:String = "properties";
      
      public static const TIMESTAMP:String = "timestamp";
      
      public static const WRITE_KEY:String = "write_key";
       
      
      public function ReservedApiProperties()
      {
         super();
      }
   }
}
