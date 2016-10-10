package system.evaluators
{
   import spark.layouts.VerticalLayout;
   import mx.events.FlexEvent;
   import flash.display.Sprite;
   import mx.binding.utils.ChangeWatcher;
   import system.data.Map;
   import mx.graphics.SolidColor;
   
   public final class MultiEvaluator implements Evaluable
   {
       
      
      private var _evaluators:Array;
      
      public var autoClear:Boolean;
      
      public function MultiEvaluator(... rest)
      {
         super();
         _evaluators = [];
         add.apply(this,rest);
      }
      
      public final function add(... rest) : void
      {
         §§push(0);
         if(_loc8_)
         {
            §§push(--(§§pop() + 1 + 1 - 1) * 92);
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() * 98 * 61 + 66 + 21 + 14);
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(_loc8_)
         {
            §§push(-((§§pop() - 112) * 110));
         }
         var _loc5_:* = §§pop();
         var _loc6_:* = undefined;
         if(autoClear)
         {
            clear();
         }
         var _loc2_:int = rest.length;
         §§push(_loc2_);
         §§push(0);
         if(_loc8_)
         {
            §§push((§§pop() - 1 + 1 + 1 - 32) * 7 + 100);
         }
         if(§§pop() > §§pop())
         {
            §§push(0);
            if(_loc8_)
            {
               §§push(--((--§§pop() + 1 + 1) * 30));
            }
            _loc4_ = §§pop();
            while(_loc4_ < _loc2_)
            {
               _loc6_ = rest[_loc4_];
               if(_loc6_ is Evaluable)
               {
                  _evaluators.push(_loc6_);
               }
               else if(_loc6_ is Array)
               {
                  _loc3_ = int((_loc6_ as Array).length);
                  §§push(0);
                  if(_loc7_)
                  {
                     §§push(-((-§§pop() - 79) * 119) + 1 - 1);
                  }
                  _loc5_ = §§pop();
                  while(_loc5_ < _loc3_)
                  {
                     if(_loc6_[_loc5_] is Evaluable)
                     {
                        _evaluators.push(_loc6_[_loc5_]);
                     }
                     _loc5_++;
                  }
               }
               _loc4_++;
            }
         }
      }
      
      public final function remove(param1:Evaluable) : Boolean
      {
         var _loc2_:int = _evaluators.indexOf(param1);
         §§push(_loc2_);
         §§push(-1);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 54 - 1 - 113 - 1 + 118 + 81);
         }
         if(§§pop() > §§pop())
         {
            §§push(_evaluators);
            §§push(_loc2_);
            §§push(1);
            if(_loc4_)
            {
               §§push(-(§§pop() * 19) - 1 + 32 - 1);
            }
            §§pop().splice(§§pop(),§§pop());
            return true;
         }
         return false;
      }
      
      public final function size() : Number
      {
         return _evaluators.length;
      }
      
      public function eval(param1:*) : *
      {
         §§push(0);
         if(_loc5_)
         {
            §§push(-((§§pop() * 24 - 1 - 1) * 12 + 6) + 1);
         }
         var _loc2_:uint = §§pop();
         var _loc3_:int = _evaluators.length;
         §§push(_loc3_);
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() * 101) - 1 - 5 + 34);
         }
         if(§§pop() > §§pop())
         {
            §§push(0);
            if(_loc4_)
            {
               §§push(-(§§pop() - 116 + 1 - 76 - 107));
            }
            _loc2_ = §§pop();
            while(_loc2_ < _loc3_)
            {
               param1 = _evaluators[_loc2_].eval(param1);
               _loc2_++;
            }
         }
         return param1;
      }
      
      public final function clear() : void
      {
         _evaluators = [];
      }
   }
}
