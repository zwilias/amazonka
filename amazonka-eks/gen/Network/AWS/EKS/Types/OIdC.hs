{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.OIdC
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.OIdC where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing the <https://openid.net/connect/ OpenID Connect> identity provider information for the cluster.
--
--
--
-- /See:/ 'oIdC' smart constructor.
newtype OIdC = OIdC'{_oicIssuer :: Maybe Text}
                 deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OIdC' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oicIssuer' - The issuer URL for the OpenID Connect identity provider.
oIdC
    :: OIdC
oIdC = OIdC'{_oicIssuer = Nothing}

-- | The issuer URL for the OpenID Connect identity provider.
oicIssuer :: Lens' OIdC (Maybe Text)
oicIssuer = lens _oicIssuer (\ s a -> s{_oicIssuer = a})

instance FromJSON OIdC where
        parseJSON
          = withObject "OIdC"
              (\ x -> OIdC' <$> (x .:? "issuer"))

instance Hashable OIdC where

instance NFData OIdC where
