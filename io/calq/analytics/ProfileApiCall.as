package io.calq.analytics
{
   public final class ProfileApiCall extends AbstractAnalyticsApiCall
   {
       
      
      protected var properties:Object;
      
      public function ProfileApiCall(param1:String, param2:Object, param3:String)
      {
         super(param1,param3);
         if(param2 == null)
         {
            throw new Error("A properties value must be passed to the ProfileApiCall ctor. Must not be empty.");
         }
         this.properties = param2;
      }
      
      override public function get apiEndpoint() : String
      {
         return "Profile";
      }
      
      override protected function buildJSONPayload() : Object
      {
         var _loc1_:Object = super.buildJSONPayload();
         _loc1_["properties"] = properties;
         return _loc1_;
      }
   }
}
