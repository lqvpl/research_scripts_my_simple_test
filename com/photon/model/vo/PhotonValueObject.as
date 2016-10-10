package com.photon.model.vo
{
   import com.photon.util.PhotonUtils;
   
   public class PhotonValueObject
   {
       
      
      public function PhotonValueObject()
      {
         super();
      }
      
      protected final function parseBoolean(param1:*) : Boolean
      {
         return PhotonUtils.parseBoolean(param1);
      }
   }
}
