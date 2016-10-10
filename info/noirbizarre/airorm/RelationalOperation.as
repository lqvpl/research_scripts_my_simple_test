package info.noirbizarre.airorm
{
   import spark.primitives.Rect;
   import mx.binding.BindingManager;
   import flash.data.SQLResult;
   import flash.events.Event;
   import com.enfluid.ltp.controller.common.SavePreferencesCommand;
   import info.noirbizarre.airorm.utils.sql_db;
   import com.enfluid.ltp.model.vo.RankCheckItemVO;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.common.ExportDataGridCSVCommand;
   import com.enfluid.ltp.model.constants.Constants;
   import flash.data.SQLStatement;
   import com.enfluid.ltp.util.MajesticUtils;
   import mx.rpc.http.HTTPService;
   import mx.rpc.Responder;
   import mx.graphics.SolidColor;
   import mx.events.ResizeEvent;
   import spark.components.Group;
   import info.noirbizarre.airorm.utils.Reflection;
   import flash.net.getClassByAlias;
   import flash.utils.getQualifiedClassName;
   
   use namespace sql_db;
   
   public final class RelationalOperation
   {
      
      public static const BELONGS_TO:String = "BelongsTo";
      
      public static const HAS_MANY:String = "HasMany";
      
      public static const HAS_ONE:String = "HasOne";
      
      public static const MANY_TO_MANY:String = "ManyToMany";
       
      
      public var error:String;
      
      public var relationship:String = "";
      
      protected var cond:Object;
      
      protected var joinTable:String;
      
      protected var joins:String;
      
      protected var thatClass:String;
      
      protected var thatFields:Object;
      
      protected var thatForeignKey:String;
      
      protected var thatObj:info.noirbizarre.airorm.ActiveRecord;
      
      protected var thatPrimaryKey:String;
      
      protected var thatProp:String;
      
      protected var thatTable:String;
      
      protected var thisClass:String;
      
      protected var thisFields:Object;
      
      protected var thisForeignKey:String;
      
      protected var thisObj:info.noirbizarre.airorm.ActiveRecord;
      
      protected var thisPrimaryKey:String;
      
      protected var thisProp:String;
      
      protected var thisTable:String;
      
      public function RelationalOperation(param1:Object, param2:String)
      {
         var clazz:Class = null;
         var joinFields:Object = null;
         var obj:Object = param1;
         var prop:String = param2;
         super();
         if(obj is String)
         {
            this.thisClass = Reflection.getShortClassName(obj);
            try
            {
               clazz = getClassByAlias(this.thisClass);
               this.thisObj = new clazz();
            }
            catch(e:Error)
            {
               throw new AOError("Unhandled object type " + thisClass);
            }
         }
         else if(obj is info.noirbizarre.airorm.ActiveRecord)
         {
            this.thisClass = obj.className;
            this.thisObj = obj as info.noirbizarre.airorm.ActiveRecord;
         }
         else if(obj is Class)
         {
            this.thisClass = Reflection.getShortClassName(obj);
            try
            {
               this.thisObj = new obj();
            }
            catch(e:Error)
            {
               throw new AOError("Error instanciating  " + thisClass);
            }
            if(!this.thisObj is info.noirbizarre.airorm.ActiveRecord)
            {
               throw new AOError("Unhandled object type " + this.thisClass);
            }
         }
         else
         {
            throw new AOError("Unhandled object type " + getQualifiedClassName(obj));
         }
         var schTran:SchemaTranslation = info.noirbizarre.airorm.ActiveRecord.schemaTranslation;
         §§push(_loc3_);
         §§push(Reflection.getMetadataByArg(obj,"",prop));
         §§push(0);
         if(_loc9_)
         {
            §§push(-(§§pop() - 1 + 28 - 1));
         }
         var /*UnknownSlot*/:* = §§pop()[§§pop()];
         if(!propDesc)
         {
            throw new AOError("Property not found: " + this.thisClass + "." + prop);
         }
         if(propDesc.@name == HAS_ONE)
         {
            this.relationship = HAS_ONE;
         }
         else if(propDesc.@name == HAS_MANY)
         {
            this.relationship = HAS_MANY;
         }
         else if(propDesc.@name == BELONGS_TO)
         {
            this.relationship = BELONGS_TO;
         }
         else if(propDesc.@name == MANY_TO_MANY)
         {
            this.relationship = MANY_TO_MANY;
         }
         else
         {
            throw new AOError("Unknow relationship: Metadata not found on" + this.thisClass + "." + prop);
         }
         §§push(this);
         §§push(0);
         if(_loc10_)
         {
            §§push(-(--(§§pop() - 7 - 113) * 63) - 1);
         }
         §§pop().thatClass = propDesc.arg.(@key == "className").@value;
         this.thatObj = new (getClassByAlias(this.thatClass) as Class)();
         this.thisTable = schTran.getTable(this.thisClass);
         this.thatTable = schTran.getTable(this.thatClass);
         this.thisPrimaryKey = schTran.getPrimaryKey(this.thisClass);
         this.thatPrimaryKey = schTran.getPrimaryKey(this.thatClass);
         this.thisFields = this.thisObj.getFields();
         this.thatFields = this.thatObj.getFields();
         if(!this.thisFields)
         {
            throw new Error("Cannot find table or columns in \'" + this.thisTable + "\' for ActiveRecord class \'" + this.thisClass + "\'");
         }
         if(!this.thatFields)
         {
            throw new Error("Cannot find table or columns in \'" + this.thatTable + "\' for ActiveRecord class \'" + this.thatClass + "\'");
         }
         this.thisProp = prop;
         §§push(0);
         if(_loc9_)
         {
            §§push((-§§pop() + 44) * 116);
         }
         if(propDesc.arg.(@key == "property").length)
         {
            §§push(this);
            §§push(0);
            if(_loc10_)
            {
               §§push((§§pop() + 64) * 28 + 93);
            }
            §§pop().thatProp = propDesc.arg.(@key == "property").@value;
         }
         if(HAS_ONE === _loc4_)
         {
            §§push(0);
            if(_loc9_)
            {
               §§push(-(-(§§pop() * 53 + 86 - 1) + 13) * 31);
            }
         }
         else if(HAS_MANY === _loc4_)
         {
            §§push(1);
            if(_loc9_)
            {
               §§push(-(§§pop() - 33 + 1) + 1 - 7 - 1 + 23);
            }
         }
         else if(BELONGS_TO === _loc4_)
         {
            §§push(2);
            if(_loc9_)
            {
               §§push(-(§§pop() * 94 + 1) + 1 - 5);
            }
         }
         else if(MANY_TO_MANY === _loc4_)
         {
            §§push(3);
            if(_loc10_)
            {
               §§push(-((-§§pop() + 1) * 74 * 5));
            }
         }
         else
         {
            §§push(4);
            if(_loc9_)
            {
               §§push((§§pop() + 97 + 1) * 81 + 63 + 1 + 1);
            }
         }
         switch(§§pop())
         {
            case 0:
               if(this.thatProp)
               {
                  this.thisForeignKey = schTran.getForeignKey(this.thatClass,this.thatProp);
               }
               else
               {
                  this.thisForeignKey = schTran.getForeignKey(this.thisClass);
               }
               this.thatForeignKey = schTran.getForeignKey(this.thisClass,this.thisProp);
               break;
            case 1:
               if(this.thatProp)
               {
                  this.thisForeignKey = schTran.getForeignKey(this.thatClass,this.thatProp);
               }
               else
               {
                  this.thisForeignKey = schTran.getForeignKey(this.thisClass);
               }
               this.thatForeignKey = schTran.getForeignKey(this.thisClass,this.thisProp);
               break;
            case 2:
               if(this.thatProp)
               {
                  this.thisForeignKey = schTran.getForeignKey(this.thatClass,this.thatProp);
               }
               else
               {
                  this.thisForeignKey = schTran.getForeignKey(this.thisClass);
               }
               this.thatForeignKey = schTran.getForeignKey(this.thisClass,this.thisProp);
               break;
            case 3:
               this.thisForeignKey = schTran.getForeignKey(this.thisClass);
               this.thatForeignKey = schTran.getForeignKey(this.thatClass);
               this.joinTable = schTran.getJoinTable(this.thisClass,prop,this.thatClass,this.thatProp);
               joinFields = this.thisObj.getFields(this.joinTable);
               if(!joinFields)
               {
                  this.joinTable = schTran.getJoinTable(this.thatClass,this.thatProp,this.thisClass,prop);
                  joinFields = this.thisObj.getFields(this.joinTable);
                  if(!joinFields)
                  {
                     throw new Error("Join not found");
                  }
               }
               this.joins = " JOIN " + this.joinTable + " ON " + this.thatTable + "." + this.thatPrimaryKey + " = " + this.joinTable + "." + this.thatForeignKey;
         }
      }
      
      public final function countRelated(param1:String = null, param2:Array = null) : uint
      {
         if(BELONGS_TO === _loc3_)
         {
            §§push(0);
            if(_loc4_)
            {
               §§push(§§pop() + 1 - 5 + 0 - 1);
            }
         }
         else if(HAS_ONE === _loc3_)
         {
            §§push(1);
            if(_loc5_)
            {
               §§push(§§pop() + 93 - 1 + 1);
            }
         }
         else if(HAS_MANY === _loc3_)
         {
            §§push(2);
            if(_loc4_)
            {
               §§push((-(§§pop() - 1 - 1) + 21 - 1) * 85);
            }
         }
         else if(MANY_TO_MANY === _loc3_)
         {
            §§push(3);
            if(_loc4_)
            {
               §§push(§§pop() - 1 - 1 - 26 - 14 + 103);
            }
         }
         else
         {
            §§push(4);
            if(_loc4_)
            {
               §§push((§§pop() + 101 - 1) * 54 - 74);
            }
         }
         switch(§§pop())
         {
            case 0:
               return this.thatObj.count(this.thatPrimaryKey + " = ?",[this.thisObj[this.thatForeignKey]]);
            case 1:
               this.cond = this.mergeConditions(param1,param2,this.thisForeignKey + " = ?",[this.thisObj.id]);
               return this.thatObj.count(this.cond.conditions,this.cond.params);
            case 2:
               this.cond = this.mergeConditions(param1,param2,this.thisForeignKey + " = ?",[this.thisObj.id]);
               return this.thatObj.count(this.cond.conditions,this.cond.params);
            case 3:
               this.cond = this.mergeConditions(param1,param2,this.joinTable + "." + this.thisForeignKey + " = ?",[this.thisObj.id]);
               return this.thatObj.count(this.cond.conditions,this.cond.params,this.joins);
            default:
               §§push(0);
               if(_loc5_)
               {
                  return §§pop() + 1 + 1 + 1 - 101;
               }
         }
      }
      
      public final function deleteRelated(param1:String = null, param2:Array = null, param3:Boolean = true) : uint
      {
         var _loc4_:Array = null;
         var _loc5_:* = null;
         §§push(0);
         if(_loc9_)
         {
            §§push((§§pop() - 61) * 87 - 1 + 83 + 1);
         }
         var _loc6_:* = §§pop();
         if(BELONGS_TO === _loc7_)
         {
            §§push(0);
            if(_loc8_)
            {
               §§push(-(§§pop() + 69 + 69 + 12));
            }
         }
         else if(HAS_ONE === _loc7_)
         {
            §§push(1);
            if(_loc8_)
            {
               §§push(-(§§pop() - 1) - 1);
            }
         }
         else if(HAS_MANY === _loc7_)
         {
            §§push(2);
            if(_loc8_)
            {
               §§push(-((§§pop() + 33) * 35) - 51 + 1 + 5);
            }
         }
         else if(MANY_TO_MANY === _loc7_)
         {
            §§push(3);
            if(_loc9_)
            {
               §§push(§§pop() + 118 - 1 - 1 + 1 + 1 - 1 + 28);
            }
         }
         else
         {
            §§push(4);
            if(_loc9_)
            {
               §§push((-(-§§pop() - 90 - 80 - 112) - 8) * 53);
            }
         }
         switch(§§pop())
         {
            case 0:
               return this.thatObj.deleteAll(this.thatPrimaryKey + " = ?",[this.thisObj[this.thatForeignKey]]);
            case 1:
               this.cond = this.mergeConditions(param1,param2,this.thisForeignKey + " = ?",[this.thisObj.id]);
               return this.thatObj.deleteAll(this.cond.conditions,this.cond.params);
            case 2:
               this.cond = this.mergeConditions(param1,param2,this.thisForeignKey + " = ?",[this.thisObj.id]);
               return this.thatObj.deleteAll(this.cond.conditions,this.cond.params);
            case 3:
               this.cond = this.mergeConditions(param1,param2,this.joinTable + "." + this.thisForeignKey + " = ?",[this.thisObj.id]);
               _loc4_ = this.thatObj.findAll(this.cond.conditions,this.cond.params,this.joins);
               §§push(0);
               if(_loc9_)
               {
                  §§push(-(§§pop() * 63) - 68);
               }
               _loc6_ = §§pop();
               while(_loc6_ < _loc4_.length)
               {
                  _loc4_[_loc6_] = _loc4_[_loc6_].id;
                  _loc6_++;
               }
               _loc5_ = "(" + _loc4_.join(",") + ")";
               this.thisObj.query("DELETE FROM " + this.joinTable + " WHERE " + this.thatForeignKey + " IN " + _loc5_);
               if(!param3)
               {
                  this.thisObj.query("DELETE FROM " + this.thatTable + " WHERE " + this.thatPrimaryKey + " IN " + _loc5_);
               }
               return _loc4_.length;
            default:
               §§push(0);
               if(_loc9_)
               {
                  return -(§§pop() + 37 - 1 - 72);
               }
         }
      }
      
      public final function loadRelated(param1:String = null, param2:Array = null, param3:String = null, param4:uint = 0, param5:uint = 0) : Object
      {
         if(BELONGS_TO === _loc6_)
         {
            §§push(0);
            if(_loc7_)
            {
               §§push(---§§pop() * 75 + 1);
            }
         }
         else if(HAS_ONE === _loc6_)
         {
            §§push(1);
            if(_loc8_)
            {
               §§push((§§pop() - 1 + 77 - 10) * 106 + 2);
            }
         }
         else if(HAS_MANY === _loc6_)
         {
            §§push(2);
            if(_loc7_)
            {
               §§push(§§pop() - 1 - 1 - 43);
            }
         }
         else if(MANY_TO_MANY === _loc6_)
         {
            §§push(3);
            if(_loc8_)
            {
               §§push(-(§§pop() * 44 * 96 - 49 + 1 - 1) * 100);
            }
         }
         else
         {
            §§push(4);
            if(_loc7_)
            {
               §§push((§§pop() - 116) * 69 - 1 + 1 + 1);
            }
         }
         switch(§§pop())
         {
            case 0:
               return this.thatObj.findFirst(this.thatPrimaryKey + " = ?",[this.thisObj[this.thatForeignKey]]);
            case 1:
               this.cond = this.mergeConditions(param1,param2,this.thisForeignKey + " = ?",[this.thisObj.id]);
               return this.thatObj.findFirst(this.cond.conditions,this.cond.params,param3);
            case 2:
               this.cond = this.mergeConditions(param1,param2,this.thisForeignKey + " = ?",[this.thisObj.id]);
               return this.thatObj.findAll(this.cond.conditions,this.cond.params,param3,param4,param5);
            case 3:
               this.cond = this.mergeConditions(param1,param2,this.joinTable + "." + this.thisForeignKey + " = ?",[this.thisObj.id]);
               return this.thatObj.findAll(this.cond.conditions,this.cond.params,param3,param4,param5,this.joins);
            default:
               return null;
         }
      }
      
      public final function saveRelated() : Boolean
      {
         var obj:info.noirbizarre.airorm.ActiveRecord = null;
         var result:Boolean = false;
         var insStmt:SQLStatement = null;
         this.thisObj.connection.begin();
         if(this.relationship != BELONGS_TO && !this.thisObj.id)
         {
            this.thisObj.save();
         }
         try
         {
            if(BELONGS_TO === _loc2_)
            {
               §§push(0);
               if(_loc5_)
               {
                  §§push(-(-(§§pop() - 1 + 10) + 43));
               }
            }
            else if(HAS_ONE === _loc2_)
            {
               §§push(1);
               if(_loc4_)
               {
                  §§push(-(-(§§pop() - 65 - 13) + 88));
               }
            }
            else if(HAS_MANY === _loc2_)
            {
               §§push(2);
               if(_loc4_)
               {
                  §§push(-§§pop() - 37 - 1);
               }
            }
            else if(MANY_TO_MANY === _loc2_)
            {
               §§push(3);
               if(_loc5_)
               {
                  §§push(§§pop() + 25 - 1 - 1);
               }
            }
            else
            {
               §§push(4);
               if(_loc5_)
               {
                  §§push(-(-(§§pop() * 7) - 1) - 114);
               }
            }
            switch(§§pop())
            {
               case 0:
                  this.thatObj.save();
                  this.thisObj[this.thatForeignKey] = this.thatObj.id;
                  result = this.thisObj.save();
                  break;
               case 1:
                  this.thatObj[this.thisForeignKey] = this.thisObj.id;
                  result = this.thatObj.save();
                  break;
               case 2:
                  §§push(0);
                  if(_loc4_)
                  {
                     §§push(-(-(§§pop() - 25 - 85 + 99) * 47) + 1);
                  }
                  for each(obj in this.thisObj[this.thisProp])
                  {
                     obj[this.thisForeignKey] = this.thisObj.id;
                     obj.save();
                  }
                  result = true;
                  break;
               case 3:
                  insStmt = new SQLStatement();
                  insStmt.sqlConnection = this.thisObj.connection;
                  insStmt.text = "INSERT OR REPLACE INTO " + this.joinTable + " (" + this.thisForeignKey + ", " + this.thatForeignKey + ") VALUES (?, ?)";
                  §§push(insStmt.parameters);
                  §§push(0);
                  if(_loc4_)
                  {
                     §§push(-((§§pop() - 33 + 1 - 1 - 114) * 7 - 1));
                  }
                  §§pop()[§§pop()] = this.thisObj.id;
                  §§push(0);
                  if(_loc5_)
                  {
                     §§push(-§§pop() - 1 - 1 + 3 - 82);
                  }
                  for each(obj in this.thisObj[this.thisProp])
                  {
                     obj.save();
                     §§push(insStmt.parameters);
                     §§push(1);
                     if(_loc5_)
                     {
                        §§push((§§pop() + 1 + 1) * 30 - 25 + 1 + 33);
                     }
                     §§pop()[§§pop()] = obj.id;
                     insStmt.execute();
                  }
                  result = true;
                  break;
               default:
                  result = false;
            }
            this.thisObj.connection.commit();
         }
         catch(e:Error)
         {
            thisObj.connection.rollback();
         }
         return result;
      }
      
      sql_db final function mergeConditions(param1:String, param2:Array, param3:String, param4:Array) : Object
      {
         var _loc5_:Object = {
            "conditions":"",
            "params":[]
         };
         if(param1 && param3)
         {
            _loc5_.conditions = param1 + " AND " + param3;
         }
         else if(param1)
         {
            _loc5_.conditions = param1;
         }
         else if(param3)
         {
            _loc5_.conditions = param3;
         }
         if(param2 && param2.length && param4 && param4.length)
         {
            _loc5_.params = param2.concat(param4);
         }
         else if(param2 && param2.length)
         {
            _loc5_.params = param2;
         }
         else if(param4 && param4.length)
         {
            _loc5_.params = param4;
         }
         return _loc5_;
      }
   }
}
