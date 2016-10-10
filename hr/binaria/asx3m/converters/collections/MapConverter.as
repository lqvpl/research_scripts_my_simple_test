package hr.binaria.asx3m.converters.collections
{
   import hr.binaria.asx3m.converters.IConverter;
   import system.data.Map;
   import hr.binaria.asx3m.io.IHierarchicalStreamReader;
   import hr.binaria.asx3m.converters.IUnmarshallingContext;
   import system.data.maps.HashMap;
   import hr.binaria.asx3m.io.IHierarchicalStreamWriter;
   import hr.binaria.asx3m.converters.IMarshallingContext;
   import system.data.Iterator;
   import hr.binaria.asx3m.mapper.IMapper;
   
   public final class MapConverter extends AbstractCollectionConverter implements IConverter
   {
       
      
      private var _alias:Array;
      
      public function MapConverter(param1:IMapper)
      {
         super(param1);
         _alias = new Array();
         _alias["String"] = "string";
         _alias["Number"] = "int";
         _alias["Boolean"] = "boolean";
      }
      
      override public function canConvert(param1:Class) : Boolean
      {
         return new param1() is Map;
      }
      
      override public function unmarshal(param1:IHierarchicalStreamReader, param2:IUnmarshallingContext) : Object
      {
         §§push(0);
         if(_loc11_)
         {
            §§push(-(§§pop() * 43 - 1) - 113 + 1);
         }
         var _loc4_:* = §§pop();
         var _loc6_:XML = null;
         var _loc7_:XML = null;
         var _loc8_:String = null;
         var _loc9_:Class = null;
         var _loc3_:HashMap = new HashMap();
         var _loc5_:XML = param1.getCurrent();
         while(param1.hasMoreChildren())
         {
            param1.moveDown();
            _loc6_ = param1.getCurrent();
            §§push(0);
            if(_loc10_)
            {
               §§push(§§pop() - 1 + 1 - 96 - 72);
            }
            _loc4_ = §§pop();
            while(param1.hasMoreChildren())
            {
               param1.moveDown();
               _loc7_ = param1.getCurrent();
               §§push(_loc4_);
               §§push(0);
               if(_loc10_)
               {
                  §§push((§§pop() * 11 + 102 - 1) * 41 + 1 + 1);
               }
               if(§§pop() == §§pop())
               {
                  _loc8_ = _loc7_.toString();
               }
               else
               {
                  §§push(_loc4_);
                  §§push(1);
                  if(_loc10_)
                  {
                     §§push(-§§pop() * 103 * 61);
                  }
                  if(§§pop() == §§pop())
                  {
                     _loc9_ = _mapper.realClass(_loc7_.name());
                     if(_loc9_ != null)
                     {
                        _loc3_[_loc8_] = param2.convertAnother(null,_loc9_,null);
                     }
                  }
               }
               _loc4_++;
               param1.moveUp();
            }
            param1.moveUp();
         }
         return _loc3_;
      }
      
      override public function marshal(param1:Object, param2:IHierarchicalStreamWriter, param3:IMarshallingContext) : void
      {
         var _loc5_:Object = null;
         var _loc4_:Map = param1 as Map;
         var _loc6_:Iterator = _loc4_.keyIterator();
         while(_loc6_.hasNext())
         {
            _loc5_ = _loc6_.next();
            param2.startNode("entry");
            writeItem(_loc5_,param3,param2);
            writeItem(_loc4_.get(_loc5_),param3,param2);
            param2.endNode();
         }
      }
   }
}
