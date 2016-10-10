package system
{
   import com.enfluid.ltp.model.DataModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.settings.target;
   import mx.core.DeferredInstanceFromFunction;
   import mx.binding.Binding;
   import mx.rpc.http.HTTPService;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.SetDefaultConfigurationCommand;
   import com.dk.license.BlowFishUtil;
   import com.dk.license.LicenceAppID;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class Enum implements Serializable
   {
       
      
      protected var _value:int;
      
      protected var _name:String;
      
      public function Enum(param1:int = 0, param2:String = "")
      {
         super();
         _value = param1;
         _name = param2;
      }
      
      public function toSource(param1:int = 0) : String
      {
         var _loc2_:String = Reflection.getClassPath(this);
         if(_name != "")
         {
            return _loc2_ + "." + _name;
         }
         return _loc2_;
      }
      
      public final function valueOf() : int
      {
         return _value;
      }
      
      public final function toString() : String
      {
         return _name;
      }
   }
}
