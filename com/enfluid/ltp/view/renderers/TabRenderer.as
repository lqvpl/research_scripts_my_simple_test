package com.enfluid.ltp.view.renderers
{
   import spark.components.supportClasses.ItemRenderer;
   import mx.binding.IBindingClient;
   import mx.core.IStateClient2;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.Scroller;
   import mx.binding.BindingManager;
   import spark.components.Button;
   import spark.components.Label;
   import mx.states.SetProperty;
   import mx.graphics.SolidColor;
   import spark.components.BorderContainer;
   import spark.components.Image;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.util.KeywordArrayCollection;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import flash.events.MouseEvent;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import mx.states.State;
   import mx.binding.Binding;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.EmptyTrashCommand;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.DeleteOwnKeywordsCommand;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.DeleteSeedKeywordCommand;
   import spark.layouts.HorizontalLayout;
   import mx.core.DeferredInstanceFromFunction;
   import com.enfluid.ltp.view.skins.ProjectDetailsItemSkin;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import mx.controls.Spacer;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import mx.events.PropertyChangeEvent;
   
   use namespace mx_internal;
   
   public final class TabRenderer extends ItemRenderer implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _TabRenderer_Button1:Button;
      
      public var _TabRenderer_Label1:Label;
      
      private var _1885309628_TabRenderer_Label2:Label;
      
      private var _102864960_TabRenderer_SetProperty1:SetProperty;
      
      private var _102864959_TabRenderer_SetProperty2:SetProperty;
      
      private var _102864958_TabRenderer_SetProperty3:SetProperty;
      
      private var _102864957_TabRenderer_SetProperty4:SetProperty;
      
      private var _204859874bgColor:SolidColor;
      
      private var _410956671container:BorderContainer;
      
      private var _1112803696deleteimage:Image;
      
      private var _1945259127othericon:Image;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _3226745icon:Class;
      
      private var _523149226keywords:KeywordArrayCollection;
      
      private var _491884679isTrashTab:Boolean = false;
      
      private var _234873848isFavoritesTab:Boolean = false;
      
      private var _651935761isOwnKeywordsTab:Boolean = false;
      
      private var _805218036isAllKeywordsTab:Boolean = false;
      
      private var _1990658504seedKeyword:SeedKeywordVO;
      
      private var _104069929model:DataModel;
      
      private var _1589792892viewModel:ViewModel;
      
      private var _1777058202isRolledOver:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function TabRenderer()
      {
         var bindings:Array = null;
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
         bindings = this._TabRenderer_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_renderers_TabRendererWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return TabRenderer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc4_)
         {
            §§push(-(§§pop() + 95 - 8) + 1 + 21 + 110);
         }
         §§pop().percentWidth = §§pop();
         this.autoDrawBackground = false;
         this.layout = this._TabRenderer_HorizontalLayout1_c();
         this.mxmlContent = [this._TabRenderer_Image1_i(),this._TabRenderer_BorderContainer1_i()];
         this.addEventListener("click",this.___TabRenderer_ItemRenderer1_click);
         this.addEventListener("creationComplete",this.___TabRenderer_ItemRenderer1_creationComplete);
         this.addEventListener("mouseOut",this.___TabRenderer_ItemRenderer1_mouseOut);
         this.addEventListener("mouseOver",this.___TabRenderer_ItemRenderer1_mouseOver);
         §§push();
         §§push();
         §§push("name");
         §§push("selected");
         §§push("overrides");
         §§push(new SetProperty());
         §§push("target");
         §§push("bgColor");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(16119800);
         if(_loc4_)
         {
            §§push(-((§§pop() - 1 + 62 + 8) * 16) + 103);
         }
         §§pop().states = [new §§pop().State(null),new State({
            "name":"unselected",
            "overrides":[this._TabRenderer_SetProperty1 = SetProperty(new SetProperty().initializeFromObject({
               "target":"bgColor",
               "name":"color",
               "value":undefined
            })),this._TabRenderer_SetProperty2 = SetProperty(new SetProperty().initializeFromObject({
               "target":"bgColor",
               "name":"alpha",
               "value":undefined
            })),this._TabRenderer_SetProperty4 = SetProperty(new SetProperty().initializeFromObject({
               "target":"_TabRenderer_Label2",
               "name":"text",
               "value":undefined
            }))]
         })];
         BindingManager.executeBindings(this,"_TabRenderer_SetProperty3",this._TabRenderer_SetProperty3);
         BindingManager.executeBindings(this,"_TabRenderer_SetProperty1",this._TabRenderer_SetProperty1);
         BindingManager.executeBindings(this,"_TabRenderer_SetProperty2",this._TabRenderer_SetProperty2);
         BindingManager.executeBindings(this,"_TabRenderer_SetProperty4",this._TabRenderer_SetProperty4);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 1 + 20) - 1));
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
         TabRenderer._watcherSetupUtil = param1;
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
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.seedKeyword = param1 as SeedKeywordVO;
         if(this.seedKeyword)
         {
            label = this.seedKeyword.keyword;
            this.keywords = this.seedKeyword.keywords;
         }
      }
      
      protected final function mouseOutHandler(param1:MouseEvent) : void
      {
         this.isRolledOver = false;
      }
      
      protected final function mouseOverHandler(param1:MouseEvent) : void
      {
         this.isRolledOver = true;
      }
      
      protected final function onEmptyTrash(param1:MouseEvent) : void
      {
         new EmptyTrashCommand().execute();
      }
      
      protected final function onClick() : void
      {
         this.model.selectedKeywordCollection = this.keywords;
         ViewModel.instance.selectedKeywordsTab = this;
      }
      
      protected final function onClickDelete(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         if(this.isOwnKeywordsTab)
         {
            new DeleteOwnKeywordsCommand().execute();
         }
         else
         {
            new DeleteSeedKeywordCommand(data as SeedKeywordVO,true).execute();
         }
      }
      
      private final function onCreationComplete() : void
      {
         if(this.isOwnKeywordsTab)
         {
            this.viewModel.ownKeywordsTab = this;
         }
         else if(this.isAllKeywordsTab)
         {
            this.viewModel.allKeywordsTab = this;
         }
      }
      
      private final function _TabRenderer_HorizontalLayout1_c() : HorizontalLayout
      {
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 1 - 110);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 98) * 49 + 34 + 72 + 1);
         }
         §§pop().paddingLeft = §§pop();
         _loc1_.verticalAlign = "middle";
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1) * 104) + 70);
         }
         §§pop().gap = §§pop();
         return _loc1_;
      }
      
      private final function _TabRenderer_Image1_i() : Image
      {
         var _loc1_:Image = new Image();
         §§push(_loc1_);
         §§push(15);
         if(_loc2_)
         {
            §§push(§§pop() - 97 - 1 - 1);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((-§§pop() - 74) * 11 * 98 - 119);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 45 + 1 - 17);
         }
         §§pop().horizontalCenter = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 1) * 114 - 87);
         }
         §§pop().verticalCenter = §§pop();
         _loc1_.buttonMode = true;
         _loc1_.useHandCursor = true;
         _loc1_.addEventListener("click",this.__deleteimage_click);
         _loc1_.id = "deleteimage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.deleteimage = _loc1_;
         BindingManager.executeBindings(this,"deleteimage",this.deleteimage);
         return _loc1_;
      }
      
      public final function __deleteimage_click(param1:MouseEvent) : void
      {
         this.onClickDelete(param1);
      }
      
      private final function _TabRenderer_BorderContainer1_i() : BorderContainer
      {
         var _loc1_:BorderContainer = new BorderContainer();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-§§pop() * 32 - 16 + 119);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() * 73 * 111 + 79 + 45));
         }
         §§pop().right = §§pop();
         _loc1_.buttonMode = true;
         _loc1_.useHandCursor = true;
         _loc1_.layout = this._TabRenderer_HorizontalLayout2_c();
         _loc1_.backgroundFill = this._TabRenderer_SolidColor1_i();
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._TabRenderer_Array3_c);
         §§push(_loc1_);
         §§push("fontSize");
         §§push(13);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 94) * 7);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("borderVisible",false);
         _loc1_.setStyle("skinClass",ProjectDetailsItemSkin);
         _loc1_.addEventListener("mouseOut",this.__container_mouseOut);
         _loc1_.addEventListener("mouseOver",this.__container_mouseOver);
         _loc1_.id = "container";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.container = _loc1_;
         BindingManager.executeBindings(this,"container",this.container);
         return _loc1_;
      }
      
      private final function _TabRenderer_HorizontalLayout2_c() : HorizontalLayout
      {
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         _loc1_.horizontalAlign = "left";
         §§push(_loc1_);
         §§push(3);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 1 - 1 - 88);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 119) - 1);
         }
         §§pop().paddingRight = §§pop();
         _loc1_.verticalAlign = "middle";
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(§§pop() + 2 - 1 + 22);
         }
         §§pop().gap = §§pop();
         return _loc1_;
      }
      
      private final function _TabRenderer_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         this.bgColor = _loc1_;
         BindingManager.executeBindings(this,"bgColor",this.bgColor);
         return _loc1_;
      }
      
      private final function _TabRenderer_Array3_c() : Array
      {
         var _loc1_:Array = [this._TabRenderer_Image2_i(),this._TabRenderer_Label1_i(),this._TabRenderer_Button1_i(),this._TabRenderer_Spacer1_c(),this._TabRenderer_Label2_i()];
         return _loc1_;
      }
      
      private final function _TabRenderer_Image2_i() : Image
      {
         var _loc1_:Image = new Image();
         _loc1_.alpha = 0.5;
         _loc1_.addEventListener("rollOut",this.__othericon_rollOut);
         _loc1_.addEventListener("rollOver",this.__othericon_rollOver);
         _loc1_.id = "othericon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.othericon = _loc1_;
         BindingManager.executeBindings(this,"othericon",this.othericon);
         return _loc1_;
      }
      
      public final function __othericon_rollOut(param1:MouseEvent) : void
      {
         this.othericon.alpha = 0.5;
      }
      
      public final function __othericon_rollOver(param1:MouseEvent) : void
      {
         §§push(this.othericon);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() * 46 * 18 - 1);
         }
         §§pop().alpha = §§pop();
      }
      
      private final function _TabRenderer_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() - 1) * 102 * 38 * 99 * 3 + 61 - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() - 106 + 79) * 117);
         }
         §§pop().maxDisplayedLines = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(3355443);
         if(_loc2_)
         {
            §§push(-((§§pop() - 104) * 21 + 101));
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("paddingTop");
         §§push(3);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) + 1 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.id = "_TabRenderer_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._TabRenderer_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_TabRenderer_Label1",this._TabRenderer_Label1);
         return _loc1_;
      }
      
      private final function _TabRenderer_Button1_i() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(60);
         if(_loc3_)
         {
            §§push(--(-§§pop() + 1 + 12 - 70));
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc3_)
         {
            §§push(§§pop() * 69 + 1 - 1 + 1 - 71);
         }
         §§pop().height = §§pop();
         _loc1_.label = "empty";
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc3_)
         {
            §§push((§§pop() - 1 - 84 + 54) * 23 + 1 - 109 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","normal");
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___TabRenderer_Button1_click);
         _loc1_.id = "_TabRenderer_Button1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._TabRenderer_Button1 = _loc1_;
         BindingManager.executeBindings(this,"_TabRenderer_Button1",this._TabRenderer_Button1);
         return _loc1_;
      }
      
      public final function ___TabRenderer_Button1_click(param1:MouseEvent) : void
      {
         this.onEmptyTrash(param1);
      }
      
      private final function _TabRenderer_Spacer1_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-((§§pop() - 1 - 1) * 74 - 110) - 1);
         }
         §§pop().width = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _TabRenderer_Label2_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push("color");
         §§push(3355443);
         if(_loc2_)
         {
            §§push(--(§§pop() - 1 + 1 - 1) + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("paddingTop");
         §§push(3);
         if(_loc3_)
         {
            §§push(-(§§pop() + 103) + 106 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.id = "_TabRenderer_Label2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._TabRenderer_Label2 = _loc1_;
         BindingManager.executeBindings(this,"_TabRenderer_Label2",this._TabRenderer_Label2);
         return _loc1_;
      }
      
      public final function __container_mouseOut(param1:MouseEvent) : void
      {
         this.mouseOutHandler(param1);
      }
      
      public final function __container_mouseOver(param1:MouseEvent) : void
      {
         this.mouseOverHandler(param1);
      }
      
      public final function ___TabRenderer_ItemRenderer1_click(param1:MouseEvent) : void
      {
         this.onClick();
      }
      
      public final function ___TabRenderer_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         this.onCreationComplete();
      }
      
      public final function ___TabRenderer_ItemRenderer1_mouseOut(param1:MouseEvent) : void
      {
         this.mouseOutHandler(param1);
      }
      
      public final function ___TabRenderer_ItemRenderer1_mouseOver(param1:MouseEvent) : void
      {
         this.mouseOverHandler(param1);
      }
      
      private final function _TabRenderer_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(--(§§pop() * 70) - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            if(Boolean(seedKeyword) || isOwnKeywordsTab)
            {
               §§push(30);
               if(_loc1_)
               {
                  §§push((§§pop() + 1 + 1 - 1 - 55) * 22 - 1);
               }
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(30);
               if(_loc1_)
               {
                  §§push(-(§§pop() + 108) - 38);
               }
               §§push(Number(§§pop()));
            }
            return §§pop();
         },null,"this.height");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 - 20 - 34 - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = viewModel.selectedKeywordsTab == this?"selected":"unselected";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"this.currentState");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 1) * 85 * 99);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return Boolean(seedKeyword) || isOwnKeywordsTab;
         },null,"deleteimage.includeInLayout");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(§§pop() * 57 * 1 + 1 - 53) + 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return AssetsLibrary.X_IMAGE;
         },null,"deleteimage.source");
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push((§§pop() - 1 - 1 - 26) * 106 + 103);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = !!isOwnKeywordsTab?"Delete All Own Keywords":"Delete Seed Keyword and Asssociated Keywords";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"deleteimage.toolTip");
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(((§§pop() + 14 - 1) * 79 + 73 - 1) * 64 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return isRolledOver;
         },null,"deleteimage.mouseChildren");
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push(-((§§pop() + 34) * 12 - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return isRolledOver && (Boolean(seedKeyword) || isOwnKeywordsTab);
         },null,"deleteimage.visible");
         §§push(result);
         §§push(7);
         if(_loc2_)
         {
            §§push(-§§pop() - 1 - 1 - 31);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            if(Boolean(seedKeyword) || isOwnKeywordsTab)
            {
               §§push(30);
               if(_loc2_)
               {
                  §§push(§§pop() + 46 + 1 + 10 - 1);
               }
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(30);
               if(_loc2_)
               {
                  §§push((§§pop() - 101) * 44 * 70 - 1);
               }
               §§push(Number(§§pop()));
            }
            return §§pop();
         },null,"container.height");
         §§push(result);
         §§push(8);
         if(_loc2_)
         {
            §§push((-((§§pop() + 89) * 110) + 4 + 1 + 85) * 88);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            if(isRolledOver)
            {
               §§push(15921906);
               if(_loc1_)
               {
                  §§push(§§pop() + 114 + 1 - 70 - 1 - 1 + 1);
               }
               §§push(§§pop());
            }
            else
            {
               §§push(16777215);
               if(_loc1_)
               {
                  §§push(-(§§pop() + 52) + 84);
               }
               §§push(§§pop());
            }
            return §§pop();
         },null,"_TabRenderer_SetProperty1.value");
         §§push(result);
         §§push(9);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 48) * 43 - 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            if(isRolledOver)
            {
               §§push(0.6);
            }
            else
            {
               §§push(0);
               if(_loc1_)
               {
                  §§push((-§§pop() - 1) * 86);
               }
               §§push(§§pop());
            }
            return §§pop();
         },null,"_TabRenderer_SetProperty2.value");
         §§push(result);
         §§push(10);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1) + 1 - 93 - 52);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return this.icon;
         },null,"othericon.source");
         §§push(result);
         §§push(11);
         if(_loc2_)
         {
            §§push(§§pop() * 5 * 37 + 119);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return Boolean(icon);
         },null,"othericon.visible");
         §§push(result);
         §§push(12);
         if(_loc2_)
         {
            §§push(§§pop() * 94 + 1 - 50 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = this.label;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_TabRenderer_Label1.text");
         §§push(result);
         §§push(13);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 63 + 1 + 72 - 1 + 37);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return isTrashTab && currentState == "selected" && §§pop() > §§pop();
         },null,"_TabRenderer_Button1.includeInLayout");
         §§push(result);
         §§push(14);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 47) * 42 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return isTrashTab && currentState == "selected" && §§pop() > §§pop();
         },null,"_TabRenderer_Button1.visible");
         §§push(result);
         §§push(15);
         if(_loc2_)
         {
            §§push((-§§pop() + 38 - 1 - 1 + 1) * 104);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return model.selectedKeywordCollection.totalCount;
         },null,"_TabRenderer_SetProperty3.value");
         §§push(result);
         §§push(16);
         if(_loc2_)
         {
            §§push(---(§§pop() - 60) * 43 * 60 + 51);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return keywords.totalCount;
         },null,"_TabRenderer_SetProperty4.value");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get _TabRenderer_Label2() : Label
      {
         return this._1885309628_TabRenderer_Label2;
      }
      
      public function set _TabRenderer_Label2(param1:Label) : void
      {
         var _loc2_:Object = this._1885309628_TabRenderer_Label2;
         if(_loc2_ !== param1)
         {
            this._1885309628_TabRenderer_Label2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_TabRenderer_Label2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _TabRenderer_SetProperty1() : SetProperty
      {
         return this._102864960_TabRenderer_SetProperty1;
      }
      
      public function set _TabRenderer_SetProperty1(param1:SetProperty) : void
      {
         var _loc2_:Object = this._102864960_TabRenderer_SetProperty1;
         if(_loc2_ !== param1)
         {
            this._102864960_TabRenderer_SetProperty1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_TabRenderer_SetProperty1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _TabRenderer_SetProperty2() : SetProperty
      {
         return this._102864959_TabRenderer_SetProperty2;
      }
      
      public function set _TabRenderer_SetProperty2(param1:SetProperty) : void
      {
         var _loc2_:Object = this._102864959_TabRenderer_SetProperty2;
         if(_loc2_ !== param1)
         {
            this._102864959_TabRenderer_SetProperty2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_TabRenderer_SetProperty2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _TabRenderer_SetProperty3() : SetProperty
      {
         return this._102864958_TabRenderer_SetProperty3;
      }
      
      public function set _TabRenderer_SetProperty3(param1:SetProperty) : void
      {
         var _loc2_:Object = this._102864958_TabRenderer_SetProperty3;
         if(_loc2_ !== param1)
         {
            this._102864958_TabRenderer_SetProperty3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_TabRenderer_SetProperty3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _TabRenderer_SetProperty4() : SetProperty
      {
         return this._102864957_TabRenderer_SetProperty4;
      }
      
      public function set _TabRenderer_SetProperty4(param1:SetProperty) : void
      {
         var _loc2_:Object = this._102864957_TabRenderer_SetProperty4;
         if(_loc2_ !== param1)
         {
            this._102864957_TabRenderer_SetProperty4 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_TabRenderer_SetProperty4",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bgColor() : SolidColor
      {
         return this._204859874bgColor;
      }
      
      public function set bgColor(param1:SolidColor) : void
      {
         var _loc2_:Object = this._204859874bgColor;
         if(_loc2_ !== param1)
         {
            this._204859874bgColor = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bgColor",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get container() : BorderContainer
      {
         return this._410956671container;
      }
      
      public function set container(param1:BorderContainer) : void
      {
         var _loc2_:Object = this._410956671container;
         if(_loc2_ !== param1)
         {
            this._410956671container = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"container",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get deleteimage() : Image
      {
         return this._1112803696deleteimage;
      }
      
      public function set deleteimage(param1:Image) : void
      {
         var _loc2_:Object = this._1112803696deleteimage;
         if(_loc2_ !== param1)
         {
            this._1112803696deleteimage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"deleteimage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get othericon() : Image
      {
         return this._1945259127othericon;
      }
      
      public function set othericon(param1:Image) : void
      {
         var _loc2_:Object = this._1945259127othericon;
         if(_loc2_ !== param1)
         {
            this._1945259127othericon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"othericon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get icon() : Class
      {
         return this._3226745icon;
      }
      
      public function set icon(param1:Class) : void
      {
         var _loc2_:Object = this._3226745icon;
         if(_loc2_ !== param1)
         {
            this._3226745icon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get keywords() : KeywordArrayCollection
      {
         return this._523149226keywords;
      }
      
      public function set keywords(param1:KeywordArrayCollection) : void
      {
         var _loc2_:Object = this._523149226keywords;
         if(_loc2_ !== param1)
         {
            this._523149226keywords = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keywords",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isTrashTab() : Boolean
      {
         return this._491884679isTrashTab;
      }
      
      public function set isTrashTab(param1:Boolean) : void
      {
         var _loc2_:Object = this._491884679isTrashTab;
         if(_loc2_ !== param1)
         {
            this._491884679isTrashTab = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isTrashTab",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isFavoritesTab() : Boolean
      {
         return this._234873848isFavoritesTab;
      }
      
      public function set isFavoritesTab(param1:Boolean) : void
      {
         var _loc2_:Object = this._234873848isFavoritesTab;
         if(_loc2_ !== param1)
         {
            this._234873848isFavoritesTab = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isFavoritesTab",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isOwnKeywordsTab() : Boolean
      {
         return this._651935761isOwnKeywordsTab;
      }
      
      public function set isOwnKeywordsTab(param1:Boolean) : void
      {
         var _loc2_:Object = this._651935761isOwnKeywordsTab;
         if(_loc2_ !== param1)
         {
            this._651935761isOwnKeywordsTab = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isOwnKeywordsTab",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isAllKeywordsTab() : Boolean
      {
         return this._805218036isAllKeywordsTab;
      }
      
      public function set isAllKeywordsTab(param1:Boolean) : void
      {
         var _loc2_:Object = this._805218036isAllKeywordsTab;
         if(_loc2_ !== param1)
         {
            this._805218036isAllKeywordsTab = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isAllKeywordsTab",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get seedKeyword() : SeedKeywordVO
      {
         return this._1990658504seedKeyword;
      }
      
      private function set seedKeyword(param1:SeedKeywordVO) : void
      {
         var _loc2_:Object = this._1990658504seedKeyword;
         if(_loc2_ !== param1)
         {
            this._1990658504seedKeyword = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"seedKeyword",_loc2_,param1));
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
      
      [Bindable(event="propertyChange")]
      private function get isRolledOver() : Boolean
      {
         return this._1777058202isRolledOver;
      }
      
      private function set isRolledOver(param1:Boolean) : void
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
   }
}
