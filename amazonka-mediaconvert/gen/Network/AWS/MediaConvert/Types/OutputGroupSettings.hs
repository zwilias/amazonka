{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.OutputGroupSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.OutputGroupSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.DashIsoGroupSettings
import Network.AWS.MediaConvert.Types.FileGroupSettings
import Network.AWS.MediaConvert.Types.HlsGroupSettings
import Network.AWS.MediaConvert.Types.MsSmoothGroupSettings
import Network.AWS.MediaConvert.Types.OutputGroupType
import Network.AWS.Prelude

-- | Output Group settings, including type
--
-- /See:/ 'outputGroupSettings' smart constructor.
data OutputGroupSettings = OutputGroupSettings'{_ogsFileGroupSettings
                                                :: !(Maybe FileGroupSettings),
                                                _ogsMsSmoothGroupSettings ::
                                                !(Maybe MsSmoothGroupSettings),
                                                _ogsHlsGroupSettings ::
                                                !(Maybe HlsGroupSettings),
                                                _ogsType ::
                                                !(Maybe OutputGroupType),
                                                _ogsDashIsoGroupSettings ::
                                                !(Maybe DashIsoGroupSettings)}
                             deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OutputGroupSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogsFileGroupSettings' - Undocumented member.
--
-- * 'ogsMsSmoothGroupSettings' - Undocumented member.
--
-- * 'ogsHlsGroupSettings' - Undocumented member.
--
-- * 'ogsType' - Undocumented member.
--
-- * 'ogsDashIsoGroupSettings' - Undocumented member.
outputGroupSettings
    :: OutputGroupSettings
outputGroupSettings
  = OutputGroupSettings'{_ogsFileGroupSettings =
                           Nothing,
                         _ogsMsSmoothGroupSettings = Nothing,
                         _ogsHlsGroupSettings = Nothing, _ogsType = Nothing,
                         _ogsDashIsoGroupSettings = Nothing}

-- | Undocumented member.
ogsFileGroupSettings :: Lens' OutputGroupSettings (Maybe FileGroupSettings)
ogsFileGroupSettings = lens _ogsFileGroupSettings (\ s a -> s{_ogsFileGroupSettings = a})

-- | Undocumented member.
ogsMsSmoothGroupSettings :: Lens' OutputGroupSettings (Maybe MsSmoothGroupSettings)
ogsMsSmoothGroupSettings = lens _ogsMsSmoothGroupSettings (\ s a -> s{_ogsMsSmoothGroupSettings = a})

-- | Undocumented member.
ogsHlsGroupSettings :: Lens' OutputGroupSettings (Maybe HlsGroupSettings)
ogsHlsGroupSettings = lens _ogsHlsGroupSettings (\ s a -> s{_ogsHlsGroupSettings = a})

-- | Undocumented member.
ogsType :: Lens' OutputGroupSettings (Maybe OutputGroupType)
ogsType = lens _ogsType (\ s a -> s{_ogsType = a})

-- | Undocumented member.
ogsDashIsoGroupSettings :: Lens' OutputGroupSettings (Maybe DashIsoGroupSettings)
ogsDashIsoGroupSettings = lens _ogsDashIsoGroupSettings (\ s a -> s{_ogsDashIsoGroupSettings = a})

instance FromJSON OutputGroupSettings where
        parseJSON
          = withObject "OutputGroupSettings"
              (\ x ->
                 OutputGroupSettings' <$>
                   (x .:? "fileGroupSettings") <*>
                     (x .:? "msSmoothGroupSettings")
                     <*> (x .:? "hlsGroupSettings")
                     <*> (x .:? "type")
                     <*> (x .:? "dashIsoGroupSettings"))

instance Hashable OutputGroupSettings where

instance NFData OutputGroupSettings where

instance ToJSON OutputGroupSettings where
        toJSON OutputGroupSettings'{..}
          = object
              (catMaybes
                 [("fileGroupSettings" .=) <$> _ogsFileGroupSettings,
                  ("msSmoothGroupSettings" .=) <$>
                    _ogsMsSmoothGroupSettings,
                  ("hlsGroupSettings" .=) <$> _ogsHlsGroupSettings,
                  ("type" .=) <$> _ogsType,
                  ("dashIsoGroupSettings" .=) <$>
                    _ogsDashIsoGroupSettings])
