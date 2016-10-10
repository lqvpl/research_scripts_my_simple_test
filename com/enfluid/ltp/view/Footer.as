package com.enfluid.ltp.view
{
   import spark.components.HGroup;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import com.enfluid.ltp.view.components.Link;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import mx.binding.BindingManager;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import mx.controls.Spacer;
   import com.hurlant.crypto.prng.Random;
   import com.hurlant.util.Memory;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import mx.binding.Binding;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class Footer extends HGroup implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _Footer_Link1:Link;
      
      public var _Footer_Link2:Link;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      private var _1589792892viewModel:ViewModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function Footer()
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
         var bindings:Array = this._Footer_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_FooterWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return Footer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc4_)
         {
            §§push((§§pop() + 6) * 9 * 0 + 1 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(this);
         §§push(20);
         if(_loc4_)
         {
            §§push((§§pop() - 1 - 63 - 87 + 33 + 1) * 114);
         }
         §§pop().height = §§pop();
         this.verticalAlign = "middle";
         this.mxmlContent = [this._Footer_Link1_i(),this._Footer_Link2_i(),this._Footer_Spacer1_c(),this._Footer_Link3_c()];
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() + 116 + 1 + 91);
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
         Footer._watcherSetupUtil = param1;
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
      
      private final function _Footer_Link1_i() : Link
      {
         var _loc1_:Link = new Link();
         §§push(_loc1_);
         §§push("color");
         §§push(16693504);
         if(_loc2_)
         {
            §§push(-§§pop() - 19 + 114);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(15);
         if(_loc2_)
         {
            §§push(§§pop() + 28 + 1 - 1 + 21);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         §§push(_loc1_);
         §§push("paddingTop");
         §§push(3);
         if(_loc3_)
         {
            §§push(-(--§§pop() * 27) * 96 - 1 + 116);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.addEventListener("click",this.___Footer_Link1_click);
         _loc1_.id = "_Footer_Link1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._Footer_Link1 = _loc1_;
         BindingManager.executeBindings(this,"_Footer_Link1",this._Footer_Link1);
         return _loc1_;
      }
      
      public final function ___Footer_Link1_click(param1:MouseEvent) : void
      {
         this.viewModel.showLicensePopup = true;
      }
      
      private final function _Footer_Link2_i() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.text = "Upgrade to Long Tail Platinum";
         §§push(_loc1_);
         §§push("color");
         §§push(16693504);
         if(_loc2_)
         {
            §§push(-(-§§pop() + 69) * 21);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(15);
         if(_loc2_)
         {
            §§push(§§pop() * 67 * 1 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("paddingTop");
         §§push(3);
         if(_loc3_)
         {
            §§push(((§§pop() - 16) * 19 - 35 - 65 - 1) * 38 * 77);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.addEventListener("click",this.___Footer_Link2_click);
         _loc1_.id = "_Footer_Link2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._Footer_Link2 = _loc1_;
         BindingManager.executeBindings(this,"_Footer_Link2",this._Footer_Link2);
         return _loc1_;
      }
      
      public final function ___Footer_Link2_click(param1:MouseEvent) : void
      {
         this.viewModel.showUpgradeToPlatinumPopup = true;
      }
      
      private final function _Footer_Spacer1_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-§§pop() * 116 - 2 + 1 + 43 + 13 - 1);
         }
         §§pop().percentWidth = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _Footer_Link3_c() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.text = "Get Keyword Training at Long Tail University";
         §§push(_loc1_);
         §§push("color");
         §§push(16693504);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 76 + 100));
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(15);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 1 - 8) + 112));
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("paddingTop");
         §§push(3);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 1) * 102 + 1 - 20 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.addEventListener("click",this.___Footer_Link3_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___Footer_Link3_click(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("http://www.LongTailUniversity.com"));
      }
      
      private final function _Footer_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() - 113) + 73);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.isTrial;
         },null,"_Footer_Link1.includeInLayout");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 78) * 70);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            §§push(model.trialDaysRemaining + " Day");
            §§push(model.trialDaysRemaining);
            §§push(1);
            if(_loc2_)
            {
               §§push(-§§pop() - 8 - 1 - 104);
            }
            var _loc1_:* = §§pop() + (§§pop() == §§pop()?"":"s") + " Remaining.  Register Now!";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_Footer_Link1.text");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() * 116) - 6);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.isTrial;
         },null,"_Footer_Link1.visible");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(-§§pop() + 1 + 1 - 1 + 1 + 70 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return !model.isPlatinum && !model.isTrial;
         },null,"_Footer_Link2.includeInLayout");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push((-(§§pop() * 75) - 1 + 95) * 34 * 116);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return !model.isPlatinum && !model.isTrial;
         },null,"_Footer_Link2.visible");
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
