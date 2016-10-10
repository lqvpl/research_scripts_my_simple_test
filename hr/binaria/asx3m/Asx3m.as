package hr.binaria.asx3m
{
   import flash.utils.getQualifiedClassName;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   import hr.binaria.asx3m.mapper.DefaultImplementationsMapper;
   import flash.utils.getDefinitionByName;
   import system.data.maps.HashMap;
   import mx.collections.ArrayCollection;
   import hr.binaria.asx3m.converters.IConverter;
   import flash.filesystem.FileStream;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.filesystem.File;
   import flash.filesystem.FileMode;
   import flash.utils.describeType;
   import mx.binding.utils.ChangeWatcher;
   import hr.binaria.asx3m.mapper.ClassAliasingMapper;
   import hr.binaria.asx3m.io.xml.E4XReader;
   import system.Reflection;
   import system.data.Collection;
   import hr.binaria.asx3m.io.IHierarchicalStreamWriter;
   import hr.binaria.asx3m.converters.IDataHolder;
   import hr.binaria.asx3m.mapper.IMapper;
   import hr.binaria.asx3m.mapper.DefaultMapper;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.model.constants.Constants;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import hr.binaria.asx3m.mapper.ImmutableTypesMapper;
   import hr.binaria.asx3m.converters.ISingleValueConverter;
   import hr.binaria.asx3m.converters.SingleValueConverterWrapper;
   import hr.binaria.asx3m.converters.reflection.IReflectionProvider;
   import hr.binaria.asx3m.io.xml.E4XWriter;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.renderers.headers.CustomHeaderRenderer;
   import system.data.Iterator;
   import hr.binaria.asx3m.annotations.Annotation;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.AnalyzeMajesticCompetitionCommand;
   import hr.binaria.asx3m.io.IHierarchicalStreamReader;
   import flash.events.Event;
   import flash.net.URLLoader;
   import mx.core.mx_internal;
   import com.enfluid.ltp.view.skins.target;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.binding.Binding;
   import flash.utils.setTimeout;
   import mx.events.FlexEvent;
   import hr.binaria.asx3m.converters.reflection.ReflectionConverter;
   import hr.binaria.asx3m.converters.basic.NullConverter;
   import hr.binaria.asx3m.converters.basic.StringConverter;
   import hr.binaria.asx3m.converters.basic.NumberConverter;
   import hr.binaria.asx3m.converters.basic.BooleanConverter;
   import hr.binaria.asx3m.converters.extended.DateConverter;
   import hr.binaria.asx3m.converters.collections.MapConverter;
   import hr.binaria.asx3m.converters.collections.ListConverter;
   import hr.binaria.asx3m.converters.collections.ArrayConverter;
   import mx.graphics.LinearGradient;
   import hr.binaria.asx3m.annotations.AnnotatedWrapper;
   import hr.binaria.asx3m.core.DefaultConverterLookup;
   import hr.binaria.asx3m.io.IHierarchicalStreamDriver;
   import flash.utils.Proxy;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import com.enfluid.ltp.view.containers.LockCollapsiblePanel;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.DeferredInstanceFromFunction;
   import hr.binaria.asx3m.core.TreeMarshallingStrategy;
   
   use namespace mx_internal;
   
   public final class Asx3m
   {
      
      public static const NO_REFERENCES:int = 1001;
      
      public static const PRIORITY_LOW:int = -10;
      
      public static const PRIORITY_NORMAL:int = 0;
      
      public static const PRIORITY_VERY_LOW:int = -20;
      
      public static const XPATH_ABSOLUTE_REFERENCES:int = 1004;
      
      public static const PRIORITY_VERY_HIGH:int = 10000;
      
      public static const ID_REFERENCES:int = 1002;
      
      public static const XPATH_RELATIVE_REFERENCES:int = 1003;
       
      
      private var _defaultImplementationsMapper:DefaultImplementationsMapper;
      
      private var _serializationMode:Number;
      
      private var _classAliasingMapper:ClassAliasingMapper;
      
      private var _reflectionProvider:IReflectionProvider;
      
      private var _mapper:IMapper;
      
      private var _marshallingStrategy:hr.binaria.asx3m.IMarshallingStrategy;
      
      private var _converterLookup:DefaultConverterLookup;
      
      public function Asx3m(param1:Object, param2:IReflectionProvider = null, param3:IMapper = null, param4:IHierarchicalStreamDriver = null)
      {
         super();
         if(accessRights(param1))
         {
            _marshallingStrategy = new TreeMarshallingStrategy();
            _mapper = param3 == null?buildMapper():param3;
            _converterLookup = new DefaultConverterLookup(_mapper);
            _reflectionProvider = param2;
            setupMappers();
            setupDefaultImplementations();
            setupAliases();
            setupConverters();
            preinitClasses();
         }
      }
      
      protected final function setupAliases() : void
      {
         alias("string",getDefinitionByName("String") as Class);
         alias("boolean",getDefinitionByName("Boolean") as Class);
         alias("int",getDefinitionByName("Number") as Class);
         alias("long",getDefinitionByName("Number") as Class);
         alias("double",getDefinitionByName("Number") as Class);
         alias("big-decimal",getDefinitionByName("Number") as Class);
         alias("object",getDefinitionByName("Object") as Class);
         alias("map",getDefinitionByName(getQualifiedClassName(new HashMap())) as Class);
         alias("list",getDefinitionByName(getQualifiedClassName(new ArrayCollection())) as Class);
         aliasType("sql-timestamp",getDefinitionByName(getQualifiedClassName(new Date())) as Class);
      }
      
      public final function registerConverter(param1:IConverter, param2:int) : void
      {
         _converterLookup.registerConverter(param1,param2);
      }
      
      public final function fromXML(param1:XML) : Object
      {
         var _loc2_:E4XReader = new E4XReader(param1);
         return unmarshall(_loc2_,null,null);
      }
      
      public final function marshall(param1:Object, param2:IHierarchicalStreamWriter, param3:IDataHolder) : void
      {
         _marshallingStrategy.marshall(param1,param2,_converterLookup,_mapper,param3);
      }
      
      protected final function setupMappers() : void
      {
         var _loc1_:String = "hr.binaria.asx3m.mapper.";
         _classAliasingMapper = ClassAliasingMapper(_mapper.lookupMapperOfType(Class(getDefinitionByName(_loc1_ + "ClassAliasingMapper"))));
         _defaultImplementationsMapper = DefaultImplementationsMapper(_mapper.lookupMapperOfType(Class(getDefinitionByName(_loc1_ + "DefaultImplementationsMapper"))));
      }
      
      private final function buildMapper() : IMapper
      {
         var _loc1_:IMapper = new DefaultMapper();
         _loc1_ = new ClassAliasingMapper(_loc1_);
         _loc1_ = new DefaultImplementationsMapper(_loc1_);
         _loc1_ = new ImmutableTypesMapper(_loc1_);
         return _loc1_;
      }
      
      public final function alias(param1:String, param2:Class) : void
      {
         if(_classAliasingMapper == null)
         {
            throw new InitializationException("No " + ClassAliasingMapper + " available");
         }
         _classAliasingMapper.addClassAlias(param1,param2);
      }
      
      public final function registerSingleValueConverter(param1:ISingleValueConverter, param2:int) : void
      {
         _converterLookup.registerConverter(new SingleValueConverterWrapper(param1),param2);
      }
      
      public final function toXML(param1:Object) : XML
      {
         var _loc2_:XML = <dummy/>;
         var _loc3_:IHierarchicalStreamWriter = new E4XWriter(_loc2_);
         marshall(param1,_loc3_,null);
         return _loc2_;
      }
      
      protected final function setupDefaultImplementations() : void
      {
         if(_defaultImplementationsMapper == null)
         {
            return;
         }
      }
      
      private final function accessRights(param1:Object) : Boolean
      {
         return param1 is Asx3mer;
      }
      
      public final function unmarshall(param1:IHierarchicalStreamReader, param2:Object, param3:IDataHolder) : Object
      {
         return _marshallingStrategy.unmarshall(param2,param1,param3,_converterLookup,_mapper);
      }
      
      public final function aliasType(param1:String, param2:Class) : void
      {
         if(_classAliasingMapper == null)
         {
            throw new InitializationException("No " + ClassAliasingMapper + " available");
         }
         _classAliasingMapper.addTypeAlias(param1,param2);
      }
      
      protected final function setupConverters() : void
      {
         var _loc1_:ReflectionConverter = null;
         _loc1_ = new ReflectionConverter(_mapper,_reflectionProvider);
         registerConverter(_loc1_,PRIORITY_VERY_LOW);
         registerConverter(new NullConverter(),PRIORITY_NORMAL);
         registerSingleValueConverter(new StringConverter(),PRIORITY_NORMAL);
         registerSingleValueConverter(new NumberConverter(),PRIORITY_NORMAL);
         registerSingleValueConverter(new BooleanConverter(),PRIORITY_NORMAL);
         registerSingleValueConverter(new DateConverter(),PRIORITY_NORMAL);
         registerConverter(new MapConverter(_mapper),PRIORITY_NORMAL);
         registerConverter(new ListConverter(_mapper),PRIORITY_NORMAL);
         registerConverter(new ArrayConverter(_mapper),PRIORITY_NORMAL);
      }
      
      public final function addDefaultImplementation(param1:Class, param2:Class) : void
      {
         if(_defaultImplementationsMapper == null)
         {
         }
         _defaultImplementationsMapper.addDefaultImplementation(param1,param2);
      }
      
      protected final function setupImmutableTypes() : void
      {
      }
      
      public final function toCustomTypedXML(param1:Object, param2:String) : XML
      {
         var _loc5_:Annotation = null;
         var _loc3_:XML = <start/>;
         var _loc4_:IHierarchicalStreamWriter = new E4XWriter(_loc3_);
         if(param2 != null)
         {
            _loc5_ = new Annotation(null,"JavaType",param2);
            _marshallingStrategy.marshall(new AnnotatedWrapper(param1,_loc5_),_loc4_,_converterLookup,_mapper,null);
         }
         else
         {
            marshall(param1,_loc4_,null);
         }
         return _loc3_;
      }
      
      private final function preinitClasses() : void
      {
      }
   }
}
