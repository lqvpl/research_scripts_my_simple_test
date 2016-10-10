package io.calq.analytics
{
   public final class ActionApiCall extends AbstractAnalyticsApiCall
   {
       
      
      protected var createdAt:Date;
      
      protected var action:String;
      
      protected var properties:Object;
      
      public function ActionApiCall(param1:String, param2:String, param3:Object, param4:String)
      {
         super(param1,param4);
         if(param3 == null)
         {
            throw new Error("A properties value must be passed to the ActionApiCall ctor. Can be empty.");
         }
         this.properties = param3;
         this.action = param2;
         createdAt = new Date();
      }
      
      override public function get apiEndpoint() : String
      {
         return "Track";
      }
      
      override protected function buildJSONPayload() : Object
      {
         var _loc1_:Object = super.buildJSONPayload();
         _loc1_["timestamp"] = createdAt;
         _loc1_["action_name"] = action;
         _loc1_["properties"] = properties;
         return _loc1_;
      }
   }
}
