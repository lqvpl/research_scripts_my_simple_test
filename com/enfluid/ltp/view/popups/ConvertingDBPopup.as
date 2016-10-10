package com.enfluid.ltp.view.popups
{
   import spark.components.BorderContainer;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.effects.Move;
   import mx.binding.BindingManager;
   import spark.components.Label;
   import com.adobe.cairngorm.observer.Observe;
   import mx.controls.ProgressBar;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.ViewModel;
   import spark.layouts.VerticalLayout;
   import spark.components.Group;
   import flash.events.Event;
   import mx.states.Transition;
   import com.hurlant.math.BigInteger;
   import com.hurlant.math.bi_internal;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.target;
   import mx.core.DeferredInstanceFromFunction;
   import mx.binding.Binding;
   import mx.graphics.GradientEntry;
   import mx.controls.Spacer;
   import com.photon.controller.PhotonCommand;
   import mx.effects.Parallel;
   import com.enfluid.ltp.model.constants.Countries;
   import com.enfluid.ltp.controller.common.SavePreferencesCommand;
   import com.enfluid.ltp.util.Util;
   import com.enfluid.ltp.model.constants.Constants;
   import flash.net.URLRequest;
   import mx.events.PropertyChangeEvent;
   
   use namespace bi_internal;
   use namespace mx_internal;
   
   public final class ConvertingDBPopup extends BorderContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _ConvertingDBPopup_Label1:Label;
      
      public var _ConvertingDBPopup_Label2:Label;
      
      public var _ConvertingDBPopup_Observe1:Observe;
      
      private var _1131540166progressbar:ProgressBar;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _1589792892viewModel:ViewModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ConvertingDBPopup()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._1589792892viewModel = ViewModel.instance;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._ConvertingDBPopup_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_popups_ConvertingDBPopupWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return ConvertingDBPopup[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(700);
         if(_loc4_)
         {
            §§push(-§§pop() + 42 + 1);
         }
         §§pop().width = §§pop();
         §§push(this);
         §§push(500);
         if(_loc4_)
         {
            §§push(§§pop() + 107 + 1 + 83 - 1 + 2 + 1);
         }
         §§pop().height = §§pop();
         this.layout = this._ConvertingDBPopup_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._ConvertingDBPopup_Array1_c);
         this._ConvertingDBPopup_Observe1_i();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 1 - 56) * 114));
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
         ConvertingDBPopup._watcherSetupUtil = param1;
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
            this.cornerRadius = 15;
         };
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private final function onProgressChange(param1:Number) : void
      {
         if(this.progressbar)
         {
            this.progressbar.setProgress(param1,this.viewModel.dataToConvert);
         }
      }
      
      private final function _ConvertingDBPopup_Observe1_i() : Observe
      {
         var _loc1_:Observe = new Observe();
         this._ConvertingDBPopup_Observe1 = _loc1_;
         BindingManager.executeBindings(this,"_ConvertingDBPopup_Observe1",this._ConvertingDBPopup_Observe1);
         return _loc1_;
      }
      
      private final function _ConvertingDBPopup_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         return _loc1_;
      }
      
      private final function _ConvertingDBPopup_Array1_c() : Array
      {
         var _loc1_:Array = [this._ConvertingDBPopup_Label1_i(),this._ConvertingDBPopup_Label2_i(),this._ConvertingDBPopup_Label3_c(),this._ConvertingDBPopup_Spacer1_c(),this._ConvertingDBPopup_ProgressBar1_i()];
         return _loc1_;
      }
      
      private final function _ConvertingDBPopup_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(80);
         if(_loc2_)
         {
            §§push(-§§pop() + 1 + 1);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.text = "Yikes!  We\'ve detected a problem with the data we pulled over from Version 2.  We\'re re-converting that data to fix the issue.  Thanks for your patience!";
         §§push(_loc1_);
         §§push("color");
         §§push(16711680);
         if(_loc2_)
         {
            §§push((§§pop() + 67) * 76 - 73 - 1 - 1 - 22);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(20);
         if(_loc3_)
         {
            §§push(-((-(-§§pop() + 84) - 1 + 1) * 91));
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("paddingBottom");
         §§push(15);
         if(_loc3_)
         {
            §§push(-(-§§pop() + 114 - 1));
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "_ConvertingDBPopup_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ConvertingDBPopup_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_ConvertingDBPopup_Label1",this._ConvertingDBPopup_Label1);
         return _loc1_;
      }
      
      private final function _ConvertingDBPopup_Label2_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push("fontSize");
         §§push(30);
         if(_loc2_)
         {
            §§push((--(§§pop() - 11 + 1) + 1) * 101 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("paddingBottom");
         §§push(15);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 57 + 60 - 36 + 72);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "_ConvertingDBPopup_Label2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ConvertingDBPopup_Label2 = _loc1_;
         BindingManager.executeBindings(this,"_ConvertingDBPopup_Label2",this._ConvertingDBPopup_Label2);
         return _loc1_;
      }
      
      private final function _ConvertingDBPopup_Label3_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Depending upon the amount of data you have, this could take a few minutes.";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(18);
         if(_loc3_)
         {
            §§push(--§§pop() * 75 * 98);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _ConvertingDBPopup_Spacer1_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(20);
         if(_loc2_)
         {
            §§push(-((§§pop() - 1 - 1) * 14 * 60 - 1) + 10);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _ConvertingDBPopup_ProgressBar1_i() : ProgressBar
      {
         var _loc1_:ProgressBar = new ProgressBar();
         §§push(_loc1_);
         §§push(80);
         if(_loc2_)
         {
            §§push(§§pop() * 106 * 119 + 76);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push(-§§pop() + 111 + 32);
         }
         §§pop().height = §§pop();
         _loc1_.mode = "manual";
         §§push(_loc1_);
         §§push("trackHeight");
         §§push(20);
         if(_loc3_)
         {
            §§push((§§pop() - 10) * 16 - 1 - 1 - 1 - 110);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.id = "progressbar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.progressbar = _loc1_;
         BindingManager.executeBindings(this,"progressbar",this.progressbar);
         return _loc1_;
      }
      
      private final function _ConvertingDBPopup_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 85) * 79 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return viewModel.dataConverted;
         },null,"_ConvertingDBPopup_Observe1.source");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(-((-§§pop() - 1) * 79 * 115 + 88 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Function
         {
            return onProgressChange;
         },null,"_ConvertingDBPopup_Observe1.handler");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(--(§§pop() + 68 + 19));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return viewModel.showReConvertingMessage;
         },null,"_ConvertingDBPopup_Label1.includeInLayout");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 1 + 118);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return viewModel.showReConvertingMessage;
         },null,"_ConvertingDBPopup_Label1.visible");
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 16 - 1 + 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = "Please wait a moment while we upgrade" + "\n" + "your data for Long Tail Pro 3.0";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_ConvertingDBPopup_Label2.text");
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(-(-(-§§pop() - 1) * 69) - 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = viewModel.conversionText;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"progressbar.label");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get progressbar() : ProgressBar
      {
         return this._1131540166progressbar;
      }
      
      public function set progressbar(param1:ProgressBar) : void
      {
         var _loc2_:Object = this._1131540166progressbar;
         if(_loc2_ !== param1)
         {
            this._1131540166progressbar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressbar",_loc2_,param1));
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
