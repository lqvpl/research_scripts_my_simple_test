package io.calq.analytics
{
   import mx.events.FlexEvent;
   import flash.display.Sprite;
   import mx.binding.utils.ChangeWatcher;
   
   public final class TransferApiCall extends AbstractAnalyticsApiCall
   {
       
      
      protected var _newActor:String;
      
      public function TransferApiCall(param1:String, param2:String, param3:String)
      {
         super(param1,param3);
         _newActor = param2;
      }
      
      override public function get apiEndpoint() : String
      {
         return "Transfer";
      }
      
      override protected function buildJSONPayload() : Object
      {
         var _loc1_:Object = super.buildJSONPayload();
         _loc1_["old_actor"] = _actor;
         _loc1_["new_actor"] = _newActor;
         return _loc1_;
      }
   }
}
