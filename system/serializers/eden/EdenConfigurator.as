package system.serializers.eden
{
   import system.Configurator;
   import flash.utils.Dictionary;
   import mx.graphics.SolidColor;
   import mx.binding.BindingManager;
   import mx.binding.Binding;
   import flash.utils.Proxy;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import com.enfluid.ltp.view.containers.LockCollapsiblePanel;
   import system.eden;
   import mx.graphics.GradientEntry;
   
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
            §§push(-§§pop() - 1 - 38 + 114 - 59 + 1);
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc6_)
         {
            §§push(-(§§pop() + 1 - 1 - 81) - 44 + 1);
         }
         var _loc4_:* = §§pop();
         var _loc2_:Array = _config.authorized as Array;
         if(_loc2_ != null)
         {
            _loc3_ = int(rest.length);
            §§push(0);
            if(_loc6_)
            {
               §§push(-(-(-(§§pop() + 1 + 88) - 1) + 94));
            }
            _loc4_ = §§pop();
            while(_loc4_ < _loc3_)
            {
               §§push(!_loc2_.indexOf(rest[_loc4_]));
               §§push(-1);
               if(_loc5_)
               {
                  §§push((-(§§pop() + 1) + 1 + 80) * 97 * 118 + 1);
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
            §§push(-§§pop() - 12 - 37 + 106);
         }
         var _loc3_:* = §§pop();
         var _loc4_:* = undefined;
         _loc2_ = [].concat(rest);
         var _loc5_:int = _loc2_.length;
         §§push(0);
         if(_loc7_)
         {
            §§push((-(§§pop() * 32) + 80) * 101 - 1);
         }
         _loc3_ = §§pop();
         while(_loc3_ < _loc5_)
         {
            _loc4_ = _config.authorized.indexOf(_loc2_[_loc3_]);
            §§push(_loc4_);
            §§push(-1);
            if(_loc6_)
            {
               §§push(§§pop() + 1 - 75 - 118);
            }
            if(§§pop() > §§pop())
            {
               §§push(_config.authorized);
               §§push(_loc4_);
               §§push(1);
               if(_loc7_)
               {
                  §§push(§§pop() - 39 - 1 + 85 - 35 - 1);
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
