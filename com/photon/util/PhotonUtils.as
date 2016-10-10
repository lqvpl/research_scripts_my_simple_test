package com.photon.util
{
   import spark.components.Label;
   import mx.binding.BindingManager;
   
   public final class PhotonUtils
   {
      
      protected static var booleanTrueValues:Array = null;
      
      {
         §§push();
         §§push(true);
         §§push("true");
         §§push("TRUE");
         §§push("True");
         §§push(1);
         if(_loc1_)
         {
            §§push((-(§§pop() + 72 - 0 - 1) + 1) * 49);
         }
      }
      
      public function PhotonUtils()
      {
         super();
      }
      
      public static function parseBoolean(param1:*) : Boolean
      {
         var _loc2_:* = undefined;
         §§push(0);
         if(_loc5_)
         {
            §§push(-(§§pop() - 77 - 87 - 1 - 1 + 1));
         }
         for each(_loc2_ in booleanTrueValues)
         {
            if(_loc2_ === param1)
            {
               return true;
            }
         }
         return false;
      }
   }
}
