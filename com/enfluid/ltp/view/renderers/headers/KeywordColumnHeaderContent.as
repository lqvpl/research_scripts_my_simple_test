package com.enfluid.ltp.view.renderers.headers
{
   import com.enfluid.ltp.view.filterviews.FilterView;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import com.enfluid.ltp.view.components.HelpButton;
   import spark.components.Image;
   import spark.components.TextInput;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import flash.events.MouseEvent;
   import spark.events.TextOperationEvent;
   import com.enfluid.ltp.util.KeywordUtil;
   import com.enfluid.ltp.model.constants.SpecialFilterConstants;
   import spark.components.Group;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import com.enfluid.ltp.view.skins.FlatUIComponents.TextInput.FlatTextInputSkinSolo;
   import mx.binding.BindingManager;
   import mx.binding.Binding;
   import assets.TextAssets;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class KeywordColumnHeaderContent extends FilterView implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _KeywordColumnHeaderContent_HelpButton1:HelpButton;
      
      private var _2046441454favoriteButton:Image;
      
      private var _1283068421filterTextInput:TextInput;
      
      private var _1453357628noteButton:Image;
      
      private var _221887626trashButton:Image;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      private var _1589792892viewModel:ViewModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function KeywordColumnHeaderContent()
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
         var bindings:Array = this._KeywordColumnHeaderContent_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_renderers_headers_KeywordColumnHeaderContentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return KeywordColumnHeaderContent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc4_)
         {
            §§push(-§§pop() * 11 + 4 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(this);
         §§push(5);
         if(_loc3_)
         {
            §§push(§§pop() - 105 + 94 + 1);
         }
         §§pop().paddingRight = §§pop();
         this.verticalAlign = "baseline";
         §§push(this);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() * 48 - 1 + 111);
         }
         §§pop().gap = §§pop();
         this.mxmlContent = [this._KeywordColumnHeaderContent_Group1_c(),this._KeywordColumnHeaderContent_Image1_i(),this._KeywordColumnHeaderContent_Image2_i(),this._KeywordColumnHeaderContent_Image3_i()];
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push((-§§pop() - 94) * 31 - 30);
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
         KeywordColumnHeaderContent._watcherSetupUtil = param1;
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
      
      protected final function filterTextInputClickHandler(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         param1.stopPropagation();
      }
      
      protected final function filterTextInputChangeHandler(param1:TextOperationEvent) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         if(this.model.selectedKeywordCollection.project)
         {
            this.model.selectedKeywordCollection.project.keywordFilterText = this.filterTextInput.text;
            this.model.selectedKeywordCollection.project.matchStrings = new Array();
            this.model.selectedKeywordCollection.project.unMatchStrings = new Array();
            §§push(this.filterTextInput.text.length);
            §§push(0);
            if(_loc7_)
            {
               §§push(-(-§§pop() - 58 + 71 - 67));
            }
            if(§§pop() > §§pop())
            {
               _loc2_ = this.filterTextInput.text.split(",");
               §§push(0);
               if(_loc6_)
               {
                  §§push(-(§§pop() - 1 + 1));
               }
               for each(_loc3_ in _loc2_)
               {
                  _loc3_ = KeywordUtil.stripBeginningAndEndingSpaces(_loc3_);
                  _loc3_ = _loc3_.toLowerCase();
                  §§push(_loc3_);
                  §§push(0);
                  if(_loc6_)
                  {
                     §§push(-(-§§pop() - 101 + 1 - 9 + 1));
                  }
                  if(§§pop().charAt(§§pop()) == "-")
                  {
                     §§push(_loc3_.length);
                     §§push(1);
                     if(_loc6_)
                     {
                        §§push(-(-§§pop() + 1 + 1 - 1 + 99));
                     }
                     if(§§pop() > §§pop())
                     {
                        §§push(_loc3_);
                        §§push(1);
                        if(_loc7_)
                        {
                           §§push(§§pop() + 1 + 105 - 1 + 44);
                        }
                        _loc3_ = §§pop().substr(§§pop(),_loc3_.length - 1);
                        this.model.selectedKeywordCollection.project.unMatchStrings.push(_loc3_);
                     }
                  }
                  else
                  {
                     §§push(_loc3_.length);
                     §§push(0);
                     if(_loc6_)
                     {
                        §§push(-(--§§pop() + 1 - 71) * 18 + 112);
                     }
                     if(§§pop() > §§pop())
                     {
                        this.model.selectedKeywordCollection.project.matchStrings.push(_loc3_);
                     }
                  }
               }
            }
         }
         refreshData();
      }
      
      private final function onClickSpecialFilter(param1:int) : void
      {
         if(this.model.selectedKeywordCollection.project.specialFilter == param1)
         {
            this.model.selectedKeywordCollection.project.specialFilter = SpecialFilterConstants.NONE;
         }
         else
         {
            this.model.selectedKeywordCollection.project.specialFilter = param1;
         }
         this.model.selectedKeywordCollection.refresh();
      }
      
      private final function _KeywordColumnHeaderContent_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 64 + 110 + 1 + 95);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.mxmlContent = [this._KeywordColumnHeaderContent_TextInput1_i(),this._KeywordColumnHeaderContent_HelpButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _KeywordColumnHeaderContent_TextInput1_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-((§§pop() * 68 * 8 - 48) * 29));
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(17);
         if(_loc2_)
         {
            §§push(-(-(-§§pop() - 1) - 1) - 1);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() * 24 + 33 - 1) * 1 * 30));
         }
         §§pop().left = §§pop();
         _loc1_.prompt = "Filter by Keyword";
         §§push(_loc1_);
         §§push("paddingTop");
         §§push(3);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 1) + 1 + 71 - 1) * 7);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("skinClass",FlatTextInputSkinSolo);
         _loc1_.addEventListener("change",this.__filterTextInput_change);
         _loc1_.addEventListener("click",this.__filterTextInput_click);
         _loc1_.id = "filterTextInput";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.filterTextInput = _loc1_;
         BindingManager.executeBindings(this,"filterTextInput",this.filterTextInput);
         return _loc1_;
      }
      
      public final function __filterTextInput_change(param1:TextOperationEvent) : void
      {
         this.filterTextInputChangeHandler(param1);
      }
      
      public final function __filterTextInput_click(param1:MouseEvent) : void
      {
         this.filterTextInputClickHandler(param1);
      }
      
      private final function _KeywordColumnHeaderContent_HelpButton1_i() : HelpButton
      {
         var _loc1_:HelpButton = new HelpButton();
         §§push(_loc1_);
         §§push(11);
         if(_loc3_)
         {
            §§push((§§pop() - 1 + 1 + 6) * 51);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(11);
         if(_loc2_)
         {
            §§push(-(§§pop() * 40 - 1 - 89 + 1) * 17 - 1);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc2_)
         {
            §§push(-((§§pop() + 81 - 67) * 39) - 105 + 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc3_)
         {
            §§push(§§pop() + 4 - 7 - 1 - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(12303291);
         if(_loc3_)
         {
            §§push(-(--§§pop() - 105 - 1 - 12 - 115));
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.id = "_KeywordColumnHeaderContent_HelpButton1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._KeywordColumnHeaderContent_HelpButton1 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordColumnHeaderContent_HelpButton1",this._KeywordColumnHeaderContent_HelpButton1);
         return _loc1_;
      }
      
      private final function _KeywordColumnHeaderContent_Image1_i() : Image
      {
         var _loc1_:Image = new Image();
         _loc1_.verticalAlign = "middle";
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
         this.onClickSpecialFilter(SpecialFilterConstants.TRASH);
      }
      
      private final function _KeywordColumnHeaderContent_Image2_i() : Image
      {
         var _loc1_:Image = new Image();
         _loc1_.verticalAlign = "middle";
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
         this.onClickSpecialFilter(SpecialFilterConstants.FAVORITES);
      }
      
      private final function _KeywordColumnHeaderContent_Image3_i() : Image
      {
         var _loc1_:Image = new Image();
         _loc1_.verticalAlign = "middle";
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
         this.onClickSpecialFilter(SpecialFilterConstants.NOTES);
      }
      
      private final function _KeywordColumnHeaderContent_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-(((§§pop() - 1) * 78 + 23) * 69) + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_KEYWORDS_FILTER_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_KeywordColumnHeaderContent_HelpButton1.helpTitle");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 1 + 119) * 94 + 1 - 20);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_KEYWORDS_FILTER_CONTENT;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_KeywordColumnHeaderContent_HelpButton1.helpContent");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() - 88 + 76 + 1 - 38 + 47 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return model.selectedKeywordCollection.project.specialFilter == SpecialFilterConstants.TRASH?AssetsLibrary.TRASH_ICON_YELLOW:AssetsLibrary.TRASH_GRAY_ICON;
         },null,"trashButton.source");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(-(((§§pop() - 99 + 37) * 57 - 18) * 50));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return !viewModel.selectedKeywordsTab.isFavoritesTab && !viewModel.selectedKeywordsTab.isTrashTab;
         },null,"trashButton.visible");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1 + 94) * 57 - 1) * 110 + 40);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return model.selectedKeywordCollection.project.specialFilter == SpecialFilterConstants.FAVORITES?AssetsLibrary.YELLOW_STAR:AssetsLibrary.GREY_STAR;
         },null,"favoriteButton.source");
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push(§§pop() * 35 - 32 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return !viewModel.selectedKeywordsTab.isFavoritesTab && !viewModel.selectedKeywordsTab.isTrashTab;
         },null,"favoriteButton.visible");
         §§push(result);
         §§push(6);
         if(_loc2_)
         {
            §§push((§§pop() + 109) * 32 * 92 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return model.selectedKeywordCollection.project.specialFilter == SpecialFilterConstants.NOTES?AssetsLibrary.NOTE_ICON:AssetsLibrary.NOTE_GREY_ICON;
         },null,"noteButton.source");
         return result;
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
      public function get filterTextInput() : TextInput
      {
         return this._1283068421filterTextInput;
      }
      
      public function set filterTextInput(param1:TextInput) : void
      {
         var _loc2_:Object = this._1283068421filterTextInput;
         if(_loc2_ !== param1)
         {
            this._1283068421filterTextInput = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"filterTextInput",_loc2_,param1));
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
