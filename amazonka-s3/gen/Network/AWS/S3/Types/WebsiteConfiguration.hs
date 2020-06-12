{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.WebsiteConfiguration
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.WebsiteConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.ErrorDocument
import Network.AWS.S3.Types.IndexDocument
import Network.AWS.S3.Types.RedirectAllRequestsTo
import Network.AWS.S3.Types.RoutingRule

-- | /See:/ 'websiteConfiguration' smart constructor.
data WebsiteConfiguration = WebsiteConfiguration'{_wcRedirectAllRequestsTo
                                                  ::
                                                  !(Maybe
                                                      RedirectAllRequestsTo),
                                                  _wcErrorDocument ::
                                                  !(Maybe ErrorDocument),
                                                  _wcIndexDocument ::
                                                  !(Maybe IndexDocument),
                                                  _wcRoutingRules ::
                                                  !(Maybe [RoutingRule])}
                              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'WebsiteConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wcRedirectAllRequestsTo' - Undocumented member.
--
-- * 'wcErrorDocument' - Undocumented member.
--
-- * 'wcIndexDocument' - Undocumented member.
--
-- * 'wcRoutingRules' - Undocumented member.
websiteConfiguration
    :: WebsiteConfiguration
websiteConfiguration
  = WebsiteConfiguration'{_wcRedirectAllRequestsTo =
                            Nothing,
                          _wcErrorDocument = Nothing,
                          _wcIndexDocument = Nothing,
                          _wcRoutingRules = Nothing}

-- | Undocumented member.
wcRedirectAllRequestsTo :: Lens' WebsiteConfiguration (Maybe RedirectAllRequestsTo)
wcRedirectAllRequestsTo = lens _wcRedirectAllRequestsTo (\ s a -> s{_wcRedirectAllRequestsTo = a})

-- | Undocumented member.
wcErrorDocument :: Lens' WebsiteConfiguration (Maybe ErrorDocument)
wcErrorDocument = lens _wcErrorDocument (\ s a -> s{_wcErrorDocument = a})

-- | Undocumented member.
wcIndexDocument :: Lens' WebsiteConfiguration (Maybe IndexDocument)
wcIndexDocument = lens _wcIndexDocument (\ s a -> s{_wcIndexDocument = a})

-- | Undocumented member.
wcRoutingRules :: Lens' WebsiteConfiguration [RoutingRule]
wcRoutingRules = lens _wcRoutingRules (\ s a -> s{_wcRoutingRules = a}) . _Default . _Coerce

instance Hashable WebsiteConfiguration where

instance NFData WebsiteConfiguration where

instance ToXML WebsiteConfiguration where
        toXML WebsiteConfiguration'{..}
          = mconcat
              ["RedirectAllRequestsTo" @= _wcRedirectAllRequestsTo,
               "ErrorDocument" @= _wcErrorDocument,
               "IndexDocument" @= _wcIndexDocument,
               "RoutingRules" @=
                 toXML (toXMLList "RoutingRule" <$> _wcRoutingRules)]
