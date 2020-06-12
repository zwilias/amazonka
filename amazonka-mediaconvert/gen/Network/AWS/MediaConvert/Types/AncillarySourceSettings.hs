{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AncillarySourceSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.AncillarySourceSettings where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Settings for ancillary captions source.
--
-- /See:/ 'ancillarySourceSettings' smart constructor.
newtype AncillarySourceSettings = AncillarySourceSettings'{_assSourceAncillaryChannelNumber
                                                           :: Maybe Int}
                                    deriving (Eq, Read, Show, Data, Typeable,
                                              Generic)

-- | Creates a value of 'AncillarySourceSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assSourceAncillaryChannelNumber' - Specifies the 608 channel number in the ancillary data track from which to extract captions. Unused for passthrough.
ancillarySourceSettings
    :: AncillarySourceSettings
ancillarySourceSettings
  = AncillarySourceSettings'{_assSourceAncillaryChannelNumber
                               = Nothing}

-- | Specifies the 608 channel number in the ancillary data track from which to extract captions. Unused for passthrough.
assSourceAncillaryChannelNumber :: Lens' AncillarySourceSettings (Maybe Int)
assSourceAncillaryChannelNumber = lens _assSourceAncillaryChannelNumber (\ s a -> s{_assSourceAncillaryChannelNumber = a})

instance FromJSON AncillarySourceSettings where
        parseJSON
          = withObject "AncillarySourceSettings"
              (\ x ->
                 AncillarySourceSettings' <$>
                   (x .:? "sourceAncillaryChannelNumber"))

instance Hashable AncillarySourceSettings where

instance NFData AncillarySourceSettings where

instance ToJSON AncillarySourceSettings where
        toJSON AncillarySourceSettings'{..}
          = object
              (catMaybes
                 [("sourceAncillaryChannelNumber" .=) <$>
                    _assSourceAncillaryChannelNumber])
