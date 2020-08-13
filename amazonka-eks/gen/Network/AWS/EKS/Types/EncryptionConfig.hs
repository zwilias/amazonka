{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.EncryptionConfig
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.EncryptionConfig where

import Network.AWS.EKS.Types.Provider
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The encryption configuration for the cluster.
--
--
--
-- /See:/ 'encryptionConfig' smart constructor.
data EncryptionConfig = EncryptionConfig'{_ecResources
                                          :: !(Maybe [Text]),
                                          _ecProvider :: !(Maybe Provider)}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EncryptionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecResources' - Specifies the resources to be encrypted. The only supported value is "secrets".
--
-- * 'ecProvider' - AWS Key Management Service (AWS KMS) customer master key (CMK). Either the ARN or the alias can be used.
encryptionConfig
    :: EncryptionConfig
encryptionConfig
  = EncryptionConfig'{_ecResources = Nothing,
                      _ecProvider = Nothing}

-- | Specifies the resources to be encrypted. The only supported value is "secrets".
ecResources :: Lens' EncryptionConfig [Text]
ecResources = lens _ecResources (\ s a -> s{_ecResources = a}) . _Default . _Coerce

-- | AWS Key Management Service (AWS KMS) customer master key (CMK). Either the ARN or the alias can be used.
ecProvider :: Lens' EncryptionConfig (Maybe Provider)
ecProvider = lens _ecProvider (\ s a -> s{_ecProvider = a})

instance FromJSON EncryptionConfig where
        parseJSON
          = withObject "EncryptionConfig"
              (\ x ->
                 EncryptionConfig' <$>
                   (x .:? "resources" .!= mempty) <*>
                     (x .:? "provider"))

instance Hashable EncryptionConfig where

instance NFData EncryptionConfig where

instance ToJSON EncryptionConfig where
        toJSON EncryptionConfig'{..}
          = object
              (catMaybes
                 [("resources" .=) <$> _ecResources,
                  ("provider" .=) <$> _ecProvider])
