package info.noirbizarre.airorm
{
   import spark.components.Label;
   import mx.binding.BindingManager;
   import mx.states.Transition;
   import info.noirbizarre.airorm.utils.Inflector;
   import info.noirbizarre.airorm.utils.Reflection;
   import flash.utils.getQualifiedClassName;
   import com.enfluid.ltp.view.components.ProxiesGridColumn;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.dataandfilters.target;
   import mx.core.DeferredInstanceFromFunction;
   import mx.binding.Binding;
   import spark.layouts.VerticalLayout;
   import mx.controls.HRule;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import spark.components.Group;
   
   use namespace mx_internal;
   
   public final class SchemaTranslation
   {
       
      
      public function SchemaTranslation()
      {
         super();
      }
      
      public final function getTable(param1:Object) : String
      {
         if(param1 is String)
         {
            return Inflector.pluralize(param1 as String);
         }
         if(param1 is ActiveRecord)
         {
            return Inflector.pluralize(param1.className);
         }
         if(param1 is Class)
         {
            return Inflector.pluralize(Reflection.getShortClassName(param1));
         }
         throw new AOError("Unhandled object type " + getQualifiedClassName(param1));
      }
      
      public final function getPrimaryKey(param1:Object) : String
      {
         return "id";
      }
      
      public final function getForeignKey(param1:Object, param2:String = null) : String
      {
         if(param2)
         {
            return param2 + "_id";
         }
         if(param1 is String)
         {
            return Inflector.lowerFirst(Reflection.getShortClassName(param1 as String)) + "_id";
         }
         if(param1 is ActiveRecord)
         {
            return Inflector.lowerFirst(param1.className) + "_id";
         }
         if(param1 is Class)
         {
            return Inflector.lowerFirst(Reflection.getShortClassName(param1)) + "_id";
         }
         throw new AOError("Unhandled object type " + getQualifiedClassName(param1));
      }
      
      public final function getJoinTable(param1:Object, param2:String, param3:Object, param4:String) : String
      {
         var _loc5_:String = null;
         var _loc6_:String = null;
         if(param1 is String)
         {
            _loc5_ = (param1 as String) + "_" + param2;
         }
         else if(param1 is ActiveRecord)
         {
            _loc5_ = param1.className + "_" + param2;
         }
         else if(param1 is Class)
         {
            _loc5_ = Reflection.getShortClassName(param1) + "_" + param2;
         }
         else
         {
            throw new AOError("Unhandled object type " + getQualifiedClassName(param1));
         }
         if(param3 is String)
         {
            _loc6_ = (param3 as String) + "_" + param4;
         }
         else if(param3 is ActiveRecord)
         {
            _loc6_ = param3.className + "_" + param4;
         }
         else if(param3 is Class)
         {
            _loc6_ = Reflection.getShortClassName(param3) + "_" + param4;
         }
         else
         {
            throw new AOError("Unhandled object type " + getQualifiedClassName(param3));
         }
         return _loc5_ < _loc6_?_loc5_ + "__" + _loc6_:_loc6_ + "__" + _loc5_;
      }
      
      public final function getField(param1:String) : String
      {
         return param1;
      }
      
      public final function getCreatedField(param1:Object) : String
      {
         var member:XML = null;
         var obj:Object = param1;
         var members:XMLList = Reflection.getByMetadata(obj,"Timestamp");
         §§push(0);
         if(_loc16_)
         {
            §§push(-(--((§§pop() + 52) * 117) - 16 - 0));
         }
         for each(member in members)
         {
            §§push(0);
            if(_loc15_)
            {
               §§push(-§§pop() + 92 - 1 + 9);
            }
            if(member.metadata.(@name == "Timestamp" && elements("arg").(@value == "creation").length()).length())
            {
               return member.@name;
            }
         }
         return null;
      }
      
      public final function getModifiedField(param1:Object) : String
      {
         var member:XML = null;
         var obj:Object = param1;
         var members:XMLList = Reflection.getByMetadata(obj,"Timestamp");
         §§push(0);
         if(_loc16_)
         {
            §§push((§§pop() * 114 - 1 + 1 + 1) * 74);
         }
         for each(member in members)
         {
            §§push(0);
            if(_loc15_)
            {
               §§push((-(-§§pop() + 1 + 1 - 1) - 1) * 96);
            }
            if(member.metadata.(@name == "Timestamp" && elements("arg").(@value == "modification").length()).length())
            {
               return member.@name;
            }
         }
         return null;
      }
   }
}
