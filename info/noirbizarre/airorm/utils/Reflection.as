package info.noirbizarre.airorm.utils
{
   import flash.utils.Dictionary;
   import flash.net.URLRequest;
   import com.enfluid.ltp.model.constants.Constants;
   import flash.utils.getDefinitionByName;
   import flash.net.getClassByAlias;
   import flash.utils.describeType;
   import flash.utils.getQualifiedClassName;
   import mx.events.FlexEvent;
   import spark.primitives.Rect;
   import mx.binding.BindingManager;
   
   public final class Reflection
   {
      
      protected static var cache:Dictionary = new Dictionary();
       
      
      public function Reflection()
      {
         super();
      }
      
      public static function describe(param1:Object) : XML
      {
         var obj:Object = param1;
         if(obj is String || obj is XML || obj is XMLList)
         {
            try
            {
               obj = getDefinitionByName(obj.toString());
            }
            catch(e:ReferenceError)
            {
               obj = getClassByAlias(obj.toString());
            }
         }
         else if(!(obj is Class))
         {
            obj = obj.constructor;
         }
         if(obj in cache)
         {
            return cache[obj];
         }
         §§push(_loc2_);
         §§push(describeType(obj).factory);
         §§push(0);
         if(_loc4_)
         {
            §§push((-§§pop() - 89 + 101) * 10 * 44);
         }
         var /*UnknownSlot*/:* = §§pop()[§§pop()];
         cache[obj] = info;
         return info;
      }
      
      public static function getMember(param1:Object, param2:String) : XML
      {
         var info:XML = null;
         var member:XML = null;
         var obj:Object = param1;
         var name:String = param2;
         info = describe(obj);
         §§push(_loc3_);
         §§push(0);
         if(_loc10_)
         {
            §§push(§§pop() * 101 + 1 - 32 - 1 + 36);
         }
         §§push(info..§*§.(hasOwnProperty("@name") && @name == name));
         §§push(0);
         if(_loc9_)
         {
            §§push((§§pop() - 64 + 102 - 1 + 1) * 94 - 60);
         }
         var /*UnknownSlot*/:* = §§pop()[§§pop()];
         if(!member && info.extendsClass.length())
         {
            §§push(_loc3_);
            §§push();
            §§push(info.extendsClass);
            §§push(0);
            if(_loc9_)
            {
               §§push((§§pop() * 1 - 1 - 82 - 1) * 72);
            }
            var /*UnknownSlot*/:* = §§pop().getMember(§§pop()[§§pop()].@type,name);
         }
         return member;
      }
      
      public static function getMetadata(param1:Object, param2:String, param3:Boolean = false) : XMLList
      {
         var info:XML = null;
         var metadata:XMLList = null;
         var obj:Object = param1;
         var metadataType:String = param2;
         var includeSuperClasses:Boolean = param3;
         info = describe(obj);
         §§push(_loc4_);
         §§push(0);
         if(_loc11_)
         {
            §§push(-((§§pop() * 119 - 1) * 78) + 1 + 38 + 9);
         }
         var /*UnknownSlot*/:* = info..metadata.(@name == metadataType);
         if(includeSuperClasses && info.extendsClass.length())
         {
            §§push(_loc4_);
            §§push(metadata);
            §§push();
            §§push(info.extendsClass);
            §§push(0);
            if(_loc11_)
            {
               §§push(--§§pop() * 79);
            }
            var /*UnknownSlot*/:* = §§pop() + §§pop().getMetadata(§§pop()[§§pop()].@type,metadataType,true);
         }
         return metadata;
      }
      
      public static function getByMetadata(param1:Object, param2:String, param3:Boolean = false) : XMLList
      {
         var info:XML = null;
         var metadata:XMLList = null;
         var obj:Object = param1;
         var metadataType:String = param2;
         var includeSuperClasses:Boolean = param3;
         info = describe(obj);
         §§push(_loc4_);
         §§push(0);
         if(_loc15_)
         {
            §§push(-(§§pop() * 79 + 10) + 21 - 1 - 1 - 1);
         }
         var /*UnknownSlot*/:* = info.§*§.(hasOwnProperty("metadata") && §§pop() > §§pop());
         if(includeSuperClasses && info.extendsClass.length())
         {
            §§push(_loc4_);
            §§push(metadata);
            §§push();
            §§push(info.extendsClass);
            §§push(0);
            if(_loc15_)
            {
               §§push((§§pop() * 99 + 1 - 24 - 43) * 94 + 90 - 117);
            }
            var /*UnknownSlot*/:* = §§pop() + §§pop().getByMetadata(§§pop()[§§pop()].@type,metadataType,true);
         }
         return metadata;
      }
      
      public static function getMetadataByArg(param1:Object, param2:String, param3:String, param4:Boolean = false) : XMLList
      {
         var info:XML = null;
         var metadata:XMLList = null;
         var obj:Object = param1;
         var argKey:String = param2;
         var argValue:String = param3;
         var includeSuperClasses:Boolean = param4;
         info = describe(obj);
         §§push(_loc5_);
         §§push(0);
         if(_loc16_)
         {
            §§push(-((§§pop() - 29 - 1 - 13) * 84 - 1) + 71);
         }
         var /*UnknownSlot*/:* = info..metadata.(hasOwnProperty("arg") && §§pop() > §§pop());
         if(includeSuperClasses && info.extendsClass.length())
         {
            §§push(_loc5_);
            §§push(metadata);
            §§push();
            §§push(info.extendsClass);
            §§push(0);
            if(_loc16_)
            {
               §§push((§§pop() * 45 - 54 - 103 + 21 - 73) * 44 * 34);
            }
            var /*UnknownSlot*/:* = §§pop() + §§pop().getMetadataByArg(§§pop()[§§pop()].@type,argKey,argValue,true);
         }
         return metadata;
      }
      
      public static function getShortClassName(param1:Object) : String
      {
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         if(param1 is String)
         {
            _loc3_ = (param1 as String).split(".");
            _loc2_ = (_loc3_.pop() as String).split("::");
         }
         else
         {
            _loc2_ = getQualifiedClassName(param1).split("::");
         }
         §§push(_loc2_.length);
         §§push(1);
         if(_loc4_)
         {
            §§push(§§pop() * 66 - 112 - 55 + 1);
         }
         if(§§pop() == §§pop())
         {
            §§push(_loc2_);
            §§push(0);
            if(_loc5_)
            {
               §§push(-((§§pop() - 107 - 1 - 26 - 1 - 67) * 51));
            }
            §§push(§§pop()[§§pop()]);
         }
         else
         {
            §§push(_loc2_);
            §§push(1);
            if(_loc4_)
            {
               §§push(--§§pop() - 36);
            }
            §§push(§§pop()[§§pop()]);
         }
         return §§pop();
      }
   }
}
