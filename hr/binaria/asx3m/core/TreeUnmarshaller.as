package hr.binaria.asx3m.core
{
   import hr.binaria.asx3m.converters.IUnmarshallingContext;
   import spark.primitives.Rect;
   import spark.components.Group;
   import mx.binding.BindingManager;
   import hr.binaria.asx3m.mapper.IMapper;
   import spark.components.HGroup;
   import hr.binaria.asx3m.converters.IConverter;
   import com.enfluid.ltp.view.components.ToggleSwitch;
   import com.enfluid.ltp.util.Util;
   import hr.binaria.asx3m.io.IHierarchicalStreamReader;
   import mx.graphics.GradientEntry;
   import mx.states.State;
   import mx.states.SetProperty;
   import flash.utils.getQualifiedClassName;
   import hr.binaria.asx3m.converters.IDataHolder;
   import mx.graphics.SolidColorStroke;
   import system.data.Iterator;
   import system.data.stacks.ArrayStack;
   import hr.binaria.asx3m.converters.IConverterLookup;
   import flash.utils.ByteArray;
   
   public final class TreeUnmarshaller implements IUnmarshallingContext
   {
       
      
      private var _root:Object;
      
      private var _mapper:IMapper;
      
      protected var _reader:IHierarchicalStreamReader;
      
      private var types:ArrayStack;
      
      private var _converterLookup:IConverterLookup;
      
      private var dataHolder:IDataHolder;
      
      public function TreeUnmarshaller(param1:Object, param2:IHierarchicalStreamReader, param3:IConverterLookup, param4:IMapper)
      {
         types = new ArrayStack();
         super();
         this._root = param1;
         this._reader = param2;
         this._converterLookup = param3;
         this._mapper = param4;
      }
      
      protected function get mapper() : IMapper
      {
         return this._mapper;
      }
      
      public function put(param1:Object, param2:Object) : void
      {
         lazilyCreateDataHolder();
         dataHolder.put(param1,param2);
      }
      
      public function convertAnother(param1:Object, param2:Class, param3:IConverter) : Object
      {
         param3 = _converterLookup.lookupConverterForType(param2);
         return convert(param1,param2,param3);
      }
      
      public function get(param1:Object) : Object
      {
         lazilyCreateDataHolder();
         return dataHolder.get(param1);
      }
      
      public function currentObject() : Object
      {
         §§push(types.size());
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() + 32) * 32 * 6 + 10 + 1 - 1);
         }
         return §§pop() == §§pop()?_root:null;
      }
      
      private final function lazilyCreateDataHolder() : void
      {
         if(dataHolder == null)
         {
            dataHolder = new MapBackedDataHolder();
         }
      }
      
      private final function addInformationTo(param1:Error, param2:Class) : void
      {
         param1.message = param1.message + (" class:" + getQualifiedClassName(param2));
         param1.message = param1.message + (" required-type:" + getQualifiedClassName(getRequiredType()));
      }
      
      public final function start(param1:IDataHolder) : Object
      {
         var _loc3_:Class = null;
         this.dataHolder = param1;
         var _loc2_:String = _reader.getAttribute(mapper.aliasForAttribute(null,"class"));
         if(_loc2_ == "")
         {
            _loc3_ = mapper.realClass(_reader.getNodeName());
         }
         else
         {
            _loc3_ = mapper.realClass(_loc2_);
         }
         var _loc4_:Object = convertAnother(null,_loc3_,null);
         return _loc4_;
      }
      
      public function getRequiredType() : Class
      {
         return types.peek() as Class;
      }
      
      public function keys() : Iterator
      {
         lazilyCreateDataHolder();
         return dataHolder.keys();
      }
      
      protected final function convert(param1:Object, param2:Class, param3:IConverter) : Object
      {
         var result:Object = null;
         var parent:Object = param1;
         var type:Class = param2;
         var converter:IConverter = param3;
         try
         {
            types.push(_mapper.defaultImplementationOf(type));
            result = converter.unmarshal(_reader,this);
            types.pop();
            return result;
         }
         catch(conversionException:ConversionException)
         {
            addInformationTo(conversionException,type);
            throw conversionException;
         }
         return result;
      }
   }
}
