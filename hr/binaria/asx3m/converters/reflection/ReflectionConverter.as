package hr.binaria.asx3m.converters.reflection
{
   import hr.binaria.asx3m.converters.IConverter;
   import flash.events.MouseEvent;
   import hr.binaria.asx3m.mapper.IMapper;
   import hr.binaria.asx3m.io.IHierarchicalStreamReader;
   import hr.binaria.asx3m.converters.IUnmarshallingContext;
   import flash.utils.describeType;
   import hr.binaria.asx3m.io.IHierarchicalStreamWriter;
   import hr.binaria.asx3m.converters.IMarshallingContext;
   import flash.filesystem.File;
   import com.enfluid.ltp.model.vo.RTDomain;
   import com.enfluid.ltp.model.vo.RTKeyword;
   import com.enfluid.ltp.model.vo.RTRank;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.controller.common.SaveRegistrationStatusCommand;
   import flash.utils.setTimeout;
   
   public final class ReflectionConverter implements IConverter
   {
       
      
      private var _mapper:IMapper;
      
      private var _alias:Array;
      
      private var _reflectionProvider:hr.binaria.asx3m.converters.reflection.IReflectionProvider;
      
      public function ReflectionConverter(param1:IMapper, param2:hr.binaria.asx3m.converters.reflection.IReflectionProvider)
      {
         super();
         _mapper = param1;
         _reflectionProvider = param2;
         _alias = new Array();
         _alias["String"] = "string";
         _alias["Number"] = "int";
         _alias["Boolean"] = "boolean";
      }
      
      public function unmarshal(param1:IHierarchicalStreamReader, param2:IUnmarshallingContext) : Object
      {
         var _loc3_:XML = null;
         var _loc4_:Class = null;
         var _loc5_:XML = null;
         var _loc6_:Object = null;
         var _loc7_:String = null;
         var _loc8_:Class = null;
         _loc3_ = param1.getCurrent();
         _loc4_ = param2.getRequiredType() as Class;
         _loc6_ = new _loc4_();
         _loc5_ = describeType(_loc6_);
         while(param1.hasMoreChildren())
         {
            param1.moveDown();
            _loc3_ = param1.getCurrent();
            _loc7_ = getTypeFromDescriptor(_loc3_.name(),_loc5_);
            if(_loc7_ != null)
            {
               _loc8_ = _mapper.realClass(_loc7_);
               _loc6_[_loc3_.name()] = param2.convertAnother(null,_loc8_,null);
            }
            param1.moveUp();
         }
         return _loc6_;
      }
      
      private final function escapeNull(param1:*) : *
      {
         if(param1 == null)
         {
            return "";
         }
         return param1;
      }
      
      private final function getTypeFromDescriptor(param1:String, param2:XML) : String
      {
         var _loc3_:XML = null;
         var _loc4_:XML = null;
         §§push(0);
         if(_loc8_)
         {
            §§push(-(§§pop() * 84 - 68) * 110 + 1);
         }
         for each(_loc3_ in param2.elements("variable"))
         {
            if(_loc3_.@name == param1)
            {
               return String(_loc3_.@type);
            }
         }
         §§push(0);
         if(_loc7_)
         {
            §§push((-§§pop() - 1 + 28) * 85 + 1 + 15);
         }
         for each(_loc4_ in param2.elements("accessor"))
         {
            if(_loc4_.@name == param1)
            {
               return String(_loc4_.@type);
            }
         }
         return null;
      }
      
      public function canConvert(param1:Class) : Boolean
      {
         return new param1() is Object;
      }
      
      public function marshal(param1:Object, param2:IHierarchicalStreamWriter, param3:IMarshallingContext) : void
      {
         var _loc5_:XML = null;
         var _loc6_:String = null;
         var _loc7_:Object = null;
         var _loc4_:XML = describeType(param1);
         §§push(0);
         if(_loc10_)
         {
            §§push(§§pop() + 83 - 1 + 1 - 1 - 62 + 119 + 1);
         }
         for each(_loc5_ in _loc4_.elements("variable"))
         {
            _loc7_ = param1[_loc5_.@name];
            if(_loc7_ is Number && isNaN(Number(_loc7_)))
            {
               _loc7_ = null;
            }
            if(_loc7_ != null)
            {
               param2.startNode(_loc5_.@name);
               param3.convertAnother(_loc7_,null);
               param2.endNode();
            }
         }
         §§push(0);
         if(_loc11_)
         {
            §§push(-(§§pop() + 72) - 1);
         }
         for each(_loc5_ in _loc4_.elements("accessor"))
         {
            if(_loc5_.@access != "readonly")
            {
               param2.startNode(_loc5_.@name);
               if(param1[_loc5_.@name] != null)
               {
                  param3.convertAnother(param1[_loc5_.@name],null);
               }
               param2.endNode();
            }
         }
      }
   }
}
