package hr.binaria.asx3m.converters
{
   import hr.binaria.asx3m.io.IHierarchicalStreamReader;
   import hr.binaria.asx3m.io.IHierarchicalStreamWriter;
   
   public final class SingleValueConverterWrapper implements IConverter, hr.binaria.asx3m.converters.ISingleValueConverter
   {
       
      
      private var wrapped:hr.binaria.asx3m.converters.ISingleValueConverter;
      
      public function SingleValueConverterWrapper(param1:hr.binaria.asx3m.converters.ISingleValueConverter)
      {
         super();
         this.wrapped = param1;
      }
      
      public function canConvert(param1:Class) : Boolean
      {
         return wrapped.canConvert(param1);
      }
      
      public final function toString(param1:Object) : String
      {
         var _loc2_:String = wrapped.toString(param1);
         return _loc2_;
      }
      
      public function unmarshal(param1:IHierarchicalStreamReader, param2:IUnmarshallingContext) : Object
      {
         return fromString(param1.getValue());
      }
      
      public final function fromString(param1:String) : Object
      {
         return wrapped.fromString(param1);
      }
      
      public function marshal(param1:Object, param2:IHierarchicalStreamWriter, param3:IMarshallingContext) : void
      {
         param2.setValue(toString(param1));
      }
   }
}
