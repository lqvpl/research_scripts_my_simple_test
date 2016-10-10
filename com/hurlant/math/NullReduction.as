package com.hurlant.math
{
   import it.sharify.SharifyStatus;
   import mx.controls.Alert;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.util.Util;
   import flash.events.Event;
   import spark.effects.RemoveAction;
   import mx.binding.BindingManager;
   import spark.primitives.BitmapImage;
   import com.enfluid.ltp.view.dataandfilters.GlobalSearchVolumeSection;
   import spark.primitives.Rect;
   
   use namespace bi_internal;
   
   public final class NullReduction implements IReduction
   {
       
      
      public function NullReduction()
      {
         super();
      }
      
      public function convert(param1:BigInteger) : BigInteger
      {
         return param1;
      }
      
      public function sqrTo(param1:BigInteger, param2:BigInteger) : void
      {
         param1.squareTo(param2);
      }
      
      public function mulTo(param1:BigInteger, param2:BigInteger, param3:BigInteger) : void
      {
         param1.multiplyTo(param2,param3);
      }
      
      public function revert(param1:BigInteger) : BigInteger
      {
         return param1;
      }
      
      public function reduce(param1:BigInteger) : void
      {
      }
   }
}
