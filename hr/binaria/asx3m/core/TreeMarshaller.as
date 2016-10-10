package hr.binaria.asx3m.core
{
   import hr.binaria.asx3m.converters.IMarshallingContext;
   import spark.primitives.Rect;
   import hr.binaria.asx3m.mapper.IMapper;
   import hr.binaria.asx3m.converters.IConverterLookup;
   import spark.effects.Fade;
   import mx.binding.BindingManager;
   import hr.binaria.asx3m.converters.IConverter;
   import spark.components.Group;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   import hr.binaria.asx3m.converters.IDataHolder;
   import spark.components.Label;
   import hr.binaria.asx3m.annotations.AnnotatedWrapper;
   import hr.binaria.asx3m.annotations.Annotation;
   import hr.binaria.asx3m.io.IHierarchicalStreamWriter;
   import system.data.Iterator;
   import mx.core.mx_internal;
   import com.enfluid.ltp.view.skins.target;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.binding.Binding;
   import spark.components.PopUpAnchor;
   
   use namespace mx_internal;
   
   public final class TreeMarshaller implements IMarshallingContext
   {
       
      
      private var mapper:IMapper;
      
      protected var converterLookup:IConverterLookup;
      
      protected var writer:IHierarchicalStreamWriter;
      
      private var dataHolder:IDataHolder;
      
      public function TreeMarshaller(param1:IHierarchicalStreamWriter, param2:IConverterLookup, param3:IMapper)
      {
         super();
         this.converterLookup = param2;
         this.mapper = param3;
         this.writer = param1;
      }
      
      private final function lazilyCreateDataHolder() : void
      {
         if(dataHolder == null)
         {
            dataHolder = new MapBackedDataHolder(null);
         }
      }
      
      public function put(param1:Object, param2:Object) : void
      {
         lazilyCreateDataHolder();
         dataHolder.put(param1,param2);
      }
      
      public function convertAnother(param1:Object, param2:IConverter) : void
      {
         if(param2 == null)
         {
            param2 = converterLookup.lookupConverterForType(Class(getDefinitionByName(getQualifiedClassName(param1))));
         }
         convert(param1,param2);
      }
      
      public final function start(param1:Object, param2:IDataHolder) : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:Class = null;
         this.dataHolder = param2;
         if(param1 == null)
         {
            writer.startNode("null");
            writer.endNode();
         }
         else
         {
            if(param1 is AnnotatedWrapper)
            {
               _loc3_ = AnnotatedWrapper(param1).object;
               _loc4_ = Annotation(AnnotatedWrapper(param1).typeAnnotation).value;
            }
            else
            {
               _loc3_ = param1;
               _loc5_ = getQualifiedClassName(_loc3_);
               _loc6_ = getDefinitionByName(_loc5_) as Class;
               _loc4_ = mapper.serializedClass(_loc6_);
            }
            writer.startNode(_loc4_);
            convertAnother(_loc3_,null);
            writer.endNode();
         }
      }
      
      public final function convert(param1:Object, param2:IConverter) : void
      {
         param2.marshal(param1,writer,this);
      }
      
      public function keys() : Iterator
      {
         lazilyCreateDataHolder();
         return dataHolder.keys();
      }
      
      public function get(param1:Object) : Object
      {
         lazilyCreateDataHolder();
         return dataHolder.get(param1);
      }
   }
}
