package com.enfluid.ltp.view
{
   import spark.components.HGroup;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
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
            §§push(-§§pop() - 1 + 67);
         }
         §§pop().gap = §§pop();
         this.mxmlContent = [this._MainView_LeftRail1_c(),this._MainView_VDividedBox1_c()];
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() * 63 - 1) * 63 * 62 + 1) + 116);
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
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 21 - 98) * 64);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() * 42 - 66 - 99 + 65 + 57);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push(400);
         if(_loc3_)
         {
            §§push(-§§pop() - 1 - 1);
         }
         §§pop().maxWidth = §§pop();
         §§push(_loc1_);
         §§push(225);
         if(_loc2_)
         {
            §§push((-§§pop() - 66 - 15 - 1) * 103);
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
         if(_loc3_)
         {
            §§push(-§§pop() + 29 - 33 - 12);
         }
         §§pop().percentWidth = §§pop();
         §§push(temp);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) + 1);
         }
         §§pop().percentHeight = §§pop();
         §§push(temp);
         §§push("paddingLeft");
         §§push(0);
         if(_loc3_)
         {
            §§push(--§§pop() * 56);
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
               if(_loc2_)
               {
                  §§push(§§pop() - 116 - 99 + 108);
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
                        §§push(§§pop() - 1 - 1 + 1);
                     }
                     §§push("percentHeight");
                     §§push(100);
                     if(_loc1_)
                     {
                        §§push((§§pop() - 0 + 1) * 2 * 25 - 1 - 74);
                     }
                     §§push("minWidth");
                     §§push(150);
                     if(_loc2_)
                     {
                        §§push(§§pop() + 1 - 1 + 85 - 95);
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
                     if(_loc1_)
                     {
                        §§push(-(§§pop() - 85 - 1 + 58) - 1 - 21);
                     }
                     §§push("percentHeight");
                     §§push(100);
                     if(_loc1_)
                     {
                        §§push(-((-(§§pop() + 1) + 0 - 90) * 101 + 1));
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
            §§push(-(§§pop() * 107 - 1 + 28) + 30);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            if(viewModel.showDomainCaptcha)
            {
               §§push(200);
               if(_loc1_)
               {
                  §§push(-(§§pop() + 1) - 79 + 111);
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
         if(_loc2_)
         {
            §§push(-§§pop() - 1 + 4 - 66);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.preferences.showDebugPanel;
         },null,"_MainView_DebugPanel1.includeInLayout");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() + 28 - 1 + 1 + 46) - 1);
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
