package hr.binaria.asx3m.converters.collections
{
   import hr.binaria.asx3m.converters.IConverter;
   import mx.collections.ArrayCollection;
   import hr.binaria.asx3m.io.IHierarchicalStreamReader;
   import hr.binaria.asx3m.converters.IUnmarshallingContext;
   import hr.binaria.asx3m.io.IHierarchicalStreamWriter;
   import hr.binaria.asx3m.converters.IMarshallingContext;
   import hr.binaria.asx3m.mapper.IMapper;
   
   public final class ListConverter extends AbstractCollectionConverter implements IConverter
   {
       
      
      private var _alias:Array;
      
      public function ListConverter(param1:IMapper)
      {
         super(param1);
         _mapper = param1;
         _alias = [];
         _alias["String"] = "string";
         _alias["Number"] = "int";
         _alias["Boolean"] = "boolean";
      }
      
      override public function canConvert(param1:Class) : Boolean
      {
         return new param1() is ArrayCollection;
      }
      
      override public function unmarshal(param1:IHierarchicalStreamReader, param2:IUnmarshallingContext) : Object
      {
         var _loc4_:XML = null;
         var _loc5_:Class = null;
         var _loc3_:ArrayCollection = new ArrayCollection();
         while(param1.hasMoreChildren())
         {
            param1.moveDown();
            _loc4_ = param1.getCurrent();
            _loc5_ = _mapper.realClass(_loc4_.name());
            if(_loc5_ != null)
            {
               _loc3_.addItem(param2.convertAnother(null,_loc5_,null));
            }
            param1.moveUp();
         }
         return _loc3_;
      }
      
      override public function marshal(param1:Object, param2:IHierarchicalStreamWriter, param3:IMarshallingContext) : void
      {
         var _loc5_:Object = null;
         var _loc4_:ArrayCollection = param1 as ArrayCollection;
         §§push(0);
         if(_loc8_)
         {
            §§push(§§pop() - 1 + 90 + 1 - 1 - 6);
         }
         for each(_loc5_ in _loc4_)
         {
            writeItem(_loc5_,param3,param2);
         }
      }
   }
}
