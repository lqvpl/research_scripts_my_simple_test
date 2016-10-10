package system.serializers.eden
{
   import system.Serializer;
   import system.Serializable;
   import flash.events.MouseEvent;
   import mx.controls.Spacer;
   import spark.components.Group;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.view.components.Link;
   import spark.components.Label;
   
   public final class EdenSerializer implements Serializer, Serializable
   {
       
      
      private var _prettyPrinting:Boolean = false;
      
      private var _prettyIndent:int = 0;
      
      private var _indentor:String = "    ";
      
      public function EdenSerializer()
      {
         super();
      }
      
      public function set prettyIndent(param1:int) : void
      {
         _prettyIndent = param1;
      }
      
      public final function removeAuthorized(... rest) : void
      {
         var _loc2_:* = undefined;
         §§push(0);
         if(_loc7_)
         {
            §§push(-(§§pop() - 24) + 34 + 1 + 1 - 67 - 1);
         }
         var _loc3_:* = §§pop();
         var _loc4_:* = undefined;
         _loc2_ = [].concat(rest);
         var _loc5_:int = _loc2_.length;
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() - 96 + 1 + 97 - 1 - 1 + 15 - 1);
         }
         _loc3_ = §§pop();
         while(_loc3_ < _loc5_)
         {
            _loc4_ = config.authorized.indexOf(_loc2_[_loc3_]);
            §§push(_loc4_);
            §§push(-1);
            if(_loc7_)
            {
               §§push((§§pop() - 93) * 50 + 31 - 75 - 1);
            }
            if(§§pop() > §§pop())
            {
               §§push(config.authorized);
               §§push(_loc4_);
               §§push(1);
               if(_loc6_)
               {
                  §§push(--§§pop() - 17 - 98);
               }
               §§pop().splice(§§pop(),§§pop());
            }
            _loc3_++;
         }
      }
      
      public function get prettyIndent() : int
      {
         return _prettyIndent;
      }
      
      public function deserialize(param1:String) : *
      {
         return ECMAScript.evaluate(param1);
      }
      
      public function get indentor() : String
      {
         return _indentor;
      }
      
      public final function addAuthorized(... rest) : void
      {
         §§push(0);
         if(_loc5_)
         {
            §§push(-(§§pop() - 29 + 88) - 1 + 1);
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc5_)
         {
            §§push(-(§§pop() * 56 + 14 - 50 - 1 + 29));
         }
         var _loc4_:* = §§pop();
         var _loc2_:Array = config.authorized as Array;
         if(_loc2_ != null)
         {
            _loc3_ = int(rest.length);
            §§push(0);
            if(_loc5_)
            {
               §§push(-(-(-(-§§pop() + 82) * 40) * 119));
            }
            _loc4_ = §§pop();
            while(_loc4_ < _loc3_)
            {
               §§push(!_loc2_.indexOf(rest[_loc4_]));
               §§push(-1);
               if(_loc5_)
               {
                  §§push(§§pop() * 53 - 40 + 1);
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
      
      public function serialize(param1:*) : String
      {
         if(param1 === undefined)
         {
            return "undefined";
         }
         if(param1 === null)
         {
            return "null";
         }
         if(param1 is Serializable)
         {
            return param1.toSource(prettyIndent);
         }
         if(param1 is String)
         {
            return BuiltinSerializer.emitString(param1);
         }
         if(param1 is Boolean)
         {
            return !!param1?"true":"false";
         }
         if(param1 is Number)
         {
            return param1.toString();
         }
         if(param1 is Date)
         {
            return BuiltinSerializer.emitDate(param1);
         }
         if(param1 is Array)
         {
            return BuiltinSerializer.emitArray(param1);
         }
         if(param1 is Object)
         {
            return BuiltinSerializer.emitObject(param1);
         }
         return "<unknown>";
      }
      
      public function set prettyPrinting(param1:Boolean) : void
      {
         _prettyPrinting = param1;
      }
      
      public function get prettyPrinting() : Boolean
      {
         return _prettyPrinting;
      }
      
      public function set indentor(param1:String) : void
      {
         _indentor = param1;
      }
      
      public final function toSource(param1:int = 0) : String
      {
         return info(false,false);
      }
   }
}
