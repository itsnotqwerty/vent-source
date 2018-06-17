package com.amazonaws.services.s3.util;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public final class Mimetypes
{
  public static final Log alS = LogFactory.getLog(Mimetypes.class);
  private static Mimetypes atZ = null;
  public final HashMap<String, String> aua = new HashMap();
  
  Mimetypes()
  {
    this.aua.put("3gp", "video/3gpp");
    this.aua.put("ai", "application/postscript");
    this.aua.put("aif", "audio/x-aiff");
    this.aua.put("aifc", "audio/x-aiff");
    this.aua.put("aiff", "audio/x-aiff");
    this.aua.put("asc", "text/plain");
    this.aua.put("atom", "application/atom+xml");
    this.aua.put("au", "audio/basic");
    this.aua.put("avi", "video/x-msvideo");
    this.aua.put("bcpio", "application/x-bcpio");
    this.aua.put("bin", "application/octet-stream");
    this.aua.put("bmp", "image/bmp");
    this.aua.put("cdf", "application/x-netcdf");
    this.aua.put("cgm", "image/cgm");
    this.aua.put("class", "application/octet-stream");
    this.aua.put("cpio", "application/x-cpio");
    this.aua.put("cpt", "application/mac-compactpro");
    this.aua.put("csh", "application/x-csh");
    this.aua.put("css", "text/css");
    this.aua.put("dcr", "application/x-director");
    this.aua.put("dif", "video/x-dv");
    this.aua.put("dir", "application/x-director");
    this.aua.put("djv", "image/vnd.djvu");
    this.aua.put("djvu", "image/vnd.djvu");
    this.aua.put("dll", "application/octet-stream");
    this.aua.put("dmg", "application/octet-stream");
    this.aua.put("dms", "application/octet-stream");
    this.aua.put("doc", "application/msword");
    this.aua.put("dtd", "application/xml-dtd");
    this.aua.put("dv", "video/x-dv");
    this.aua.put("dvi", "application/x-dvi");
    this.aua.put("dxr", "application/x-director");
    this.aua.put("eps", "application/postscript");
    this.aua.put("etx", "text/x-setext");
    this.aua.put("exe", "application/octet-stream");
    this.aua.put("ez", "application/andrew-inset");
    this.aua.put("flv", "video/x-flv");
    this.aua.put("gif", "image/gif");
    this.aua.put("gram", "application/srgs");
    this.aua.put("grxml", "application/srgs+xml");
    this.aua.put("gtar", "application/x-gtar");
    this.aua.put("gz", "application/x-gzip");
    this.aua.put("hdf", "application/x-hdf");
    this.aua.put("hqx", "application/mac-binhex40");
    this.aua.put("htm", "text/html");
    this.aua.put("html", "text/html");
    this.aua.put("ice", "x-conference/x-cooltalk");
    this.aua.put("ico", "image/x-icon");
    this.aua.put("ics", "text/calendar");
    this.aua.put("ief", "image/ief");
    this.aua.put("ifb", "text/calendar");
    this.aua.put("iges", "model/iges");
    this.aua.put("igs", "model/iges");
    this.aua.put("jnlp", "application/x-java-jnlp-file");
    this.aua.put("jp2", "image/jp2");
    this.aua.put("jpe", "image/jpeg");
    this.aua.put("jpeg", "image/jpeg");
    this.aua.put("jpg", "image/jpeg");
    this.aua.put("js", "application/x-javascript");
    this.aua.put("kar", "audio/midi");
    this.aua.put("latex", "application/x-latex");
    this.aua.put("lha", "application/octet-stream");
    this.aua.put("lzh", "application/octet-stream");
    this.aua.put("m3u", "audio/x-mpegurl");
    this.aua.put("m4a", "audio/mp4a-latm");
    this.aua.put("m4p", "audio/mp4a-latm");
    this.aua.put("m4u", "video/vnd.mpegurl");
    this.aua.put("m4v", "video/x-m4v");
    this.aua.put("mac", "image/x-macpaint");
    this.aua.put("man", "application/x-troff-man");
    this.aua.put("mathml", "application/mathml+xml");
    this.aua.put("me", "application/x-troff-me");
    this.aua.put("mesh", "model/mesh");
    this.aua.put("mid", "audio/midi");
    this.aua.put("midi", "audio/midi");
    this.aua.put("mif", "application/vnd.mif");
    this.aua.put("mov", "video/quicktime");
    this.aua.put("movie", "video/x-sgi-movie");
    this.aua.put("mp2", "audio/mpeg");
    this.aua.put("mp3", "audio/mpeg");
    this.aua.put("mp4", "video/mp4");
    this.aua.put("mpe", "video/mpeg");
    this.aua.put("mpeg", "video/mpeg");
    this.aua.put("mpg", "video/mpeg");
    this.aua.put("mpga", "audio/mpeg");
    this.aua.put("ms", "application/x-troff-ms");
    this.aua.put("msh", "model/mesh");
    this.aua.put("mxu", "video/vnd.mpegurl");
    this.aua.put("nc", "application/x-netcdf");
    this.aua.put("oda", "application/oda");
    this.aua.put("ogg", "application/ogg");
    this.aua.put("ogv", "video/ogv");
    this.aua.put("pbm", "image/x-portable-bitmap");
    this.aua.put("pct", "image/pict");
    this.aua.put("pdb", "chemical/x-pdb");
    this.aua.put("pdf", "application/pdf");
    this.aua.put("pgm", "image/x-portable-graymap");
    this.aua.put("pgn", "application/x-chess-pgn");
    this.aua.put("pic", "image/pict");
    this.aua.put("pict", "image/pict");
    this.aua.put("png", "image/png");
    this.aua.put("pnm", "image/x-portable-anymap");
    this.aua.put("pnt", "image/x-macpaint");
    this.aua.put("pntg", "image/x-macpaint");
    this.aua.put("ppm", "image/x-portable-pixmap");
    this.aua.put("ppt", "application/vnd.ms-powerpoint");
    this.aua.put("ps", "application/postscript");
    this.aua.put("qt", "video/quicktime");
    this.aua.put("qti", "image/x-quicktime");
    this.aua.put("qtif", "image/x-quicktime");
    this.aua.put("ra", "audio/x-pn-realaudio");
    this.aua.put("ram", "audio/x-pn-realaudio");
    this.aua.put("ras", "image/x-cmu-raster");
    this.aua.put("rdf", "application/rdf+xml");
    this.aua.put("rgb", "image/x-rgb");
    this.aua.put("rm", "application/vnd.rn-realmedia");
    this.aua.put("roff", "application/x-troff");
    this.aua.put("rtf", "text/rtf");
    this.aua.put("rtx", "text/richtext");
    this.aua.put("sgm", "text/sgml");
    this.aua.put("sgml", "text/sgml");
    this.aua.put("sh", "application/x-sh");
    this.aua.put("shar", "application/x-shar");
    this.aua.put("silo", "model/mesh");
    this.aua.put("sit", "application/x-stuffit");
    this.aua.put("skd", "application/x-koan");
    this.aua.put("skm", "application/x-koan");
    this.aua.put("skp", "application/x-koan");
    this.aua.put("skt", "application/x-koan");
    this.aua.put("smi", "application/smil");
    this.aua.put("smil", "application/smil");
    this.aua.put("snd", "audio/basic");
    this.aua.put("so", "application/octet-stream");
    this.aua.put("spl", "application/x-futuresplash");
    this.aua.put("src", "application/x-wais-source");
    this.aua.put("sv4cpio", "application/x-sv4cpio");
    this.aua.put("sv4crc", "application/x-sv4crc");
    this.aua.put("svg", "image/svg+xml");
    this.aua.put("swf", "application/x-shockwave-flash");
    this.aua.put("t", "application/x-troff");
    this.aua.put("tar", "application/x-tar");
    this.aua.put("tcl", "application/x-tcl");
    this.aua.put("tex", "application/x-tex");
    this.aua.put("texi", "application/x-texinfo");
    this.aua.put("texinfo", "application/x-texinfo");
    this.aua.put("tif", "image/tiff");
    this.aua.put("tiff", "image/tiff");
    this.aua.put("tr", "application/x-troff");
    this.aua.put("tsv", "text/tab-separated-values");
    this.aua.put("txt", "text/plain");
    this.aua.put("ustar", "application/x-ustar");
    this.aua.put("vcd", "application/x-cdlink");
    this.aua.put("vrml", "model/vrml");
    this.aua.put("vxml", "application/voicexml+xml");
    this.aua.put("wav", "audio/x-wav");
    this.aua.put("wbmp", "image/vnd.wap.wbmp");
    this.aua.put("wbxml", "application/vnd.wap.wbxml");
    this.aua.put("webm", "video/webm");
    this.aua.put("wml", "text/vnd.wap.wml");
    this.aua.put("wmlc", "application/vnd.wap.wmlc");
    this.aua.put("wmls", "text/vnd.wap.wmlscript");
    this.aua.put("wmlsc", "application/vnd.wap.wmlscriptc");
    this.aua.put("wmv", "video/x-ms-wmv");
    this.aua.put("wrl", "model/vrml");
    this.aua.put("xbm", "image/x-xbitmap");
    this.aua.put("xht", "application/xhtml+xml");
    this.aua.put("xhtml", "application/xhtml+xml");
    this.aua.put("xls", "application/vnd.ms-excel");
    this.aua.put("xml", "application/xml");
    this.aua.put("xpm", "image/x-xpixmap");
    this.aua.put("xsl", "application/xml");
    this.aua.put("xslt", "application/xslt+xml");
    this.aua.put("xul", "application/vnd.mozilla.xul+xml");
    this.aua.put("xwd", "image/x-xwindowdump");
    this.aua.put("xyz", "chemical/x-xyz");
    this.aua.put("zip", "application/zip");
  }
  
  public static Mimetypes kb()
  {
    for (;;)
    {
      try
      {
        Object localObject1;
        if (atZ != null)
        {
          localObject1 = atZ;
          return (Mimetypes)localObject1;
        }
        atZ = new Mimetypes();
        if (alS.isDebugEnabled())
        {
          localObject1 = atZ.aua;
          Iterator localIterator = ((Map)localObject1).keySet().iterator();
          if (localIterator.hasNext())
          {
            String str = (String)localIterator.next();
            alS.debug("Setting mime type for extension '" + str + "' to '" + (String)((Map)localObject1).get(str) + "'");
            continue;
          }
        }
        Mimetypes localMimetypes = atZ;
      }
      finally {}
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/util/Mimetypes.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */