package spark.skins.spark
{
   import mx.skins.ProgrammaticSkin;
   import mx.core.mx_internal;
   import flash.display.Graphics;
   
   use namespace mx_internal;
   
   public class ListDropIndicator extends ProgrammaticSkin
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
       
      
      public function ListDropIndicator()
      {
         super();
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         super.updateDisplayList(param1,param2);
         var _loc3_:Number = Math.max(2,param1);
         var _loc4_:Number = Math.max(2,param2);
         if(_loc3_ < _loc4_)
         {
            _loc3_ = 2;
         }
         else
         {
            _loc4_ = 2;
         }
         var _loc5_:Number = Math.round((param1 - _loc3_) / 2);
         var _loc6_:Number = Math.round((param2 - _loc4_) / 2);
         var _loc7_:Graphics = graphics;
         _loc7_.clear();
         _loc7_.beginFill(2831164);
         _loc7_.drawRect(_loc5_,_loc6_,_loc3_,_loc4_);
         _loc7_.endFill();
      }
   }
}
