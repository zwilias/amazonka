{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.SccDestinationSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.SccDestinationSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.SccDestinationFramerate
import Network.AWS.Prelude

-- | Settings for SCC caption output.
--
-- /See:/ 'sccDestinationSettings' smart constructor.
newtype SccDestinationSettings = SccDestinationSettings'{_sdsFramerate
                                                         ::
                                                         Maybe
                                                           SccDestinationFramerate}
                                   deriving (Eq, Read, Show, Data, Typeable,
                                             Generic)

-- | Creates a value of 'SccDestinationSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdsFramerate' - Undocumented member.
sccDestinationSettings
    :: SccDestinationSettings
sccDestinationSettings
  = SccDestinationSettings'{_sdsFramerate = Nothing}

-- | Undocumented member.
sdsFramerate :: Lens' SccDestinationSettings (Maybe SccDestinationFramerate)
sdsFramerate = lens _sdsFramerate (\ s a -> s{_sdsFramerate = a})

instance FromJSON SccDestinationSettings where
        parseJSON
          = withObject "SccDestinationSettings"
              (\ x ->
                 SccDestinationSettings' <$> (x .:? "framerate"))

instance Hashable SccDestinationSettings where

instance NFData SccDestinationSettings where

instance ToJSON SccDestinationSettings where
        toJSON SccDestinationSettings'{..}
          = object
              (catMaybes [("framerate" .=) <$> _sdsFramerate])
