package info.noirbizarre.airorm
{
   import com.enfluid.ltp.view.renderers.TabRenderer;
   import mx.binding.BindingManager;
   import flash.utils.getQualifiedClassName;
   import info.noirbizarre.airorm.utils.sql_db;
   import flash.net.registerClassAlias;
   import info.noirbizarre.airorm.utils.Reflection;
   import com.hurlant.math.bi_internal;
   import flash.data.SQLTableSchema;
   import flash.data.SQLConnection;
   import flash.data.SQLStatement;
   import flash.data.SQLColumnSchema;
   import flash.data.SQLSchemaResult;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.renderers.headers.target;
   import com.enfluid.ltp.view.renderers.headers.ProxiesHeaderRenderer;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.binding.Binding;
   import info.noirbizarre.airorm.utils.DB;
   import flash.utils.Proxy;
   
   use namespace sql_db;
   use namespace bi_internal;
   use namespace mx_internal;
   
   public final class ORM
   {
      
      private static var tablesUpdated:Object = {};
      
      private static var registeredClasses:Object = {};
      
      sql_db static var dbTypes:Object = {
         "String":"VARCHAR",
         "Number":"DOUBLE",
         "Boolean":"BOOLEAN",
         "uint":"INTEGER",
         "int":"INTEGER",
         "Date":"DATETIME",
         "flash.utils.ByteArray":"BLOB"
      };
       
      
      public function ORM()
      {
         super();
      }
      
      public static function registerClass(param1:Class) : void
      {
         if(!registeredClasses[getQualifiedClassName(param1)])
         {
            registerClassAlias(getQualifiedClassName(param1),param1);
            registerClassAlias(Reflection.getShortClassName(param1),param1);
            registeredClasses[getQualifiedClassName(param1)] = param1;
         }
      }
      
      public static function updateDB() : void
      {
         var _loc1_:Class = null;
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() * 29 + 103 - 1);
         }
         for each(_loc1_ in registeredClasses)
         {
            updateTable(_loc1_);
         }
      }
      
      public static function updateTable(param1:Object, param2:SQLTableSchema = null) : void
      {
         var conn:SQLConnection = null;
         var sql:String = null;
         var def:XML = null;
         var fkDef:XML = null;
         var publicVars:XMLList = null;
         var field:XML = null;
         var fieldDef:Array = null;
         var external:String = null;
         var column:SQLColumnSchema = null;
         var joinVars:XMLList = null;
         var otherClassName:String = null;
         var propName:String = null;
         var fk:XML = null;
         var fields:Array = null;
         var found:Boolean = false;
         var dbschema:SQLSchemaResult = null;
         var other:String = null;
         var prop:String = null;
         var objFK:String = null;
         var otherFK:String = null;
         var otherProp:String = null;
         var obj:Object = param1;
         var schema:SQLTableSchema = param2;
         if(obj is ActiveRecord)
         {
            conn = (obj as ActiveRecord).connection;
            registerClassAlias(getQualifiedClassName(obj),getDefinitionByName(getQualifiedClassName(obj)) as Class);
            registerClassAlias(obj.className,getDefinitionByName(getQualifiedClassName(obj)) as Class);
         }
         else if(obj is Class)
         {
            conn = DB.getConnection("main",true);
            registerClassAlias(getQualifiedClassName(obj),obj as Class);
            registerClassAlias(Reflection.getShortClassName(obj),obj as Class);
         }
         var tableName:String = ActiveRecord.schemaTranslation.getTable(obj);
         var primaryKey:String = ActiveRecord.schemaTranslation.getPrimaryKey(obj);
         var stmt:SQLStatement = new SQLStatement();
         stmt.sqlConnection = conn;
         def = Reflection.describe(obj).copy();
         var foreignKeys:XMLList = Reflection.getMetadata(obj,"BelongsTo") + Reflection.getMetadata(obj,"HasOne");
         §§push(0);
         if(_loc15_)
         {
            §§push(---(§§pop() - 1) + 1 - 70 - 1);
         }
         for each(fkDef in foreignKeys)
         {
            §§push(_loc3_);
            §§push(0);
            if(_loc14_)
            {
               §§push(((§§pop() - 1) * 84 - 1) * 4);
            }
            §§push(fkDef.arg.(@key == "className"));
            §§push(0);
            if(_loc15_)
            {
               §§push(((§§pop() + 75) * 66 - 73 + 1 - 29) * 90 - 15);
            }
            var /*UnknownSlot*/:* = §§pop()[§§pop()].@value;
            §§push(_loc3_);
            §§push(0);
            if(_loc15_)
            {
               §§push(-((-(§§pop() + 1 - 1) - 30) * 52) + 1);
            }
            §§push(fkDef.arg.(@key == ""));
            §§push(0);
            if(_loc14_)
            {
               §§push(-(-§§pop() + 1) - 87 + 98 + 1);
            }
            var /*UnknownSlot*/:* = §§pop()[§§pop()].@value;
            fk = <variable type="uint"/>;
            fk.@name = ActiveRecord.schemaTranslation.getForeignKey(otherClassName,propName);
            def.appendChild(fk);
         }
         §§push(_loc3_);
         §§push(0);
         if(_loc14_)
         {
            §§push(§§pop() + 98 - 1 - 1 + 1);
         }
         var /*UnknownSlot*/:* = def.§*§.((localName() == "variable" || localName() == "accessor" && @access == "readwrite") && (@type == "String" || @type == "Number" || @type == "Boolean" || @type == "uint" || @type == "int" || @type == "Date" || @type == "flash.utils.ByteArray") && !(hasOwnProperty("metadata") && §§pop() > §§pop()));
         if(!schema)
         {
            schema = DB.getTableSchema(conn,tableName);
         }
         conn.begin();
         if(!schema)
         {
            fields = [];
            §§push(0);
            if(_loc14_)
            {
               §§push(§§pop() * 85 - 111 - 1 + 97 + 1 - 1);
            }
            for each(field in publicVars)
            {
               fieldDef = [field.@name,dbTypes[field.@type]];
               if(field.@name == primaryKey)
               {
                  fieldDef.push("PRIMARY KEY AUTOINCREMENT");
               }
               fields.push(fieldDef.join(" "));
            }
            sql = "CREATE TABLE " + tableName + " (" + fields.join(", ") + ")";
            stmt.text = sql;
            stmt.execute();
         }
         else
         {
            §§push(0);
            if(_loc15_)
            {
               §§push((§§pop() - 50 + 50 - 1) * 61 + 50 - 17);
            }
            for each(field in publicVars)
            {
               found = false;
               §§push(0);
               if(_loc15_)
               {
                  §§push(-(§§pop() * 9 + 1) - 89);
               }
               for each(column in schema.columns)
               {
                  if(column.name == field.@name)
                  {
                     found = true;
                     break;
                  }
               }
               if(!found)
               {
                  fieldDef = ["ADD",field.@name,dbTypes[field.@type]];
                  sql = "ALTER TABLE " + tableName + " " + fieldDef.join(" ");
                  stmt.text = sql;
                  stmt.execute();
               }
            }
         }
         joinVars = Reflection.getMetadata(obj,"ManyToMany");
         §§push(0);
         if(_loc14_)
         {
            §§push((-(§§pop() + 1 - 88 + 57) + 76) * 103 - 1);
         }
         for each(field in joinVars)
         {
            dbschema = DB.getSchema(conn);
            §§push(_loc3_);
            §§push(0);
            if(_loc15_)
            {
               §§push((§§pop() * 31 + 53 - 89 + 1 - 85) * 118 - 111);
            }
            var /*UnknownSlot*/:* = field.arg.(@key == "className").@value;
            §§push(_loc3_);
            §§push(0);
            if(_loc15_)
            {
               §§push(-(§§pop() * 80 - 1) + 1);
            }
            var /*UnknownSlot*/:* = _loc6_.@value;
            objFK = ActiveRecord.schemaTranslation.getForeignKey(obj);
            otherFK = ActiveRecord.schemaTranslation.getForeignKey(other);
            §§push(_loc3_);
            §§push(0);
            if(_loc14_)
            {
               §§push(-(§§pop() - 1) - 1);
            }
            var /*UnknownSlot*/:* = _loc6_.@value;
            tableName = ActiveRecord.schemaTranslation.getJoinTable(obj,prop,other,otherProp);
            sql = "CREATE TABLE IF NOT EXISTS " + tableName + " (" + objFK + " INTEGER, " + otherFK + " INTEGER, ";
            sql = sql + ("PRIMARY KEY (" + objFK + " , " + otherFK + "))");
            stmt.text = sql;
            stmt.execute();
         }
         if(conn.inTransaction)
         {
            conn.commit();
         }
         DB.refreshSchema(conn);
      }
   }
}
