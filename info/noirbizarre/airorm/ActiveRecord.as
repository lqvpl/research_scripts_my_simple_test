package info.noirbizarre.airorm
{
   import flash.utils.Proxy;
   import flash.events.IEventDispatcher;
   import mx.core.IUID;
   import info.noirbizarre.airorm.utils.sql_db;
   import flash.utils.getQualifiedClassName;
   import com.photon.util.PhotonSingleton;
   import mx.effects.Parallel;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
   import mx.utils.UIDUtil;
   import flash.data.SQLConnection;
   import info.noirbizarre.airorm.utils.DB;
   import info.noirbizarre.airorm.utils.Reflection;
   import flash.events.EventDispatcher;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.data.SQLStatement;
   import flash.utils.flash_proxy;
   import flash.events.SQLEvent;
   import flash.data.SQLResult;
   import spark.primitives.Rect;
   import com.enfluid.ltp.model.vo.AmazonResultVO;
   import com.enfluid.ltp.util.KeywordUtil;
   import spark.components.VGroup;
   import mx.collections.ArrayCollection;
   import mx.graphics.SolidColor;
   import hr.binaria.asx3m.converters.reflection.ReflectionConverter;
   import hr.binaria.asx3m.converters.basic.NullConverter;
   import hr.binaria.asx3m.converters.basic.StringConverter;
   import hr.binaria.asx3m.converters.basic.NumberConverter;
   import hr.binaria.asx3m.converters.basic.BooleanConverter;
   import hr.binaria.asx3m.converters.extended.DateConverter;
   import hr.binaria.asx3m.converters.collections.MapConverter;
   import hr.binaria.asx3m.converters.collections.ListConverter;
   import hr.binaria.asx3m.converters.collections.ArrayConverter;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.dataandfilters.target;
   import mx.core.DeferredInstanceFromFunction;
   import mx.binding.Binding;
   import spark.components.Scroller;
   import flash.utils.setTimeout;
   import hr.binaria.asx3m.mapper.IMapper;
   import system.data.maps.HashMap;
   import flash.utils.ByteArray;
   import com.enfluid.ltp.view.components.ToggleSwitch;
   import flash.filesystem.File;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.renderers.headers.ProxiesHeaderRendererInnerClass0;
   import flash.filesystem.FileStream;
   import flash.errors.IOError;
   import flash.filesystem.FileMode;
   import mx.controls.Alert;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import spark.components.gridClasses.GridColumn;
   import com.enfluid.ltp.model.vo.DomainsVO;
   import com.enfluid.ltp.model.vo.DomainExtensionOptions;
   import com.enfluid.ltp.view.renderers.CalculatableValueGroup;
   import com.enfluid.ltp.view.components.LTPProgressButton;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import spark.effects.AddAction;
   import spark.events.PopUpEvent;
   import com.hurlant.math.BigInteger;
   import com.hurlant.math.bi_internal;
   import spark.components.Label;
   import mx.graphics.GradientEntry;
   import mx.states.Transition;
   import spark.formatters.NumberFormatter;
   import hr.binaria.asx3m.io.IHierarchicalStreamReader;
   import mx.core.FlexGlobals;
   import info.noirbizarre.airorm.utils.Inflector;
   import spark.components.supportClasses.InteractionStateDetector;
   import com.hurlant.crypto.symmetric.XTeaKey;
   import spark.components.DataGrid;
   import spark.components.GridColumnHeaderGroup;
   import spark.components.gridClasses.IGridVisualElement;
   import flash.data.SQLColumnSchema;
   import spark.components.Group;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import flash.data.SQLTableSchema;
   import flash.data.SQLSchemaResult;
   import com.enfluid.ltp.util.Logger;
   import flash.events.SQLErrorEvent;
   import mx.controls.Spacer;
   import spark.components.Button;
   import flash.errors.IllegalOperationError;
   import mx.events.PropertyChangeEvent;
   
   use namespace sql_db;
   use namespace flash_proxy;
   use namespace mx_internal;
   use namespace bi_internal;
   
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
            §§push(-(§§pop() + 1 + 41));
         }
         if(§§pop() == §§pop() && §§pop()[§§pop()] is Array)
         {
            §§push(_loc4_);
            §§push(params);
            §§push(0);
            if(_loc5_)
            {
               §§push((§§pop() * 74 * 52 * 49 + 1 - 1 - 93) * 3);
            }
            var /*UnknownSlot*/:* = §§pop()[§§pop()];
         }
         §§push(_loc4_);
         §§push(0);
         if(_loc6_)
         {
            §§push(§§pop() + 110 + 1 + 11 - 73);
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
            if(_loc4_)
            {
               §§push((-§§pop() - 1) * 43);
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
         if(_loc8_)
         {
            §§push(§§pop() - 1 - 1 + 1);
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
               §§push((§§pop() + 63 + 1 - 1) * 42);
            }
            §§push(uint(§§pop()[§§pop()]["COUNT(*)"]));
         }
         else
         {
            §§push(0);
            if(_loc7_)
            {
               §§push(-(((§§pop() - 1) * 82 - 1 - 1 - 62) * 20));
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
            if(_loc4_)
            {
               §§push((§§pop() * 52 + 1) * 34 + 1);
            }
            §§push(§§pop()[§§pop()]);
            §§push(0);
            if(_loc5_)
            {
               §§push(-(§§pop() - 1 + 1 - 58) * 65 - 24);
            }
            §§push(uint(§§pop()[§§pop()]));
         }
         else
         {
            §§push(0);
            if(_loc5_)
            {
               §§push(--(§§pop() * 79) - 1);
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
         if(_loc4_)
         {
            §§push(§§pop() + 36 + 1 - 119 + 1 + 4 - 1);
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
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) + 65);
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
            if(_loc5_)
            {
               §§push(§§pop() * 74 + 1 + 1);
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
            §§push(--(§§pop() + 87 + 76 - 51) - 1);
         }
         var _loc4_:Array = §§pop().findAll(§§pop(),§§pop(),§§pop(),§§pop());
         if(_loc4_)
         {
            §§push(_loc4_);
            §§push(0);
            if(_loc6_)
            {
               §§push(-(§§pop() * 56) * 11 + 1);
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
            §§push(§§pop() - 1 - 13 - 1 - 61 + 1 + 82 + 1);
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
         if(_loc5_)
         {
            §§push(-(§§pop() - 1 - 1 - 1 - 94));
         }
         §§pop().setDBProperties(§§pop()[§§pop()]);
         return true;
      }
      
      public final function query(param1:String, ... rest) : Object
      {
         §§push(0);
         if(_loc7_)
         {
            §§push((§§pop() * 106 - 109) * 57 * 52 + 80 - 1);
         }
         var _loc5_:* = §§pop();
         var _loc3_:SQLStatement = new SQLStatement();
         _loc3_.sqlConnection = this.connection;
         _loc3_.text = param1;
         §§push(rest.length);
         §§push(1);
         if(_loc7_)
         {
            §§push(-((§§pop() + 21 - 74) * 73) - 1);
         }
         if(§§pop() == §§pop() && §§pop()[§§pop()] is Array)
         {
            §§push(rest);
            §§push(0);
            if(_loc7_)
            {
               §§push((§§pop() - 1 - 72 + 1) * 63 + 1 + 1);
            }
            rest = §§pop()[§§pop()];
         }
         if(rest is Array)
         {
            §§push(0);
            if(_loc7_)
            {
               §§push(--(--§§pop() * 55) - 116);
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
            §§push(-(§§pop() * 115 * 55 + 2) - 1);
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
         if(_loc14_)
         {
            §§push((§§pop() * 29 - 1 - 110 + 35 + 1 - 1) * 37);
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
         if(_loc15_)
         {
            §§push(-((§§pop() + 1) * 73) + 100 - 32 - 1);
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
               §§push((§§pop() - 105 + 112 + 1 - 1) * 16 - 21 + 46);
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
         if(_loc7_)
         {
            §§push((-(§§pop() + 109 + 1 + 1) - 79) * 41);
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
            §§push((§§pop() * 90 + 1) * 14 + 1);
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
         if(_loc10_)
         {
            §§push(-(§§pop() - 1 + 1 - 112));
         }
         var _loc6_:String = §§pop().lowerFirst(§§pop()[§§pop()]);
         §§push(Reflection.getMetadataByArg(this,"",_loc6_));
         §§push(0);
         if(_loc10_)
         {
            §§push((-(§§pop() + 5) + 94 - 1) * 28);
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
         if(_loc9_)
         {
            §§push(-(§§pop() + 76 - 37 + 1) + 1 - 53);
         }
         for each(fkDef in foreignKeys)
         {
            §§push(_loc1_);
            §§push(0);
            if(_loc9_)
            {
               §§push((-((§§pop() - 1) * 78) + 1) * 105 * 99);
            }
            §§push(fkDef.arg.(@key == "className"));
            §§push(0);
            if(_loc9_)
            {
               §§push(§§pop() * 66 * 4 - 14);
            }
            var /*UnknownSlot*/:* = §§pop()[§§pop()].@value;
            §§push(_loc1_);
            §§push(0);
            if(_loc9_)
            {
               §§push(-(§§pop() * 102) - 1);
            }
            §§push(fkDef.arg.(@key == ""));
            §§push(0);
            if(_loc10_)
            {
               §§push((§§pop() - 119 + 11 - 46) * 117 - 1 - 76 + 1);
            }
            var /*UnknownSlot*/:* = §§pop()[§§pop()].@value;
            fk = ActiveRecord.schemaTranslation.getForeignKey(otherClassName,propName);
            dynamics[fk] = propName;
         }
         §§push(0);
         if(_loc9_)
         {
            §§push(§§pop() + 1 + 89 - 1 - 1 + 1 - 1);
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
            §§push(§§pop() * 88 * 71 - 1);
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
            if(_loc10_)
            {
               §§push(§§pop() + 108 - 1 - 100 + 1 + 119);
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
               §§push(--(-§§pop() * 28) - 2);
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
         if(_loc4_)
         {
            §§push(§§pop() + 1 - 26 - 1 + 46 - 1);
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
         if(_loc8_)
         {
            §§push(§§pop() + 1 + 70 - 1 - 1 - 29 + 1);
         }
         if(§§pop() == §§pop() && §§pop()[§§pop()] is Array)
         {
            §§push(rest);
            §§push(0);
            if(_loc8_)
            {
               §§push((§§pop() + 1 + 42) * 102 + 98);
            }
            rest = §§pop()[§§pop()];
         }
         §§push(0);
         if(_loc7_)
         {
            §§push(-(-(§§pop() + 21) - 1) * 4);
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
         if(_loc6_)
         {
            §§push(-((§§pop() + 24 + 107) * 106) + 14 + 81);
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
