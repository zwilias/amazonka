{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.ContainerSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.ContainerSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.ContainerType
import Network.AWS.MediaConvert.Types.F4vSettings
import Network.AWS.MediaConvert.Types.M2tsSettings
import Network.AWS.MediaConvert.Types.M3u8Settings
import Network.AWS.MediaConvert.Types.MovSettings
import Network.AWS.MediaConvert.Types.Mp4Settings
import Network.AWS.Prelude

-- | Container specific settings.
--
-- /See:/ 'containerSettings' smart constructor.
data ContainerSettings = ContainerSettings'{_csM2tsSettings
                                            :: !(Maybe M2tsSettings),
                                            _csM3u8Settings ::
                                            !(Maybe M3u8Settings),
                                            _csMovSettings ::
                                            !(Maybe MovSettings),
                                            _csMp4Settings ::
                                            !(Maybe Mp4Settings),
                                            _csContainer ::
                                            !(Maybe ContainerType),
                                            _csF4vSettings ::
                                            !(Maybe F4vSettings)}
                           deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ContainerSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csM2tsSettings' - Undocumented member.
--
-- * 'csM3u8Settings' - Undocumented member.
--
-- * 'csMovSettings' - Undocumented member.
--
-- * 'csMp4Settings' - Undocumented member.
--
-- * 'csContainer' - Undocumented member.
--
-- * 'csF4vSettings' - Undocumented member.
containerSettings
    :: ContainerSettings
containerSettings
  = ContainerSettings'{_csM2tsSettings = Nothing,
                       _csM3u8Settings = Nothing, _csMovSettings = Nothing,
                       _csMp4Settings = Nothing, _csContainer = Nothing,
                       _csF4vSettings = Nothing}

-- | Undocumented member.
csM2tsSettings :: Lens' ContainerSettings (Maybe M2tsSettings)
csM2tsSettings = lens _csM2tsSettings (\ s a -> s{_csM2tsSettings = a})

-- | Undocumented member.
csM3u8Settings :: Lens' ContainerSettings (Maybe M3u8Settings)
csM3u8Settings = lens _csM3u8Settings (\ s a -> s{_csM3u8Settings = a})

-- | Undocumented member.
csMovSettings :: Lens' ContainerSettings (Maybe MovSettings)
csMovSettings = lens _csMovSettings (\ s a -> s{_csMovSettings = a})

-- | Undocumented member.
csMp4Settings :: Lens' ContainerSettings (Maybe Mp4Settings)
csMp4Settings = lens _csMp4Settings (\ s a -> s{_csMp4Settings = a})

-- | Undocumented member.
csContainer :: Lens' ContainerSettings (Maybe ContainerType)
csContainer = lens _csContainer (\ s a -> s{_csContainer = a})

-- | Undocumented member.
csF4vSettings :: Lens' ContainerSettings (Maybe F4vSettings)
csF4vSettings = lens _csF4vSettings (\ s a -> s{_csF4vSettings = a})

instance FromJSON ContainerSettings where
        parseJSON
          = withObject "ContainerSettings"
              (\ x ->
                 ContainerSettings' <$>
                   (x .:? "m2tsSettings") <*> (x .:? "m3u8Settings") <*>
                     (x .:? "movSettings")
                     <*> (x .:? "mp4Settings")
                     <*> (x .:? "container")
                     <*> (x .:? "f4vSettings"))

instance Hashable ContainerSettings where

instance NFData ContainerSettings where

instance ToJSON ContainerSettings where
        toJSON ContainerSettings'{..}
          = object
              (catMaybes
                 [("m2tsSettings" .=) <$> _csM2tsSettings,
                  ("m3u8Settings" .=) <$> _csM3u8Settings,
                  ("movSettings" .=) <$> _csMovSettings,
                  ("mp4Settings" .=) <$> _csMp4Settings,
                  ("container" .=) <$> _csContainer,
                  ("f4vSettings" .=) <$> _csF4vSettings])
