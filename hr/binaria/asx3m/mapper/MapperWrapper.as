package hr.binaria.asx3m.mapper
{
   import com.hurlant.math.BigInteger;
   import hr.binaria.asx3m.converters.ISingleValueConverter;
   import spark.events.TextOperationEvent;
   import com.enfluid.ltp.view.renderers.KeywordColumnRenderer;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   import com.enfluid.ltp.model.constants.Constants;
   import mx.controls.Alert;
   import mx.collections.ArrayCollection;
   import flash.utils.setTimeout;
   import com.hurlant.math.bi_internal;
   import spark.primitives.BitmapImage;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColorStroke;
   import flash.events.MouseEvent;
   import flash.data.SQLConnection;
   import flash.filesystem.File;
   import info.noirbizarre.airorm.AOError;
   
   use namespace bi_internal;
   
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
