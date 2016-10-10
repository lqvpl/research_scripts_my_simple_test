package info.noirbizarre.airorm.utils
{
   import flash.utils.Dictionary;
   import mx.states.State;
   import mx.states.SetProperty;
   import com.hurlant.util.Memory;
   import flash.utils.getDefinitionByName;
   import flash.net.getClassByAlias;
   import flash.utils.describeType;
   import flash.events.MouseEvent;
   import hr.binaria.asx3m.io.IHierarchicalStreamWriter;
   import hr.binaria.asx3m.converters.IMarshallingContext;
   import mx.collections.ArrayCollection;
   import flash.utils.getQualifiedClassName;
   
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
         if(_loc5_)
         {
            §§push(---§§pop() - 1);
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
         if(_loc9_)
         {
            §§push(-(§§pop() - 10 - 1 - 56 + 1) + 1);
         }
         §§push(info..§*§.(hasOwnProperty("@name") && @name == name));
         §§push(0);
         if(_loc9_)
         {
            §§push(-(§§pop() - 1 - 1) + 1 - 1);
         }
         var /*UnknownSlot*/:* = §§pop()[§§pop()];
         if(!member && info.extendsClass.length())
         {
            §§push(_loc3_);
            §§push();
            §§push(info.extendsClass);
            §§push(0);
            if(_loc10_)
            {
               §§push((§§pop() * 12 + 71) * 90);
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
         if(_loc10_)
         {
            §§push(§§pop() * 61 + 1 + 2);
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
               §§push(---§§pop() + 57 - 1 + 1);
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
         if(_loc16_)
         {
            §§push(§§pop() - 40 - 1 + 1);
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
               §§push(-((§§pop() - 2 + 1 + 70) * 109));
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
         if(_loc17_)
         {
            §§push(§§pop() - 92 - 38 + 100 + 99);
         }
         var /*UnknownSlot*/:* = info..metadata.(hasOwnProperty("arg") && §§pop() > §§pop());
         if(includeSuperClasses && info.extendsClass.length())
         {
            §§push(_loc5_);
            §§push(metadata);
            §§push();
            §§push(info.extendsClass);
            §§push(0);
            if(_loc17_)
            {
               §§push(-§§pop() * 76 * 5 - 21);
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
            §§push(-(-§§pop() - 22));
         }
         if(§§pop() == §§pop())
         {
            §§push(_loc2_);
            §§push(0);
            if(_loc4_)
            {
               §§push(-((§§pop() + 1 + 1) * 56 + 1) * 110);
            }
            §§push(§§pop()[§§pop()]);
         }
         else
         {
            §§push(_loc2_);
            §§push(1);
            if(_loc5_)
            {
               §§push(((-§§pop() + 1 - 13) * 23 + 1) * 16 + 1);
            }
            §§push(§§pop()[§§pop()]);
         }
         return §§pop();
      }
   }
}
