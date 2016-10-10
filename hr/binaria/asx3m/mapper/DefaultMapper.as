package hr.binaria.asx3m.mapper
{
   import spark.events.TextOperationEvent;
   import spark.components.CheckBox;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColor;
   import hr.binaria.asx3m.converters.ISingleValueConverter;
   import spark.primitives.Rect;
   import com.enfluid.ltp.model.constants.Values;
   import mx.graphics.SolidColorStroke;
   import spark.components.Label;
   import mx.binding.Binding;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.model.DataModel;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import spark.layouts.VerticalLayout;
   import system.Reflection;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import mx.collections.ArrayCollection;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.common.ExportDataGridCSVCommand;
   import com.enfluid.ltp.model.constants.Constants;
   import mx.rpc.http.HTTPService;
   import flash.system.ApplicationDomain;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.renderers.headers.ProxiesHeaderRenderer;
   import mx.graphics.GradientEntry;
   
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
         if(_loc4_)
         {
            §§push(-(-§§pop() + 60));
         }
         var _loc2_:* = §§pop();
         §§push(param1.indexOf("."));
         §§push(-1);
         if(_loc4_)
         {
            §§push(-((-(§§pop() * 7) - 111) * 20) - 1);
         }
         if(§§pop() != §§pop() && §§pop() == §§pop())
         {
            _loc2_ = int(param1.lastIndexOf("."));
            §§push(param1);
            §§push(0);
            if(_loc4_)
            {
               §§push((-(§§pop() - 1) * 68 - 1) * 42);
            }
            §§push(§§pop().substring(§§pop(),_loc2_) + "::");
            §§push(param1);
            §§push(_loc2_);
            §§push(1);
            if(_loc4_)
            {
               §§push((§§pop() - 1 - 1 + 1 - 1) * 90 - 1);
            }
            param1 = §§pop() + §§pop().substring(§§pop() + §§pop(),param1.length);
         }
         return param1;
      }
   }
}
