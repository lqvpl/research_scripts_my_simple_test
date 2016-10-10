package com.enfluid.ltp.view
{
   import spark.components.Callout;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.CheckBox;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import spark.layouts.VerticalLayout;
   import spark.components.Scroller;
   import spark.components.VGroup;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.renderers.headers.target;
   import com.enfluid.ltp.view.renderers.headers.CustomHeaderRenderer;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.binding.Binding;
   import mx.events.FlexMouseEvent;
   import flash.events.MouseEvent;
   import mx.events.PropertyChangeEvent;
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
         §§push(200);
         if(_loc4_)
         {
            §§push(-(§§pop() - 63 + 1));
         }
         §§pop().width = §§pop();
         this.verticalPosition = "after";
         this.layout = this._SelectColumnsCallout_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._SelectColumnsCallout_Array1_c);
         this.addEventListener("mouseDownOutside",this.___SelectColumnsCallout_Callout1_mouseDownOutside);
         this.addEventListener("mouseUp",this.___SelectColumnsCallout_Callout1_mouseUp);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push((§§pop() - 110 - 1 + 1 - 109 + 73) * 82);
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
      
      private final function onMouseUp() : void
      {
         this.model.selectedKeywordCollection.project.save();
      }
      
      private final function _SelectColumnsCallout_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 - 1 - 1 + 1 + 1) * 72);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(--(§§pop() - 108) + 1);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push((-((§§pop() - 1) * 26) + 114 - 10) * 15 - 69);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(-((§§pop() + 28) * 115 + 62 + 1));
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
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 113 + 76 + 1 - 112);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() + 7 + 106 + 1 + 40 - 1) * 37);
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
            §§push(§§pop() - 59 - 1 + 1 - 118);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.mxmlContent = [this._SelectColumnsCallout_CheckBox1_i(),this._SelectColumnsCallout_CheckBox2_i(),this._SelectColumnsCallout_CheckBox3_i(),this._SelectColumnsCallout_CheckBox4_i(),this._SelectColumnsCallout_CheckBox5_i(),this._SelectColumnsCallout_CheckBox6_i(),this._SelectColumnsCallout_CheckBox7_i(),this._SelectColumnsCallout_CheckBox8_i()];
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
         _loc1_.id = "_SelectColumnsCallout_CheckBox1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SelectColumnsCallout_CheckBox1 = _loc1_;
         BindingManager.executeBindings(this,"_SelectColumnsCallout_CheckBox1",this._SelectColumnsCallout_CheckBox1);
         return _loc1_;
      }
      
      private final function _SelectColumnsCallout_CheckBox2_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "Local Searches";
         _loc1_.id = "_SelectColumnsCallout_CheckBox2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SelectColumnsCallout_CheckBox2 = _loc1_;
         BindingManager.executeBindings(this,"_SelectColumnsCallout_CheckBox2",this._SelectColumnsCallout_CheckBox2);
         return _loc1_;
      }
      
      private final function _SelectColumnsCallout_CheckBox3_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "Global Searches";
         _loc1_.id = "_SelectColumnsCallout_CheckBox3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SelectColumnsCallout_CheckBox3 = _loc1_;
         BindingManager.executeBindings(this,"_SelectColumnsCallout_CheckBox3",this._SelectColumnsCallout_CheckBox3);
         return _loc1_;
      }
      
      private final function _SelectColumnsCallout_CheckBox4_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "Advertiser Competition";
         _loc1_.id = "_SelectColumnsCallout_CheckBox4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SelectColumnsCallout_CheckBox4 = _loc1_;
         BindingManager.executeBindings(this,"_SelectColumnsCallout_CheckBox4",this._SelectColumnsCallout_CheckBox4);
         return _loc1_;
      }
      
      private final function _SelectColumnsCallout_CheckBox5_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "Num Words";
         _loc1_.id = "_SelectColumnsCallout_CheckBox5";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SelectColumnsCallout_CheckBox5 = _loc1_;
         BindingManager.executeBindings(this,"_SelectColumnsCallout_CheckBox5",this._SelectColumnsCallout_CheckBox5);
         return _loc1_;
      }
      
      private final function _SelectColumnsCallout_CheckBox6_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "Google Title Competition";
         _loc1_.id = "_SelectColumnsCallout_CheckBox6";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SelectColumnsCallout_CheckBox6 = _loc1_;
         BindingManager.executeBindings(this,"_SelectColumnsCallout_CheckBox6",this._SelectColumnsCallout_CheckBox6);
         return _loc1_;
      }
      
      private final function _SelectColumnsCallout_CheckBox7_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "Bing Title Competition";
         _loc1_.id = "_SelectColumnsCallout_CheckBox7";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SelectColumnsCallout_CheckBox7 = _loc1_;
         BindingManager.executeBindings(this,"_SelectColumnsCallout_CheckBox7",this._SelectColumnsCallout_CheckBox7);
         return _loc1_;
      }
      
      private final function _SelectColumnsCallout_CheckBox8_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "Domain Availability";
         _loc1_.id = "_SelectColumnsCallout_CheckBox8";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SelectColumnsCallout_CheckBox8 = _loc1_;
         BindingManager.executeBindings(this,"_SelectColumnsCallout_CheckBox8",this._SelectColumnsCallout_CheckBox8);
         return _loc1_;
      }
      
      public final function ___SelectColumnsCallout_Callout1_mouseDownOutside(param1:FlexMouseEvent) : void
      {
         this.close();
      }
      
      public final function ___SelectColumnsCallout_Callout1_mouseUp(param1:MouseEvent) : void
      {
         this.onMouseUp();
      }
      
      private final function _SelectColumnsCallout_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 52));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedKeywordCollection.project.suggestedBidEnabled;
         },null,"_SelectColumnsCallout_CheckBox1.selected");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() + 62 - 1 - 1 - 1) - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedKeywordCollection.project.localSearchesEnabled;
         },null,"_SelectColumnsCallout_CheckBox2.selected");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(-§§pop() - 52 - 99 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedKeywordCollection.project.globalSearchesEnabled;
         },null,"_SelectColumnsCallout_CheckBox3.selected");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(-(--(§§pop() + 1) - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedKeywordCollection.project.advertiserCompEnabled;
         },null,"_SelectColumnsCallout_CheckBox4.selected");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push(-((§§pop() - 1 + 78) * 109 * 81));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedKeywordCollection.project.numWordsEnabled;
         },null,"_SelectColumnsCallout_CheckBox5.selected");
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push((-(§§pop() - 18) - 1 + 1) * 34);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedKeywordCollection.project.googleTitleCompEnabled;
         },null,"_SelectColumnsCallout_CheckBox6.selected");
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push(-§§pop() * 50 * 70 * 119);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedKeywordCollection.project.bingTitleCompEnabled;
         },null,"_SelectColumnsCallout_CheckBox7.selected");
         §§push(result);
         §§push(7);
         if(_loc2_)
         {
            §§push(-(--(§§pop() * 13) * 112 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedKeywordCollection.project.domainsEnabled;
         },null,"_SelectColumnsCallout_CheckBox8.selected");
         §§push(result);
         §§push(8);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 1) + 0));
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _SelectColumnsCallout_CheckBox1.selected;
         },function(param1:*):void
         {
            model.selectedKeywordCollection.project.suggestedBidEnabled = param1;
         },"model.selectedKeywordCollection.project.suggestedBidEnabled");
         §§push(result);
         §§push(8);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 + 56 + 1) - 59 + 1 - 57);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() * 40 + 1 - 1 + 107 - 1 - 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() - 56) * 1 - 68);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 1) * 82 - 88) + 1 - 17);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(8);
         if(_loc3_)
         {
            §§push(§§pop() * 103 * 61 + 51 - 1 + 26);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(9);
         if(_loc3_)
         {
            §§push(§§pop() * 89 * 95 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _SelectColumnsCallout_CheckBox2.selected;
         },function(param1:*):void
         {
            model.selectedKeywordCollection.project.localSearchesEnabled = param1;
         },"model.selectedKeywordCollection.project.localSearchesEnabled");
         §§push(result);
         §§push(9);
         if(_loc3_)
         {
            §§push(-(§§pop() + 14 + 1 - 95));
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(-(§§pop() * 19 - 1 + 1) * 104 + 14));
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() * 68 - 1 - 1) - 113 + 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 35 - 1 - 78 + 1 - 97);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(9);
         if(_loc2_)
         {
            §§push(((§§pop() + 1) * 88 + 42) * 80 + 1 + 1 + 93);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(10);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 1 + 98);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _SelectColumnsCallout_CheckBox3.selected;
         },function(param1:*):void
         {
            model.selectedKeywordCollection.project.globalSearchesEnabled = param1;
         },"model.selectedKeywordCollection.project.globalSearchesEnabled");
         §§push(result);
         §§push(10);
         if(_loc2_)
         {
            §§push((§§pop() + 62 + 80) * 30 + 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(§§pop() * 108 + 14) + 72);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 + 43 - 1));
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(--(-§§pop() + 90) - 91);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(10);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 113 + 1 - 1 - 67 - 33 + 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(11);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 1 + 1 + 1 - 1 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _SelectColumnsCallout_CheckBox4.selected;
         },function(param1:*):void
         {
            model.selectedKeywordCollection.project.advertiserCompEnabled = param1;
         },"model.selectedKeywordCollection.project.advertiserCompEnabled");
         §§push(result);
         §§push(11);
         if(_loc2_)
         {
            §§push((-§§pop() * 37 - 31) * 6);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(§§pop() * 30 * 109 + 27);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) - 22 + 1 - 1 + 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(§§pop() * 68 + 1 - 103));
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(11);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 57) + 20 + 1 - 1));
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(12);
         if(_loc3_)
         {
            §§push(-§§pop() - 57 + 1 - 118);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _SelectColumnsCallout_CheckBox5.selected;
         },function(param1:*):void
         {
            model.selectedKeywordCollection.project.numWordsEnabled = param1;
         },"model.selectedKeywordCollection.project.numWordsEnabled");
         §§push(result);
         §§push(12);
         if(_loc2_)
         {
            §§push((-§§pop() + 101 + 1 + 27 + 1) * 85 + 5);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 1 - 1 + 93);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push(§§pop() + 47 + 18 + 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push((§§pop() - 1) * 53 * 119 - 1 - 66 + 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(12);
         if(_loc3_)
         {
            §§push(-(§§pop() * 64 + 91) - 1 + 36 + 80);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(13);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 1 + 1 - 42 + 41);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _SelectColumnsCallout_CheckBox6.selected;
         },function(param1:*):void
         {
            model.selectedKeywordCollection.project.googleTitleCompEnabled = param1;
         },"model.selectedKeywordCollection.project.googleTitleCompEnabled");
         §§push(result);
         §§push(13);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 1) - 1 - 1) - 37);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push(--(-§§pop() + 1));
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 64 - 1 + 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 31 + 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(13);
         if(_loc3_)
         {
            §§push(--(§§pop() - 48) + 1 - 1 + 89);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(14);
         if(_loc2_)
         {
            §§push((§§pop() * 68 - 61 - 1 + 1 - 1) * 66 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _SelectColumnsCallout_CheckBox7.selected;
         },function(param1:*):void
         {
            model.selectedKeywordCollection.project.bingTitleCompEnabled = param1;
         },"model.selectedKeywordCollection.project.bingTitleCompEnabled");
         §§push(result);
         §§push(14);
         if(_loc2_)
         {
            §§push((§§pop() + 116) * 61 - 1 - 72);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(6);
         if(_loc2_)
         {
            §§push((§§pop() * 70 + 1) * 64 - 74 + 26 + 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push(-(§§pop() - 9) - 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push(-§§pop() + 1 + 91 - 95 - 36);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(14);
         if(_loc2_)
         {
            §§push((§§pop() + 1) * 109 - 108 + 1 - 82);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(15);
         if(_loc2_)
         {
            §§push(§§pop() + 49 - 1 + 45 - 91);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _SelectColumnsCallout_CheckBox8.selected;
         },function(param1:*):void
         {
            model.selectedKeywordCollection.project.domainsEnabled = param1;
         },"model.selectedKeywordCollection.project.domainsEnabled");
         §§push(result);
         §§push(15);
         if(_loc2_)
         {
            §§push(-§§pop() * 69 + 69);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(7);
         if(_loc2_)
         {
            §§push(-(§§pop() - 70) - 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(7);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 69 + 1 + 67);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(7);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 1 + 83 + 1 + 1) * 28));
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(15);
         if(_loc2_)
         {
            §§push(§§pop() - 4 + 1 + 60);
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
