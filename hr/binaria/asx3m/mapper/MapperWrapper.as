package hr.binaria.asx3m.mapper
{
   import com.enfluid.ltp.util.Logger;
   import spark.components.VGroup;
   import mx.binding.BindingManager;
   import hr.binaria.asx3m.converters.ISingleValueConverter;
   import com.enfluid.ltp.model.vo.CountryVO;
   import io.calq.analytics.ProfileApiCall;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.controller.keywordresearch.amazonkc.GetAmazonKCCommand;
   import mx.graphics.SolidColor;
   import mx.core.IFlexDisplayObject;
   import spark.formatters.NumberFormatter;
   import hr.binaria.asx3m.io.IHierarchicalStreamReader;
   import spark.components.Label;
   import com.enfluid.ltp.model.constants.Constants;
   import flash.events.Event;
   import spark.events.PopUpEvent;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.common.SavePreferencesCommand;
   import mx.graphics.LinearGradientStroke;
   
   public class MapperWrapper implements hr.binaria.asx3m.mapper.IMapper
   {
       
      
      private var wrapped:hr.binaria.asx3m.mapper.IMapper;
      
      public function MapperWrapper(param1:hr.binaria.asx3m.mapper.IMapper)
      {
         super();
         this.wrapped = param1;
      }
      
      public function isImmutableValueType(param1:Class) : Boolean
      {
         return wrapped.isImmutableValueType(param1);
      }
      
      public function aliasForAttribute(param1:Class, param2:String) : String
      {
         return wrapped.aliasForAttribute(param1,param2);
      }
      
      public function getConverterFromItemType(param1:String, param2:Class, param3:Class) : ISingleValueConverter
      {
         return wrapped.getConverterFromItemType(param1,param2,param3);
      }
      
      public function realClass(param1:String) : Class
      {
         return wrapped.realClass(param1);
      }
      
      public function getItemTypeForItemFieldName(param1:Class, param2:String) : Class
      {
         return wrapped.getItemTypeForItemFieldName(param1,param2);
      }
      
      public function getConverterFromAttribute(param1:Class, param2:String) : ISingleValueConverter
      {
         return wrapped.getConverterFromAttribute(param1,param2);
      }
      
      public function defaultImplementationOf(param1:Class) : Class
      {
         return wrapped.defaultImplementationOf(param1);
      }
      
      public function attributeForAlias(param1:Class, param2:String) : String
      {
         return wrapped.attributeForAlias(param1,param2);
      }
      
      public function serializedClass(param1:Class) : String
      {
         return wrapped.serializedClass(param1);
      }
      
      public function realMember(param1:Class, param2:String) : String
      {
         return wrapped.realMember(param1,param2);
      }
      
      public function getFieldNameForItemTypeAndName(param1:Class, param2:Class, param3:String) : String
      {
         return wrapped.getFieldNameForItemTypeAndName(param1,param2,param3);
      }
      
      public function shouldSerializeMember(param1:Class, param2:String) : Boolean
      {
         return wrapped.shouldSerializeMember(param1,param2);
      }
      
      public function lookupMapperOfType(param1:Class) : hr.binaria.asx3m.mapper.IMapper
      {
         return this is param1?this:wrapped.lookupMapperOfType(param1);
      }
      
      public function serializedMember(param1:Class, param2:String) : String
      {
         return wrapped.serializedMember(param1,param2);
      }
   }
}
