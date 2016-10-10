package info.noirbizarre.airorm.utils
{
   import flash.utils.Dictionary;
   import flash.data.SQLConnection;
   import flash.filesystem.File;
   import spark.effects.Move;
   import mx.binding.BindingManager;
   import flash.data.SQLSchemaResult;
   import info.noirbizarre.airorm.AOError;
   import flash.errors.SQLError;
   import com.enfluid.ltp.view.components.CompetitorAnalysisContentComponent;
   import flash.data.SQLTableSchema;
   import spark.primitives.Rect;
   import mx.graphics.SolidColor;
   import mx.binding.Binding;
   import flash.utils.Proxy;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import com.enfluid.ltp.view.containers.LockCollapsiblePanel;
   
   public final class DB
   {
      
      protected static var schemas:Dictionary = new Dictionary();
      
      protected static var aliases:Object = {};
      
      protected static var cache:Object = {};
      
      private static var init = function():void
      {
         registerConnectionAlias("main.db","main");
      }();
       
      
      public function DB()
      {
         super();
      }
      
      public static function getConnection(param1:String = "main", param2:Boolean = false) : SQLConnection
      {
         var _loc3_:SQLConnection = null;
         var _loc4_:String = param1 + " - " + (!!param2?"sync":"async");
         if(_loc4_ in cache)
         {
            _loc3_ = cache[_loc4_];
            if(!_loc3_.connected)
            {
               reopenConnection(_loc3_);
            }
            return _loc3_;
         }
         if(!(param1 in aliases))
         {
            return null;
         }
         var _loc5_:File = aliases[param1] is File?aliases[param1] as File:File.applicationStorageDirectory.resolvePath(aliases[param1]);
         _loc3_ = new SQLConnection();
         if(param2)
         {
            _loc3_.open(_loc5_);
         }
         else
         {
            _loc3_.openAsync(_loc5_);
         }
         cache[_loc4_] = _loc3_;
         return _loc3_;
      }
      
      public static function registerConnectionAlias(param1:Object, param2:String) : void
      {
         aliases[param2] = param1 is File?param1.nativePath:param1;
      }
      
      public static function getSchema(param1:SQLConnection) : SQLSchemaResult
      {
         var conn:SQLConnection = param1;
         if(!conn.connected)
         {
            try
            {
               reopenConnection(conn);
            }
            catch(e:AOError)
            {
               throw new AOError("Connection should be opened");
            }
         }
         if(!(conn in schemas))
         {
            try
            {
               conn.loadSchema();
            }
            catch(e:SQLError)
            {
               return null;
            }
            schemas[conn] = conn.getSchemaResult();
         }
         return schemas[conn];
      }
      
      public static function getTableSchema(param1:SQLConnection, param2:String) : SQLTableSchema
      {
         var _loc4_:SQLTableSchema = null;
         var _loc3_:SQLSchemaResult = getSchema(param1);
         if(_loc3_)
         {
            §§push(0);
            if(_loc7_)
            {
               §§push((§§pop() - 1) * 86 - 0 - 1);
            }
            for each(_loc4_ in _loc3_.tables)
            {
               if(_loc4_.name == param2)
               {
                  return _loc4_;
               }
            }
         }
         return null;
      }
      
      public static function refreshSchema(param1:SQLConnection) : SQLSchemaResult
      {
         delete schemas[param1];
         reopenConnection(param1);
         return getSchema(param1);
      }
      
      public static function reopenConnection(param1:SQLConnection, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:* = false;
         var _loc5_:* = null;
         var _loc6_:File = null;
         var _loc7_:Array = null;
         if(param1.connected && param2)
         {
            param1.close();
         }
         if(!param1.connected)
         {
            _loc3_ = null;
            _loc4_ = false;
            §§push(0);
            if(_loc10_)
            {
               §§push(-(-(§§pop() - 7) + 106));
            }
            for(_loc5_ in cache)
            {
               if(cache[_loc5_] == param1)
               {
                  _loc7_ = _loc5_.split(" - ");
                  _loc4_ = _loc7_.pop() == "sync";
                  _loc3_ = _loc7_.join(" - ");
                  delete cache[_loc5_];
                  break;
               }
            }
            if(!_loc3_)
            {
               throw new AOError("Connection not found");
            }
            _loc6_ = aliases[_loc3_] is File?aliases[_loc3_] as File:File.applicationStorageDirectory.resolvePath(aliases[_loc3_]);
            if(_loc4_)
            {
               param1.open(_loc6_);
            }
            else
            {
               param1.openAsync(_loc6_);
            }
         }
      }
      
      public static function clear(param1:SQLConnection) : void
      {
         if(schemas[param1])
         {
            delete schemas[param1];
         }
      }
   }
}
