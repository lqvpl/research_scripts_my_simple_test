package system
{
   import spark.effects.Resize;
   import mx.binding.BindingManager;
   import flash.utils.ByteArray;
   import mx.graphics.SolidColor;
   import mx.graphics.GradientEntry;
   import mx.collections.ArrayCollection;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.target;
   import mx.core.DeferredInstanceFromFunction;
   import mx.binding.Binding;
   
   use namespace mx_internal;
   
   public final class Objects
   {
       
      
      public function Objects()
      {
         super();
      }
      
      public static function getMembers(param1:Object, param2:Boolean = false) : Array
      {
         var _loc4_:* = undefined;
         var _loc5_:* = null;
         var _loc3_:Array = [];
         if(param2)
         {
            §§push(0);
            if(_loc8_)
            {
               §§push((-§§pop() + 1 + 104) * 71 - 1);
            }
            for each(_loc4_ in param1)
            {
               _loc3_.push(_loc4_);
            }
         }
         else
         {
            §§push(0);
            if(_loc8_)
            {
               §§push((§§pop() + 1) * 22 - 13);
            }
            for(_loc5_ in param1)
            {
               _loc3_.push(_loc5_);
            }
         }
         return _loc3_;
      }
      
      public static function copy(param1:Object, param2:Boolean = false) : Object
      {
         var _loc3_:Object = null;
         var _loc4_:* = null;
         var _loc5_:ByteArray = null;
         if(param2)
         {
            _loc3_ = {};
            §§push(0);
            if(_loc9_)
            {
               §§push((§§pop() + 88 + 53) * 47 - 41 - 58);
            }
            for(_loc4_ in param1)
            {
               _loc3_[_loc4_] = param1[_loc4_];
            }
            return _loc3_;
         }
         _loc5_ = new ByteArray();
         _loc5_.writeObject(param1);
         §§push(_loc5_);
         §§push(0);
         if(_loc9_)
         {
            §§push(-§§pop() + 71 - 74 + 1);
         }
         §§pop().position = §§pop();
         return _loc5_.readObject();
      }
      
      public static function merge(param1:Object, param2:Object, param3:Boolean = false) : void
      {
         var _loc4_:* = null;
         §§push(0);
         if(_loc8_)
         {
            §§push(-(-(§§pop() + 19) + 1) - 1 + 14);
         }
         for(_loc4_ in param1)
         {
            if(!param2.hasOwnProperty(_loc4_) || param3)
            {
               param2[_loc4_] = param1[_loc4_];
            }
         }
      }
      
      public static function isSimple(param1:*) : Boolean
      {
         return false;
      }
      
      public static function toArray(param1:Object) : Array
      {
         return getMembers(param1,true);
      }
      
      public static function contains(param1:Object, param2:*) : Boolean
      {
         var _loc3_:* = null;
         §§push(0);
         if(_loc6_)
         {
            §§push(§§pop() * 83 - 34 + 75 - 113 - 30 + 4 + 1);
         }
         for(_loc3_ in param1)
         {
            if(param1[_loc3_] == param2)
            {
               return true;
            }
         }
         return false;
      }
   }
}
