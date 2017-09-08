using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;

namespace TinPhongCompany.Common
{
    public static class cssfix_extensionmethod
    {
        public static Bundle IncludeWithCssRewriteTransform(this Bundle bundle, params String[] virtualPaths)
        {
            if (!(bundle is StyleBundle))
            {
                throw new ArgumentException("Only available to StyleBundle", "bundle");
            }
            if (virtualPaths == null || virtualPaths.Length == 0)
            {
                throw new ArgumentNullException("virtualPaths", "Cannot be null or empty");
            }
            IItemTransform itemTransform = new CssRewriteUrlTransform();
            foreach (String virtualPath in virtualPaths)
            {
                if (!String.IsNullOrWhiteSpace(virtualPath))
                {
                    bundle.Include(virtualPath, itemTransform);
                }
            }
            return bundle;
        }
    }
}