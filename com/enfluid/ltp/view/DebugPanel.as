package com.enfluid.ltp.view
{
   import spark.components.VGroup;
   import mx.binding.IBindingClient;
   import flash.filesystem.FileStream;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.ButtonBar;
   import mx.controls.HTML;
   import spark.components.TextArea;
   import spark.components.NavigatorContent;
   import mx.containers.ViewStack;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import flash.filesystem.File;
   import spark.components.Label;
   import mx.binding.BindingManager;
   import flash.filesystem.FileMode;
   import mx.controls.Alert;
   import spark.components.Group;
   import flash.utils.setTimeout;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.view.components.Link;
   import flash.events.MouseEvent;
   import mx.core.UIComponentDescriptor;
   import mx.core.DeferredInstanceFromFunction;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.SetDefaultConfigurationCommand;
   import mx.binding.Binding;
   import com.enfluid.ltp.model.constants.Constants;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class DebugPanel extends VGroup implements IBindingClient
   {
      
      private static var fileStream:FileStream;
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _DebugPanel_ButtonBar1:ButtonBar;
      
      public var _DebugPanel_HTML2:HTML;
      
      public var _DebugPanel_HTML4:HTML;
      
      public var _DebugPanel_TextArea1:TextArea;
      
      private var _2039167869domizeHTML:HTML;
      
      private var _1199526786domizeShell:NavigatorContent;
      
      private var _1680480187googleSearchResultsShell:NavigatorContent;
      
      private var _1520998100keywordPlannerHTML:HTML;
      
      private var _82920441keywordPlannerShell:NavigatorContent;
      
      private var _2002269516logShell:NavigatorContent;
      
      private var _1246386883mozHTML:HTML;
      
      private var _2086710821mozResultShell:NavigatorContent;
      
      private var _182637929myViewStack:ViewStack;
      
      private var _1073373949uniregistryShell:NavigatorContent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      private var _1589792892viewModel:ViewModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function DebugPanel()
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
         var bindings:Array = this._DebugPanel_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_DebugPanelWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return DebugPanel[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc4_)
         {
            §§push((-§§pop() - 1 - 1) * 62 + 87);
         }
         §§pop().percentWidth = §§pop();
         §§push(this);
         §§push(100);
         if(_loc3_)
         {
            §§push(-((§§pop() + 1 + 1) * 24) + 1 - 55);
         }
         §§pop().percentHeight = §§pop();
         this.horizontalAlign = "center";
         this.mxmlContent = [this._DebugPanel_Group1_c(),this._DebugPanel_ViewStack1_i()];
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 1 + 1 + 1 + 35) * 7);
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
         DebugPanel._watcherSetupUtil = param1;
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
      
      private final function onClickSaveToDesktop() : void
      {
         if(this.myViewStack.selectedChild == this.keywordPlannerShell)
         {
            this.save(this.viewModel.keywordPlannerHTML.htmlLoader.window.document.body.outerHTML,"ltp-kwp.html");
         }
         else if(this.myViewStack.selectedChild == this.uniregistryShell)
         {
            this.save(this.model.mostRecentFailedUniregistryResult,"ltp-u.html");
         }
         else if(this.myViewStack.selectedChild == this.domizeShell)
         {
            this.save(this.model.mostRecentFailedUniregistryResult,"ltp-d.html");
         }
         else if(this.myViewStack.selectedChild == this.googleSearchResultsShell)
         {
            this.save(this.model.mostRecentGoogleSearchResult,"ltp-gsr.html");
         }
         else if(this.myViewStack.selectedChild == this.mozResultShell)
         {
            this.save(this.model.mostRecentFailedSEOMozREsult,"ltp-m.html");
         }
         else if(this.myViewStack.selectedChild == this.logShell)
         {
            this.save(this.model.logText,"ltp-log.text");
         }
      }
      
      private final function save(param1:String, param2:String) : void
      {
         var _loc3_:File = File.desktopDirectory.resolvePath(param2);
         if(!fileStream)
         {
            fileStream = new FileStream();
         }
         fileStream.open(_loc3_,FileMode.WRITE);
         param1 = param1.replace(/\n/g,File.lineEnding);
         fileStream.writeUTFBytes(param1);
         fileStream.close();
         Alert.okLabel = "OK";
         §§push(Alert);
         §§push(130);
         if(_loc5_)
         {
            §§push(((§§pop() * 1 - 112) * 3 - 1 + 14 - 84) * 90);
         }
         §§pop().buttonWidth = §§pop();
         §§push(Alert);
         §§push(30);
         if(_loc5_)
         {
            §§push(--§§pop() - 110);
         }
         §§pop().buttonHeight = §§pop();
         Alert.show(param2 + " has been saved to your desktop");
      }
      
      private final function _DebugPanel_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 1 + 1 + 1 - 80);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.mxmlContent = [this._DebugPanel_ButtonBar1_i(),this._DebugPanel_Link1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _DebugPanel_ButtonBar1_i() : ButtonBar
      {
         var _loc1_:ButtonBar = new ButtonBar();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 55 - 1 - 83 - 48);
         }
         §§pop().horizontalCenter = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(--§§pop() + 84 - 1) * 71 + 1);
         }
         §§pop().verticalCenter = §§pop();
         _loc1_.id = "_DebugPanel_ButtonBar1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DebugPanel_ButtonBar1 = _loc1_;
         BindingManager.executeBindings(this,"_DebugPanel_ButtonBar1",this._DebugPanel_ButtonBar1);
         return _loc1_;
      }
      
      private final function _DebugPanel_Link1_c() : Link
      {
         var _loc1_:Link = new Link();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(((§§pop() - 1) * 9 + 1) * 44 + 1 + 47);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 116 - 118 + 106) + 108 + 1);
         }
         §§pop().verticalCenter = §§pop();
         _loc1_.text = "save to desktop";
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) + 12 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.addEventListener("click",this.___DebugPanel_Link1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___DebugPanel_Link1_click(param1:MouseEvent) : void
      {
         this.onClickSaveToDesktop();
      }
      
      private final function _DebugPanel_ViewStack1_i() : ViewStack
      {
         var temp:ViewStack = new ViewStack();
         §§push(temp);
         §§push(100);
         if(_loc3_)
         {
            §§push(-((-§§pop() + 1) * 107 - 23 + 27) + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(temp);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 1 + 66) + 91 - 80));
         }
         §§pop().percentHeight = §§pop();
         temp.creationPolicy = "all";
         temp.id = "myViewStack";
         if(!temp.document)
         {
            temp.document = this;
         }
         temp.mx_internal::_documentDescriptor = new UIComponentDescriptor({
            "type":ViewStack,
            "id":"myViewStack",
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":NavigatorContent,
                  "id":"keywordPlannerShell",
                  "events":{"creationComplete":"__keywordPlannerShell_creationComplete"},
                  "propertiesFactory":function():Object
                  {
                     §§push("percentWidth");
                     §§push(100);
                     if(_loc2_)
                     {
                        §§push(§§pop() * 71 + 1 + 1 - 1);
                     }
                     §§push("percentHeight");
                     §§push(100);
                     if(_loc2_)
                     {
                        §§push(§§pop() - 1 - 81 + 102 - 85);
                     }
                     return null;
                  }
               }),new UIComponentDescriptor({
                  "type":NavigatorContent,
                  "id":"uniregistryShell",
                  "propertiesFactory":function():Object
                  {
                     §§push("percentWidth");
                     §§push(100);
                     if(_loc1_)
                     {
                        §§push(§§pop() + 1 + 1 + 86 + 52 + 33 + 115);
                     }
                     §§push("percentHeight");
                     §§push(100);
                     if(_loc2_)
                     {
                        §§push((§§pop() - 1 - 87 - 1 - 1) * 78 - 95 - 1);
                     }
                     return null;
                  }
               }),new UIComponentDescriptor({
                  "type":NavigatorContent,
                  "id":"domizeShell",
                  "propertiesFactory":function():Object
                  {
                     §§push("percentWidth");
                     §§push(100);
                     if(_loc1_)
                     {
                        §§push(-((-(§§pop() - 73) - 28 + 1) * 37 + 111));
                     }
                     §§push("percentHeight");
                     §§push(100);
                     if(_loc2_)
                     {
                        §§push((§§pop() * 118 + 1 + 11 - 27 + 31 + 39) * 13);
                     }
                     return null;
                  }
               }),new UIComponentDescriptor({
                  "type":NavigatorContent,
                  "id":"googleSearchResultsShell",
                  "propertiesFactory":function():Object
                  {
                     §§push("percentWidth");
                     §§push(100);
                     if(_loc1_)
                     {
                        §§push(--((§§pop() * 47 + 96) * 89));
                     }
                     §§push("percentHeight");
                     §§push(100);
                     if(_loc1_)
                     {
                        §§push(-(-(§§pop() * 39) + 59 + 1 + 1) - 47);
                     }
                     return null;
                  }
               }),new UIComponentDescriptor({
                  "type":NavigatorContent,
                  "id":"mozResultShell",
                  "propertiesFactory":function():Object
                  {
                     §§push("percentWidth");
                     §§push(100);
                     if(_loc2_)
                     {
                        §§push(-(-(§§pop() + 1) + 19) + 1 - 1);
                     }
                     §§push("percentHeight");
                     §§push(100);
                     if(_loc1_)
                     {
                        §§push(--§§pop() - 1 - 1 + 1 - 1);
                     }
                     return null;
                  }
               }),new UIComponentDescriptor({
                  "type":NavigatorContent,
                  "id":"logShell",
                  "propertiesFactory":function():Object
                  {
                     §§push("percentWidth");
                     §§push(100);
                     if(_loc1_)
                     {
                        §§push(-(§§pop() + 59 - 55 - 1));
                     }
                     §§push("percentHeight");
                     §§push(100);
                     if(_loc2_)
                     {
                        §§push(-(§§pop() * 94 * 78));
                     }
                     return null;
                  }
               })]};
            }
         });
         temp.mx_internal::_documentDescriptor.document = this;
         this.myViewStack = temp;
         BindingManager.executeBindings(this,"myViewStack",this.myViewStack);
         return temp;
      }
      
      private final function _DebugPanel_Array3_c() : Array
      {
         var _loc1_:Array = [this._DebugPanel_HTML1_i()];
         return _loc1_;
      }
      
      private final function _DebugPanel_HTML1_i() : HTML
      {
         var _loc1_:HTML = new HTML();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() + 34 + 101 - 82 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(§§pop() + 3 + 70 + 107 - 108);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push("paddingLeft");
         §§push(10);
         if(_loc2_)
         {
            §§push((§§pop() - 114 + 0 - 37 - 1) * 69);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.addEventListener("creationComplete",this.__keywordPlannerHTML_creationComplete);
         _loc1_.id = "keywordPlannerHTML";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.keywordPlannerHTML = _loc1_;
         BindingManager.executeBindings(this,"keywordPlannerHTML",this.keywordPlannerHTML);
         return _loc1_;
      }
      
      public final function __keywordPlannerHTML_creationComplete(param1:FlexEvent) : void
      {
         this.viewModel.keywordPlannerHTML = this.keywordPlannerHTML;
      }
      
      public final function __keywordPlannerShell_creationComplete(param1:FlexEvent) : void
      {
         this.viewModel.keywordPlannerHTMLParent = this.keywordPlannerShell;
      }
      
      private final function _DebugPanel_Array4_c() : Array
      {
         var _loc1_:Array = [this._DebugPanel_HTML2_i()];
         return _loc1_;
      }
      
      private final function _DebugPanel_HTML2_i() : HTML
      {
         var _loc1_:HTML = new HTML();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() * 107 * 119 - 24 - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1 + 1 - 1 - 25) * 112 - 33));
         }
         §§pop().percentHeight = §§pop();
         _loc1_.id = "_DebugPanel_HTML2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DebugPanel_HTML2 = _loc1_;
         BindingManager.executeBindings(this,"_DebugPanel_HTML2",this._DebugPanel_HTML2);
         return _loc1_;
      }
      
      private final function _DebugPanel_Array5_c() : Array
      {
         var _loc1_:Array = [this._DebugPanel_HTML3_i()];
         return _loc1_;
      }
      
      private final function _DebugPanel_HTML3_i() : HTML
      {
         var _loc1_:HTML = new HTML();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((-§§pop() + 1) * 118);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-§§pop() * 88 + 75);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.addEventListener("creationComplete",this.__domizeHTML_creationComplete);
         _loc1_.id = "domizeHTML";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.domizeHTML = _loc1_;
         BindingManager.executeBindings(this,"domizeHTML",this.domizeHTML);
         return _loc1_;
      }
      
      public final function __domizeHTML_creationComplete(param1:FlexEvent) : void
      {
         ViewModel.instance.domizeHTML = this.domizeHTML;
      }
      
      private final function _DebugPanel_Array6_c() : Array
      {
         var _loc1_:Array = [this._DebugPanel_HTML4_i()];
         return _loc1_;
      }
      
      private final function _DebugPanel_HTML4_i() : HTML
      {
         var _loc1_:HTML = new HTML();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((--§§pop() + 118 + 1) * 89);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() - 59) + 69);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.id = "_DebugPanel_HTML4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DebugPanel_HTML4 = _loc1_;
         BindingManager.executeBindings(this,"_DebugPanel_HTML4",this._DebugPanel_HTML4);
         return _loc1_;
      }
      
      private final function _DebugPanel_Array7_c() : Array
      {
         var _loc1_:Array = [this._DebugPanel_HTML5_i()];
         return _loc1_;
      }
      
      private final function _DebugPanel_HTML5_i() : HTML
      {
         var _loc1_:HTML = new HTML();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 71 - 69);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(--(-(§§pop() + 103) + 1 - 93) * 0);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.id = "mozHTML";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mozHTML = _loc1_;
         BindingManager.executeBindings(this,"mozHTML",this.mozHTML);
         return _loc1_;
      }
      
      private final function _DebugPanel_Array8_c() : Array
      {
         var _loc1_:Array = [this._DebugPanel_TextArea1_i()];
         return _loc1_;
      }
      
      private final function _DebugPanel_TextArea1_i() : TextArea
      {
         var _loc1_:TextArea = new TextArea();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 62 + 89 - 1 - 1));
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() - 65 - 1 + 15) + 7 - 1 + 1);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.id = "_DebugPanel_TextArea1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DebugPanel_TextArea1 = _loc1_;
         BindingManager.executeBindings(this,"_DebugPanel_TextArea1",this._DebugPanel_TextArea1);
         return _loc1_;
      }
      
      private final function _DebugPanel_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() + 113 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_DebugPanel_ButtonBar1.dataProvider","myViewStack");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push((-(-(§§pop() * 79) - 1) + 1) * 93);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = Constants.KEYWORD_PLANNER_URL;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"keywordPlannerHTML.location");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 1) - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = model.mostRecentFailedUniregistryResult;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_DebugPanel_HTML2.htmlText");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 72 - 1 - 62 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = model.mostRecentGoogleSearchResult;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_DebugPanel_HTML4.htmlText");
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push(-§§pop() - 1 - 1 + 92 - 80);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = model.mostRecentFailedSEOMozREsult;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"mozHTML.htmlText");
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = model.logText;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_DebugPanel_TextArea1.text");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get domizeHTML() : HTML
      {
         return this._2039167869domizeHTML;
      }
      
      public function set domizeHTML(param1:HTML) : void
      {
         var _loc2_:Object = this._2039167869domizeHTML;
         if(_loc2_ !== param1)
         {
            this._2039167869domizeHTML = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domizeHTML",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domizeShell() : NavigatorContent
      {
         return this._1199526786domizeShell;
      }
      
      public function set domizeShell(param1:NavigatorContent) : void
      {
         var _loc2_:Object = this._1199526786domizeShell;
         if(_loc2_ !== param1)
         {
            this._1199526786domizeShell = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domizeShell",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get googleSearchResultsShell() : NavigatorContent
      {
         return this._1680480187googleSearchResultsShell;
      }
      
      public function set googleSearchResultsShell(param1:NavigatorContent) : void
      {
         var _loc2_:Object = this._1680480187googleSearchResultsShell;
         if(_loc2_ !== param1)
         {
            this._1680480187googleSearchResultsShell = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"googleSearchResultsShell",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get keywordPlannerHTML() : HTML
      {
         return this._1520998100keywordPlannerHTML;
      }
      
      public function set keywordPlannerHTML(param1:HTML) : void
      {
         var _loc2_:Object = this._1520998100keywordPlannerHTML;
         if(_loc2_ !== param1)
         {
            this._1520998100keywordPlannerHTML = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keywordPlannerHTML",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get keywordPlannerShell() : NavigatorContent
      {
         return this._82920441keywordPlannerShell;
      }
      
      public function set keywordPlannerShell(param1:NavigatorContent) : void
      {
         var _loc2_:Object = this._82920441keywordPlannerShell;
         if(_loc2_ !== param1)
         {
            this._82920441keywordPlannerShell = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keywordPlannerShell",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get logShell() : NavigatorContent
      {
         return this._2002269516logShell;
      }
      
      public function set logShell(param1:NavigatorContent) : void
      {
         var _loc2_:Object = this._2002269516logShell;
         if(_loc2_ !== param1)
         {
            this._2002269516logShell = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"logShell",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mozHTML() : HTML
      {
         return this._1246386883mozHTML;
      }
      
      public function set mozHTML(param1:HTML) : void
      {
         var _loc2_:Object = this._1246386883mozHTML;
         if(_loc2_ !== param1)
         {
            this._1246386883mozHTML = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mozHTML",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mozResultShell() : NavigatorContent
      {
         return this._2086710821mozResultShell;
      }
      
      public function set mozResultShell(param1:NavigatorContent) : void
      {
         var _loc2_:Object = this._2086710821mozResultShell;
         if(_loc2_ !== param1)
         {
            this._2086710821mozResultShell = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mozResultShell",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get myViewStack() : ViewStack
      {
         return this._182637929myViewStack;
      }
      
      public function set myViewStack(param1:ViewStack) : void
      {
         var _loc2_:Object = this._182637929myViewStack;
         if(_loc2_ !== param1)
         {
            this._182637929myViewStack = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myViewStack",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get uniregistryShell() : NavigatorContent
      {
         return this._1073373949uniregistryShell;
      }
      
      public function set uniregistryShell(param1:NavigatorContent) : void
      {
         var _loc2_:Object = this._1073373949uniregistryShell;
         if(_loc2_ !== param1)
         {
            this._1073373949uniregistryShell = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uniregistryShell",_loc2_,param1));
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
