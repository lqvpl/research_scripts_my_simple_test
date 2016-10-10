package hr.binaria.asx3m.core
{
   import hr.binaria.asx3m.converters.IConverterLookup;
   import hr.binaria.asx3m.mapper.IMapper;
   import system.data.lists.ArrayList;
   import system.data.Map;
   import hr.binaria.asx3m.converters.IConverter;
   import system.data.Iterator;
   import mx.controls.Spacer;
   import flash.events.TimerEvent;
   import system.data.maps.HashMap;
   
   public final class DefaultConverterLookup implements IConverterLookup
   {
       
      
      private var mapper:IMapper;
      
      private var converters:ArrayList;
      
      private var typeToConverterMap:Map;
      
      public function DefaultConverterLookup(param1:IMapper)
      {
         converters = new ArrayList();
         typeToConverterMap = new HashMap();
         super();
         this.mapper = param1;
      }
      
      public final function registerConverter(param1:IConverter, param2:int) : void
      {
         var _loc4_:Class = null;
         §§push(param2);
         §§push(0);
         if(_loc6_)
         {
            §§push(§§pop() - 19 + 1 + 1);
         }
         if(§§pop() < §§pop())
         {
            §§push(converters);
            §§push(converters.lastIndexOf);
            §§push(1);
            if(_loc5_)
            {
               §§push((--§§pop() + 32 + 57 + 1) * 73);
            }
            §§pop().addAt(§§pop() + §§pop(),param1);
         }
         else
         {
            §§push(converters);
            §§push(0);
            if(_loc5_)
            {
               §§push(--(§§pop() + 1 - 14 - 1 - 72));
            }
            §§pop().addAt(§§pop(),param1);
         }
         var _loc3_:Iterator = this.typeToConverterMap.keyIterator();
         while(_loc3_.hasNext())
         {
            _loc4_ = Class(_loc3_.next());
            if(param1.canConvert(_loc4_))
            {
               _loc3_.remove();
            }
         }
      }
      
      public function lookupConverterForType(param1:Class) : IConverter
      {
         var _loc5_:IConverter = null;
         var _loc2_:IConverter = IConverter(typeToConverterMap.get(param1));
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         var _loc3_:Class = mapper.defaultImplementationOf(param1);
         var _loc4_:Iterator = converters.iterator();
         while(_loc4_.hasNext())
         {
            _loc5_ = IConverter(_loc4_.next());
            if(_loc5_.canConvert(_loc3_))
            {
               typeToConverterMap.put(param1,_loc5_);
               return _loc5_;
            }
         }
         return null;
      }
   }
}
