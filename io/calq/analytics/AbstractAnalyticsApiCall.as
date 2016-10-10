package io.calq.analytics
{
   import flash.utils.ByteArray;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.renderers.target;
   import com.enfluid.ltp.view.renderers.TabRenderer;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.binding.BindingManager;
   import mx.binding.Binding;
   
   use namespace mx_internal;
   
   public class AbstractAnalyticsApiCall
   {
       
      
      protected var _writeKey:String;
      
      protected var _actor:String;
      
      public function AbstractAnalyticsApiCall(param1:String, param2:String)
      {
         super();
         _actor = param1;
         _writeKey = param2;
      }
      
      public function get apiEndpoint() : String
      {
         throw new Error("apiEndpoint() must be overidden by child classes");
      }
      
      protected function buildJSONPayload() : Object
      {
         var _loc1_:Object = {};
         _loc1_["actor"] = _actor;
         _loc1_["write_key"] = _writeKey;
         return _loc1_;
      }
      
      public function get payload() : String
      {
         return JSON.stringify(buildJSONPayload());
      }
      
      public function get writeKey() : String
      {
         return _writeKey;
      }
   }
}
