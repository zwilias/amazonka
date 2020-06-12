{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53AutoNaming.Types.NamespaceProperties
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Route53AutoNaming.Types.NamespaceProperties where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Route53AutoNaming.Types.DNSProperties

-- | A complex type that contains information that is specific to the namespace type.
--
--
--
-- /See:/ 'namespaceProperties' smart constructor.
newtype NamespaceProperties = NamespaceProperties'{_npDNSProperties
                                                   :: Maybe DNSProperties}
                                deriving (Eq, Read, Show, Data, Typeable,
                                          Generic)

-- | Creates a value of 'NamespaceProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'npDNSProperties' - A complex type that contains the ID for the hosted zone that Route 53 creates when you create a namespace.
namespaceProperties
    :: NamespaceProperties
namespaceProperties
  = NamespaceProperties'{_npDNSProperties = Nothing}

-- | A complex type that contains the ID for the hosted zone that Route 53 creates when you create a namespace.
npDNSProperties :: Lens' NamespaceProperties (Maybe DNSProperties)
npDNSProperties = lens _npDNSProperties (\ s a -> s{_npDNSProperties = a})

instance FromJSON NamespaceProperties where
        parseJSON
          = withObject "NamespaceProperties"
              (\ x ->
                 NamespaceProperties' <$> (x .:? "DnsProperties"))

instance Hashable NamespaceProperties where

instance NFData NamespaceProperties where
