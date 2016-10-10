package info.noirbizarre.airorm
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.OutputProgressEvent;
   import com.adobe.cairngorm.observer.Observe;
   import mx.binding.BindingManager;
   import flash.events.MouseEvent;
   import flash.utils.getQualifiedClassName;
   import info.noirbizarre.airorm.utils.sql_db;
   import flash.net.registerClassAlias;
   import info.noirbizarre.airorm.utils.Reflection;
   import spark.components.HGroup;
   import spark.primitives.Rect;
   import flash.data.SQLTableSchema;
   import flash.data.SQLConnection;
   import flash.data.SQLStatement;
   import flash.data.SQLColumnSchema;
   import flash.data.SQLSchemaResult;
   import spark.components.DataGrid;
   import spark.components.GridColumnHeaderGroup;
   import spark.components.gridClasses.IGridVisualElement;
   import spark.components.gridClasses.GridColumn;
   import flash.utils.getDefinitionByName;
   import info.noirbizarre.airorm.utils.DB;
   import mx.graphics.SolidColor;
   
   use namespace sql_db;
   
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
            §§push(-(§§pop() - 1 - 21));
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
            §§push((§§pop() * 6 * 89 - 1) * 20);
         }
         for each(fkDef in foreignKeys)
         {
            §§push(_loc3_);
            §§push(0);
            if(_loc15_)
            {
               §§push((§§pop() + 108 - 1) * 92 * 80 - 92);
            }
            §§push(fkDef.arg.(@key == "className"));
            §§push(0);
            if(_loc15_)
            {
               §§push(-(-§§pop() * 36) - 1 - 1);
            }
            var /*UnknownSlot*/:* = §§pop()[§§pop()].@value;
            §§push(_loc3_);
            §§push(0);
            if(_loc14_)
            {
               §§push((§§pop() - 12 + 1) * 83);
            }
            §§push(fkDef.arg.(@key == ""));
            §§push(0);
            if(_loc14_)
            {
               §§push(-(§§pop() * 92) + 52 + 1);
            }
            var /*UnknownSlot*/:* = §§pop()[§§pop()].@value;
            fk = <variable type="uint"/>;
            fk.@name = ActiveRecord.schemaTranslation.getForeignKey(otherClassName,propName);
            def.appendChild(fk);
         }
         §§push(_loc3_);
         §§push(0);
         if(_loc15_)
         {
            §§push(-(§§pop() * 74 - 75 - 46 + 1 + 44 + 1));
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
            if(_loc15_)
            {
               §§push(§§pop() + 115 + 1 + 1 + 1 + 11);
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
            if(_loc14_)
            {
               §§push(§§pop() * 73 * 49 * 11 - 1);
            }
            for each(field in publicVars)
            {
               found = false;
               §§push(0);
               if(_loc14_)
               {
                  §§push(§§pop() - 1 - 70 - 46);
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
            §§push(§§pop() - 77 - 1 - 1 + 77 + 1 - 1);
         }
         for each(field in joinVars)
         {
            dbschema = DB.getSchema(conn);
            §§push(_loc3_);
            §§push(0);
            if(_loc15_)
            {
               §§push((-§§pop() + 63 - 90) * 111 + 71);
            }
            var /*UnknownSlot*/:* = field.arg.(@key == "className").@value;
            §§push(_loc3_);
            §§push(0);
            if(_loc15_)
            {
               §§push(--§§pop() + 116);
            }
            var /*UnknownSlot*/:* = _loc6_.@value;
            objFK = ActiveRecord.schemaTranslation.getForeignKey(obj);
            otherFK = ActiveRecord.schemaTranslation.getForeignKey(other);
            §§push(_loc3_);
            §§push(0);
            if(_loc15_)
            {
               §§push(§§pop() + 57 + 1 + 70 - 117 + 1 + 1 - 100);
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
