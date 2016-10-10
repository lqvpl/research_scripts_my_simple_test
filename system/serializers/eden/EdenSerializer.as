package system.serializers.eden
{
   import system.Serializer;
   import system.Serializable;
   import com.enfluid.ltp.model.DataModel;
   import mx.graphics.LinearGradientStroke;
   import mx.graphics.RadialGradient;
   import info.noirbizarre.airorm.utils.capitalize;
   import com.hurlant.crypto.rsa.RSAKey;
   import com.hurlant.math.BigInteger;
   
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
            §§push(-((-§§pop() + 1 + 18 + 1 - 1) * 28));
         }
         var _loc3_:* = §§pop();
         var _loc4_:* = undefined;
         _loc2_ = [].concat(rest);
         var _loc5_:int = _loc2_.length;
         §§push(0);
         if(_loc7_)
         {
            §§push(--(-(§§pop() - 69) - 1) + 84);
         }
         _loc3_ = §§pop();
         while(_loc3_ < _loc5_)
         {
            _loc4_ = config.authorized.indexOf(_loc2_[_loc3_]);
            §§push(_loc4_);
            §§push(-1);
            if(_loc6_)
            {
               §§push((-(§§pop() + 1 - 53) - 71 + 61 + 1) * 112);
            }
            if(§§pop() > §§pop())
            {
               §§push(config.authorized);
               §§push(_loc4_);
               §§push(1);
               if(_loc6_)
               {
                  §§push((-§§pop() - 1) * 6);
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
            §§push(§§pop() - 1 + 56 + 1 - 3);
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc5_)
         {
            §§push(-(((§§pop() + 2) * 13 + 87 - 1) * 98));
         }
         var _loc4_:* = §§pop();
         var _loc2_:Array = config.authorized as Array;
         if(_loc2_ != null)
         {
            _loc3_ = int(rest.length);
            §§push(0);
            if(_loc5_)
            {
               §§push(§§pop() + 1 + 66 - 88);
            }
            _loc4_ = §§pop();
            while(_loc4_ < _loc3_)
            {
               §§push(!_loc2_.indexOf(rest[_loc4_]));
               §§push(-1);
               if(_loc5_)
               {
                  §§push(-((§§pop() + 83 - 76) * 43 - 2) * 98 * 13);
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
