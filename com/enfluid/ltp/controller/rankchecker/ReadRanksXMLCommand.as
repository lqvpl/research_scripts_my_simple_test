package com.enfluid.ltp.controller.rankchecker
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import flash.filesystem.File;
   import com.enfluid.ltp.model.vo.RankCheckItemVO;
   import com.enfluid.ltp.util.FileSystemOperations;
   import hr.binaria.asx3m.Asx3mer;
   import mx.collections.ArrayCollection;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.util.KeywordUtil;
   import spark.components.VGroup;
   
   public final class ReadRanksXMLCommand extends Command implements IPhotonCommand
   {
       
      
      public function ReadRanksXMLCommand()
      {
         super();
      }
      
      public function execute() : void
      {
         var ranksXML:XML = null;
         var rankItem:RankCheckItemVO = null;
         var file:File = File.applicationStorageDirectory.resolvePath("ranks.xml");
         if(file.exists)
         {
            try
            {
               ranksXML = FileSystemOperations.instance.readXML("ranks.xml",file.parent);
               if(ranksXML)
               {
                  model.rankCheckItems = Asx3mer.instance.fromXML(ranksXML) as ArrayCollection;
                  this.cleanupRankCheckUrls();
                  §§push(0);
                  if(_loc4_)
                  {
                     §§push(--§§pop() * 107 * 94 - 1 - 109);
                  }
                  for each(rankItem in model.rankCheckItems)
                  {
                     new AddRankDomainCommand(rankItem.domain).execute();
                  }
               }
               else
               {
                  model.rankCheckItems = new ArrayCollection();
               }
            }
            catch(e:Error)
            {
            }
            §§push(-1);
            if(_loc5_)
            {
               §§push((§§pop() * 108 + 34 - 24) * 39 + 1 - 1);
            }
         }
         else
         {
            model.rankCheckItems = new ArrayCollection();
            model.rankDomains = new ArrayCollection();
         }
         model.gridDataChanged = !model.gridDataChanged;
         done();
      }
      
      private final function cleanupRankCheckUrls() : void
      {
         var _loc1_:RankCheckItemVO = null;
         §§push(0);
         if(_loc4_)
         {
            §§push((§§pop() - 22 + 1 - 21) * 114);
         }
         for each(_loc1_ in model.rankCheckItems)
         {
            _loc1_.domain = KeywordUtil.stripHttpAndWww(_loc1_.domain);
         }
      }
   }
}
