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
            _loc2_.value = model.gPassword;
            scraper.click(scraper.getElementById("signIn"));
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
               §§push(§§pop() * 70 * 16 + 31 - 1);
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
                     §§push(-(§§pop() + 1 - 17 - 1 + 1) * 27);
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
                  §§push((§§pop() + 1) * 8 * 91);
               }
               §§pop().callDelayed(§§pop(),§§pop());
               return;
            }
            emailLinks = scraper.getElementsByClassName("account-email");
            §§push(0);
            if(_loc5_)
            {
               §§push(-(§§pop() * 67 + 1 + 1));
            }
            for each(emailLink in emailLinks)
            {
               try
               {
                  §§push(emailLink.innerText.indexOf(model.gUserName));
                  §§push(0);
                  if(_loc6_)
                  {
                     §§push(§§pop() + 1 - 11 - 1 - 32 + 109 - 1);
                  }
                  if(§§pop() >= §§pop())
                  {
                     Logger.log("CLICKING EMAIL LOGIN LINK");
                     scraper.click(emailLink);
                     §§push();
                     §§push(this.checkIsLoggedIn);
                     §§push(2000);
                     if(_loc5_)
                     {
                        §§push(-(--§§pop() - 1 + 57) + 109 - 1);
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
               if(_loc6_)
               {
                  §§push((§§pop() - 1 + 1) * 71 * 90 + 34 - 10);
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
                        §§push(-(§§pop() + 1 - 1 + 54) - 1 + 67);
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
                     §§push(§§pop() * 24 - 1 + 1 - 55);
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
                  if(_loc6_)
                  {
                     §§push(§§pop() - 1 - 48 + 41 - 112 + 1 - 36);
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
            if(_loc3_)
            {
               §§push(-(§§pop() + 24 + 1 + 1 - 70 + 1) - 1);
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
               §§push(-(§§pop() - 46 - 1 + 1 - 1));
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
            §§push(-(§§pop() + 1) - 1 - 1 + 1 - 1 + 57);
         }
         if(§§pop() == §§pop())
         {
            scraper.htmlLoader.load(new URLRequest(Constants.KEYWORD_PLANNER_URL));
            §§push();
            §§push(this.checkIsLoggedIn);
            §§push(3000);
            if(_loc1_)
            {
               §§push(-((§§pop() - 3) * 52 + 1 + 1));
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
                  §§push(§§pop() * 48 - 19 - 75 - 1);
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
               §§push(§§pop() - 69 - 1 - 1);
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
            if(_loc2_)
            {
               §§push(-(§§pop() - 30) - 1 - 0 - 29);
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
            §§push(-(§§pop() + 28 + 1 - 1 - 1));
         }
         §§pop().callDelayed(§§pop(),§§pop());
      }
   }
}
