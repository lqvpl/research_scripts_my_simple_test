package com.enfluid.ltp.view
{
   import spark.components.HGroup;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import flash.events.ContextMenuEvent;
   import com.enfluid.ltp.model.constants.CurrencyAndNumberFormatter;
   import flash.desktop.Clipboard;
   import flash.desktop.ClipboardFormats;
   import mx.containers.VDividedBox;
   import mx.core.UIComponentDescriptor;
   import mx.binding.Binding;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class MainView extends HGroup implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _MainView_DebugPanel1:com.enfluid.ltp.view.DebugPanel;
      
      public var _MainView_KeywordsDataGrid1:com.enfluid.ltp.view.KeywordsDataGrid;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      private var _1589792892viewModel:ViewModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function MainView()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._104069929model = DataModel.instance;
         this._1589792892viewModel = ViewModel.instance;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._MainView_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_MainViewWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return MainView[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(0);
         if(_loc4_)
         {
            §§push(--(§§pop() + 98 - 43) - 1 - 1);
         }
         §§pop().gap = §§pop();
         this.mxmlContent = [this._MainView_LeftRail1_c(),this._MainView_VDividedBox1_c()];
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() - 57) - 1 + 1);
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
         MainView._watcherSetupUtil = param1;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private final function _MainView_LeftRail1_c() : LeftRail
      {
         var _loc1_:LeftRail = new LeftRail();
         §§push(_loc1_);
         §§push(15);
         if(_loc2_)
         {
            §§push(-(--(§§pop() - 90 - 41) + 10) - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(-(-§§pop() * 12) * 93) + 1 + 102);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push(400);
         if(_loc2_)
         {
            §§push((§§pop() + 25) * 92 - 26 + 1 + 1);
         }
         §§pop().maxWidth = §§pop();
         §§push(_loc1_);
         §§push(225);
         if(_loc2_)
         {
            §§push((-§§pop() + 1) * 73);
         }
         §§pop().minWidth = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _MainView_VDividedBox1_c() : VDividedBox
      {
         var temp:VDividedBox = new VDividedBox();
         §§push(temp);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() * 72) - 14 + 99);
         }
         §§pop().percentWidth = §§pop();
         §§push(temp);
         §§push(100);
         if(_loc2_)
         {
            §§push(((§§pop() + 113) * 37 - 1 - 49) * 8);
         }
         §§pop().percentHeight = §§pop();
         §§push(temp);
         §§push("paddingLeft");
         §§push(0);
         if(_loc3_)
         {
            §§push(---(§§pop() - 1) + 22 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!temp.document)
         {
            temp.document = this;
         }
         temp.mx_internal::_documentDescriptor = new UIComponentDescriptor({
            "type":VDividedBox,
            "stylesFactory":function():void
            {
               §§push(this);
               §§push(0);
               if(_loc1_)
               {
                  §§push(-(§§pop() * 4 - 1));
               }
               §§pop().paddingLeft = §§pop();
            },
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":KeywordsDataGrid,
                  "id":"_MainView_KeywordsDataGrid1",
                  "propertiesFactory":function():Object
                  {
                     §§push("percentWidth");
                     §§push(100);
                     if(_loc2_)
                     {
                        §§push((§§pop() - 1 - 77 + 105 + 1) * 116);
                     }
                     §§push("percentHeight");
                     §§push(100);
                     if(_loc1_)
                     {
                        §§push(((§§pop() + 14 + 1) * 48 - 87) * 65);
                     }
                     §§push("minWidth");
                     §§push(150);
                     if(_loc2_)
                     {
                        §§push(§§pop() + 1 - 1 + 1);
                     }
                     return null;
                  }
               }),new UIComponentDescriptor({
                  "type":DebugPanel,
                  "id":"_MainView_DebugPanel1",
                  "propertiesFactory":function():Object
                  {
                     §§push("percentWidth");
                     §§push(100);
                     if(_loc2_)
                     {
                        §§push(-((§§pop() - 1 - 1) * 1) * 22);
                     }
                     §§push("percentHeight");
                     §§push(100);
                     if(_loc2_)
                     {
                        §§push(-(-§§pop() - 1 + 50) * 90 + 102);
                     }
                     return null;
                  }
               })]};
            }
         });
         temp.mx_internal::_documentDescriptor.document = this;
         return temp;
      }
      
      private final function _MainView_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() * 91 + 19 - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            if(viewModel.showDomainCaptcha)
            {
               §§push(200);
               if(_loc2_)
               {
                  §§push(§§pop() + 1 - 27 - 1 - 1);
               }
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(Number(undefined));
            }
            return §§pop();
         },null,"_MainView_KeywordsDataGrid1.maxHeight");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() - 1) * 53 - 1 + 29);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.preferences.showDebugPanel;
         },null,"_MainView_DebugPanel1.includeInLayout");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 1 - 73));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.preferences.showDebugPanel;
         },null,"_MainView_DebugPanel1.visible");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get model() : DataModel
      {
         return this._104069929model;
      }
      
      private function set model(param1:DataModel) : void
      {
         var _loc2_:Object = this._104069929model;
         if(_loc2_ !== param1)
         {
            this._104069929model = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"model",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get viewModel() : ViewModel
      {
         return this._1589792892viewModel;
      }
      
      private function set viewModel(param1:ViewModel) : void
      {
         var _loc2_:Object = this._1589792892viewModel;
         if(_loc2_ !== param1)
         {
            this._1589792892viewModel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"viewModel",_loc2_,param1));
            }
         }
      }
   }
}
