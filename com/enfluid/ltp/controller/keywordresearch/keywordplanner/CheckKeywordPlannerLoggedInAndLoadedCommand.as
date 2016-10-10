package com.enfluid.ltp.controller.keywordresearch.keywordplanner
{
   import com.photon.controller.IPhotonCommand;
   import mx.binding.utils.ChangeWatcher;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import flash.utils.setTimeout;
   import com.enfluid.ltp.util.Logger;
   import mx.binding.utils.BindingUtils;
   import flash.net.URLRequest;
   import com.enfluid.ltp.model.constants.Constants;
   import hr.binaria.asx3m.converters.IMarshallingContext;
   import hr.binaria.asx3m.io.IHierarchicalStreamWriter;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   
   public final class CheckKeywordPlannerLoggedInAndLoadedCommand extends KeywordPlannerCommand implements IPhotonCommand
   {
       
      
      private var watcher:ChangeWatcher;
      
      private var isUsersOwnKeywords:Boolean;
      
      public function CheckKeywordPlannerLoggedInAndLoadedCommand(param1:Boolean)
      {
         this.isUsersOwnKeywords = param1;
         super();
      }
      
      public function get isKeywordIdeasSearchPaneOpen() : Boolean
      {
         var _loc1_:* = scraper.getElementByInnerText("div","Enter one or more of the following:",true);
         if(!_loc1_ || _loc1_.style.cssText.indexOf("display: none") >= 0)
         {
            return false;
         }
         return true;
      }
      
      public function get isKeywordPlannerLoaded() : Boolean
      {
         if(scraper.body && scraper.hasTextOnPage("Keyword Planner") && !isLoading)
         {
            return true;
         }
         return false;
      }
      
      public function get isOnGenerateKeywordsPage() : Boolean
      {
         if(!scraper.hasTextOnPage("Plan your next search campaign") && Boolean(scraper.getElementByInnerText("div","Get ideas",true)))
         {
            return true;
         }
         return false;
      }
      
      public function get isOnOwnKeywordsPage() : Boolean
      {
         if(!scraper.hasTextOnPage("Plan your next search campaign") && Boolean(scraper.getElementByInnerText("div","Get search volume",true)))
         {
            return true;
         }
         return false;
      }
      
      public function get isOwnKeywordsSearchPaneOpen() : Boolean
      {
         var _loc1_:* = scraper.getElementByInnerText("div"," Option 1: ",true);
         if(!_loc1_ || _loc1_.style.cssText.indexOf("display: none") >= 0)
         {
            return false;
         }
         return true;
      }
      
      public function execute() : void
      {
         ProgressBarUtil.incrementCurrentCount("Checking Keyword Planner Loaded and Logged In");
         if(isCancelled)
         {
            return;
         }
         this.checkIsLoggedIn();
      }
      
      public final function checkAndCloseOldVersionPopup() : void
      {
         var _loc1_:* = scraper.getElementByInnerText("div","Remind me later",true);
         if(_loc1_)
         {
            scraper.click(_loc1_);
         }
      }
      
      public final function doLogin() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         if(isLoginPage && model.autoLoginGoogle && model.gUserName && model.gPassword)
         {
            _loc1_ = scraper.getElementById("Email");
            if(_loc1_)
            {
               _loc1_.value = model.gUserName;
            }
            _loc2_ = scraper.getElementById("Passwd");
            if(_loc2_ != null)
            {
               _loc2_.value = model.gPassword;
               scraper.click(scraper.getElementById("signIn"));
            }
            else
            {
               model.autoLoginGoogle = false;
               this.checkIsLoggedIn();
            }
         }
      }
      
      private final function checkIsLoggedIn() : void
      {
         var emailLinks:* = undefined;
         var emailLink:* = undefined;
         var signInLink:* = undefined;
         var addAccountLink:* = undefined;
         var startOverButton:* = undefined;
         if(scraper.pendingLoad)
         {
            §§push();
            §§push(this.checkIsLoggedIn);
            §§push(500);
            if(_loc5_)
            {
               §§push(§§pop() + 1 + 1 - 61 + 1);
            }
            §§pop().setTimeout(§§pop(),§§pop());
         }
         else
         {
            try
            {
               if(scraper.hasTextOnPage("Internal Server Error") || scraper.hasTextOnPage("Ad group ideas"))
               {
                  scraper.htmlLoader.reload();
                  §§push();
                  §§push(this.checkIsLoggedIn);
                  §§push(3000);
                  if(_loc6_)
                  {
                     §§push(---(§§pop() * 64 - 106 + 40));
                  }
                  §§pop().callDelayed(§§pop(),§§pop());
                  return;
               }
            }
            catch(err:Error)
            {
               §§push();
               §§push(checkIsLoggedIn);
               §§push(6000);
               if(_loc6_)
               {
                  §§push(-((§§pop() - 1) * 46 - 99) - 100);
               }
               §§pop().callDelayed(§§pop(),§§pop());
               return;
            }
            emailLinks = scraper.getElementsByClassName("account-email");
            §§push(0);
            if(_loc5_)
            {
               §§push(-§§pop() + 23 + 1 + 1 - 7);
            }
            for each(emailLink in emailLinks)
            {
               try
               {
                  §§push(emailLink.innerText.indexOf(model.gUserName));
                  §§push(0);
                  if(_loc5_)
                  {
                     §§push(-§§pop() * 63 + 1);
                  }
                  if(§§pop() >= §§pop())
                  {
                     Logger.log("CLICKING EMAIL LOGIN LINK");
                     scraper.click(emailLink);
                     §§push();
                     §§push(this.checkIsLoggedIn);
                     §§push(2000);
                     if(_loc6_)
                     {
                        §§push(§§pop() + 117 - 36 - 1);
                     }
                     §§pop().callDelayed(§§pop(),§§pop());
                     return;
                  }
               }
               catch(err:Error)
               {
                  continue;
               }
            }
            signInLink = scraper.getElementByInnerText("a","Sign in",true);
            if(signInLink)
            {
               scraper.click(signInLink);
               §§push();
               §§push(this.checkIsLoggedIn);
               §§push(4000);
               if(_loc5_)
               {
                  §§push(-(-(-§§pop() * 55 - 98) + 88) + 1);
               }
               §§pop().callDelayed(§§pop(),§§pop());
               return;
            }
            if(isLoginPage)
            {
               this.ensureStayLoggedInCheckboxSelected();
               if(model.autoLoginGoogle && model.gUserName && model.gPassword && !scraper.hasTextOnPage("The email or password you entered is incorrect."))
               {
                  addAccountLink = scraper.getElementById("account-chooser-add-account");
                  if(addAccountLink)
                  {
                     scraper.click(addAccountLink);
                     §§push();
                     §§push(this.checkIsLoggedIn);
                     §§push(2000);
                     if(_loc5_)
                     {
                        §§push((-§§pop() + 72 - 69 + 72 + 1 - 1) * 102);
                     }
                     §§pop().callDelayed(§§pop(),§§pop());
                     return;
                  }
                  this.doLogin();
                  §§push();
                  §§push(this.checkIsLoggedIn);
                  §§push(2000);
                  if(_loc6_)
                  {
                     §§push(-(-(§§pop() * 59) - 1) + 92);
                  }
                  §§pop().callDelayed(§§pop(),§§pop());
               }
               else
               {
                  viewModel.showKeywordPlannerLoginPopup = true;
                  this.watcher = BindingUtils.bindSetter(this.onKeywordPlannerLoginPopupClosed,viewModel,"showKeywordPlannerLoginPopup");
               }
            }
            else
            {
               startOverButton = scraper.getElementByInnerText("div","Start over",true);
               if(startOverButton)
               {
                  scraper.click(startOverButton);
                  §§push();
                  §§push(this.checkIsLoggedIn);
                  §§push(1000);
                  if(_loc5_)
                  {
                     §§push(§§pop() - 55 - 106 + 118 - 65);
                  }
                  §§pop().callDelayed(§§pop(),§§pop());
                  return;
               }
               viewModel.showKeywordPlannerLoginPopup = false;
               this.checkKeywordPlannerLoaded();
            }
         }
      }
      
      private final function onKeywordPlannerLoginPopupClosed(param1:Boolean) : void
      {
         if(param1 == false)
         {
            this.watcher.unwatch();
            §§push();
            §§push(this.checkIsLoggedIn);
            §§push(2000);
            if(_loc2_)
            {
               §§push(§§pop() - 98 - 1 + 1 + 15 - 1);
            }
            §§pop().callDelayed(§§pop(),§§pop());
         }
      }
      
      private final function checkKeywordIdeasSearchPaneOpen() : void
      {
         if(this.isKeywordIdeasSearchPaneOpen)
         {
            done();
         }
         else
         {
            openKeywordIdeasSearchPane();
            §§push();
            §§push(done);
            §§push(1000);
            if(_loc2_)
            {
               §§push((§§pop() + 1) * 105 + 81 + 54);
            }
            §§pop().setTimeout(§§pop(),§§pop());
         }
      }
      
      private final function checkKeywordPlannerLoaded() : void
      {
         §§push(scraper.doc.location.href.indexOf("adwords"));
         §§push(-1);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 117) - 91 - 1 - 1 + 1));
         }
         if(§§pop() == §§pop())
         {
            scraper.htmlLoader.load(new URLRequest(Constants.KEYWORD_PLANNER_URL));
            §§push();
            §§push(this.checkIsLoggedIn);
            §§push(3000);
            if(_loc2_)
            {
               §§push(-§§pop() + 1 - 12 - 70 + 1 + 10);
            }
            §§pop().callDelayed(§§pop(),§§pop());
            return;
         }
         if(this.isKeywordPlannerLoaded)
         {
            this.checkAndCloseOldVersionPopup();
            if(isOnStartPage)
            {
               if(this.isUsersOwnKeywords)
               {
                  this.checkOwnKeywordsSearchPaneOpen();
               }
               else
               {
                  this.checkKeywordIdeasSearchPaneOpen();
               }
            }
            else if(this.isOnGenerateKeywordsPage && !this.isUsersOwnKeywords)
            {
               done();
            }
            else if(this.isOnOwnKeywordsPage && this.isUsersOwnKeywords)
            {
               done();
            }
            else
            {
               §§push();
               §§push(this.reloadPage);
               §§push(1000);
               if(_loc2_)
               {
                  §§push(-(-§§pop() + 1 - 1));
               }
               §§pop().callDelayed(§§pop(),§§pop());
            }
         }
         else
         {
            §§push();
            §§push(this.checkKeywordPlannerLoaded);
            §§push(1000);
            if(_loc1_)
            {
               §§push(-(§§pop() - 1 + 1 - 81 + 3) + 28);
            }
            §§pop().callDelayed(§§pop(),§§pop());
         }
      }
      
      private final function checkOwnKeywordsSearchPaneOpen() : void
      {
         if(this.isOwnKeywordsSearchPaneOpen)
         {
            done();
         }
         else
         {
            openOwnKeywordsSearchPane();
            §§push();
            §§push(done);
            §§push(1000);
            if(_loc1_)
            {
               §§push((§§pop() * 12 + 56 + 1) * 7);
            }
            §§pop().setTimeout(§§pop(),§§pop());
         }
      }
      
      private final function ensureStayLoggedInCheckboxSelected() : void
      {
         var _loc1_:Object = null;
         try
         {
            _loc1_ = scraper.getElementById("PersistentCookie");
            _loc1_.checked = true;
            return;
         }
         catch(err:Error)
         {
            return;
         }
      }
      
      private final function reloadPage() : void
      {
         scraper.htmlLoader.load(new URLRequest(Constants.KEYWORD_PLANNER_URL));
         §§push();
         §§push(this.checkIsLoggedIn);
         §§push(2000);
         if(_loc2_)
         {
            §§push(-(§§pop() * 30 + 39 - 84 + 1) - 1);
         }
         §§pop().callDelayed(§§pop(),§§pop());
      }
   }
}
