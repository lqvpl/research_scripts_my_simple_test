package system.serializers.eden
{
   import system.Configurator;
   import com.enfluid.ltp.view.settings.SettingsDebugSection;
   import system.eden;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.DeferredInstanceFromFunction;
   
   public final class EdenConfigurator extends Configurator
   {
       
      
      public function EdenConfigurator(param1:Object)
      {
         super(param1);
      }
      
      public function get security() : Boolean
      {
         return _config.security;
      }
      
      public function get compress() : Boolean
      {
         return _config.compress;
      }
      
      public final function addAuthorized(... rest) : void
      {
         §§push(0);
         if(_loc6_)
         {
            §§push((-§§pop() + 119) * 83 - 1 - 88);
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc6_)
         {
            §§push(--((§§pop() - 34) * 55 * 2) + 19);
         }
         var _loc4_:* = §§pop();
         var _loc2_:Array = _config.authorized as Array;
         if(_loc2_ != null)
         {
            _loc3_ = int(rest.length);
            §§push(0);
            if(_loc5_)
            {
               §§push(-((§§pop() - 5) * 40 - 80));
            }
            _loc4_ = §§pop();
            while(_loc4_ < _loc3_)
            {
               §§push(!_loc2_.indexOf(rest[_loc4_]));
               §§push(-1);
               if(_loc6_)
               {
                  §§push(§§pop() + 1 - 1 - 82 - 81);
               }
               if(§§pop() > §§pop())
               {
                  _loc2_.push(rest[_loc4_]);
               }
               _loc4_++;
            }
            return;
         }
         throw new Error(this + " addAuthorized failed with a null \'authorized\' Array to configurate the eden parser.");
      }
      
      public function set compress(param1:Boolean) : void
      {
         _config.compress = param1;
         eden.prettyPrinting = param1;
      }
      
      public function get copyObjectByValue() : Boolean
      {
         return _config.copyObjectByValue;
      }
      
      public function get autoAddScopePath() : Boolean
      {
         return _config.autoAddScopePath;
      }
      
      public function get verbose() : Boolean
      {
         return _config.verbose;
      }
      
      public function set verbose(param1:Boolean) : void
      {
         _config.verbose = param1;
      }
      
      public function set copyObjectByValue(param1:Boolean) : void
      {
         _config.copyObjectByValue = param1;
      }
      
      public function set autoAddScopePath(param1:Boolean) : void
      {
         _config.autoAddScopePath = param1;
      }
      
      public function set security(param1:Boolean) : void
      {
         _config.security = param1;
      }
      
      public function get undefineable() : *
      {
         return _config.undefineable;
      }
      
      public function set authorized(param1:Array) : void
      {
         _config.authorized = param1;
      }
      
      public final function removeAuthorized(... rest) : void
      {
         var _loc2_:* = undefined;
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() - 54 - 1 + 89 + 9 + 1);
         }
         var _loc3_:* = §§pop();
         var _loc4_:* = undefined;
         _loc2_ = [].concat(rest);
         var _loc5_:int = _loc2_.length;
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() + 96 - 65 + 46 - 1 - 1);
         }
         _loc3_ = §§pop();
         while(_loc3_ < _loc5_)
         {
            _loc4_ = _config.authorized.indexOf(_loc2_[_loc3_]);
            §§push(_loc4_);
            §§push(-1);
            if(_loc7_)
            {
               §§push(--(§§pop() - 1) + 78 - 1);
            }
            if(§§pop() > §§pop())
            {
               §§push(_config.authorized);
               §§push(_loc4_);
               §§push(1);
               if(_loc7_)
               {
                  §§push(--(§§pop() + 46) - 98);
               }
               §§pop().splice(§§pop(),§§pop());
            }
            _loc3_++;
         }
      }
      
      public function set strictMode(param1:Boolean) : void
      {
         _config.strictMode = param1;
      }
      
      public function get strictMode() : Boolean
      {
         return _config.strictMode;
      }
      
      public function set arrayIndexAsBracket(param1:Boolean) : void
      {
         _config.arrayIndexAsBracket = param1;
      }
      
      public function get authorized() : Array
      {
         return _config.authorized;
      }
      
      public function set undefineable(param1:*) : void
      {
         _config.undefineable = param1;
      }
      
      public function get arrayIndexAsBracket() : Boolean
      {
         return _config.arrayIndexAsBracket;
      }
      
      public function set allowFunctionCall(param1:Boolean) : void
      {
         _config.allowFunctionCall = param1;
      }
      
      public function get allowFunctionCall() : Boolean
      {
         return _config.allowFunctionCall;
      }
   }
}
