package it.sharify
{
   import spark.primitives.Ellipse;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.target;
   import com.enfluid.ltp.view.KeywordsDataGrid;
   import mx.binding.Binding;
   
   use namespace mx_internal;
   
   public final class SharifyStatus
   {
      
      public static const STATUS_SERVER_UNAVAILABLE:int = 104;
      
      public static const STATUS_TRIAL:int = 101;
      
      public static const STATUS_REGISTRATION_SUCCESS:int = 105;
      
      public static const STATUS_ERROR_ALREADY_REGISTERED:int = 902;
      
      public static const STATUS_REGISTERED:int = 102;
      
      public static const STATUS_TRIAL_TIMED_OUT:int = 103;
      
      public static const STATUS_ERROR_KEY_NOT_FOUND:int = 901;
      
      public static const STATUS_ERROR_REGISTRATION_REVOKED:int = 903;
       
      
      public function SharifyStatus()
      {
         super();
      }
   }
}
