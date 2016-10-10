package io.calq.util
{
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.AnalyzeMajesticCompetitionCommand;
   import com.enfluid.ltp.model.constants.Values;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   
   public final class Util
   {
       
      
      public function Util()
      {
         super();
      }
      
      public static function extend(param1:*, ... rest) : *
      {
         §§push(0);
         if(_loc9_)
         {
            §§push(§§pop() + 1 + 5 + 85);
         }
         var _loc8_:* = §§pop();
         var _loc7_:* = rest;
         for(var _loc3_ in rest)
         {
            §§push(0);
            if(_loc10_)
            {
               §§push((§§pop() * 105 - 109) * 8 + 1 - 1);
            }
            var _loc6_:* = §§pop();
            var _loc5_:* = rest[_loc3_];
            for(var _loc4_ in rest[_loc3_])
            {
               param1[_loc4_] = rest[_loc3_][_loc4_];
            }
         }
         return param1;
      }
   }
}
