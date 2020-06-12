{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.CaptionDestinationSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.CaptionDestinationSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.BurninDestinationSettings
import Network.AWS.MediaConvert.Types.CaptionDestinationType
import Network.AWS.MediaConvert.Types.DvbSubDestinationSettings
import Network.AWS.MediaConvert.Types.SccDestinationSettings
import Network.AWS.MediaConvert.Types.TeletextDestinationSettings
import Network.AWS.MediaConvert.Types.TtmlDestinationSettings
import Network.AWS.Prelude

-- | Specific settings required by destination type. Note that burnin_destination_settings are not available if the source of the caption data is Embedded or Teletext.
--
-- /See:/ 'captionDestinationSettings' smart constructor.
data CaptionDestinationSettings = CaptionDestinationSettings'{_cdsTeletextDestinationSettings
                                                              ::
                                                              !(Maybe
                                                                  TeletextDestinationSettings),
                                                              _cdsDvbSubDestinationSettings
                                                              ::
                                                              !(Maybe
                                                                  DvbSubDestinationSettings),
                                                              _cdsTtmlDestinationSettings
                                                              ::
                                                              !(Maybe
                                                                  TtmlDestinationSettings),
                                                              _cdsDestinationType
                                                              ::
                                                              !(Maybe
                                                                  CaptionDestinationType),
                                                              _cdsSccDestinationSettings
                                                              ::
                                                              !(Maybe
                                                                  SccDestinationSettings),
                                                              _cdsBurninDestinationSettings
                                                              ::
                                                              !(Maybe
                                                                  BurninDestinationSettings)}
                                    deriving (Eq, Read, Show, Data, Typeable,
                                              Generic)

-- | Creates a value of 'CaptionDestinationSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdsTeletextDestinationSettings' - Undocumented member.
--
-- * 'cdsDvbSubDestinationSettings' - Undocumented member.
--
-- * 'cdsTtmlDestinationSettings' - Undocumented member.
--
-- * 'cdsDestinationType' - Undocumented member.
--
-- * 'cdsSccDestinationSettings' - Undocumented member.
--
-- * 'cdsBurninDestinationSettings' - Undocumented member.
captionDestinationSettings
    :: CaptionDestinationSettings
captionDestinationSettings
  = CaptionDestinationSettings'{_cdsTeletextDestinationSettings
                                  = Nothing,
                                _cdsDvbSubDestinationSettings = Nothing,
                                _cdsTtmlDestinationSettings = Nothing,
                                _cdsDestinationType = Nothing,
                                _cdsSccDestinationSettings = Nothing,
                                _cdsBurninDestinationSettings = Nothing}

-- | Undocumented member.
cdsTeletextDestinationSettings :: Lens' CaptionDestinationSettings (Maybe TeletextDestinationSettings)
cdsTeletextDestinationSettings = lens _cdsTeletextDestinationSettings (\ s a -> s{_cdsTeletextDestinationSettings = a})

-- | Undocumented member.
cdsDvbSubDestinationSettings :: Lens' CaptionDestinationSettings (Maybe DvbSubDestinationSettings)
cdsDvbSubDestinationSettings = lens _cdsDvbSubDestinationSettings (\ s a -> s{_cdsDvbSubDestinationSettings = a})

-- | Undocumented member.
cdsTtmlDestinationSettings :: Lens' CaptionDestinationSettings (Maybe TtmlDestinationSettings)
cdsTtmlDestinationSettings = lens _cdsTtmlDestinationSettings (\ s a -> s{_cdsTtmlDestinationSettings = a})

-- | Undocumented member.
cdsDestinationType :: Lens' CaptionDestinationSettings (Maybe CaptionDestinationType)
cdsDestinationType = lens _cdsDestinationType (\ s a -> s{_cdsDestinationType = a})

-- | Undocumented member.
cdsSccDestinationSettings :: Lens' CaptionDestinationSettings (Maybe SccDestinationSettings)
cdsSccDestinationSettings = lens _cdsSccDestinationSettings (\ s a -> s{_cdsSccDestinationSettings = a})

-- | Undocumented member.
cdsBurninDestinationSettings :: Lens' CaptionDestinationSettings (Maybe BurninDestinationSettings)
cdsBurninDestinationSettings = lens _cdsBurninDestinationSettings (\ s a -> s{_cdsBurninDestinationSettings = a})

instance FromJSON CaptionDestinationSettings where
        parseJSON
          = withObject "CaptionDestinationSettings"
              (\ x ->
                 CaptionDestinationSettings' <$>
                   (x .:? "teletextDestinationSettings") <*>
                     (x .:? "dvbSubDestinationSettings")
                     <*> (x .:? "ttmlDestinationSettings")
                     <*> (x .:? "destinationType")
                     <*> (x .:? "sccDestinationSettings")
                     <*> (x .:? "burninDestinationSettings"))

instance Hashable CaptionDestinationSettings where

instance NFData CaptionDestinationSettings where

instance ToJSON CaptionDestinationSettings where
        toJSON CaptionDestinationSettings'{..}
          = object
              (catMaybes
                 [("teletextDestinationSettings" .=) <$>
                    _cdsTeletextDestinationSettings,
                  ("dvbSubDestinationSettings" .=) <$>
                    _cdsDvbSubDestinationSettings,
                  ("ttmlDestinationSettings" .=) <$>
                    _cdsTtmlDestinationSettings,
                  ("destinationType" .=) <$> _cdsDestinationType,
                  ("sccDestinationSettings" .=) <$>
                    _cdsSccDestinationSettings,
                  ("burninDestinationSettings" .=) <$>
                    _cdsBurninDestinationSettings])
