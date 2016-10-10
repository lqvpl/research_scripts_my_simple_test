package com.enfluid.ltp.view.components
{
   import spark.components.Label;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import flash.utils.getTimer;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import mx.core.IFlexModuleFactory;
   import spark.components.gridClasses.GridColumn;
   import com.enfluid.ltp.model.constants.Values;
   import mx.binding.Binding;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public class SelfAdjustingLabel extends Label implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _1354837162column:GridColumn;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function SelfAdjustingLabel()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         var bindings:Array = this._SelfAdjustingLabel_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_components_SelfAdjustingLabelWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return SelfAdjustingLabel[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(35);
         if(_loc3_)
         {
            §§push(-((§§pop() + 1 - 1) * 45) + 1);
         }
         §§pop().height = §§pop();
         §§push(this);
         §§push(5);
         if(_loc4_)
         {
            §§push(-(-((-§§pop() + 82 + 82) * 52) + 1));
         }
         §§pop().top = §§pop();
         §§push(this);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(-§§pop() + 95 + 71) + 49 - 19 + 112);
         }
         §§pop().maxDisplayedLines = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(((§§pop() - 87) * 8 - 1 - 1) * 90 - 73);
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
         SelfAdjustingLabel._watcherSetupUtil = param1;
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
            this.fontWeight = "normal";
            this.verticalAlign = "middle";
            this.lineBreak = "toFit";
            this.paddingLeft = 3;
         };
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      override public function set text(param1:String) : void
      {
         if(param1 == Values.NOT_FETCHED.toString())
         {
            super.text = "";
         }
         else
         {
            super.text = param1;
         }
      }
      
      private final function _SelfAdjustingLabel_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 43 + 1 - 55);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            if(isNaN(column.width))
            {
               §§push(0);
               if(_loc2_)
               {
                  §§push(-(§§pop() + 1 - 108));
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
         if(_loc2_)
         {
            §§push((§§pop() - 33 + 18) * 101 * 33 + 80);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return column.visible;
         },null,"this.includeInLayout");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(§§pop() + 117) + 90);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return column.visible;
         },null,"this.visible");
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
