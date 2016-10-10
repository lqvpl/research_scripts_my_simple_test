package com.enfluid.ltp.view.components
{
   import spark.components.Group;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.events.FlexEvent;
   import mx.core.IFlexModuleFactory;
   import spark.components.gridClasses.GridColumn;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.skins.KeywordDataGridSkinInnerClass4;
   import mx.binding.BindingManager;
   import mx.binding.Binding;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public class SelfAdjustingGroup extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _1354837162column:GridColumn;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function SelfAdjustingGroup()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._SelfAdjustingGroup_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_components_SelfAdjustingGroupWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return SelfAdjustingGroup[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc4_)
         {
            §§push(-(§§pop() + 12 - 48 - 76) - 1);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-(-§§pop() - 56) + 81) + 66);
         }
         var /*UnknownSlot*/:* = uint(§§pop());
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         SelfAdjustingGroup._watcherSetupUtil = param1;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var factory:IFlexModuleFactory = param1;
         super.moduleFactory = factory;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration(null,styleManager);
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.fontSize = 14;
         };
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private final function _SelfAdjustingGroup_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 70 - 1) - 108);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            if(isNaN(column.width))
            {
               §§push(0);
               if(_loc2_)
               {
                  §§push(-(-(-§§pop() - 1) + 1) - 115);
               }
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(Number(column.width));
            }
            return §§pop();
         },null,"this.width");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() + 86 - 5 - 83 - 118) * 68);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return column.visible;
         },null,"this.visible");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() + 53 + 1 - 22);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return column.visible;
         },null,"this.includeInLayout");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get column() : GridColumn
      {
         return this._1354837162column;
      }
      
      public function set column(param1:GridColumn) : void
      {
         var _loc2_:Object = this._1354837162column;
         if(_loc2_ !== param1)
         {
            this._1354837162column = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"column",_loc2_,param1));
            }
         }
      }
   }
}
