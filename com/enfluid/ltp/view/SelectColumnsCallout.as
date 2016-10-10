package com.enfluid.ltp.view
{
   import spark.components.Callout;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import flash.filesystem.FileStream;
   import flash.filesystem.File;
   import flash.filesystem.FileMode;
   import flash.utils.setTimeout;
   import spark.components.CheckBox;
   import spark.components.Label;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import spark.layouts.VerticalLayout;
   import spark.components.Scroller;
   import spark.components.VGroup;
   import mx.binding.BindingManager;
   import flash.events.Event;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.AnalyzeMajesticCompetitionCommand;
   import com.enfluid.ltp.model.constants.Values;
   import spark.primitives.Rect;
   import mx.events.FlexMouseEvent;
   import mx.binding.Binding;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   import mx.core.DeferredInstanceFromFunction;
   
   use namespace mx_internal;
   
   public final class SelectColumnsCallout extends Callout implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _1808391805_SelectColumnsCallout_CheckBox1:CheckBox;
      
      private var _1808391806_SelectColumnsCallout_CheckBox2:CheckBox;
      
      private var _1808391807_SelectColumnsCallout_CheckBox3:CheckBox;
      
      private var _1808391808_SelectColumnsCallout_CheckBox4:CheckBox;
      
      private var _1808391809_SelectColumnsCallout_CheckBox5:CheckBox;
      
      private var _1808391810_SelectColumnsCallout_CheckBox6:CheckBox;
      
      private var _1808391811_SelectColumnsCallout_CheckBox7:CheckBox;
      
      private var _1808391812_SelectColumnsCallout_CheckBox8:CheckBox;
      
      private var _1808391813_SelectColumnsCallout_CheckBox9:CheckBox;
      
      public var _SelectColumnsCallout_Label1:Label;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function SelectColumnsCallout()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._104069929model = DataModel.instance;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._SelectColumnsCallout_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_SelectColumnsCalloutWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return SelectColumnsCallout[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(250);
         if(_loc4_)
         {
            §§push(-(§§pop() * 99 - 118));
         }
         §§pop().width = §§pop();
         this.verticalPosition = "after";
         this.layout = this._SelectColumnsCallout_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._SelectColumnsCallout_Array1_c);
         this.addEventListener("mouseDownOutside",this.___SelectColumnsCallout_Callout1_mouseDownOutside);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1) * 9) - 3 - 28);
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
         SelectColumnsCallout._watcherSetupUtil = param1;
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
      
      protected final function onChanged() : void
      {
         this.model.selectedKeywordCollection.refresh();
         this.model.selectedKeywordCollection.project.save();
      }
      
      protected final function verifyUserClick(param1:MouseEvent) : void
      {
         var _loc2_:CheckBox = CheckBox(param1.target);
         var _loc3_:String = _loc2_.label.split(" ").join("");
         if(_loc2_.selected)
         {
            new SetUserEvent("UserEvent.HeaderColums." + _loc3_ + "Actived").execute();
         }
         else
         {
            new SetUserEvent("UserEvent.HeaderColums." + _loc3_ + "Deactived").execute();
         }
      }
      
      private final function _SelectColumnsCallout_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push((§§pop() - 108 - 41 - 1 - 1 - 1) * 72);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(-(-§§pop() + 80));
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(§§pop() * 102 + 25 + 1);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push((§§pop() * 42 + 1) * 32);
         }
         §§pop().paddingTop = §§pop();
         return _loc1_;
      }
      
      private final function _SelectColumnsCallout_Array1_c() : Array
      {
         var _loc1_:Array = [this._SelectColumnsCallout_Scroller1_c()];
         return _loc1_;
      }
      
      private final function _SelectColumnsCallout_Scroller1_c() : Scroller
      {
         var _loc1_:Scroller = new Scroller();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-§§pop() - 17 - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(-(-(§§pop() - 80) + 1) + 1));
         }
         §§pop().percentHeight = §§pop();
         _loc1_.viewport = this._SelectColumnsCallout_VGroup1_c();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SelectColumnsCallout_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() - 109) - 1);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.mxmlContent = [this._SelectColumnsCallout_CheckBox1_i(),this._SelectColumnsCallout_CheckBox2_i(),this._SelectColumnsCallout_CheckBox3_i(),this._SelectColumnsCallout_CheckBox4_i(),this._SelectColumnsCallout_CheckBox5_i(),this._SelectColumnsCallout_CheckBox6_i(),this._SelectColumnsCallout_CheckBox7_i(),this._SelectColumnsCallout_CheckBox8_i(),this._SelectColumnsCallout_CheckBox9_i(),this._SelectColumnsCallout_Label1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SelectColumnsCallout_CheckBox1_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "Suggested Bid";
         _loc1_.addEventListener("change",this.___SelectColumnsCallout_CheckBox1_change);
         _loc1_.addEventListener("click",this.___SelectColumnsCallout_CheckBox1_click);
         _loc1_.id = "_SelectColumnsCallout_CheckBox1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SelectColumnsCallout_CheckBox1 = _loc1_;
         BindingManager.executeBindings(this,"_SelectColumnsCallout_CheckBox1",this._SelectColumnsCallout_CheckBox1);
         return _loc1_;
      }
      
      public final function ___SelectColumnsCallout_CheckBox1_change(param1:Event) : void
      {
         this.onChanged();
      }
      
      public final function ___SelectColumnsCallout_CheckBox1_click(param1:MouseEvent) : void
      {
         this.verifyUserClick(param1);
      }
      
      private final function _SelectColumnsCallout_CheckBox2_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "Local Searches";
         _loc1_.addEventListener("change",this.___SelectColumnsCallout_CheckBox2_change);
         _loc1_.addEventListener("click",this.___SelectColumnsCallout_CheckBox2_click);
         _loc1_.id = "_SelectColumnsCallout_CheckBox2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SelectColumnsCallout_CheckBox2 = _loc1_;
         BindingManager.executeBindings(this,"_SelectColumnsCallout_CheckBox2",this._SelectColumnsCallout_CheckBox2);
         return _loc1_;
      }
      
      public final function ___SelectColumnsCallout_CheckBox2_change(param1:Event) : void
      {
         this.onChanged();
      }
      
      public final function ___SelectColumnsCallout_CheckBox2_click(param1:MouseEvent) : void
      {
         this.verifyUserClick(param1);
      }
      
      private final function _SelectColumnsCallout_CheckBox3_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "Global Searches";
         _loc1_.addEventListener("change",this.___SelectColumnsCallout_CheckBox3_change);
         _loc1_.addEventListener("click",this.___SelectColumnsCallout_CheckBox3_click);
         _loc1_.id = "_SelectColumnsCallout_CheckBox3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SelectColumnsCallout_CheckBox3 = _loc1_;
         BindingManager.executeBindings(this,"_SelectColumnsCallout_CheckBox3",this._SelectColumnsCallout_CheckBox3);
         return _loc1_;
      }
      
      public final function ___SelectColumnsCallout_CheckBox3_change(param1:Event) : void
      {
         this.onChanged();
      }
      
      public final function ___SelectColumnsCallout_CheckBox3_click(param1:MouseEvent) : void
      {
         this.verifyUserClick(param1);
      }
      
      private final function _SelectColumnsCallout_CheckBox4_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "Advertiser Competition";
         _loc1_.addEventListener("change",this.___SelectColumnsCallout_CheckBox4_change);
         _loc1_.addEventListener("click",this.___SelectColumnsCallout_CheckBox4_click);
         _loc1_.id = "_SelectColumnsCallout_CheckBox4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SelectColumnsCallout_CheckBox4 = _loc1_;
         BindingManager.executeBindings(this,"_SelectColumnsCallout_CheckBox4",this._SelectColumnsCallout_CheckBox4);
         return _loc1_;
      }
      
      public final function ___SelectColumnsCallout_CheckBox4_change(param1:Event) : void
      {
         this.onChanged();
      }
      
      public final function ___SelectColumnsCallout_CheckBox4_click(param1:MouseEvent) : void
      {
         this.verifyUserClick(param1);
      }
      
      private final function _SelectColumnsCallout_CheckBox5_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "Num Words";
         _loc1_.addEventListener("change",this.___SelectColumnsCallout_CheckBox5_change);
         _loc1_.addEventListener("click",this.___SelectColumnsCallout_CheckBox5_click);
         _loc1_.id = "_SelectColumnsCallout_CheckBox5";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SelectColumnsCallout_CheckBox5 = _loc1_;
         BindingManager.executeBindings(this,"_SelectColumnsCallout_CheckBox5",this._SelectColumnsCallout_CheckBox5);
         return _loc1_;
      }
      
      public final function ___SelectColumnsCallout_CheckBox5_change(param1:Event) : void
      {
         this.onChanged();
      }
      
      public final function ___SelectColumnsCallout_CheckBox5_click(param1:MouseEvent) : void
      {
         this.verifyUserClick(param1);
      }
      
      private final function _SelectColumnsCallout_CheckBox6_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "Google Title Competition";
         _loc1_.addEventListener("change",this.___SelectColumnsCallout_CheckBox6_change);
         _loc1_.addEventListener("click",this.___SelectColumnsCallout_CheckBox6_click);
         _loc1_.id = "_SelectColumnsCallout_CheckBox6";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SelectColumnsCallout_CheckBox6 = _loc1_;
         BindingManager.executeBindings(this,"_SelectColumnsCallout_CheckBox6",this._SelectColumnsCallout_CheckBox6);
         return _loc1_;
      }
      
      public final function ___SelectColumnsCallout_CheckBox6_change(param1:Event) : void
      {
         this.onChanged();
      }
      
      public final function ___SelectColumnsCallout_CheckBox6_click(param1:MouseEvent) : void
      {
         this.verifyUserClick(param1);
      }
      
      private final function _SelectColumnsCallout_CheckBox7_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "Bing Title Competition";
         _loc1_.addEventListener("change",this.___SelectColumnsCallout_CheckBox7_change);
         _loc1_.addEventListener("click",this.___SelectColumnsCallout_CheckBox7_click);
         _loc1_.id = "_SelectColumnsCallout_CheckBox7";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SelectColumnsCallout_CheckBox7 = _loc1_;
         BindingManager.executeBindings(this,"_SelectColumnsCallout_CheckBox7",this._SelectColumnsCallout_CheckBox7);
         return _loc1_;
      }
      
      public final function ___SelectColumnsCallout_CheckBox7_change(param1:Event) : void
      {
         this.onChanged();
      }
      
      public final function ___SelectColumnsCallout_CheckBox7_click(param1:MouseEvent) : void
      {
         this.verifyUserClick(param1);
      }
      
      private final function _SelectColumnsCallout_CheckBox8_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "Domain Availability";
         _loc1_.addEventListener("change",this.___SelectColumnsCallout_CheckBox8_change);
         _loc1_.addEventListener("click",this.___SelectColumnsCallout_CheckBox8_click);
         _loc1_.id = "_SelectColumnsCallout_CheckBox8";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SelectColumnsCallout_CheckBox8 = _loc1_;
         BindingManager.executeBindings(this,"_SelectColumnsCallout_CheckBox8",this._SelectColumnsCallout_CheckBox8);
         return _loc1_;
      }
      
      public final function ___SelectColumnsCallout_CheckBox8_change(param1:Event) : void
      {
         this.onChanged();
      }
      
      public final function ___SelectColumnsCallout_CheckBox8_click(param1:MouseEvent) : void
      {
         this.verifyUserClick(param1);
      }
      
      private final function _SelectColumnsCallout_CheckBox9_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "Amazon Keyword Competitiveness";
         _loc1_.addEventListener("change",this.___SelectColumnsCallout_CheckBox9_change);
         _loc1_.addEventListener("click",this.___SelectColumnsCallout_CheckBox9_click);
         _loc1_.id = "_SelectColumnsCallout_CheckBox9";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SelectColumnsCallout_CheckBox9 = _loc1_;
         BindingManager.executeBindings(this,"_SelectColumnsCallout_CheckBox9",this._SelectColumnsCallout_CheckBox9);
         return _loc1_;
      }
      
      public final function ___SelectColumnsCallout_CheckBox9_change(param1:Event) : void
      {
         this.onChanged();
      }
      
      public final function ___SelectColumnsCallout_CheckBox9_click(param1:MouseEvent) : void
      {
         this.verifyUserClick(param1);
      }
      
      private final function _SelectColumnsCallout_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 1 - 97) - 1 - 1));
         }
         §§pop().percentWidth = §§pop();
         _loc1_.text = "*Amazon does not operate in the country you selected for this project.";
         §§push(_loc1_);
         §§push("paddingLeft");
         §§push(16);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 51 + 27) * 30));
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.id = "_SelectColumnsCallout_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SelectColumnsCallout_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_SelectColumnsCallout_Label1",this._SelectColumnsCallout_Label1);
         return _loc1_;
      }
      
      public final function ___SelectColumnsCallout_Callout1_mouseDownOutside(param1:FlexMouseEvent) : void
      {
         this.close();
      }
      
      private final function _SelectColumnsCallout_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push((-§§pop() - 5) * 97 - 114);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedKeywordCollection.project.suggestedBidEnabled;
         },null,"_SelectColumnsCallout_CheckBox1.selected");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push((-§§pop() - 113 - 1 - 64) * 68);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedKeywordCollection.project.localSearchesEnabled;
         },null,"_SelectColumnsCallout_CheckBox2.selected");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push((-§§pop() - 36 + 3 - 1) * 111);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedKeywordCollection.project.globalSearchesEnabled;
         },null,"_SelectColumnsCallout_CheckBox3.selected");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(§§pop() - 110 + 1 - 118);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedKeywordCollection.project.advertiserCompEnabled;
         },null,"_SelectColumnsCallout_CheckBox4.selected");
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push(§§pop() + 39 - 93 - 1 + 29 - 47 + 55 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedKeywordCollection.project.numWordsEnabled;
         },null,"_SelectColumnsCallout_CheckBox5.selected");
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(--(§§pop() - 20 + 1) - 1 + 98 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedKeywordCollection.project.googleTitleCompEnabled;
         },null,"_SelectColumnsCallout_CheckBox6.selected");
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push(§§pop() + 96 - 1 - 97 + 7 - 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedKeywordCollection.project.bingTitleCompEnabled;
         },null,"_SelectColumnsCallout_CheckBox7.selected");
         §§push(result);
         §§push(7);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 46) - 1 - 1) - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedKeywordCollection.project.domainsEnabled;
         },null,"_SelectColumnsCallout_CheckBox8.selected");
         §§push(result);
         §§push(8);
         if(_loc3_)
         {
            §§push(§§pop() - 17 - 1 + 1 + 10 + 77);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return Boolean(model.selectedKeywordCollection.project.country.amazonSite);
         },null,"_SelectColumnsCallout_CheckBox9.enabled");
         §§push(result);
         §§push(9);
         if(_loc2_)
         {
            §§push(-(§§pop() - 36 + 15) * 77 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedKeywordCollection.project.amazonKCEnabled;
         },null,"_SelectColumnsCallout_CheckBox9.selected");
         §§push(result);
         §§push(10);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 1 + 1 + 39);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return !model.selectedKeywordCollection.project.country.amazonSite;
         },null,"_SelectColumnsCallout_Label1.includeInLayout");
         §§push(result);
         §§push(11);
         if(_loc2_)
         {
            §§push(-((§§pop() - 1) * 117 + 1) - 45);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return !model.selectedKeywordCollection.project.country.amazonSite;
         },null,"_SelectColumnsCallout_Label1.visible");
         §§push(result);
         §§push(12);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 1) * 119 - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _SelectColumnsCallout_CheckBox1.selected;
         },function(param1:*):void
         {
            model.selectedKeywordCollection.project.suggestedBidEnabled = param1;
         },"model.selectedKeywordCollection.project.suggestedBidEnabled");
         §§push(result);
         §§push(12);
         if(_loc3_)
         {
            §§push(-((-§§pop() + 1 + 55) * 6) - 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 1 - 1 + 45 + 1 + 14);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 116 - 2 + 1 + 35 - 1 - 5);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 1 + 19 - 92 - 1 - 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(12);
         if(_loc2_)
         {
            §§push(§§pop() * 93 + 35 + 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(13);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 12 - 1) + 112 + 19 - 90);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _SelectColumnsCallout_CheckBox2.selected;
         },function(param1:*):void
         {
            model.selectedKeywordCollection.project.localSearchesEnabled = param1;
         },"model.selectedKeywordCollection.project.localSearchesEnabled");
         §§push(result);
         §§push(13);
         if(_loc3_)
         {
            §§push((-(§§pop() * 30) + 15) * 73 + 49 - 93);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(--((§§pop() + 24 - 109) * 76 + 16));
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 1 + 1) * 100);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 35 + 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(13);
         if(_loc3_)
         {
            §§push(((§§pop() - 1) * 55 + 1) * 70);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(14);
         if(_loc2_)
         {
            §§push(§§pop() * 49 + 1 - 75 + 70 - 95 + 1 - 3);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _SelectColumnsCallout_CheckBox3.selected;
         },function(param1:*):void
         {
            model.selectedKeywordCollection.project.globalSearchesEnabled = param1;
         },"model.selectedKeywordCollection.project.globalSearchesEnabled");
         §§push(result);
         §§push(14);
         if(_loc2_)
         {
            §§push(§§pop() + 30 - 1 - 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(-((-(-§§pop() + 12 + 1) - 13) * 18));
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push((--§§pop() - 76) * 20 * 10 * 92);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push((§§pop() * 114 - 1) * 52 - 103);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(14);
         if(_loc2_)
         {
            §§push(-(-(§§pop() * 23 * 54) + 77 - 42));
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(15);
         if(_loc2_)
         {
            §§push(-§§pop() + 1 + 10 - 1 + 1 - 95);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _SelectColumnsCallout_CheckBox4.selected;
         },function(param1:*):void
         {
            model.selectedKeywordCollection.project.advertiserCompEnabled = param1;
         },"model.selectedKeywordCollection.project.advertiserCompEnabled");
         §§push(result);
         §§push(15);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1 + 108) * 5 * 80));
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(§§pop() - 30 - 1 + 1 + 104 + 66);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push((-§§pop() + 1) * 64 + 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push((§§pop() - 103) * 83 - 41 - 1 + 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(15);
         if(_loc3_)
         {
            §§push((§§pop() - 1 + 12) * 79);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(16);
         if(_loc2_)
         {
            §§push(-((-§§pop() - 47) * 103) * 43 * 101 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _SelectColumnsCallout_CheckBox5.selected;
         },function(param1:*):void
         {
            model.selectedKeywordCollection.project.numWordsEnabled = param1;
         },"model.selectedKeywordCollection.project.numWordsEnabled");
         §§push(result);
         §§push(16);
         if(_loc2_)
         {
            §§push(§§pop() * 51 + 1 - 1 - 41);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push(§§pop() * 34 + 46 + 1 - 18);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push(§§pop() * 20 + 24 + 1 - 1 - 70 + 109);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push(§§pop() * 109 + 114 + 35);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(16);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 1 - 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(17);
         if(_loc3_)
         {
            §§push((-(-§§pop() + 51 + 1) + 1) * 69);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _SelectColumnsCallout_CheckBox6.selected;
         },function(param1:*):void
         {
            model.selectedKeywordCollection.project.googleTitleCompEnabled = param1;
         },"model.selectedKeywordCollection.project.googleTitleCompEnabled");
         §§push(result);
         §§push(17);
         if(_loc2_)
         {
            §§push(-(§§pop() - 87) - 46 + 1 + 1 - 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push(-(-§§pop() * 96 + 1 + 32 - 1 + 1));
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 50 + 53 + 1 - 76);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(-((§§pop() * 92 + 34) * 15));
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(17);
         if(_loc2_)
         {
            §§push(§§pop() * 51 * 36 * 107 * 77 - 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(18);
         if(_loc3_)
         {
            §§push((§§pop() + 68 + 1 + 1) * 92);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _SelectColumnsCallout_CheckBox7.selected;
         },function(param1:*):void
         {
            model.selectedKeywordCollection.project.bingTitleCompEnabled = param1;
         },"model.selectedKeywordCollection.project.bingTitleCompEnabled");
         §§push(result);
         §§push(18);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 117 - 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1 + 39) * 94 * 42) * 116);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 38 + 78) * 84 + 1 - 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push((-§§pop() - 8 + 1) * 40 + 73);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(18);
         if(_loc3_)
         {
            §§push((-(§§pop() + 15) - 1 + 85) * 113 - 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(19);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 8 + 1 - 8 + 1) * 107));
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _SelectColumnsCallout_CheckBox8.selected;
         },function(param1:*):void
         {
            model.selectedKeywordCollection.project.domainsEnabled = param1;
         },"model.selectedKeywordCollection.project.domainsEnabled");
         §§push(result);
         §§push(19);
         if(_loc2_)
         {
            §§push(§§pop() + 53 - 86 + 1 - 1 - 1 + 42 + 104);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(7);
         if(_loc3_)
         {
            §§push((-(§§pop() + 54) + 1) * 119);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(7);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) - 1 + 42);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(7);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 1 + 1 + 112 - 1 - 1));
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(19);
         if(_loc2_)
         {
            §§push(-§§pop() + 1 + 1 - 1 + 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(20);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 1) + 10));
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _SelectColumnsCallout_CheckBox9.selected;
         },function(param1:*):void
         {
            model.selectedKeywordCollection.project.amazonKCEnabled = param1;
         },"model.selectedKeywordCollection.project.amazonKCEnabled");
         §§push(result);
         §§push(20);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 1 + 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(9);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 95 - 1 + 33);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(9);
         if(_loc3_)
         {
            §§push((§§pop() * 24 - 1 + 1) * 107 - 29);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(9);
         if(_loc3_)
         {
            §§push((-§§pop() - 1 + 103) * 83 + 55);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(20);
         if(_loc3_)
         {
            §§push(-(§§pop() * 111 * 35 * 108 * 16));
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _SelectColumnsCallout_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         this.model.selectedKeywordCollection.project.suggestedBidEnabled = this._SelectColumnsCallout_CheckBox1.selected;
         this.model.selectedKeywordCollection.project.localSearchesEnabled = this._SelectColumnsCallout_CheckBox2.selected;
         this.model.selectedKeywordCollection.project.globalSearchesEnabled = this._SelectColumnsCallout_CheckBox3.selected;
         this.model.selectedKeywordCollection.project.advertiserCompEnabled = this._SelectColumnsCallout_CheckBox4.selected;
         this.model.selectedKeywordCollection.project.numWordsEnabled = this._SelectColumnsCallout_CheckBox5.selected;
         this.model.selectedKeywordCollection.project.googleTitleCompEnabled = this._SelectColumnsCallout_CheckBox6.selected;
         this.model.selectedKeywordCollection.project.bingTitleCompEnabled = this._SelectColumnsCallout_CheckBox7.selected;
         this.model.selectedKeywordCollection.project.domainsEnabled = this._SelectColumnsCallout_CheckBox8.selected;
         this.model.selectedKeywordCollection.project.amazonKCEnabled = this._SelectColumnsCallout_CheckBox9.selected;
      }
      
      [Bindable(event="propertyChange")]
      public function get _SelectColumnsCallout_CheckBox1() : CheckBox
      {
         return this._1808391805_SelectColumnsCallout_CheckBox1;
      }
      
      public function set _SelectColumnsCallout_CheckBox1(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1808391805_SelectColumnsCallout_CheckBox1;
         if(_loc2_ !== param1)
         {
            this._1808391805_SelectColumnsCallout_CheckBox1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SelectColumnsCallout_CheckBox1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _SelectColumnsCallout_CheckBox2() : CheckBox
      {
         return this._1808391806_SelectColumnsCallout_CheckBox2;
      }
      
      public function set _SelectColumnsCallout_CheckBox2(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1808391806_SelectColumnsCallout_CheckBox2;
         if(_loc2_ !== param1)
         {
            this._1808391806_SelectColumnsCallout_CheckBox2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SelectColumnsCallout_CheckBox2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _SelectColumnsCallout_CheckBox3() : CheckBox
      {
         return this._1808391807_SelectColumnsCallout_CheckBox3;
      }
      
      public function set _SelectColumnsCallout_CheckBox3(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1808391807_SelectColumnsCallout_CheckBox3;
         if(_loc2_ !== param1)
         {
            this._1808391807_SelectColumnsCallout_CheckBox3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SelectColumnsCallout_CheckBox3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _SelectColumnsCallout_CheckBox4() : CheckBox
      {
         return this._1808391808_SelectColumnsCallout_CheckBox4;
      }
      
      public function set _SelectColumnsCallout_CheckBox4(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1808391808_SelectColumnsCallout_CheckBox4;
         if(_loc2_ !== param1)
         {
            this._1808391808_SelectColumnsCallout_CheckBox4 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SelectColumnsCallout_CheckBox4",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _SelectColumnsCallout_CheckBox5() : CheckBox
      {
         return this._1808391809_SelectColumnsCallout_CheckBox5;
      }
      
      public function set _SelectColumnsCallout_CheckBox5(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1808391809_SelectColumnsCallout_CheckBox5;
         if(_loc2_ !== param1)
         {
            this._1808391809_SelectColumnsCallout_CheckBox5 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SelectColumnsCallout_CheckBox5",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _SelectColumnsCallout_CheckBox6() : CheckBox
      {
         return this._1808391810_SelectColumnsCallout_CheckBox6;
      }
      
      public function set _SelectColumnsCallout_CheckBox6(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1808391810_SelectColumnsCallout_CheckBox6;
         if(_loc2_ !== param1)
         {
            this._1808391810_SelectColumnsCallout_CheckBox6 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SelectColumnsCallout_CheckBox6",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _SelectColumnsCallout_CheckBox7() : CheckBox
      {
         return this._1808391811_SelectColumnsCallout_CheckBox7;
      }
      
      public function set _SelectColumnsCallout_CheckBox7(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1808391811_SelectColumnsCallout_CheckBox7;
         if(_loc2_ !== param1)
         {
            this._1808391811_SelectColumnsCallout_CheckBox7 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SelectColumnsCallout_CheckBox7",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _SelectColumnsCallout_CheckBox8() : CheckBox
      {
         return this._1808391812_SelectColumnsCallout_CheckBox8;
      }
      
      public function set _SelectColumnsCallout_CheckBox8(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1808391812_SelectColumnsCallout_CheckBox8;
         if(_loc2_ !== param1)
         {
            this._1808391812_SelectColumnsCallout_CheckBox8 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SelectColumnsCallout_CheckBox8",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _SelectColumnsCallout_CheckBox9() : CheckBox
      {
         return this._1808391813_SelectColumnsCallout_CheckBox9;
      }
      
      public function set _SelectColumnsCallout_CheckBox9(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1808391813_SelectColumnsCallout_CheckBox9;
         if(_loc2_ !== param1)
         {
            this._1808391813_SelectColumnsCallout_CheckBox9 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SelectColumnsCallout_CheckBox9",_loc2_,param1));
            }
         }
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
   }
}
