package system
{
   import spark.primitives.BitmapImage;
   import mx.binding.BindingManager;
   import spark.components.Label;
   import system.reflection.TypeInfo;
   import system.reflection._TypeInfo;
   import spark.effects.Resize;
   import flash.utils.getQualifiedClassName;
   import mx.events.FlexEvent;
   import flash.system.ApplicationDomain;
   import com.enfluid.ltp.util.KeywordUtil;
   import system.reflection.ClassInfo;
   import spark.primitives.Rect;
   import system.reflection.FilterType;
   import system.reflection._ClassInfo;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.RankChecker.target;
   import mx.core.DeferredInstanceFromFunction;
   import mx.binding.Binding;
   import flash.utils.ByteArray;
   import flash.utils.getQualifiedSuperclassName;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.model.vo.ProxyVO;
   import com.enfluid.ltp.view.components.ProxiesGridColumn;
   import com.enfluid.ltp.controller.rankchecker.DeleteRankCheckRecordCommand;
   import com.enfluid.ltp.model.vo.RankCheckItemVO;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.SetDefaultConfigurationCommand;
   import spark.components.gridClasses.GridColumn;
   import spark.components.Grid;
   import mx.collections.IList;
   import flash.utils.describeType;
   
   use namespace mx_internal;
   
   public final class Reflection
   {
       
      
      public function Reflection()
      {
         super();
      }
      
      public static function hasClassByName(param1:String) : Boolean
      {
         var c:Class = null;
         var name:String = param1;
         try
         {
            c = getClassByName(name);
         }
         catch(e:Error)
         {
            return false;
         }
         return true;
      }
      
      private static function _formatName(param1:String) : String
      {
         var _loc2_:Array = param1.split(".");
         §§push(_loc2_.length);
         §§push(1);
         if(_loc4_)
         {
            §§push(--(-(§§pop() + 92) + 81));
         }
         return §§pop() > §§pop()?_loc2_.pop():param1;
      }
      
      public static function getClassPackage(param1:*) : String
      {
         return _formatPackage(getClassPath(param1));
      }
      
      public static function getTypeInfo(param1:*) : TypeInfo
      {
         return new _TypeInfo(param1);
      }
      
      public static function getClassPath(param1:*) : String
      {
         return _formatPath(getQualifiedClassName(param1));
      }
      
      public static function getClassByName(param1:String) : Class
      {
         param1 = _formatPath(param1);
         return ApplicationDomain.currentDomain.getDefinition(param1) as Class;
      }
      
      public static function getClassName(param1:*, param2:Boolean = false) : String
      {
         return param2 == true?getQualifiedClassName(param1):_formatName(getClassPath(param1));
      }
      
      public static function invokeClass(param1:Class, param2:Array = null) : *
      {
         /*
          * Ошибка декомпиляции
          * Таймаут: (1 мин.)
          * Instruction count: 7569
          */
         throw new flash.errors.IllegalOperationError("Декомпиляция прервана из-за таймаута");
      }
      
      private static function _formatPackage(param1:String) : String
      {
         var _loc2_:Array = param1.split(".");
         §§push(_loc2_.length);
         §§push(1);
         if(_loc4_)
         {
            §§push(--((§§pop() + 1) * 6 - 63) * 100);
         }
         if(§§pop() > §§pop())
         {
            _loc2_.pop();
            return _loc2_.join(".");
         }
         return null;
      }
      
      public static function getDefinitionByName(param1:String) : Object
      {
         return ApplicationDomain.currentDomain.getDefinition(param1);
      }
      
      public static function getSuperClassPackage(param1:*) : String
      {
         return _formatPackage(getSuperClassPath(param1));
      }
      
      public static function getClassInfo(param1:*, ... rest) : ClassInfo
      {
         §§push(0);
         if(_loc7_)
         {
            §§push(((§§pop() - 1) * 68 - 1) * 45);
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(_loc8_)
         {
            §§push(-(§§pop() * 86 + 74 + 1 + 1));
         }
         var _loc6_:* = §§pop();
         var _loc3_:FilterType = FilterType.none;
         var _loc5_:int = rest.length;
         while(_loc6_ < _loc5_)
         {
            _loc4_ = _loc4_ | int(rest[_loc6_]);
            _loc6_++;
         }
         §§push(_loc4_);
         §§push(0);
         if(_loc8_)
         {
            §§push((§§pop() + 1) * 79 + 1 - 1);
         }
         if(§§pop() > §§pop())
         {
            _loc3_ = new FilterType(_loc4_);
         }
         return new _ClassInfo(param1,_loc3_);
      }
      
      public static function getSuperClassPath(param1:*) : String
      {
         return _formatPath(getQualifiedSuperclassName(param1));
      }
      
      public static function getMethodByName(param1:*, param2:String) : Function
      {
         var _loc3_:Array = getClassMethods(param1);
         §§push(_loc3_.indexOf(param2));
         §§push(-1);
         if(_loc5_)
         {
            §§push(-((§§pop() * 88 + 110) * 76));
         }
         if(§§pop() > §§pop())
         {
            return param1[param2] as Function;
         }
         return null;
      }
      
      private static function _formatPath(param1:String) : String
      {
         return param1.split("::").join(".");
      }
      
      public static function getSuperClassName(param1:*) : String
      {
         return _formatName(getSuperClassPath(param1));
      }
      
      public static function getClassMethods(param1:*, param2:Boolean = false) : Array
      {
         var _loc6_:XML = null;
         var _loc3_:XML = describeType(param1);
         var _loc4_:String = getClassName(param1,true);
         var _loc5_:Array = [];
         §§push(0);
         if(_loc10_)
         {
            §§push(-(§§pop() - 1 + 1) - 1 + 83 + 1 - 1);
         }
         for each(_loc6_ in _loc3_.method)
         {
            if(param2)
            {
               _loc5_.push(String(_loc6_.@name));
            }
            else if(String(_loc6_.@declaredBy) == _loc4_)
            {
               _loc5_.push(String(_loc6_.@name));
            }
         }
         return _loc5_;
      }
   }
}
