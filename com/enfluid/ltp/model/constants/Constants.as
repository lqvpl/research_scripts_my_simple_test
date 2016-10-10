package com.enfluid.ltp.model.constants
{
   import mx.collections.ArrayList;
   import mx.collections.ArrayCollection;
   import mx.utils.StringUtil;
   import com.enfluid.ltp.util.KeywordUtil;
   import com.enfluid.ltp.controller.rankchecker.AddRankCheckItemCommand;
   
   public final class Constants
   {
      
      public static const APPLICATION_ID:String = "c47d91365e4b4cb30e3f374977196d59";
      
      public static const DK_APPLICATION_ID:String = "DK-LTP-34062034073452";
      
      public static const APP_UPDATE_URL:String = "http://www.longtailpro.com/new/updates/update.xml";
      
      public static const DOMIZE_URL:String = "http://domize.com";
      
      public static const FULL_PERMALICENCE:String = "34c1e31622h2174d8c28541eb6652023";
      
      public static const GOOGLE_CREDENTIALS_FILE_NAME:String = "GWMC-I92M";
      
      public static const GOOGLE_LOGIN_URL:String = "https://accounts.google.com/ServiceLogin?service=adwords&hl=en_US&ltmpl=jfk&continue=https://adwords.google.com/um/gaiaauth?apt%3DNone%26dst%3D/o/Targeting/Explorer%26dst%3D/o/Targeting/Explorer%26ltmpl%3Djfk&passive=86400&sacu=1&sarp=1&sourceid=awo&subid=us-en-et-awhp_jfk";
      
      public static const KEYWORD_PLANNER_URL:String = "https://accounts.google.com/ServiceLogin?service=adwords&continue=https://adwords.google.com/um/identity?dst%3D/ko/KeywordPlanner/Home&hl=en_US&ltmpl=signin&passive=0&skipvpage=true";
      
      public static const KEYWORD_PLANNER_LOGIN_URL:String = "https://accounts.google.com/ServiceLogin?sacu=1&continue=https%3A%2F%2Fwww.google.com%2F&hl=en#identifier";
      
      public static const LITE_PERMALICENCE:String = "6d622416a0af7869rj426c01f80bf0e1";
      
      public static const LITE_UPGRADE_PAGE:String = "http://www.longtailpro.com/liteupgrade/";
      
      public static const MATCH_TYPES:ArrayList = new ArrayList(["Broad","[Exact]","\"Phrase\""]);
      
      public static const MAX_RANK_TRACKER_KEYWORDS:int = 125;
      
      public static const MAX_SEED_KEYWORDS:int = 10;
      
      public static const MONTHS:Object = null;
      
      public static const NOTIFICATION_XML_URL:String = "http://www.longtailpro.com/new/updates/messages.xml";
      
      public static const OLD_BLOWFISH_KEY:String = "9!3!#y6TY87!VW2669eb%68w5R$Pg*";
      
      public static const PLATINUM_PERMARECEIPT:String = "PJg73t";
      
      public static const PROXY_FAIL_SETTING:ArrayCollection = new §§pop().ArrayCollection(null);
      
      public static const PROXY_PHP_URL:String = "http://longtailpro.com/ftp1/proxy.php";
      
      public static const REG_FILE_NAME:String = "RO39-2M3Q";
      
      public static const SRT_API_KEY:String = "24YuIQ-09aS144Jsm";
      
      public static const SRT_ID:String = "LPT201303";
      
      public static const TARGETED_DEVICES:Object = null;
      
      public static const UPGRADE_PAGE:String = "http://www.longtailpro.com/";
      
      public static const OWN_KEYWORD_ID:int = -1;
      
      public static const HEADER_STATE_NORMAL:String = "normalHeader";
      
      public static const HEADER_STATE_INPROGRESS:String = "inProgress";
      
      public static const STATE_CREATE_PROJECT:String = "createProject";
      
      public static const GOOGLE_TITLE:String = "Google_Title";
      
      public static const BING_TITLE:String = "Bing_Title";
      
      public static const DOMAINS:String = "Domains";
      
      public static const MAX_RANKS_TO_CHECK:int = 250;
      
      public static const GOOGLE_AVG_DELAY_WHEN_USING_PROXIES:int = 0;
      
      public static const COMPETITOR:String = "competitor";
      
      public static const RANK_CHECKER:String = "rank_checker";
      
      public static const CACHE_API_URL:String = "http://cache.longtailpro.com/api/";
      
      public static const SOCIAL_API_URL:String = "https://count.donreach.com";
      
      public static const MAJESTIC_HOSTNAME:String = "api.majestic.com";
      
      public static const MAJESTIC_PATH:String = "api/json";
      
      public static const MAJESTIC_DATA_SOURCE:String = "fresh";
      
      public static const MAJESTIC_API_KEY:String = "98B8561562EA3915355BCBA1F5518E52";
      
      public static const MAJESTIC_TIMEOUT:uint = 5;
      
      {
         §§push();
         §§push("January");
         §§push(0);
         if(_loc1_)
         {
            §§push(-(§§pop() - 54 - 1) + 1);
         }
         §§push("February");
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() * 71 - 63 - 1));
         }
         §§push("March");
         §§push(2);
         if(_loc1_)
         {
            §§push(§§pop() + 10 + 1 + 1);
         }
         §§push("April");
         §§push(3);
         if(_loc1_)
         {
            §§push(-§§pop() - 51 + 110);
         }
         §§push("May");
         §§push(4);
         if(_loc1_)
         {
            §§push((§§pop() - 1 + 1) * 110);
         }
         §§push("June");
         §§push(5);
         if(_loc1_)
         {
            §§push((-§§pop() - 1 - 76) * 119 - 1 + 89);
         }
         §§push("July");
         §§push(6);
         if(_loc1_)
         {
            §§push(--(--§§pop() + 8) + 108 + 49);
         }
         §§push("August");
         §§push(7);
         if(_loc2_)
         {
            §§push((§§pop() * 53 - 93) * 112 * 58 + 1 + 1 + 12);
         }
         §§push("September");
         §§push(8);
         if(_loc2_)
         {
            §§push((§§pop() + 32) * 19 + 1 - 1 + 98 + 111 - 4);
         }
         §§push("October");
         §§push(9);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 29 + 86 + 14);
         }
         §§push("November");
         §§push(10);
         if(_loc1_)
         {
            §§push(-(§§pop() * 92 * 99 - 1) + 112);
         }
         §§push("December");
         §§push(11);
         if(_loc1_)
         {
            §§push(-(-§§pop() + 1));
         }
         §§push();
         §§push();
         §§push("value");
         §§push("Move to a different proxy and try again - don\'t inform me (keep proxy on list for next time)");
         §§push("code");
         §§push(1);
         if(_loc2_)
         {
            §§push(-((§§pop() - 1) * 27) + 53 + 106 + 1);
         }
         §§push(null);
         §§push("value");
         §§push("Inform me of a failing proxy - keep on list");
         §§push("code");
         §§push(2);
         if(_loc2_)
         {
            §§push(§§pop() - 36 - 1 - 1 + 1);
         }
         §§push(null);
         §§push("value");
         §§push("Remove failing proxy and try another one.");
         §§push("code");
         §§push(3);
         if(_loc1_)
         {
            §§push((§§pop() - 50 - 1 - 91) * 106 + 96);
         }
         §§push();
         §§push(0);
         if(_loc2_)
         {
            §§push(--(§§pop() * 109 - 1 + 1) + 1);
         }
         §§push(String(§§pop()));
         §§push("Desktop and laptop devices");
         §§push(1);
         if(_loc1_)
         {
            §§push(-(-(§§pop() - 22 + 6) - 1 + 1) - 1);
         }
         §§push(String(§§pop()));
         §§push("All mobile devices");
         §§push(2);
         if(_loc1_)
         {
            §§push(((§§pop() - 1 + 1) * 91 - 55) * 36);
         }
         §§push(String(§§pop()));
         §§push("Mobile WAP devices");
         §§push(3);
         if(_loc1_)
         {
            §§push(-(§§pop() - 118 - 1 - 12 - 68 + 1) - 62);
         }
      }
      
      public function Constants()
      {
         super();
      }
   }
}
