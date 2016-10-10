package com.enfluid.ltp.view.renderers
{
   import com.enfluid.ltp.view.components.SelfAdjustingGroup;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.Image;
   import com.enfluid.ltp.view.components.CustomRichEditableText;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import com.enfluid.ltp.view.components.KeywordNotesCallout;
   import flash.events.Event;
   import flash.events.NativeWindowDisplayStateEvent;
   import com.enfluid.ltp.controller.competitoranalysis.CalcAllCompetitorAnalysisAverages;
   import com.enfluid.ltp.model.constants.Values;
   import com.enfluid.ltp.controller.competitoranalysis.AnalyzeCompetitionCommand;
   import com.enfluid.ltp.controller.competitoranalysis.SetupFetchPageRankCommand;
   import com.enfluid.ltp.controller.competitoranalysis.SetupFetchSiteAgeCommand;
   import spark.layouts.HorizontalLayout;
   import mx.binding.BindingManager;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.ToggleIsInTrashCommand;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.ToggleFavoriteCommand;
   import mx.events.ResizeEvent;
   import mx.binding.Binding;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class KeywordColumnRenderer extends SelfAdjustingGroup implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _1504635284expandButton:Image;
      
      private var _2046441454favoriteButton:Image;
      
      private var _1607812469keywordLabel:CustomRichEditableText;
      
      private var _1453357628noteButton:Image;
      
      private var _221887626trashButton:Image;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _814408215keyword:KeywordVO;
      
      private var _1777058202isRolledOver:Boolean = false;
      
      private var _104069929model:DataModel;
      
      private var _1369965720isKeywordNotesCalloutOpen:Boolean = false;
      
      private var viewModel:ViewModel;
      
      private var keywordNotesCallout:KeywordNotesCallout;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function KeywordColumnRenderer()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._104069929model = DataModel.instance;
         this.viewModel = ViewModel.instance;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._KeywordColumnRenderer_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_renderers_KeywordColumnRendererWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return KeywordColumnRenderer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.layout = this._KeywordColumnRenderer_HorizontalLayout1_c();
         this.mxmlContent = [this._KeywordColumnRenderer_Image1_i(),this._KeywordColumnRenderer_CustomRichEditableText1_i(),this._KeywordColumnRenderer_Image2_i(),this._KeywordColumnRenderer_Image3_i(),this._KeywordColumnRenderer_Image4_i()];
         this.addEventListener("resize",this.___KeywordColumnRenderer_SelfAdjustingGroup1_resize);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 110 - 30 - 106 + 40);
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
         KeywordColumnRenderer._watcherSetupUtil = param1;
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
      
      public final function calloutCloseHandler(param1:Event = null) : void
      {
         this.isKeywordNotesCalloutOpen = false;
         this.keywordNotesCallout.removeEventListener("calloutCloseEvent",this.calloutCloseHandler);
         this.viewModel.keywordDataGrid.removeEventListener("keyWordCalloutResize",this.keyWordCalloutResizeHandler);
      }
      
      protected final function noteButtonClickHandler(param1:* = null) : void
      {
         if(!this.keywordNotesCallout)
         {
            this.keywordNotesCallout = new KeywordNotesCallout();
         }
         §§push(this.viewModel.keywordDataGrid.width);
         §§push(this.viewModel.keywordColumns.keywords.width);
         §§push(30);
         if(_loc3_)
         {
            §§push(-(§§pop() - 27 + 1 - 1));
         }
         if(§§pop() < §§pop() + §§pop())
         {
            return;
         }
         if(!this.isKeywordNotesCalloutOpen)
         {
            this.keywordNotesCallout.keyword = this.keyword;
            §§push(this.keywordNotesCallout);
            §§push(this.noteButton.x);
            §§push(this.noteButton.width);
            §§push(2);
            if(_loc3_)
            {
               §§push(--§§pop() + 12 + 8);
            }
            §§pop().customArrowX = §§pop() + §§pop() / §§pop();
            §§push(this.keywordNotesCallout);
            §§push(this.viewModel.keywordDataGrid.width);
            §§push(600);
            if(_loc2_)
            {
               §§push(§§pop() + 1 + 91 + 1 - 22 - 1);
            }
            if(§§pop() > §§pop())
            {
               §§push(600);
               if(_loc2_)
               {
                  §§push(-((§§pop() * 30 - 1) * 28 + 103) - 72);
               }
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(Number(this.viewModel.keywordDataGrid.width));
            }
            §§pop().width = §§pop();
            this.keywordNotesCallout.addEventListener("calloutCloseEvent",this.calloutCloseHandler);
            this.keywordNotesCallout.open(this);
            this.isKeywordNotesCalloutOpen = true;
            stage.nativeWindow.addEventListener(NativeWindowDisplayStateEvent.DISPLAY_STATE_CHANGE,this.closeCallout);
            this.viewModel.keywordDataGrid.addEventListener(Event.RESIZE,this.keyWordCalloutResizeHandler);
            this.viewModel.keywordDataGrid.addEventListener("keyWordCalloutResize",this.keyWordCalloutResizeHandler);
         }
         else
         {
            this.keywordNotesCallout.close();
            this.isKeywordNotesCalloutOpen = false;
            this.viewModel.keywordDataGrid.removeEventListener("keyWordCalloutResize",this.keyWordCalloutResizeHandler);
         }
      }
      
      private final function keyWordCalloutResizeHandler(param1:Event) : void
      {
         if(this.viewModel.keywordDataGrid && §§pop() < §§pop() + §§pop())
         {
            if(this.keywordNotesCallout)
            {
               this.keywordNotesCallout.close();
               this.isKeywordNotesCalloutOpen = false;
            }
         }
         if(this.keywordNotesCallout)
         {
            §§push(this.keywordNotesCallout);
            §§push(this.viewModel.keywordDataGrid.width);
            §§push(600);
            if(_loc3_)
            {
               §§push(--((-§§pop() + 74) * 8));
            }
            if(§§pop() > §§pop())
            {
               §§push(600);
               if(_loc3_)
               {
                  §§push(-§§pop() - 1 + 1 + 1 + 2);
               }
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(Number(this.viewModel.keywordDataGrid.width));
            }
            §§pop().width = §§pop();
            this.keywordNotesCallout.x = this.viewModel.keywordDataGrid.x;
            §§push(this.keywordNotesCallout);
            §§push(this.noteButton.x);
            §§push(this.noteButton.width);
            §§push(2);
            if(_loc3_)
            {
               §§push(-§§pop() * 69 + 108 - 25 + 1);
            }
            §§pop().customArrowX = §§pop() + §§pop() / §§pop();
         }
      }
      
      private final function closeCallout(param1:NativeWindowDisplayStateEvent) : void
      {
         if(this.isKeywordNotesCalloutOpen)
         {
            this.keywordNotesCallout.close();
            this.isKeywordNotesCalloutOpen = false;
            stage.nativeWindow.removeEventListener(NativeWindowDisplayStateEvent.DISPLAY_STATE_CHANGE,this.closeCallout);
         }
      }
      
      private final function onClickExpandOrCollapse() : void
      {
         §§push(this.keywordLabel.selectionAnchorPosition);
         §§push(-1);
         if(_loc1_)
         {
            §§push(-(§§pop() - 46 + 3 - 74 + 0 - 1));
         }
         if(§§pop() > §§pop() && §§pop() > §§pop() && this.keywordLabel.selectionAnchorPosition != this.keywordLabel.selectionActivePosition)
         {
            return;
         }
         this.keyword.isExpanded = !this.keyword.isExpanded;
         if(this.keyword.isExpanded)
         {
            new CalcAllCompetitorAnalysisAverages(this.keyword).execute();
            if(this.keyword.avgKC == Values.NOT_FETCHED || !this.model.isPlatinum && this.keyword.competitorURLs && §§pop() > §§pop())
            {
               new AnalyzeCompetitionCommand(this.keyword).execute();
            }
            else if(this.keyword.competitorURLs && §§pop() > §§pop())
            {
               §§push(this.keyword.competitorAnalysisAverages.pageRankAvg);
               §§push(0);
               if(_loc1_)
               {
                  §§push(-§§pop() - 48 + 68);
               }
               if(§§pop() < §§pop() || isNaN(this.keyword.competitorAnalysisAverages.pageRankAvg))
               {
                  new SetupFetchPageRankCommand(this.keyword,true).execute();
               }
               §§push(this.keyword.competitorAnalysisAverages.siteAgeAvg);
               §§push(0);
               if(_loc1_)
               {
                  §§push(-(§§pop() * 14 - 11 - 1) - 103);
               }
               if(§§pop() < §§pop() || isNaN(this.keyword.competitorAnalysisAverages.siteAgeAvg))
               {
                  new SetupFetchSiteAgeCommand(this.keyword,true).execute();
               }
            }
         }
         this.keyword.save();
      }
      
      private final function _KeywordColumnRenderer_HorizontalLayout1_c() : HorizontalLayout
      {
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         _loc1_.horizontalAlign = "left";
         §§push(_loc1_);
         §§push(8);
         if(_loc3_)
         {
            §§push(-§§pop() - 3 - 1);
         }
         §§pop().paddingRight = §§pop();
         _loc1_.verticalAlign = "middle";
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push((-§§pop() - 38) * 5 - 1 + 1 + 114);
         }
         §§pop().gap = §§pop();
         return _loc1_;
      }
      
      private final function _KeywordColumnRenderer_Image1_i() : Image
      {
         var _loc1_:Image = new Image();
         §§push(_loc1_);
         §§push(20);
         if(_loc3_)
         {
            §§push(-(-§§pop() + 1));
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc3_)
         {
            §§push(-(§§pop() - 115 + 1 + 1 + 1 - 11));
         }
         §§pop().height = §§pop();
         _loc1_.addEventListener("click",this.__expandButton_click);
         _loc1_.id = "expandButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.expandButton = _loc1_;
         BindingManager.executeBindings(this,"expandButton",this.expandButton);
         return _loc1_;
      }
      
      public final function __expandButton_click(param1:MouseEvent) : void
      {
         this.onClickExpandOrCollapse();
      }
      
      private final function _KeywordColumnRenderer_CustomRichEditableText1_i() : CustomRichEditableText
      {
         var _loc1_:CustomRichEditableText = new CustomRichEditableText();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 1));
         }
         §§pop().percentWidth = §§pop();
         _loc1_.useHandCursor = true;
         _loc1_.addEventListener("click",this.__keywordLabel_click);
         _loc1_.id = "keywordLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.keywordLabel = _loc1_;
         BindingManager.executeBindings(this,"keywordLabel",this.keywordLabel);
         return _loc1_;
      }
      
      public final function __keywordLabel_click(param1:MouseEvent) : void
      {
         this.onClickExpandOrCollapse();
      }
      
      private final function _KeywordColumnRenderer_Image2_i() : Image
      {
         var _loc1_:Image = new Image();
         _loc1_.buttonMode = true;
         _loc1_.useHandCursor = true;
         _loc1_.addEventListener("click",this.__trashButton_click);
         _loc1_.id = "trashButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.trashButton = _loc1_;
         BindingManager.executeBindings(this,"trashButton",this.trashButton);
         return _loc1_;
      }
      
      public final function __trashButton_click(param1:MouseEvent) : void
      {
         new ToggleIsInTrashCommand(this.keyword).execute();
      }
      
      private final function _KeywordColumnRenderer_Image3_i() : Image
      {
         var _loc1_:Image = new Image();
         _loc1_.buttonMode = true;
         _loc1_.useHandCursor = true;
         _loc1_.addEventListener("click",this.__favoriteButton_click);
         _loc1_.id = "favoriteButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.favoriteButton = _loc1_;
         BindingManager.executeBindings(this,"favoriteButton",this.favoriteButton);
         return _loc1_;
      }
      
      public final function __favoriteButton_click(param1:MouseEvent) : void
      {
         new ToggleFavoriteCommand(this.keyword).execute();
      }
      
      private final function _KeywordColumnRenderer_Image4_i() : Image
      {
         var _loc1_:Image = new Image();
         _loc1_.buttonMode = true;
         _loc1_.useHandCursor = true;
         _loc1_.addEventListener("click",this.__noteButton_click);
         _loc1_.id = "noteButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.noteButton = _loc1_;
         BindingManager.executeBindings(this,"noteButton",this.noteButton);
         return _loc1_;
      }
      
      public final function __noteButton_click(param1:MouseEvent) : void
      {
         this.noteButtonClickHandler(param1);
      }
      
      public final function ___KeywordColumnRenderer_SelfAdjustingGroup1_resize(param1:ResizeEvent) : void
      {
         this.keyWordCalloutResizeHandler(param1);
      }
      
      private final function _KeywordColumnRenderer_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 63 + 113 - 50 + 37 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return !!keyword.isExpanded?AssetsLibrary.CONTRACT_ICON:AssetsLibrary.EXPAND_ICON;
         },null,"expandButton.source");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() + 78 - 43 - 1 + 71) - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = keyword.keyword;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"keywordLabel.text");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push((-(§§pop() - 88 - 1) + 67) * 45 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return !!keyword.isInTrash?AssetsLibrary.TRASH_ICON_YELLOW:AssetsLibrary.TRASH_GRAY_ICON;
         },null,"trashButton.source");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push((§§pop() - 1) * 66 * 110);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return isRolledOver || keyword.isInTrash;
         },null,"trashButton.visible");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 66 + 1 + 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return !!keyword.isFavorite?AssetsLibrary.YELLOW_STAR:AssetsLibrary.GREY_STAR;
         },null,"favoriteButton.source");
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 109 - 12 - 92);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return isRolledOver || keyword.isFavorite;
         },null,"favoriteButton.visible");
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push((--§§pop() * 45 - 1 + 1 - 54) * 63);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return keyword.notes && §§pop() > §§pop() || keyword.isNoteTyping?AssetsLibrary.NOTE_ICON:AssetsLibrary.NOTE_GREY_ICON;
         },null,"noteButton.source");
         §§push(result);
         §§push(7);
         if(_loc2_)
         {
            §§push(-(§§pop() * 22 - 1 - 1) - 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return isRolledOver || Boolean(keyword.notes) || isKeywordNotesCalloutOpen;
         },null,"noteButton.visible");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get expandButton() : Image
      {
         return this._1504635284expandButton;
      }
      
      public function set expandButton(param1:Image) : void
      {
         var _loc2_:Object = this._1504635284expandButton;
         if(_loc2_ !== param1)
         {
            this._1504635284expandButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expandButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get favoriteButton() : Image
      {
         return this._2046441454favoriteButton;
      }
      
      public function set favoriteButton(param1:Image) : void
      {
         var _loc2_:Object = this._2046441454favoriteButton;
         if(_loc2_ !== param1)
         {
            this._2046441454favoriteButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"favoriteButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get keywordLabel() : CustomRichEditableText
      {
         return this._1607812469keywordLabel;
      }
      
      public function set keywordLabel(param1:CustomRichEditableText) : void
      {
         var _loc2_:Object = this._1607812469keywordLabel;
         if(_loc2_ !== param1)
         {
            this._1607812469keywordLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keywordLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get noteButton() : Image
      {
         return this._1453357628noteButton;
      }
      
      public function set noteButton(param1:Image) : void
      {
         var _loc2_:Object = this._1453357628noteButton;
         if(_loc2_ !== param1)
         {
            this._1453357628noteButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"noteButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get trashButton() : Image
      {
         return this._221887626trashButton;
      }
      
      public function set trashButton(param1:Image) : void
      {
         var _loc2_:Object = this._221887626trashButton;
         if(_loc2_ !== param1)
         {
            this._221887626trashButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"trashButton",_loc2_,param1));
            }
         }
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
      
      [Bindable(event="propertyChange")]
      public function get isRolledOver() : Boolean
      {
         return this._1777058202isRolledOver;
      }
      
      public function set isRolledOver(param1:Boolean) : void
      {
         var _loc2_:Object = this._1777058202isRolledOver;
         if(_loc2_ !== param1)
         {
            this._1777058202isRolledOver = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isRolledOver",_loc2_,param1));
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
      
      [Bindable(event="propertyChange")]
      private function get isKeywordNotesCalloutOpen() : Boolean
      {
         return this._1369965720isKeywordNotesCalloutOpen;
      }
      
      private function set isKeywordNotesCalloutOpen(param1:Boolean) : void
      {
         var _loc2_:Object = this._1369965720isKeywordNotesCalloutOpen;
         if(_loc2_ !== param1)
         {
            this._1369965720isKeywordNotesCalloutOpen = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isKeywordNotesCalloutOpen",_loc2_,param1));
            }
         }
      }
   }
}
