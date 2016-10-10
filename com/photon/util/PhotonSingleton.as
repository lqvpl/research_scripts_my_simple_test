package com.photon.util
{
   import flash.events.EventDispatcher;
   import flash.utils.getQualifiedClassName;
   import spark.effects.Resize;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   
   public class PhotonSingleton extends EventDispatcher
   {
      
      private static var instances:Object = {};
       
      
      public function PhotonSingleton()
      {
         super();
         var _loc1_:String = getQualifiedClassName(this);
         if(instances[_loc1_])
         {
            throw new Error("Only one instance of any subclass of PhotonSingleton can be instantiated");
         }
         instances[_loc1_] = this;
      }
      
      protected static function getInstanceOf(param1:Class) : *
      {
         var _loc2_:String = getQualifiedClassName(param1);
         var _loc3_:PhotonSingleton = instances[_loc2_];
         if(!_loc3_)
         {
            _loc3_ = new param1();
            if(!_loc3_ is PhotonSingleton)
            {
               throw new Error("Only a subclass of PhotonSingleton can be passed as a parameter to the getInstanceOf function");
            }
         }
         return _loc3_;
      }
      
      protected static function setInstanceOf(param1:Class, param2:Object) : void
      {
         var _loc3_:String = getQualifiedClassName(param1);
         instances[_loc3_] = param2;
      }
   }
}
