package system.evaluators
{
   import system.eden;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.TransparentButtonSkin;
   import mx.binding.BindingManager;
   import flash.utils.ByteArray;
   import mx.graphics.SolidColor;
   import spark.effects.AddAction;
   
   public final class EdenEvaluator implements Evaluable
   {
       
      
      private var _serialized:Boolean;
      
      public function EdenEvaluator(param1:Boolean = true)
      {
         super();
         _serialized = param1;
      }
      
      public function eval(param1:*) : *
      {
         var _loc2_:* = eden.deserialize(param1);
         if(_serialized)
         {
            return eden.serialize(_loc2_);
         }
         return _loc2_;
      }
   }
}
