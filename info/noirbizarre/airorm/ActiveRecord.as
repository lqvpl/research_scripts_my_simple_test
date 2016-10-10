package info.noirbizarre.airorm
{
   import flash.utils.Proxy;
   import flash.events.IEventDispatcher;
   import mx.core.IUID;
   import info.noirbizarre.airorm.utils.sql_db;
   import mx.utils.UIDUtil;
   import flash.data.SQLConnection;
   import info.noirbizarre.airorm.utils.DB;
   import info.noirbizarre.airorm.utils.Reflection;
   import flash.events.EventDispatcher;
   import flash.data.SQLStatement;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.controller.rankchecker.SaveRankItemsCommand;
   import com.enfluid.ltp.model.constants.Constants;
   import com.enfluid.ltp.model.constants.RankCheckConstants;
   import com.enfluid.ltp.util.Util;
   import flash.utils.setTimeout;
   import mx.graphics.SolidColor;
   import flash.utils.flash_proxy;
   import flash.events.SQLEvent;
   import flash.data.SQLResult;
   import com.enfluid.ltp.model.vo.RankCheckItemVO;
   import com.enfluid.ltp.controller.rankchecker.DeleteRankEntryCommand;
   import com.enfluid.ltp.controller.rankchecker.ReadRanksXMLCommand;
   import spark.components.Scroller;
   import mx.binding.BindingManager;
   import flash.events.Event;
   import mx.controls.Alert;
   import system.data.List;
   import com.enfluid.ltp.view.renderers.DomainRenderer;
   import spark.components.Image;
   import com.enfluid.ltp.util.Logger;
   import mx.states.Transition;
   import com.hurlant.math.BigInteger;
   import spark.effects.Resize;
   import system.data.Map;
   import system.data.iterators.ArrayIterator;
   import system.data.Iterator;
   import spark.primitives.Rect;
   import spark.components.Group;
   import flash.utils.ByteArray;
   import mx.core.FlexGlobals;
   import com.enfluid.ltp.view.components.KeywordNotesCallout;
   import flash.events.NativeWindowDisplayStateEvent;
   import spark.effects.easing.Power;
   import flash.events.MouseEvent;
   import air.update.ApplicationUpdaterUI;
   import info.noirbizarre.airorm.utils.Inflector;
   import mx.rpc.events.ResultEvent;
   import flash.system.Capabilities;
   import com.adobe.utils.StringUtil;
   import flash.data.SQLColumnSchema;
   import flash.data.SQLTableSchema;
   import flash.data.SQLSchemaResult;
   import flash.events.SQLErrorEvent;
   import system.evaluators.MultiEvaluator;
   import system.evaluators.EdenEvaluator;
   import system.isValidChar;
   import system.Strings;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import mx.rpc.http.HTTPService;
   import spark.effects.Rotate;
   import mx.events.PropertyChangeEvent;
   import spark.layouts.HorizontalLayout;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   
   use namespace sql_db;
   use namespace flash_proxy;
   
   public class ActiveRecord extends Proxy implements IEventDispatcher, IUID
   {
      
      public static var defaultConnectionAlias:String = "main";
      
      public static var schemaTranslation:info.noirbizarre.airorm.SchemaTranslation = new info.noirbizarre.airorm.SchemaTranslation();
      
      sql_db static var columnSchemaCache:Object = {};
      
      sql_db static var tableSchemaCache:Object = {};
       
      
      public var constructor:Object;
      
      private var _3355id:uint;
      
      private var _uid:String;
      
      protected var relatedData:Object;
      
      private var _className:String;
      
      private var eventDispatcher:EventDispatcher;
      
      private var properties:Array;
      
      public function ActiveRecord()
      {
         this.relatedData = {};
         super();
         this.eventDispatcher = new EventDispatcher(this);
         this.constructor = getDefinitionByName(getQualifiedClassName(this));
      }
      
      [NotPersisted]
      public function get uid() : String
      {
         if(!this.id)
         {
            if(!this._uid)
            {
               this._uid = UIDUtil.createUID();
            }
            return this._uid;
         }
         return this.className + "_" + this.id.toString();
      }
      
      public function set uid(param1:String) : void
      {
      }
      
      [NotPersisted]
      public function get connection() : SQLConnection
      {
         return DB.getConnection(defaultConnectionAlias,true);
      }
      
      public function set connection(param1:SQLConnection) : void
      {
      }
      
      sql_db function get className() : String
      {
         if(!this._className)
         {
            this._className = Reflection.getShortClassName(this);
         }
         return this._className;
      }
      
      sql_db function set className(param1:String) : void
      {
      }
      
      public final function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0.0, param5:Boolean = false) : void
      {
         this.eventDispatcher.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public final function asyncQuery(param1:String, param2:Function, ... rest) : void
      {
         var stmt:SQLStatement = null;
         var listener:Function = null;
         var sql:String = param1;
         var resultFunction:Function = param2;
         var params:Array = rest;
         stmt = new SQLStatement();
         stmt.sqlConnection = DB.getConnection(defaultConnectionAlias);
         stmt.text = sql;
         §§push(params.length);
         §§push(1);
         if(_loc5_)
         {
            §§push(--(-§§pop() - 117));
         }
         if(§§pop() == §§pop() && §§pop()[§§pop()] is Array)
         {
            §§push(_loc4_);
            §§push(params);
            §§push(0);
            if(_loc6_)
            {
               §§push(-((§§pop() + 1 + 1 - 32) * 96) - 105 + 0);
            }
            var /*UnknownSlot*/:* = §§pop()[§§pop()];
         }
         §§push(_loc4_);
         §§push(0);
         if(_loc6_)
         {
            §§push((-(§§pop() - 115) - 68 - 1 - 16 + 0) * 92);
         }
         var /*UnknownSlot*/:* = §§pop();
         while(i < params.length)
         {
            stmt.parameters[i] = params[i];
            i++;
         }
         listener = function(param1:SQLEvent):void
         {
            var _loc2_:SQLResult = stmt.getResult();
            §§push();
            §§push(sql.toUpperCase().indexOf("SELECT "));
            §§push(0);
            if(_loc3_)
            {
               §§push(-(-(§§pop() * 112 - 105) + 1 - 94 + 1));
            }
            §§pop().resultFunction(§§pop() == §§pop()?_loc2_.data || []:_loc2_.rowsAffected);
            stmt.removeEventListener(SQLEvent.RESULT,listener);
         };
         stmt.addEventListener(SQLEvent.RESULT,listener);
         stmt.execute();
      }
      
      public final function count(param1:String = null, param2:Array = null, param3:String = null) : uint
      {
         var _loc6_:Array = null;
         var _loc4_:String = schemaTranslation.getTable(this.className);
         var _loc5_:String = "SELECT COUNT(*) FROM " + _loc4_;
         §§push(_loc5_);
         §§push(this);
         §§push(param1);
         §§push(null);
         §§push(0);
         if(_loc7_)
         {
            §§push(-(§§pop() + 22 + 102) + 1);
         }
         _loc5_ = §§pop() + §§pop().assembleQuery(§§pop(),§§pop(),§§pop(),§§pop(),param3);
         if(param2)
         {
            _loc6_ = this.query(_loc5_,param2) as Array;
         }
         else
         {
            _loc6_ = this.query(_loc5_) as Array;
         }
         if(_loc6_)
         {
            §§push(_loc6_);
            §§push(0);
            if(_loc7_)
            {
               §§push(-(§§pop() - 54 - 1) + 1);
            }
            §§push(uint(§§pop()[§§pop()]["COUNT(*)"]));
         }
         else
         {
            §§push(0);
            if(_loc8_)
            {
               §§push(-(§§pop() * 71 - 63 - 1));
            }
            §§push(uint(§§pop()));
         }
         return §§pop();
      }
      
      public final function countBySql(param1:String, param2:Array = null) : uint
      {
         var _loc3_:Array = this.query(param1,param2) as Array;
         if(_loc3_)
         {
            §§push(_loc3_);
            §§push(0);
            if(_loc5_)
            {
               §§push((-§§pop() + 1 + 1) * 5);
            }
            §§push(§§pop()[§§pop()]);
            §§push(0);
            if(_loc5_)
            {
               §§push(-(§§pop() - 1 + 110) - 93);
            }
            §§push(uint(§§pop()[§§pop()]));
         }
         else
         {
            §§push(0);
            if(_loc5_)
            {
               §§push(-(§§pop() + 1 + 108) - 1 - 76);
            }
            §§push(uint(§§pop()));
         }
         return §§pop();
      }
      
      public final function create(param1:Object = null) : ActiveRecord
      {
         var _loc2_:ActiveRecord = new this.constructor();
         _loc2_.setDBProperties(param1);
         _loc2_.save();
         return _loc2_;
      }
      
      public final function decrementCounter(param1:uint, param2:String) : void
      {
         this.update(param1,param2 + " = " + param2 + " - 1");
      }
      
      public final function deleteAll(param1:String = null, param2:Array = null) : uint
      {
         var _loc3_:String = schemaTranslation.getTable(this.className);
         var _loc4_:String = "DELETE FROM " + _loc3_;
         _loc4_ = _loc4_ + this.assembleQuery(param1);
         return this.query(_loc4_,param2) as uint;
      }
      
      public final function deleteById(param1:uint) : Boolean
      {
         var _loc2_:String = schemaTranslation.getTable(this.className);
         var _loc3_:String = schemaTranslation.getPrimaryKey(this.className);
         §§push(this.query("DELETE FROM " + _loc2_ + " WHERE " + _loc3_ + " = ?",param1));
         §§push(0);
         if(_loc5_)
         {
            §§push(--(§§pop() - 1) + 8);
         }
         return §§pop() > §§pop();
      }
      
      public final function deleteMe() : Boolean
      {
         return this.deleteById(this.id);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.eventDispatcher.dispatchEvent(param1);
      }
      
      public final function exists(param1:uint) : Boolean
      {
         var _loc2_:String = schemaTranslation.getPrimaryKey(this.className);
         §§push(this.count(_loc2_ + " = ?",[param1]));
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() - 10) * 53 - 93);
         }
         return §§pop() > §§pop();
      }
      
      public final function find(param1:uint) : ActiveRecord
      {
         var _loc2_:String = schemaTranslation.getPrimaryKey(this.className);
         var _loc3_:Array = this.findAll(_loc2_ + " = ?",[param1]);
         if(_loc3_)
         {
            §§push(_loc3_);
            §§push(0);
            if(_loc4_)
            {
               §§push(-§§pop() + 1 + 1 + 12 - 4);
            }
            §§push(§§pop()[§§pop()]);
         }
         else
         {
            §§push(null);
         }
         return §§pop();
      }
      
      public final function findAll(param1:String = null, param2:Array = null, param3:String = null, param4:uint = 0, param5:uint = 0, param6:String = null) : Array
      {
         var _loc7_:String = schemaTranslation.getTable(this.className);
         var _loc8_:String = schemaTranslation.getPrimaryKey(this.className);
         var _loc9_:String = "SELECT *, " + _loc7_ + "." + _loc8_ + " FROM " + _loc7_;
         _loc9_ = _loc9_ + this.assembleQuery(param1,param3,param4,param5,param6);
         var _loc10_:Array = this.loadItems(this.constructor as Class,_loc9_,param2);
         return _loc10_ == null?[]:_loc10_;
      }
      
      public final function findBySQL(param1:String, ... rest) : Array
      {
         return this.loadItems(this.constructor as Class,param1,rest);
      }
      
      public final function findBySQLWithoutParams(param1:String) : Array
      {
         return this.loadItemsWithoutParams(this.constructor as Class,param1);
      }
      
      public final function findFirst(param1:String = null, param2:Array = null, param3:String = null) : ActiveRecord
      {
         §§push(this);
         §§push(param1);
         §§push(param2);
         §§push(param3);
         §§push(1);
         if(_loc5_)
         {
            §§push(§§pop() + 98 + 111 - 4);
         }
         var _loc4_:Array = §§pop().findAll(§§pop(),§§pop(),§§pop(),§§pop());
         if(_loc4_)
         {
            §§push(_loc4_);
            §§push(0);
            if(_loc6_)
            {
               §§push(§§pop() - 1 + 29 + 86 + 14);
            }
            §§push(§§pop()[§§pop()]);
         }
         else
         {
            §§push(null);
         }
         return §§pop();
      }
      
      public final function hasEventListener(param1:String) : Boolean
      {
         return this.eventDispatcher.hasEventListener(param1);
      }
      
      public final function incrementCounter(param1:uint, param2:String) : void
      {
         this.update(param1,param2 + " = " + param2 + " + 1");
      }
      
      public final function load(param1:uint) : Boolean
      {
         var _loc2_:String = schemaTranslation.getTable(this.className);
         var _loc3_:String = schemaTranslation.getPrimaryKey(this.className);
         var _loc4_:SQLStatement = new SQLStatement();
         var _loc5_:Array = this.query("SELECT * FROM " + _loc2_ + " WHERE " + _loc3_ + " = ?",param1) as Array;
         if(!_loc5_.length)
         {
            return false;
         }
         §§push(this);
         §§push(_loc5_);
         §§push(0);
         if(_loc6_)
         {
            §§push(-(-(§§pop() - 1 - 1) + 112 - 75) + 1);
         }
         §§pop().setDBProperties(§§pop()[§§pop()]);
         return true;
      }
      
      public final function loadBy(param1:String, ... rest) : Boolean
      {
         var _loc3_:String = schemaTranslation.getTable(this.className);
         var _loc4_:Array = this.query("SELECT * FROM " + _loc3_ + " WHERE " + param1,rest) as Array;
         if(!_loc4_.length)
         {
            return false;
         }
         §§push(this);
         §§push(_loc4_);
         §§push(0);
         if(_loc6_)
         {
            §§push(-(((§§pop() - 0) * 106 + 26) * 85) + 1);
         }
         §§pop().setDBProperties(§§pop()[§§pop()]);
         return true;
      }
      
      public final function query(param1:String, ... rest) : Object
      {
         §§push(0);
         if(_loc6_)
         {
            §§push(-(§§pop() * 27) + 53 + 106 + 1 + 46);
         }
         var _loc5_:* = §§pop();
         var _loc3_:SQLStatement = new SQLStatement();
         _loc3_.sqlConnection = this.connection;
         _loc3_.text = param1;
         §§push(rest.length);
         §§push(1);
         if(_loc7_)
         {
            §§push(§§pop() - 1 - 1 + 1 + 1);
         }
         if(§§pop() == §§pop() && §§pop()[§§pop()] is Array)
         {
            §§push(rest);
            §§push(0);
            if(_loc7_)
            {
               §§push(-(-(§§pop() - 1) - 1) * 48 * 13);
            }
            rest = §§pop()[§§pop()];
         }
         if(rest is Array)
         {
            §§push(0);
            if(_loc7_)
            {
               §§push((§§pop() + 1) * 21 - 69 - 103);
            }
            _loc5_ = §§pop();
            while(_loc5_ < rest.length)
            {
               _loc3_.parameters[_loc5_] = rest[_loc5_];
               _loc5_++;
            }
         }
         _loc3_.execute();
         var _loc4_:SQLResult = _loc3_.getResult();
         §§push(param1.toUpperCase().indexOf("SELECT "));
         §§push(0);
         if(_loc7_)
         {
            §§push(--(§§pop() * 109 - 1 + 1) + 1);
         }
         return §§pop() == §§pop()?_loc4_.data || []:_loc4_.rowsAffected;
      }
      
      public final function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.eventDispatcher.removeEventListener(param1,param2,param3);
      }
      
      public function save() : Boolean
      {
         var _loc5_:* = null;
         var _loc8_:* = null;
         §§push(0);
         if(_loc15_)
         {
            §§push(-(-(§§pop() + 6) - 1 + 1));
         }
         var _loc11_:uint = §§pop();
         var _loc1_:ActiveRecordEvent = new ActiveRecordEvent(ActiveRecordEvent.SAVING,true);
         this.dispatchEvent(_loc1_);
         if(_loc1_.isDefaultPrevented())
         {
            return false;
         }
         if(!this.id && hasOwnProperty(schemaTranslation.getCreatedField(this)))
         {
            this[schemaTranslation.getCreatedField(this)] = new Date();
         }
         if(hasOwnProperty(schemaTranslation.getModifiedField(this)))
         {
            this[schemaTranslation.getModifiedField(this)] = new Date();
         }
         var _loc2_:String = schemaTranslation.getTable(this.className);
         var _loc3_:String = schemaTranslation.getPrimaryKey(this.className);
         var _loc4_:Array = [];
         var _loc6_:Object = this.getDBProperties();
         delete _loc6_[_loc3_];
         var _loc7_:Array = [];
         §§push(0);
         if(_loc14_)
         {
            §§push(((§§pop() + 1 - 1 + 1) * 91 - 55) * 36 * 79);
         }
         for(_loc8_ in _loc6_)
         {
            _loc7_.push(_loc8_);
            _loc4_.push(_loc6_[_loc8_]);
         }
         if(this.id)
         {
            _loc5_ = "UPDATE " + _loc2_ + " SET " + _loc7_.join(" = ?, ") + " = ? WHERE " + _loc3_ + " = ?";
            _loc4_.push(this.id);
         }
         else
         {
            _loc5_ = "INSERT INTO " + _loc2_ + " (" + _loc7_.join(", ") + ") VALUES (?";
            §§push(0);
            if(_loc14_)
            {
               §§push(-(§§pop() - 1 - 12 - 68 + 1) - 62);
            }
            _loc11_ = §§pop();
            while(_loc11_ < _loc7_.length - 1)
            {
               _loc5_ = _loc5_ + ", ?";
               _loc11_++;
            }
            _loc5_ = _loc5_ + ")";
         }
         var _loc9_:Object = this.query(_loc5_,_loc4_);
         if(!_loc9_)
         {
            return false;
         }
         if(!this.id)
         {
            this.id = this.connection.lastInsertRowID;
         }
         var _loc10_:ActiveRecordEvent = new ActiveRecordEvent(ActiveRecordEvent.SAVE);
         this.dispatchEvent(_loc10_);
         FlexGlobals.topLevelApplication.callLater(this.doCommit);
         return true;
      }
      
      public final function update(param1:uint, param2:String, param3:Array = null) : Boolean
      {
         var _loc4_:String = schemaTranslation.getTable(this.className);
         var _loc5_:String = schemaTranslation.getPrimaryKey(this.className);
         if(!param3)
         {
            param3 = [param1];
         }
         else
         {
            param3.push(param1);
         }
         §§push(this.query("UPDATE " + _loc4_ + " SET " + param2 + " WHERE " + _loc5_ + " = ?",param3) as uint);
         §§push(0);
         if(_loc6_)
         {
            §§push(§§pop() * 83 + 1 - 48 + 23 - 33 - 17 + 31);
         }
         return §§pop() > §§pop();
      }
      
      public final function updateAll(param1:String = null, param2:Array = null, param3:String = null, param4:Array = null) : uint
      {
         var _loc5_:String = schemaTranslation.getTable(this.className);
         var _loc6_:Array = !!param2?!!param4?param2.concat(param4):param2:param4;
         return this.query("UPDATE " + _loc5_ + " SET " + param3,_loc6_) as uint;
      }
      
      public final function willTrigger(param1:String) : Boolean
      {
         return this.eventDispatcher.willTrigger(param1);
      }
      
      sql_db final function assembleQuery(param1:String = null, param2:String = null, param3:uint = 0, param4:uint = 0, param5:String = null) : String
      {
         var _loc6_:String = "";
         if(param5)
         {
            _loc6_ = _loc6_ + param5;
         }
         if(param1)
         {
            _loc6_ = _loc6_ + (" WHERE " + param1);
         }
         if(param3)
         {
            _loc6_ = _loc6_ + (" LIMIT " + param3);
            if(param4)
            {
               _loc6_ = _loc6_ + (" OFFSET " + param4);
            }
         }
         return _loc6_;
      }
      
      override flash_proxy function callProperty(param1:*, ... rest) : *
      {
         var _loc3_:Array = param1.toString().match(/^([a-z]+)(.+)/);
         §§push();
         §§push(sql_db);
         §§push(_loc3_);
         §§push(1);
         if(_loc10_)
         {
            §§push(§§pop() - 1 + 1 + 1);
         }
         var _loc4_:QName = new §§pop().QName(§§pop(),§§pop()[§§pop()] + "Related");
         if(!_loc3_ || !(this[_loc4_] is Function))
         {
            return;
         }
         var _loc5_:Function = this[_loc4_];
         §§push(Inflector);
         §§push(_loc3_);
         §§push(2);
         if(_loc9_)
         {
            §§push((-§§pop() - 1 + 1) * 89);
         }
         var _loc6_:String = §§pop().lowerFirst(§§pop()[§§pop()]);
         §§push(Reflection.getMetadataByArg(this,"",_loc6_));
         §§push(0);
         if(_loc10_)
         {
            §§push(§§pop() + 43 - 1 + 104 + 1);
         }
         var _loc7_:XML = §§pop()[§§pop()];
         if(!_loc7_)
         {
            return;
         }
         rest.unshift(_loc6_);
         if(_loc5_ == this.loadRelated)
         {
            return this.relatedData[param1] = _loc5_.apply(this,rest);
         }
         return _loc5_.apply(this,rest);
      }
      
      sql_db final function countRelated(param1:String, param2:String = null, param3:Array = null) : uint
      {
         var _loc4_:RelationalOperation = new RelationalOperation(this,param1);
         return _loc4_.countRelated(param2,param3);
      }
      
      sql_db final function deleteRelated(param1:String, param2:String = null, param3:Array = null, param4:Boolean = true) : uint
      {
         var _loc5_:RelationalOperation = new RelationalOperation(this,param1);
         return _loc5_.deleteRelated(param2,param3,param4);
      }
      
      sql_db final function getDBProperties() : Object
      {
         var fkDef:XML = null;
         var column:SQLColumnSchema = null;
         var otherClassName:String = null;
         var propName:String = null;
         var fk:String = null;
         var ar:ActiveRecord = null;
         var tableName:String = schemaTranslation.getTable(this.className);
         var columns:Array = this.getSchema().columns;
         var data:Object = {};
         var foreignKeys:XMLList = Reflection.getMetadata(this,"BelongsTo") + Reflection.getMetadata(this,"HasOne");
         var dynamics:Object = {};
         §§push(0);
         if(_loc10_)
         {
            §§push(-(§§pop() + 73 + 1 + 1 - 43) * 67);
         }
         for each(fkDef in foreignKeys)
         {
            §§push(_loc1_);
            §§push(0);
            if(_loc9_)
            {
               §§push(-(§§pop() + 70 - 1 + 1 + 1) * 33);
            }
            §§push(fkDef.arg.(@key == "className"));
            §§push(0);
            if(_loc9_)
            {
               §§push(-(§§pop() * 42 + 1) - 119 + 1 - 1);
            }
            var /*UnknownSlot*/:* = §§pop()[§§pop()].@value;
            §§push(_loc1_);
            §§push(0);
            if(_loc9_)
            {
               §§push(-(§§pop() + 1) + 109 + 49 - 114 + 1);
            }
            §§push(fkDef.arg.(@key == ""));
            §§push(0);
            if(_loc9_)
            {
               §§push(§§pop() * 44 - 32 - 85);
            }
            var /*UnknownSlot*/:* = §§pop()[§§pop()].@value;
            fk = ActiveRecord.schemaTranslation.getForeignKey(otherClassName,propName);
            dynamics[fk] = propName;
         }
         §§push(0);
         if(_loc10_)
         {
            §§push(-(§§pop() * 94 - 19) + 1 - 100 + 1);
         }
         for each(column in columns)
         {
            if(column.primaryKey)
            {
               data[column.name] = this.id;
            }
            else if(column.name in this)
            {
               data[column.name] = this[column.name];
            }
            else if(column.name in dynamics)
            {
               ar = this.getProperty(dynamics[column.name]);
               if(ar)
               {
                  data[column.name] = ar.id;
               }
               else
               {
                  data[column.name] = null;
               }
            }
         }
         return data;
      }
      
      sql_db final function getFields(param1:String = null) : Object
      {
         if(!param1)
         {
            param1 = schemaTranslation.getTable(this.className);
         }
         if(!(param1 in columnSchemaCache))
         {
            this.getSchema(param1);
         }
         return columnSchemaCache[param1];
      }
      
      override flash_proxy function getProperty(param1:*) : *
      {
         param1 = param1.toString();
         if(param1 == "className")
         {
            return this.className;
         }
         if(param1 in this.relatedData)
         {
            return this.relatedData[param1];
         }
         §§push(Reflection.getMetadataByArg(this,"",param1));
         §§push(0);
         if(_loc4_)
         {
            §§push((-§§pop() + 38) * 55 - 1);
         }
         var _loc2_:XML = §§pop()[§§pop()];
         if(!_loc2_)
         {
            return this.relatedData[param1];
         }
         this.relatedData[param1] = this.loadRelated(param1);
         return this.relatedData[param1];
      }
      
      sql_db final function getSchema(param1:String = null, param2:Boolean = false) : SQLTableSchema
      {
         var _loc4_:SQLTableSchema = null;
         var _loc5_:Object = null;
         var _loc6_:SQLTableSchema = null;
         var _loc7_:SQLColumnSchema = null;
         if(!param1)
         {
            param1 = schemaTranslation.getTable(this.className);
         }
         if(param1 in tableSchemaCache)
         {
            return tableSchemaCache[param1];
         }
         var _loc3_:SQLSchemaResult = DB.getSchema(this.connection);
         if(_loc3_)
         {
            §§push(0);
            if(_loc11_)
            {
               §§push(-(§§pop() + 50 - 36 - 28 + 98) + 1);
            }
            for each(_loc6_ in _loc3_.tables)
            {
               if(_loc6_.name == param1)
               {
                  _loc4_ = _loc6_;
                  break;
               }
            }
         }
         if(param2)
         {
            ORM.updateTable(this,_loc4_);
         }
         if(_loc4_ && _loc4_.columns.length)
         {
            _loc5_ = {};
            §§push(0);
            if(_loc10_)
            {
               §§push((-§§pop() + 42 + 97) * 32 + 109 - 70 - 40);
            }
            for each(_loc7_ in _loc4_.columns)
            {
               _loc5_[_loc7_.name] = _loc7_;
            }
         }
         columnSchemaCache[param1] = _loc5_;
         tableSchemaCache[param1] = _loc4_;
         return _loc4_;
      }
      
      override flash_proxy function hasProperty(param1:*) : Boolean
      {
         param1 = param1.toString();
         §§push(Reflection.getMetadataByArg(this,"",param1));
         §§push(0);
         if(_loc3_)
         {
            §§push((-((§§pop() - 1 - 1) * 77) - 1) * 45);
         }
         var _loc2_:XML = §§pop()[§§pop()];
         return _loc2_ != null;
      }
      
      sql_db final function loadItems(param1:Class, param2:String, ... rest) : Array
      {
         var _loc4_:SQLStatement = new SQLStatement();
         _loc4_.sqlConnection = this.connection;
         _loc4_.text = param2;
         _loc4_.itemClass = param1;
         §§push(rest.length);
         §§push(1);
         if(_loc7_)
         {
            §§push((§§pop() + 1 + 1 + 43) * 40 * 60 - 74 + 48);
         }
         if(§§pop() == §§pop() && §§pop()[§§pop()] is Array)
         {
            §§push(rest);
            §§push(0);
            if(_loc8_)
            {
               §§push(-((§§pop() * 41 - 1) * 50) - 1);
            }
            rest = §§pop()[§§pop()];
         }
         §§push(0);
         if(_loc8_)
         {
            §§push((-§§pop() + 105 - 1) * 40 * 15 - 1 - 76);
         }
         var _loc5_:* = §§pop();
         while(_loc5_ < rest.length)
         {
            _loc4_.parameters[_loc5_] = rest[_loc5_];
            _loc5_++;
         }
         _loc4_.execute();
         var _loc6_:SQLResult = _loc4_.getResult();
         return !!_loc6_?_loc6_.data:null;
      }
      
      sql_db final function loadItemsWithoutParams(param1:Class, param2:String) : Array
      {
         var stmt:SQLStatement = null;
         var result:SQLResult = null;
         var clazz:Class = param1;
         var sql:String = param2;
         try
         {
            stmt = new SQLStatement();
            stmt.sqlConnection = this.connection;
            stmt.text = sql;
            stmt.itemClass = clazz;
            stmt.addEventListener(SQLErrorEvent.ERROR,this.queryErrorHandler);
            stmt.execute();
            result = stmt.getResult();
         }
         catch(err:Error)
         {
            trace(err.message);
         }
         return !!result?result.data:null;
      }
      
      sql_db final function loadRelated(param1:String, param2:String = null, param3:Array = null, param4:String = null, param5:uint = 0, param6:uint = 0) : Object
      {
         var _loc7_:RelationalOperation = new RelationalOperation(this,param1);
         return _loc7_.loadRelated(param2,param3,param4,param5,param6);
      }
      
      sql_db final function saveRelated(param1:String) : Boolean
      {
         var _loc2_:RelationalOperation = new RelationalOperation(this,param1);
         return _loc2_.saveRelated();
      }
      
      sql_db final function setDBProperties(param1:Object) : void
      {
         var _loc3_:SQLColumnSchema = null;
         var _loc2_:Array = this.getSchema().columns;
         §§push(0);
         if(_loc7_)
         {
            §§push((§§pop() * 119 - 1 - 1) * 27);
         }
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_.primaryKey)
            {
               if(_loc3_.name in param1)
               {
                  this.id = param1[_loc3_.name];
               }
            }
            else if(_loc3_.name in param1)
            {
               this[_loc3_.name] = param1[_loc3_.name];
            }
         }
      }
      
      override flash_proxy function setProperty(param1:*, param2:*) : void
      {
         param1 = param1.toString();
         this.relatedData[param1] = param2;
      }
      
      private final function doCommit() : void
      {
         if(this.connection.inTransaction)
         {
            this.connection.commit();
         }
      }
      
      private final function queryErrorHandler(param1:SQLErrorEvent) : void
      {
         var _loc2_:String = "Query Error id: " + param1.error.errorID + "\nDetails:" + param1.error.message;
      }
      
      [Bindable(event="propertyChange")]
      public function get id() : uint
      {
         return this._3355id;
      }
      
      public function set id(param1:uint) : void
      {
         var _loc2_:Object = this._3355id;
         if(_loc2_ !== param1)
         {
            this._3355id = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"id",_loc2_,param1));
            }
         }
      }
   }
}
