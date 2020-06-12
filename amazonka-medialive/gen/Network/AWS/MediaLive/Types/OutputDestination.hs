{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.OutputDestination
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types.OutputDestination where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.OutputDestinationSettings
import Network.AWS.Prelude

-- | Placeholder documentation for OutputDestination
--
-- /See:/ 'outputDestination' smart constructor.
data OutputDestination = OutputDestination'{_odSettings
                                            ::
                                            !(Maybe
                                                [OutputDestinationSettings]),
                                            _odId :: !(Maybe Text)}
                           deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OutputDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odSettings' - Destination settings for output; one for each redundant encoder.
--
-- * 'odId' - User-specified id. This is used in an output group or an output.
outputDestination
    :: OutputDestination
outputDestination
  = OutputDestination'{_odSettings = Nothing,
                       _odId = Nothing}

-- | Destination settings for output; one for each redundant encoder.
odSettings :: Lens' OutputDestination [OutputDestinationSettings]
odSettings = lens _odSettings (\ s a -> s{_odSettings = a}) . _Default . _Coerce

-- | User-specified id. This is used in an output group or an output.
odId :: Lens' OutputDestination (Maybe Text)
odId = lens _odId (\ s a -> s{_odId = a})

instance FromJSON OutputDestination where
        parseJSON
          = withObject "OutputDestination"
              (\ x ->
                 OutputDestination' <$>
                   (x .:? "settings" .!= mempty) <*> (x .:? "id"))

instance Hashable OutputDestination where

instance NFData OutputDestination where

instance ToJSON OutputDestination where
        toJSON OutputDestination'{..}
          = object
              (catMaybes
                 [("settings" .=) <$> _odSettings,
                  ("id" .=) <$> _odId])
