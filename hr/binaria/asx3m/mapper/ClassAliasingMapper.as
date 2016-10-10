package hr.binaria.asx3m.mapper
{
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.util.Util;
   import system.data.Map;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.renderers.headers.target;
   import com.enfluid.ltp.view.renderers.headers.SelectColumnsHeaderRenderer;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.binding.Binding;
   import system.data.Iterator;
   import flash.utils.getQualifiedClassName;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.model.constants.Values;
   import com.enfluid.ltp.controller.keywordresearch.SaveDomainsToServerCommand;
   import com.hurlant.math.BigInteger;
   import com.hurlant.math.bi_internal;
   import spark.components.Label;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColor;
   import system.data.maps.HashMap;
   import mx.graphics.GradientEntry;
   import system.data.Set;
   import spark.layouts.VerticalLayout;
   import system.data.sets.HashSet;
   
   use namespace mx_internal;
   use namespace bi_internal;
   
   public final class ClassAliasingMapper extends MapperWrapper
   {
       
      
      protected var typeToName:Map;
      
      protected var nameToType:Map;
      
      protected var knownAttributes:Set;
      
      protected var classToName:Map;
      
      public function ClassAliasingMapper(param1:IMapper)
      {
         typeToName = new HashMap();
         classToName = new HashMap();
         nameToType = new HashMap();
         knownAttributes = new HashSet();
         super(param1);
      }
      
      override public function realClass(param1:String) : Class
      {
         var _loc3_:Class = null;
         var _loc2_:String = nameToType.get(param1);
         if(_loc2_ != null)
         {
            _loc3_ = primitiveClassNamed(_loc2_);
            if(_loc3_ != null)
            {
               return _loc3_;
            }
            param1 = _loc2_;
         }
         return super.realClass(param1);
      }
      
      public final function aliasIsAttribute(param1:String) : Boolean
      {
         return nameToType.containsKey(param1);
      }
      
      override public function serializedClass(param1:Class) : String
      {
         var _loc3_:Iterator = null;
         var _loc4_:Class = null;
         var _loc2_:String = String(classToName.get(getQualifiedClassName(param1)));
         if(_loc2_ != "undefined")
         {
            return _loc2_;
         }
         _loc3_ = typeToName.keyIterator();
         while(_loc3_.hasNext())
         {
            _loc4_ = Class(getDefinitionByName(_loc3_.next()));
            if(param1 is _loc4_)
            {
               return String(typeToName.get(_loc4_));
            }
         }
         return super.serializedClass(param1);
      }
      
      private final function primitiveClassNamed(param1:String) : Class
      {
         var _loc2_:Class = Class(param1 == "boolean"?getDefinitionByName("Boolean"):param1 == "byte"?getDefinitionByName("int"):param1 == "char"?getDefinitionByName("String"):param1 == "short"?getDefinitionByName("int"):param1 == "int"?getDefinitionByName("int"):param1 == "long"?getDefinitionByName("Number"):param1 == "big-decimal"?getDefinitionByName("Number"):param1 == "float"?getDefinitionByName("Number"):param1 == "double"?getDefinitionByName("Number"):null);
         return _loc2_;
      }
      
      public final function addClassAttributeAlias(param1:String, param2:Class) : void
      {
         addClassAlias(param1,param2);
         knownAttributes.add(param1);
      }
      
      public final function addTypeAlias(param1:String, param2:Class) : void
      {
         nameToType.put(param1,getQualifiedClassName(param2));
         typeToName.put(getQualifiedClassName(param2),param1);
      }
      
      private final function readResolve() : Object
      {
         var _loc3_:Object = null;
         var _loc1_:Map = new HashMap();
         var _loc2_:Iterator = classToName.keyIterator();
         while(_loc2_.hasNext())
         {
            _loc3_ = _loc2_.next();
            _loc1_.put(classToName.get(_loc3_),_loc3_);
         }
         _loc2_ = typeToName.keyIterator();
         while(_loc2_.hasNext())
         {
            _loc3_ = Class(_loc2_.next());
            _loc1_.put(typeToName.get(_loc3_),getQualifiedClassName(_loc3_));
         }
         return this;
      }
      
      public final function addClassAlias(param1:String, param2:Class) : void
      {
         nameToType.put(param1,getQualifiedClassName(param2));
         classToName.put(getQualifiedClassName(param2),param1);
      }
      
      public final function temTypeAsAttribute(param1:Class) : Boolean
      {
         return classToName.containsKey(param1);
      }
   }
}
