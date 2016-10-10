package info.noirbizarre.airorm
{
   import system.Reflection;
   import system.eden;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.model.constants.SpecialFilterConstants;
   import info.noirbizarre.airorm.utils.Inflector;
   import flash.utils.getQualifiedClassName;
   import mx.binding.Binding;
   import com.enfluid.ltp.util.Util;
   import com.enfluid.ltp.controller.keywordresearch.keywordplanner.SubmitAndScrapeKeywordPlannerCommand;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.renderers.target;
   import com.enfluid.ltp.view.renderers.KeywordColumnRenderer;
   import flash.utils.ByteArray;
   
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
            return Inflector.pluralize(info.noirbizarre.airorm.utils.Reflection.getShortClassName(param1));
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
            return Inflector.lowerFirst(info.noirbizarre.airorm.utils.Reflection.getShortClassName(param1 as String)) + "_id";
         }
         if(param1 is ActiveRecord)
         {
            return Inflector.lowerFirst(param1.className) + "_id";
         }
         if(param1 is Class)
         {
            return Inflector.lowerFirst(info.noirbizarre.airorm.utils.Reflection.getShortClassName(param1)) + "_id";
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
            _loc5_ = info.noirbizarre.airorm.utils.Reflection.getShortClassName(param1) + "_" + param2;
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
            _loc6_ = info.noirbizarre.airorm.utils.Reflection.getShortClassName(param3) + "_" + param4;
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
         var members:XMLList = info.noirbizarre.airorm.utils.Reflection.getByMetadata(obj,"Timestamp");
         §§push(0);
         if(_loc15_)
         {
            §§push(§§pop() * 76 - 1 + 1 - 1 - 1);
         }
         for each(member in members)
         {
            §§push(0);
            if(_loc16_)
            {
               §§push((§§pop() * 89 + 34) * 67);
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
         var members:XMLList = info.noirbizarre.airorm.utils.Reflection.getByMetadata(obj,"Timestamp");
         §§push(0);
         if(_loc16_)
         {
            §§push(-(§§pop() + 1 - 38 - 86) * 8 + 11);
         }
         for each(member in members)
         {
            §§push(0);
            if(_loc15_)
            {
               §§push(--(§§pop() + 85 + 1));
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
