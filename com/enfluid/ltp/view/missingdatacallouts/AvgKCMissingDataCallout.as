package com.enfluid.ltp.view.missingdatacallouts
{
   import spark.components.Callout;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import com.enfluid.ltp.view.containers.CollapsiblePanel;
   import mx.core.DeferredInstanceFromFunction;
   import spark.components.Button;
   import spark.components.Label;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.competitoranalysis.FetchMissingAvgKCCommand;
   import com.enfluid.ltp.util.Logger;
   import mx.binding.Binding;
   import assets.TextAssets;
   import spark.components.DataGroup;
   import mx.binding.BindingManager;
   import spark.events.PopUpEvent;
   import flash.events.Event;
   import spark.layouts.VerticalLayout;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.components.target;
   import mx.controls.HRule;
   import spark.effects.Move;
   import system.data.Iterator;
   import system.data.iterators.MapIterator;
   import com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import mx.controls.Spacer;
   import com.enfluid.ltp.view.components.CompetitorAnalysisContentComponent;
   import mx.events.FlexMouseEvent;
   import system.serializers.§eden:release§.debug;
   import spark.components.Group;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   
   use namespace mx_internal;
   
   public final class AvgKCMissingDataCallout extends Callout implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _AvgKCMissingDataCallout_Button1:Button;
      
      public var _AvgKCMissingDataCallout_Label2:Label;
      
      public var _AvgKCMissingDataCallout_Label3:Label;
      
      private var _684647380numMissingLabel:Label;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function AvgKCMissingDataCallout()
      {
         var com.enfluid.ltp.view.missingdatacallouts.target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._104069929model = DataModel.instance;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._AvgKCMissingDataCallout_bindingsSetup();
         var watchers:Array = [];
         com.enfluid.ltp.view.missingdatacallouts.target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_missingdatacallouts_AvgKCMissingDataCalloutWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return AvgKCMissingDataCallout[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(300);
         if(_loc4_)
         {
            §§push(§§pop() - 1 - 118 - 1 - 1);
         }
         §§pop().width = §§pop();
         this.verticalPosition = "after";
         this.layout = this._AvgKCMissingDataCallout_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._AvgKCMissingDataCallout_Array1_c);
         this.addEventListener("mouseDownOutside",this.___AvgKCMissingDataCallout_Callout1_mouseDownOutside);
         this.addEventListener("close",this.___AvgKCMissingDataCallout_Callout1_close);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() - 13 + 89 - 1);
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
         AvgKCMissingDataCallout._watcherSetupUtil = param1;
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
      
      protected final function onClickFetchData(param1:MouseEvent) : void
      {
         new FetchMissingAvgKCCommand().execute();
         this.close();
      }
      
      protected final function calloutCloseHandler(param1:PopUpEvent) : void
      {
         dispatchEvent(new Event("calloutCloseEvent"));
      }
      
      protected final function calcProcessingTime(param1:int) : String
      {
         §§push(param1);
         §§push(10);
         if(_loc7_)
         {
            §§push((-(-§§pop() + 54 + 68) - 1 - 1) * 109);
         }
         var _loc2_:int = §§pop() * §§pop();
         §§push(Math);
         §§push(_loc2_);
         §§push(60);
         if(_loc6_)
         {
            §§push((§§pop() + 1 + 1) * 4 + 20 + 1 + 1);
         }
         var _loc3_:int = §§pop().floor(§§pop() / §§pop());
         §§push(Math);
         §§push(_loc3_);
         §§push(60);
         if(_loc7_)
         {
            §§push(-§§pop() - 1 - 25 - 98);
         }
         var _loc4_:int = §§pop().floor(§§pop() / §§pop());
         var _loc5_:String = "";
         §§push(_loc4_);
         §§push(0);
         if(_loc6_)
         {
            §§push(-(§§pop() + 1 - 21 - 102) - 1);
         }
         if(§§pop() > §§pop())
         {
            §§push(_loc5_);
            §§push(_loc4_ + " hour");
            §§push(_loc4_);
            §§push(1);
            if(_loc7_)
            {
               §§push(-((§§pop() * 81 - 1) * 92));
            }
            _loc5_ = §§pop() + (§§pop() + (§§pop() > §§pop()?"s":"") + " ");
         }
         §§push(_loc3_);
         §§push(0);
         if(_loc7_)
         {
            §§push((§§pop() + 1) * 3 + 43 - 1);
         }
         if(§§pop() > §§pop())
         {
            §§push(_loc5_);
            §§push(_loc3_);
            §§push(_loc4_);
            §§push(60);
            if(_loc6_)
            {
               §§push((-((§§pop() + 1 + 1) * 85) + 1) * 117);
            }
            §§push(§§pop() - §§pop() * §§pop() + " minute");
            §§push(_loc3_);
            §§push(1);
            if(_loc6_)
            {
               §§push(---((§§pop() - 48) * 102 * 112));
            }
            _loc5_ = §§pop() + (§§pop() + (§§pop() > §§pop()?"s":"") + " ");
         }
         if(!_loc4_ && §§pop() > §§pop())
         {
            §§push(_loc5_);
            §§push(_loc2_);
            §§push(_loc3_);
            §§push(60);
            if(_loc6_)
            {
               §§push((§§pop() * 59 - 1 + 36 + 29) * 9 - 1 + 119);
            }
            _loc5_ = §§pop() + (§§pop() - §§pop() * §§pop() + " seconds ");
         }
         return _loc5_;
      }
      
      private final function _AvgKCMissingDataCallout_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(§§pop() - 73 - 87 + 1);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-§§pop() + 1 - 1 - 1 - 1);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-((§§pop() + 9 - 45 - 1 + 53) * 45) - 116);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(((§§pop() - 1) * 12 - 1) * 30);
         }
         §§pop().paddingTop = §§pop();
         return _loc1_;
      }
      
      private final function _AvgKCMissingDataCallout_Array1_c() : Array
      {
         var _loc1_:Array = [this._AvgKCMissingDataCallout_Label1_i(),this._AvgKCMissingDataCallout_HRule1_c(),this._AvgKCMissingDataCallout_Label2_i(),this._AvgKCMissingDataCallout_HRule2_c(),this._AvgKCMissingDataCallout_Button1_i(),this._AvgKCMissingDataCallout_Spacer1_c(),this._AvgKCMissingDataCallout_Label3_i()];
         return _loc1_;
      }
      
      private final function _AvgKCMissingDataCallout_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-((-§§pop() - 1 - 1) * 34) - 74 - 1);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.id = "numMissingLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.numMissingLabel = _loc1_;
         BindingManager.executeBindings(this,"numMissingLabel",this.numMissingLabel);
         return _loc1_;
      }
      
      private final function _AvgKCMissingDataCallout_HRule1_c() : HRule
      {
         var _loc1_:HRule = new HRule();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 114));
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("strokeWidth");
         §§push(1);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 1 + 1) + 91 - 9 + 1));
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _AvgKCMissingDataCallout_Label2_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.id = "_AvgKCMissingDataCallout_Label2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AvgKCMissingDataCallout_Label2 = _loc1_;
         BindingManager.executeBindings(this,"_AvgKCMissingDataCallout_Label2",this._AvgKCMissingDataCallout_Label2);
         return _loc1_;
      }
      
      private final function _AvgKCMissingDataCallout_HRule2_c() : HRule
      {
         var _loc1_:HRule = new HRule();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() - 41 + 1 - 14);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("strokeWidth");
         §§push(1);
         if(_loc2_)
         {
            §§push(((§§pop() + 51) * 114 - 21) * 28);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _AvgKCMissingDataCallout_Button1_i() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((§§pop() - 1 + 1) * 9 - 22);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push((§§pop() - 1 + 1 + 1) * 78 * 38 * 61 + 25);
         }
         §§pop().height = §§pop();
         _loc1_.label = "Fetch Now";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(20);
         if(_loc3_)
         {
            §§push(-(-(§§pop() * 38 + 1) + 1));
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___AvgKCMissingDataCallout_Button1_click);
         _loc1_.id = "_AvgKCMissingDataCallout_Button1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AvgKCMissingDataCallout_Button1 = _loc1_;
         BindingManager.executeBindings(this,"_AvgKCMissingDataCallout_Button1",this._AvgKCMissingDataCallout_Button1);
         return _loc1_;
      }
      
      public final function ___AvgKCMissingDataCallout_Button1_click(param1:MouseEvent) : void
      {
         this.onClickFetchData(param1);
      }
      
      private final function _AvgKCMissingDataCallout_Spacer1_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push(--(-§§pop() + 76) + 14);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _AvgKCMissingDataCallout_Label3_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 + 1);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.text = "Note: 1 Click Avg. KC is available only for paid Long Tail Platinum subscribers";
         §§push(_loc1_);
         §§push("color");
         §§push(6710886);
         if(_loc3_)
         {
            §§push((§§pop() - 117 + 1) * 73 - 1 - 19);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "_AvgKCMissingDataCallout_Label3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AvgKCMissingDataCallout_Label3 = _loc1_;
         BindingManager.executeBindings(this,"_AvgKCMissingDataCallout_Label3",this._AvgKCMissingDataCallout_Label3);
         return _loc1_;
      }
      
      public final function ___AvgKCMissingDataCallout_Callout1_mouseDownOutside(param1:FlexMouseEvent) : void
      {
         this.close();
      }
      
      public final function ___AvgKCMissingDataCallout_Callout1_close(param1:PopUpEvent) : void
      {
         this.calloutCloseHandler(param1);
      }
      
      private final function _AvgKCMissingDataCallout_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 4 - 1 + 1) * 0 * 19 * 83 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = model.selectedKeywordCollection.missingAvgKCCount + " of " + (model.selectedKeywordCollection.length + " keywords are missing Avg KC.");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"numMissingLabel.text");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() + 4 + 1) - 48 - 115);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return numMissingLabel.width;
         },null,"_AvgKCMissingDataCallout_Label2.width");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-((§§pop() + 112) * 66 + 1 + 1 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = "It will take about " + calcProcessingTime(model.selectedKeywordCollection.missingAvgKCCount) + "to fetch Avg. KC for these keywords.  Narrowing your filters will reduce processing time";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_AvgKCMissingDataCallout_Label2.text");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push((§§pop() + 50 - 114 - 105 - 91 + 61) * 5 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return !model.isTrial;
         },null,"_AvgKCMissingDataCallout_Button1.enabled");
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push((§§pop() * 45 - 1 + 26 - 1 - 1 - 1) * 99);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.isTrial;
         },null,"_AvgKCMissingDataCallout_Label3.includeInLayout");
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push(-(-(§§pop() * 95) * 15 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.isTrial;
         },null,"_AvgKCMissingDataCallout_Label3.visible");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get numMissingLabel() : Label
      {
         return this._684647380numMissingLabel;
      }
      
      public function set numMissingLabel(param1:Label) : void
      {
         var _loc2_:Object = this._684647380numMissingLabel;
         if(_loc2_ !== param1)
         {
            this._684647380numMissingLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numMissingLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get model() : DataModel
      {
         return this._104069929model;
      }
      
      public function set model(param1:DataModel) : void
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
   }
}
