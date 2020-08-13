{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.Identity
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.Identity where

import Network.AWS.EKS.Types.OIdC
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing an identity provider for authentication credentials.
--
--
--
-- /See:/ 'identity' smart constructor.
newtype Identity = Identity'{_iOidc :: Maybe OIdC}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Identity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iOidc' - The <https://openid.net/connect/ OpenID Connect> identity provider information for the cluster.
identity
    :: Identity
identity = Identity'{_iOidc = Nothing}

-- | The <https://openid.net/connect/ OpenID Connect> identity provider information for the cluster.
iOidc :: Lens' Identity (Maybe OIdC)
iOidc = lens _iOidc (\ s a -> s{_iOidc = a})

instance FromJSON Identity where
        parseJSON
          = withObject "Identity"
              (\ x -> Identity' <$> (x .:? "oidc"))

instance Hashable Identity where

instance NFData Identity where
