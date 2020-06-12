{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.DashIsoEncryptionSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.DashIsoEncryptionSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.SpekeKeyProvider
import Network.AWS.Prelude

-- | Specifies DRM settings for DASH outputs.
--
-- /See:/ 'dashIsoEncryptionSettings' smart constructor.
newtype DashIsoEncryptionSettings = DashIsoEncryptionSettings'{_diesSpekeKeyProvider
                                                               ::
                                                               Maybe
                                                                 SpekeKeyProvider}
                                      deriving (Eq, Read, Show, Data, Typeable,
                                                Generic)

-- | Creates a value of 'DashIsoEncryptionSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diesSpekeKeyProvider' - Undocumented member.
dashIsoEncryptionSettings
    :: DashIsoEncryptionSettings
dashIsoEncryptionSettings
  = DashIsoEncryptionSettings'{_diesSpekeKeyProvider =
                                 Nothing}

-- | Undocumented member.
diesSpekeKeyProvider :: Lens' DashIsoEncryptionSettings (Maybe SpekeKeyProvider)
diesSpekeKeyProvider = lens _diesSpekeKeyProvider (\ s a -> s{_diesSpekeKeyProvider = a})

instance FromJSON DashIsoEncryptionSettings where
        parseJSON
          = withObject "DashIsoEncryptionSettings"
              (\ x ->
                 DashIsoEncryptionSettings' <$>
                   (x .:? "spekeKeyProvider"))

instance Hashable DashIsoEncryptionSettings where

instance NFData DashIsoEncryptionSettings where

instance ToJSON DashIsoEncryptionSettings where
        toJSON DashIsoEncryptionSettings'{..}
          = object
              (catMaybes
                 [("spekeKeyProvider" .=) <$> _diesSpekeKeyProvider])
