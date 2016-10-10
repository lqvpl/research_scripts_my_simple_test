package com.enfluid.ltp.view.components.majestic
{
   import spark.components.Callout;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.AnalyzeMajesticCompetitionCommand;
   import com.enfluid.ltp.model.constants.Values;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import spark.components.CheckBox;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.util.KeywordArrayCollection;
   import flash.utils.setTimeout;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.currentKeywords;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.DeleteCompetitorUrlsCommand;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.target;
   import com.enfluid.ltp.view.AddYourOwnKeywordsSection;
   import mx.core.DeferredInstanceFromFunction;
   import mx.binding.Binding;
   import flash.utils.ByteArray;
   import mx.containers.VDividedBox;
   import mx.core.UIComponentDescriptor;
   import com.enfluid.ltp.view.KeywordsDataGrid;
   import com.enfluid.ltp.view.DebugPanel;
   import spark.components.Scroller;
   import spark.components.VGroup;
   import spark.primitives.BitmapImage;
   import mx.binding.BindingManager;
   import assets.LibraryAssets;
   import mx.graphics.SolidColor;
   import spark.components.HGroup;
   import com.enfluid.ltp.view.renderers.headers.CustomHeaderRenderer;
   import mx.states.State;
   import mx.states.SetProperty;
   import com.enfluid.ltp.controller.common.SaveProxiesCommand;
   import mx.events.PropertyChangeEvent;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.MinimalFlatButtonSkin;
   
   use namespace mx_internal;
   
   public final class KeywordColumnsSelection extends Callout implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _KeywordColumnsSelection_CheckBox1:CheckBox;
      
      public var _KeywordColumnsSelection_CheckBox2:CheckBox;
      
      public var _KeywordColumnsSelection_CheckBox3:CheckBox;
      
      public var _KeywordColumnsSelection_CheckBox4:CheckBox;
      
      public var _KeywordColumnsSelection_CheckBox5:CheckBox;
      
      public var _KeywordColumnsSelection_CheckBox6:CheckBox;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _814408215keyword:KeywordVO;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function KeywordColumnsSelection()
      {
         var com.enfluid.ltp.view.components.majestic.target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._KeywordColumnsSelection_bindingsSetup();
         var watchers:Array = [];
         com.enfluid.ltp.view.components.majestic.target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_components_majestic_KeywordColumnsSelectionWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return KeywordColumnsSelection[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.verticalPosition = "before";
         this.horizontalPosition = "middle";
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._KeywordColumnsSelection_Array1_c);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(((§§pop() - 1) * 83 - 68 - 57) * 108);
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
         KeywordColumnsSelection._watcherSetupUtil = param1;
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
      
      private final function closeIt() : void
      {
         this.close();
      }
      
      private final function selectedColumn(param1:String) : Boolean
      {
         if("externalBackLinks" === _loc2_)
         {
            §§push(0);
            if(_loc4_)
            {
               §§push(--§§pop() * 69 + 5 + 77);
            }
         }
         else if("referringDomains" === _loc2_)
         {
            §§push(1);
            if(_loc3_)
            {
               §§push(-((§§pop() + 55) * 18 - 5) + 1 - 40);
            }
         }
         else if("eduBacklinks" === _loc2_)
         {
            §§push(2);
            if(_loc3_)
            {
               §§push(§§pop() - 0 - 1 - 15 - 38);
            }
         }
         else if("internalLinks" === _loc2_)
         {
            §§push(3);
            if(_loc4_)
            {
               §§push(-(§§pop() + 35) + 27 - 1);
            }
         }
         else if("indexedUrls" === _loc2_)
         {
            §§push(4);
            if(_loc4_)
            {
               §§push(--(§§pop() - 1) + 1 + 1);
            }
         }
         else if("trustRatio" === _loc2_)
         {
            §§push(5);
            if(_loc4_)
            {
               §§push((((§§pop() - 119) * 77 + 112 + 86) * 62 + 1) * 49);
            }
         }
         else
         {
            §§push(6);
            if(_loc4_)
            {
               §§push(-(§§pop() * 55 + 40 + 1 - 70));
            }
         }
         switch(§§pop())
         {
            case 0:
               return this.getColumnsStatus(this.keyword.ExternalLinksColumnStatus);
            case 1:
               return this.getColumnsStatus(this.keyword.referringDomainsColumnStatus);
            case 2:
               return this.getColumnsStatus(this.keyword.eduBackLinksColumnStatus);
            case 3:
               return this.getColumnsStatus(this.keyword.internalLinksColumnStatus);
            case 4:
               return this.getColumnsStatus(this.keyword.indexedUrlsColumnStatus);
            case 5:
               return this.getColumnsStatus(this.keyword.trustRatioColumnStatus);
            default:
               return true;
         }
      }
      
      private final function onChange(param1:String) : void
      {
         if("externalBackLinks" === _loc2_)
         {
            §§push(0);
            if(_loc4_)
            {
               §§push(-(§§pop() - 117) * 103 - 88 + 1 + 50);
            }
         }
         else if("referringDomains" === _loc2_)
         {
            §§push(1);
            if(_loc3_)
            {
               §§push(-(-§§pop() + 55));
            }
         }
         else if("eduBacklinks" === _loc2_)
         {
            §§push(2);
            if(_loc3_)
            {
               §§push(§§pop() - 97 - 1 + 30 + 97);
            }
         }
         else if("internalLinks" === _loc2_)
         {
            §§push(3);
            if(_loc3_)
            {
               §§push(((§§pop() - 42 + 1) * 13 + 1 + 86) * 103);
            }
         }
         else if("indexedUrls" === _loc2_)
         {
            §§push(4);
            if(_loc3_)
            {
               §§push(-((§§pop() - 40) * 4 - 13 - 92 - 1 + 110));
            }
         }
         else if("trustRatio" === _loc2_)
         {
            §§push(5);
            if(_loc4_)
            {
               §§push(-(§§pop() + 55 - 58) + 104 - 1 + 1);
            }
         }
         else
         {
            §§push(6);
            if(_loc4_)
            {
               §§push((§§pop() - 74) * 76 + 89 - 1 + 1 + 1);
            }
         }
         switch(§§pop())
         {
            case 0:
               this.keyword.ExternalLinksColumnStatus = this.checkColumnsStatus(this.keyword.ExternalLinksColumnStatus);
               break;
            case 1:
               this.keyword.referringDomainsColumnStatus = this.checkColumnsStatus(this.keyword.referringDomainsColumnStatus);
               break;
            case 2:
               this.keyword.eduBackLinksColumnStatus = this.checkColumnsStatus(this.keyword.eduBackLinksColumnStatus);
               break;
            case 3:
               this.keyword.internalLinksColumnStatus = this.checkColumnsStatus(this.keyword.internalLinksColumnStatus);
               break;
            case 4:
               this.keyword.indexedUrlsColumnStatus = this.checkColumnsStatus(this.keyword.indexedUrlsColumnStatus);
               break;
            case 5:
               this.keyword.trustRatioColumnStatus = this.checkColumnsStatus(this.keyword.trustRatioColumnStatus);
         }
         this.keyword.save();
      }
      
      private final function checkColumnsStatus(param1:String) : String
      {
         if(param1 != "show")
         {
            param1 = "hide";
         }
         else
         {
            param1 = "show";
         }
         return param1;
      }
      
      private final function getColumnsStatus(param1:*) : Boolean
      {
         if(param1 == null || param1 === "show")
         {
            return true;
         }
         return false;
      }
      
      private final function _KeywordColumnsSelection_Array1_c() : Array
      {
         var _loc1_:Array = [this._KeywordColumnsSelection_Scroller1_c()];
         return _loc1_;
      }
      
      private final function _KeywordColumnsSelection_Scroller1_c() : Scroller
      {
         var _loc1_:Scroller = new Scroller();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 - 40));
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() + 37) * 80 + 1 + 24 + 99 - 1);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.viewport = this._KeywordColumnsSelection_VGroup1_c();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _KeywordColumnsSelection_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() + 50 - 6 + 87) * 53 + 39 + 1);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.mxmlContent = [this._KeywordColumnsSelection_CheckBox1_i(),this._KeywordColumnsSelection_CheckBox2_i(),this._KeywordColumnsSelection_CheckBox3_i(),this._KeywordColumnsSelection_CheckBox4_i(),this._KeywordColumnsSelection_CheckBox5_i(),this._KeywordColumnsSelection_CheckBox6_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _KeywordColumnsSelection_CheckBox1_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "External Backlinks";
         _loc1_.addEventListener("change",this.___KeywordColumnsSelection_CheckBox1_change);
         _loc1_.id = "_KeywordColumnsSelection_CheckBox1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._KeywordColumnsSelection_CheckBox1 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordColumnsSelection_CheckBox1",this._KeywordColumnsSelection_CheckBox1);
         return _loc1_;
      }
      
      public final function ___KeywordColumnsSelection_CheckBox1_change(param1:Event) : void
      {
         this.onChange("externalBackLinks");
      }
      
      private final function _KeywordColumnsSelection_CheckBox2_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "Referring Domains";
         _loc1_.addEventListener("change",this.___KeywordColumnsSelection_CheckBox2_change);
         _loc1_.id = "_KeywordColumnsSelection_CheckBox2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._KeywordColumnsSelection_CheckBox2 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordColumnsSelection_CheckBox2",this._KeywordColumnsSelection_CheckBox2);
         return _loc1_;
      }
      
      public final function ___KeywordColumnsSelection_CheckBox2_change(param1:Event) : void
      {
         this.onChange("referringDomains");
      }
      
      private final function _KeywordColumnsSelection_CheckBox3_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "EDU/GOV Backlinks";
         _loc1_.addEventListener("change",this.___KeywordColumnsSelection_CheckBox3_change);
         _loc1_.id = "_KeywordColumnsSelection_CheckBox3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._KeywordColumnsSelection_CheckBox3 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordColumnsSelection_CheckBox3",this._KeywordColumnsSelection_CheckBox3);
         return _loc1_;
      }
      
      public final function ___KeywordColumnsSelection_CheckBox3_change(param1:Event) : void
      {
         this.onChange("eduBacklinks");
      }
      
      private final function _KeywordColumnsSelection_CheckBox4_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "Internal Links";
         _loc1_.addEventListener("change",this.___KeywordColumnsSelection_CheckBox4_change);
         _loc1_.id = "_KeywordColumnsSelection_CheckBox4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._KeywordColumnsSelection_CheckBox4 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordColumnsSelection_CheckBox4",this._KeywordColumnsSelection_CheckBox4);
         return _loc1_;
      }
      
      public final function ___KeywordColumnsSelection_CheckBox4_change(param1:Event) : void
      {
         this.onChange("internalLinks");
      }
      
      private final function _KeywordColumnsSelection_CheckBox5_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "Indexed URLs";
         _loc1_.addEventListener("change",this.___KeywordColumnsSelection_CheckBox5_change);
         _loc1_.id = "_KeywordColumnsSelection_CheckBox5";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._KeywordColumnsSelection_CheckBox5 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordColumnsSelection_CheckBox5",this._KeywordColumnsSelection_CheckBox5);
         return _loc1_;
      }
      
      public final function ___KeywordColumnsSelection_CheckBox5_change(param1:Event) : void
      {
         this.onChange("indexedUrls");
      }
      
      private final function _KeywordColumnsSelection_CheckBox6_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "Trust Ratio";
         _loc1_.addEventListener("change",this.___KeywordColumnsSelection_CheckBox6_change);
         _loc1_.id = "_KeywordColumnsSelection_CheckBox6";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._KeywordColumnsSelection_CheckBox6 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordColumnsSelection_CheckBox6",this._KeywordColumnsSelection_CheckBox6);
         return _loc1_;
      }
      
      public final function ___KeywordColumnsSelection_CheckBox6_change(param1:Event) : void
      {
         this.onChange("trustRatio");
      }
      
      private final function _KeywordColumnsSelection_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 1) * 107) + 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return selectedColumn("externalBackLinks");
         },null,"_KeywordColumnsSelection_CheckBox1.selected");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 1 - 58) + 66 + 41 - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return selectedColumn("referringDomains");
         },null,"_KeywordColumnsSelection_CheckBox2.selected");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-§§pop() * 116 + 19 + 1 - 0 + 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return selectedColumn("eduBacklinks");
         },null,"_KeywordColumnsSelection_CheckBox3.selected");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(§§pop() + 83 + 79 + 64 + 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return selectedColumn("internalLinks");
         },null,"_KeywordColumnsSelection_CheckBox4.selected");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push(-(§§pop() + 97 - 1) + 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return selectedColumn("indexedUrls");
         },null,"_KeywordColumnsSelection_CheckBox5.selected");
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push((§§pop() + 1 - 1 + 118) * 85);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return selectedColumn("trustRatio");
         },null,"_KeywordColumnsSelection_CheckBox6.selected");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get keyword() : KeywordVO
      {
         return this._814408215keyword;
      }
      
      public function set keyword(param1:KeywordVO) : void
      {
         var _loc2_:Object = this._814408215keyword;
         if(_loc2_ !== param1)
         {
            this._814408215keyword = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keyword",_loc2_,param1));
            }
         }
      }
   }
}
