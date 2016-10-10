package hr.binaria.asx3m.mapper
{
   import hr.binaria.asx3m.converters.ISingleValueConverter;
   import spark.layouts.VerticalLayout;
   import flash.utils.getDefinitionByName;
   import system.data.Iterator;
   import flash.utils.getQualifiedClassName;
   import flash.events.Event;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import system.Reflection;
   import flash.net.URLRequest;
   import com.enfluid.ltp.model.constants.Constants;
   import flash.utils.ByteArray;
   import com.enfluid.ltp.view.components.FormattedSelfAdjustingLabel;
   import mx.binding.BindingManager;
   
   public final class DefaultMapper implements IMapper
   {
       
      
      public function DefaultMapper()
      {
         super();
      }
      
      public function getConverterFromItemType(param1:String, param2:Class, param3:Class) : ISingleValueConverter
      {
         return null;
      }
      
      public function serializedMember(param1:Class, param2:String) : String
      {
         return param2;
      }
      
      public function getConverterFromAttribute(param1:Class, param2:String) : ISingleValueConverter
      {
         return null;
      }
      
      public function realClass(param1:String) : Class
      {
         var elementName:String = param1;
         var realClass:Class = null;
         try
         {
            elementName = convertToFlexClassName(elementName);
            realClass = getDefinitionByName(elementName) as Class;
         }
         catch(e:ReferenceError)
         {
         }
         return realClass;
      }
      
      public function defaultImplementationOf(param1:Class) : Class
      {
         return param1;
      }
      
      public function attributeForAlias(param1:Class, param2:String) : String
      {
         return param2;
      }
      
      public function getItemTypeForItemFieldName(param1:Class, param2:String) : Class
      {
         return null;
      }
      
      public function realMember(param1:Class, param2:String) : String
      {
         return param2;
      }
      
      public function getFieldNameForItemTypeAndName(param1:Class, param2:Class, param3:String) : String
      {
         return null;
      }
      
      public function serializedClass(param1:Class) : String
      {
         var _loc2_:String = Reflection.getClassName(param1,true).replace(/::/,".");
         return _loc2_;
      }
      
      public function aliasForAttribute(param1:Class, param2:String) : String
      {
         return param2;
      }
      
      public function lookupMapperOfType(param1:Class) : IMapper
      {
         return null;
      }
      
      public function shouldSerializeMember(param1:Class, param2:String) : Boolean
      {
         return true;
      }
      
      public final function lookupName(param1:Class) : String
      {
         return serializedClass(param1);
      }
      
      public final function lookupType(param1:String) : Class
      {
         return realClass(param1);
      }
      
      public function isImmutableValueType(param1:Class) : Boolean
      {
         return false;
      }
      
      private final function convertToFlexClassName(param1:String) : String
      {
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 14 + 1) - 47));
         }
         var _loc2_:* = §§pop();
         §§push(param1.indexOf("."));
         §§push(-1);
         if(_loc4_)
         {
            §§push(§§pop() * 50 + 84 - 11);
         }
         if(§§pop() != §§pop() && §§pop() == §§pop())
         {
            _loc2_ = int(param1.lastIndexOf("."));
            §§push(param1);
            §§push(0);
            if(_loc4_)
            {
               §§push(-(-§§pop() + 1));
            }
            §§push(§§pop().substring(§§pop(),_loc2_) + "::");
            §§push(param1);
            §§push(_loc2_);
            §§push(1);
            if(_loc4_)
            {
               §§push(-(§§pop() + 98 - 32 + 114 - 1) - 1 - 1);
            }
            param1 = §§pop() + §§pop().substring(§§pop() + §§pop(),param1.length);
         }
         return param1;
      }
   }
}
