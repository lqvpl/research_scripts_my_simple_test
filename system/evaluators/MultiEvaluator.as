package system.evaluators
{
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
            §§push(§§pop() * 23 * 112 - 49);
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc8_)
         {
            §§push(-(-§§pop() + 77 - 45) + 1 + 1 - 66);
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(_loc8_)
         {
            §§push(((§§pop() + 104) * 113 - 13) * 17 + 33);
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
            §§push(§§pop() - 62 - 1 - 1 + 1);
         }
         if(§§pop() > §§pop())
         {
            §§push(0);
            if(_loc7_)
            {
               §§push(---(§§pop() - 1));
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
                     §§push((§§pop() - 1 - 1 + 89) * 17 - 47);
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
         if(_loc4_)
         {
            §§push(-((§§pop() + 114) * 50));
         }
         if(§§pop() > §§pop())
         {
            §§push(_evaluators);
            §§push(_loc2_);
            §§push(1);
            if(_loc4_)
            {
               §§push(-((§§pop() * 118 + 25) * 80 + 37 - 1));
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
         if(_loc4_)
         {
            §§push((-§§pop() - 41) * 36 * 35 + 1 + 1);
         }
         var _loc2_:uint = §§pop();
         var _loc3_:int = _evaluators.length;
         §§push(_loc3_);
         §§push(0);
         if(_loc5_)
         {
            §§push(§§pop() - 1 + 59 - 1 + 1);
         }
         if(§§pop() > §§pop())
         {
            §§push(0);
            if(_loc4_)
            {
               §§push(-(§§pop() - 75 - 59 - 90 - 114));
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
