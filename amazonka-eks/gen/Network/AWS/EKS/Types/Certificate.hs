{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.Certificate
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.Certificate where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing the @certificate-authority-data@ for your cluster.
--
--
--
-- /See:/ 'certificate' smart constructor.
newtype Certificate = Certificate'{_cData ::
                                   Maybe Text}
                        deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Certificate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cData' - The Base64-encoded certificate data required to communicate with your cluster. Add this to the @certificate-authority-data@ section of the @kubeconfig@ file for your cluster.
certificate
    :: Certificate
certificate = Certificate'{_cData = Nothing}

-- | The Base64-encoded certificate data required to communicate with your cluster. Add this to the @certificate-authority-data@ section of the @kubeconfig@ file for your cluster.
cData :: Lens' Certificate (Maybe Text)
cData = lens _cData (\ s a -> s{_cData = a})

instance FromJSON Certificate where
        parseJSON
          = withObject "Certificate"
              (\ x -> Certificate' <$> (x .:? "data"))

instance Hashable Certificate where

instance NFData Certificate where
