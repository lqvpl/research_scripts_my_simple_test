package system.serializers.eden
{
   public function info(verbose:Boolean = false, showConfig:Boolean = false):String
   {
      var separator:String = "----------------------------------------------------------------";
      var CRLF:String = "\n";
      var name:String = "eden";
      var fullname:String = "ECMASCript data exchange notation";
      var version:Version = new Version(0,1);
      var str:* = "";
      if(!verbose && config.verbose)
      {
         verbose = true;
      }
      if(verbose)
      {
         str = str + "{sep}{crlf}";
         str = str + "{name}: {fullname} v{version}{crlf}";
         str = str + "{sep}";
      }
      else
      {
         str = str + "{name} v{version}";
      }
      if(showConfig)
      {
         str = str + "{crlf}config:";
         str = str + "{config}{crlf}";
         str = str + "{sep}";
      }
      return Strings.format(str,{
         "sep":separator,
         "crlf":CRLF,
         "name":name,
         "fullname":fullname,
         "version":version,
         "config":eden.serialize(config)
      });
   }}
